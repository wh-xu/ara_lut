// Author: Weihong Xu <weihong.xu@epfl.ch>
// Description:
// This operand queue holds elements from the VRF until they are ready to be used
// by the VRFs. This unit is also able to do widening, for instructions that
// need it.

module operand_permu_queue import ara_pkg::*; import rvv_pkg::*; import cf_math_pkg::idx_width; #(
    parameter  int           unsigned CmdBufDepth         = 2,
    parameter  int           unsigned DataBufDepth        = 2,
    parameter  int           unsigned NrSlaves            = 1,
    parameter  int           unsigned NrLanes             = 0,
    parameter  int           unsigned NrVRFBanksPerLane   = 8,
    parameter  int           unsigned VLEN                = 0,
    parameter  bit                    AccessCmdPop        = 0,
    parameter  type                   operand_queue_cmd_t = logic,
    // Dependant parameters. DO NOT CHANGE!
    localparam int           unsigned DataWidth      = $bits(elen_t),
    localparam int           unsigned StrbWidth      = DataWidth/8,
    localparam type                   vlen_t         = logic[$clog2(VLEN+1)-1:0]
  ) (
    input  logic                              clk_i,
    input  logic                              rst_ni,
    input  logic                              flush_i,
    // Lane ID
    input  logic [idx_width(NrLanes)-1:0]     lane_id_i,
    // Interface with the Operand Requester
    input  operand_queue_cmd_t                operand_queue_cmd_i,
    input  logic                              operand_queue_cmd_valid_i,
    // Interface with the Lane Sequencer
    output logic                              cmd_pop_o,
    // Interface with the Vector Register File
    input  elen_t   [NrVRFBanksPerLane-1:0]   operand_i,
    input  logic    [NrVRFBanksPerLane-1:0]   operand_valid_i,
    input  logic                              operand_issued_i,
    output logic                              operand_queue_ready_o,
    // Interface with the functional units
    output elen_t   [NrVRFBanksPerLane-1:0]   operand_o,
    output target_fu_e                        operand_target_fu_o,
    output logic    [NrVRFBanksPerLane-1:0]   operand_valid_o,
    input  logic    [NrSlaves-1:0]            operand_ready_i
  );

  //////////////////////
  //  Command Buffer  //
  //////////////////////

  operand_queue_cmd_t cmd;
  logic               cmd_pop;

  fifo_v3 #(
    .DEPTH(CmdBufDepth        ),
    .dtype(operand_queue_cmd_t)
  ) i_cmd_buffer (
    .clk_i     (clk_i                    ),
    .rst_ni    (rst_ni                   ),
    .testmode_i(1'b0                     ),
    .flush_i   (flush_i                  ),
    .data_i    (operand_queue_cmd_i      ),
    .push_i    (operand_queue_cmd_valid_i),
    .full_o    (/* Unused */             ),
    .data_o    (cmd                      ),
    .empty_o   (/* Unused */             ),
    .pop_i     (cmd_pop                  ),
    .usage_o   (/* Unused */             )
  );

  // If this is the MaskB opqueue, propagate the
  // pop information for the cmd buffer
  if (AccessCmdPop)
    assign cmd_pop_o = cmd_pop;
  else
    assign cmd_pop_o = 1'b0;

  //////////////
  //  Buffer  //
  //////////////

  // This FIFO holds words to be used by the VFUs.
  elen_t   [NrVRFBanksPerLane-1:0] ibuf_operand;
  logic    ibuf_operand_valid;
  logic    ibuf_empty;
  logic    ibuf_pop;

  // FIFO accepts operands from all banks
  fifo_v3 #(
    .DEPTH     (DataBufDepth                  ),
    .DATA_WIDTH(DataWidth*NrVRFBanksPerLane   )
  ) i_input_buffer (
    .clk_i     (clk_i           ),
    .rst_ni    (rst_ni          ),
    .testmode_i(1'b0            ),
    .flush_i   (flush_i         ),
    .data_i    (operand_i       ),
    .push_i    (&operand_valid_i),
    .full_o    (/* Unused */    ),
    .data_o    (ibuf_operand    ),
    .pop_i     (ibuf_pop        ),
    .empty_o   (ibuf_empty      ),
    .usage_o   (/* Unused */    )
  );
  assign ibuf_operand_valid = !ibuf_empty;

  // We used a credit based system, to ensure that the FIFO is always
  // able to accept a request.
  logic [idx_width(DataBufDepth):0] ibuf_usage_d, ibuf_usage_q;

  always_comb begin: p_ibuf_usage
    // Maintain state
    ibuf_usage_d = ibuf_usage_q;

    // Will received a new operand
    if (operand_issued_i) ibuf_usage_d += 1;
    // Consumed an operand
    if (ibuf_pop) ibuf_usage_d -= 1;
    // Flush the ibuf_usage_d
    if (flush_i) ibuf_usage_d = '0;

    // Are we ready?
    operand_queue_ready_o = (ibuf_usage_q != DataBufDepth);
  end

  always_ff @(posedge clk_i or negedge rst_ni) begin: p_ibuf_usage_ff
    if (!rst_ni) begin
      ibuf_usage_q <= '0;
    end else begin
      ibuf_usage_q <= ibuf_usage_d;
    end
  end


  ///////////////////////
  //  Type conversion  //
  ///////////////////////

  // Count how many operands were already produced
  vlen_t elem_count_d, elem_count_q;

  // Helper to convert the input operand to the correct type
  elen_t [NrVRFBanksPerLane-1:0] conv_operand;

  always_comb begin: type_conversion
    // Default: no conversion
    conv_operand = ibuf_operand;
  end : type_conversion

  /********************
   *  Operand output  *
   *******************/

  always_comb begin: obuf_control
    // Do not pop anything from the any of the queues
    ibuf_pop = 1'b0;
    cmd_pop  = 1'b0;

    // Maintain state
    elem_count_d     = elem_count_q;

    // Send the operand
    operand_o       = conv_operand;
    operand_valid_o = {NrVRFBanksPerLane{ibuf_operand_valid}};
    // Default encoding: SLDU == 1'b0, ADDRGEN == 1'b1
    operand_target_fu_o = cmd.target_fu;

    // Account for sent operands
    if (operand_valid_o && |operand_ready_i) begin
      // Finished using an operand
      if (cmd.conv == OpQueueConversionNone) ibuf_pop = 1'b1;

      // Finished execution
      if (elem_count_d >= cmd.elem_count) begin : finished_elems
        ibuf_pop = 1'b1;
        cmd_pop  = 1'b1;
        elem_count_d     = '0;
      end : finished_elems
    end
    // Flush sequential signals
    if (flush_i) begin
      elem_count_d = '0;
    end
  end : obuf_control

  always_ff @(posedge clk_i or negedge rst_ni) begin: p_type_conversion_ff
    if (!rst_ni) begin
      elem_count_q     <= '0;
    end else begin
      elem_count_q     <= elem_count_d;
    end
  end : p_type_conversion_ff

endmodule : operand_permu_queue
