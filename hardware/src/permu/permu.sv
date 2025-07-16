// This is a wrapper for the SimdPermutation module
module permu import ara_pkg::*; import rvv_pkg::*; #(
    parameter int           NumLanes = 8,
    parameter int           NumBanksPerLane = 8,
    parameter int           NumSegments = 8,
    parameter int           NumRotationRadix = 4,
    parameter int           SizeXbar = 32,
    parameter int           VLEN = 0,
    parameter type          vaddr_t   = logic,  // Type used to address vector register file elements
    parameter type          pe_req_t  = logic,
    parameter type          pe_resp_t = logic,
    // DO NOT CHANGE!
    parameter int XLEN = 64,
    parameter int ELENB = XLEN/8,
    parameter int UsePipeline = 1
) (
    // Clock and Reset
    input  logic                                       clk_i,
    input  logic                                       rst_ni,

    // Operand interface
    input  logic                                       operand_valid_i,
    input  logic                                       sel_idx_val_i,
    output logic                                       operand_ready_o,
    input  elen_t [NumLanes-1:0][NumBanksPerLane-1:0]  operand_i,

    // Interface with the main sequencer
    input  pe_req_t                                    pe_req_i,
    input  logic                                       pe_req_valid_i,
    input  logic     [NrVInsn-1:0]                     pe_vinsn_running_i,
    output logic                                       pe_req_ready_o,
    output pe_resp_t                                   pe_resp_o,

    // Result interface
    output logic     [NumLanes-1:0]                    permu_result_req_o,
    output vid_t     [NumLanes-1:0]                    permu_result_id_o,
    output vaddr_t   [NumLanes-1:0]                    permu_result_addr_o,
    output elen_t [NumLanes-1:0][NumBanksPerLane-1:0]  permu_result_wdata_o,
    input  logic     [NumLanes-1:0]                    permu_result_gnt_i
  );
   import cf_math_pkg::idx_width;

   ////////////////////////////////
   //  Vector instruction queue  //
   ////////////////////////////////
   localparam VInsnQueueDepth = PermuInsnQueueDepth;

   typedef logic [1:0] cnt_t;
   struct packed {
      pe_req_t [VInsnQueueDepth-1:0] vinsn;

      // Counter for the fetched operands 
      cnt_t [idx_width(VInsnQueueDepth):0] cnt_oprand;

      // Each instruction can be in one of the three execution phases.
      // - Being accepted (i.e., it is being stored for future execution in this
      //   vector functional unit).
      // - Being issued (i.e., its micro-operations are currently being issued
      //   to the corresponding functional units).
      // - Being committed (i.e., its results are being written to the vector
      //   register file).
      // We need pointers to index which instruction is at each execution phase
      // between the VInsnQueueDepth instructions in memory.
      logic [idx_width(VInsnQueueDepth)-1:0] accept_pnt;
      logic [idx_width(VInsnQueueDepth)-1:0] issue_pnt;
      logic [idx_width(VInsnQueueDepth)-1:0] commit_pnt;

      // We also need to count how many instructions are queueing to be
      // issued/committed, to avoid accepting more instructions than
      // we can handle.
      logic [idx_width(VInsnQueueDepth):0] issue_cnt;
      logic [idx_width(VInsnQueueDepth):0] commit_cnt;
   } vinsn_queue_d, vinsn_queue_q;

   // Is the vector instruction queue full?
   logic vinsn_queue_full;
   assign vinsn_queue_full = (vinsn_queue_q.commit_cnt == VInsnQueueDepth);

   // Do we have a vector instruction ready to be issued?
   pe_req_t vinsn_issue;
   logic vinsn_issue_valid;
   assign vinsn_issue       = vinsn_queue_q.vinsn[vinsn_queue_q.issue_pnt];
   assign vinsn_issue_valid = (vinsn_queue_q.issue_cnt != '0);

   // Do we have a vector instruction with results being committed?
   pe_req_t vinsn_commit;
   logic    vinsn_commit_valid;
   assign vinsn_commit       = vinsn_queue_q.vinsn[vinsn_queue_q.commit_pnt];
   assign vinsn_commit_valid = (vinsn_queue_q.commit_cnt != '0);

   // Inform the main sequencer if we are idle
   assign pe_req_ready_o = !vinsn_queue_full;

   // Vector instructions currently running
   logic [NrVInsn-1:0] vinsn_running_d, vinsn_running_q;

   // Interface with the main sequencer
   pe_resp_t pe_resp_d;

   // Permutation control
   logic selIdxVal, permute_i, result_ready_i, result_valid_o;
   vlut_e lut_mode_i;
   
   // assign selIdxVal = vinsn_queue_q.cnt_oprand[vinsn_queue_q.issue_pnt][0];
   assign selIdxVal = sel_idx_val_i;
   assign permute_i = vinsn_queue_q.cnt_oprand[vinsn_queue_q.issue_pnt] == 2'd2;
   // assign result_ready_i = vinsn_queue_q.cnt_oprand[vinsn_queue_q.issue_pnt] == 2'd2;
   assign lut_mode_i = vinsn_issue.lut_mode - 1'b1;


   // Deshuffled and transposed input for sequential access
   logic [ELEN*NumLanes-1:0] operand_i_deshuffled_flat [NumBanksPerLane-1:0];
   elen_t [NumBanksPerLane-1:0][NumLanes-1:0] operand_i_deshuffled;

   // Shuffled output for sequential access
   elen_t [NumBanksPerLane-1:0][NumLanes-1:0] result_o_deshuffled;
   logic [ELEN*NumLanes-1:0] result_o_shuffled_flat [NumBanksPerLane-1:0];
   elen_t [NumLanes-1:0][NumBanksPerLane-1:0]  result_o_shuffled_tmp;


   /////////////////////
   //  Result queues  //
   /////////////////////

   localparam int unsigned ResultQueueDepth = 2;

   // There is a result queue per lane, holding the results that were not
   // yet accepted by the corresponding lane.
   typedef struct packed {
     vid_t id;
     vaddr_t addr;
     elen_t [NumBanksPerLane-1:0] wdata;
   } payload_t;

   // Result queue
   // payload_t [ResultQueueDepth-1:0][NumLanes-1:0] result_queue_d, result_queue_q;
   // logic     [ResultQueueDepth-1:0][NumLanes-1:0] result_queue_valid_d, result_queue_valid_q;
   payload_t [ResultQueueDepth-1:0][NumLanes-1:0] result_queue;
   logic     [ResultQueueDepth-1:0][NumLanes-1:0] result_queue_valid;

   // We need two pointers in the result queue. One pointer to
   // indicate with `payload_t` we are currently writing into (write_pnt),
   // and one pointer to indicate which `payload_t` we are currently
   // reading from and writing into the lanes (read_pnt).
   // logic     [idx_width(ResultQueueDepth)-1:0]   result_queue_write_pnt_d, result_queue_write_pnt_q;
   // logic     [idx_width(ResultQueueDepth)-1:0]   result_queue_read_pnt_d, result_queue_read_pnt_q;

   // We need to count how many valid elements (payload_t) are there in this result queue.
   logic     [idx_width(ResultQueueDepth):0]     result_queue_cnt_d, result_queue_cnt_q;

   // Is the result queue full?
   logic result_queue_full;
   assign result_queue_full = (result_queue_cnt_q == ResultQueueDepth);
   // Is the result queue empty?
   logic result_queue_empty;
   assign result_queue_empty = (result_queue_cnt_q == '0);


   always_comb begin
      // Maintain state
      result_ready_i   = '1;
      vinsn_queue_d    = vinsn_queue_q;
      vinsn_running_d  = vinsn_running_q & pe_vinsn_running_i;

      // result_queue_d           = result_queue_q;
      // result_queue_valid_d     = result_queue_valid_q;
      result_queue_valid       = '0;
      result_queue             = '0;
      result_queue_cnt_d       = result_queue_cnt_q;

      // Set the response to default
      pe_resp_d = '0;

      /////////////////////////
      // Permutation Control //
      /////////////////////////

      // Is there an instruction ready to be issued?
      if (vinsn_issue_valid) begin
         // If the permute is issued, we need to increment the issue pointer
         if(result_ready_i && result_valid_o) begin
            vinsn_queue_d.issue_cnt -= 1;
            if (vinsn_queue_q.issue_pnt == (VInsnQueueDepth-1)) begin : issue_pnt_overflow
               vinsn_queue_d.issue_pnt = '0;
            end : issue_pnt_overflow
            else begin : issue_pnt_increment
               vinsn_queue_d.issue_pnt += 1;
            end : issue_pnt_increment

            // Reset the operand counter
            // vinsn_queue_d.cnt_oprand[vinsn_queue_q.issue_pnt] = '0;

            // Write to the result queue
            for (int unsigned lane = 0; lane < NumLanes; lane++) begin 
               result_queue_valid[0][lane] = 1'b1;
               result_queue[0][lane].id    = vinsn_issue.id;
               result_queue[0][lane].addr  = vaddr(vinsn_issue.vd, NumLanes, VLEN) >> $clog2(NumBanksPerLane);
               result_queue[0][lane].wdata = result_o_shuffled_tmp[lane];
            end

            `ifdef DEBUG
            $display("[permu_finish_issue]: vd = %d, addr = %d, issue_cnt = %d, issue_pnt = %d", vinsn_issue.vd, result_queue[0][0].addr, vinsn_queue_d.issue_cnt, vinsn_queue_d.issue_pnt);
            `endif
         end

         if (permute_i) begin
            vinsn_queue_d.cnt_oprand[vinsn_queue_q.issue_pnt] = '0;

            `ifdef DEBUG
            $display("[permu_fire]");
            `endif
         end
         
         if(operand_ready_o && operand_valid_i) begin
            vinsn_queue_d.cnt_oprand[vinsn_queue_q.issue_pnt] += 1'b1;

            `ifdef DEBUG
            $display("[permu_oprand]: cnt_oprand_d=%d, lut_mode_i=%d, selIdxVal=%d, operand_valid_i=%d, operand_ready_o=%d", vinsn_queue_d.cnt_oprand[vinsn_queue_q.issue_pnt], lut_mode_i, selIdxVal, operand_valid_i, operand_ready_o);
            $display("vinsn_queue_q.cnt_oprand=%d, vinsn_queue_q.issue_cnt=%d, vinsn_queue_q.commit_cnt=%d, vinsn_queue_q.issue_pnt=%d", vinsn_queue_q.cnt_oprand[vinsn_queue_q.issue_pnt], vinsn_queue_q.issue_cnt, vinsn_queue_q.commit_cnt, vinsn_queue_q.issue_pnt);
            `endif
         end
      end

      //////////////
      //  Commit  //
      //////////////

      for (int unsigned lane = 0; lane < NumLanes; lane++) begin: result_write
         permu_result_req_o[lane]   = result_queue_valid[0][lane];
         permu_result_id_o[lane]    = result_queue[0][lane].id;
         permu_result_addr_o[lane]  = result_queue[0][lane].addr;
         permu_result_wdata_o[lane] = result_queue[0][lane].wdata;
      end: result_write


      // Finished committing the results of a vector instruction
      if (vinsn_commit_valid) begin
         // Received a grant from the VRF.
         // Deactivate the request, but do not bump the pointers for now.
         if (&permu_result_req_o && &permu_result_gnt_i) begin
            // Reset the queue
            // result_queue_d[0]       = '0;
            // result_queue_valid_d[0] = '0;

            // Mark the vector instruction as being done
            pe_resp_d.vinsn_done[vinsn_commit.id] = 1'b1;

            // Update the commit counters and pointers
            vinsn_queue_d.commit_cnt -= 1;
            if (vinsn_queue_q.commit_pnt == VInsnQueueDepth-1)
               vinsn_queue_d.commit_pnt = '0;
            else
               vinsn_queue_d.commit_pnt += 1;

            // Reset the operand counter
            vinsn_queue_d.cnt_oprand[vinsn_queue_q.commit_pnt] = '0;

            `ifdef DEBUG
            $display("[permu_commit] vinsn_queue_d.commit_cnt=%d, vinsn_queue_d.commit_pnt=%d", vinsn_queue_d.commit_cnt, vinsn_queue_d.commit_pnt);
            `endif
         end
      end


      //////////////////////////////
      //  Accept new instruction  //
      //////////////////////////////

      if (!vinsn_queue_full && pe_req_valid_i && !vinsn_running_q[pe_req_i.id] && pe_req_i.vfu == VFU_PermUnit) begin
         vinsn_queue_d.vinsn[vinsn_queue_q.accept_pnt] = pe_req_i;
         vinsn_running_d[pe_req_i.id]                  = 1'b1;

         // Initialize the operand counter
         vinsn_queue_d.cnt_oprand[vinsn_queue_q.accept_pnt] = '0;

         // Bump pointers and counters of the vector instruction queue
         vinsn_queue_d.accept_pnt += 1;
         vinsn_queue_d.issue_cnt += 1;
         vinsn_queue_d.commit_cnt += 1;

         `ifdef DEBUG
         $display("[permu_accept] vs1 = %d, vs2 = %d, vd = %d, lut_mode = %d, issue_cnt = %d, accept_pnt=%d, vinsn_running_d=%b", pe_req_i.vs1, pe_req_i.vs2, pe_req_i.vd, pe_req_i.lut_mode, vinsn_queue_d.issue_cnt, vinsn_queue_d.accept_pnt, vinsn_running_d);
         `endif
      end

   end
  

   always_ff @(posedge clk_i or negedge rst_ni) begin
      if (!rst_ni) begin
         vinsn_running_q         <= '0;
         vinsn_queue_q           <= '0;
         pe_resp_o               <= '0;

         // result_queue_q          <= '0;
         // result_queue_valid_q    <= '0;
         result_queue_cnt_q      <= '0;
      end else begin
         vinsn_running_q         <= vinsn_running_d;
         vinsn_queue_q           <= vinsn_queue_d;
         pe_resp_o               <= pe_resp_d;

         // result_queue_q          <= result_queue_d;
         // result_queue_valid_q    <= result_queue_valid_d;
         result_queue_cnt_q      <= result_queue_cnt_d;
      end
   end


   always_comb begin
      // Deshuffle the input operand before sending it to the permutation network
      for(int bank=0; bank<NumBanksPerLane; bank++) begin
         for (int b = 0; b < (NumLanes * ELENB); b++) begin
            automatic int deshuffle_idx = deshuffle_index(b, NumLanes, EW16);
            automatic int lane_idx    = b / ELENB; // rounded down to nearest integer
            automatic int lane_offset = b % ELENB;
            operand_i_deshuffled_flat[bank][8*deshuffle_idx +: 8] = operand_i[lane_idx][bank][8*lane_offset +: 8];
         end
         // Reshape the input operand along the lane dimension
         operand_i_deshuffled[bank] = operand_i_deshuffled_flat[bank];
      end

      // Shuffle the result operand before sending it to the output
      for(int bank=0; bank<NumBanksPerLane; bank++) begin
         for (int b = 0; b < (NumLanes * ELENB); b++) begin
            automatic int shuffle_idx = shuffle_index(b, NumLanes, EW16);
            automatic int lane_idx    = b / ELENB; // rounded down to nearest integer
            automatic int lane_offset = b % ELENB;
            result_o_shuffled_flat[bank][8*shuffle_idx +: 8] = result_o_deshuffled[bank][lane_idx][8*lane_offset +: 8];
         end
         for(int lane=0; lane<NumLanes; lane++) begin
            result_o_shuffled_tmp[lane][bank] = result_o_shuffled_flat[bank][ELEN*lane +: ELEN];
         end
      end
   end

   `ifdef DEBUG
   always_ff @(posedge clk_i) begin
      if (operand_valid_i && operand_ready_o) begin
         // $display("[permu_operand_i] ");
         // for(int bank=0; bank<NumBanksPerLane; bank++) begin
         //    $write("[bank=%d] ", bank);
         //    for(int lane=0; lane<NumLanes; lane++) begin
         //       $write("%h ", operand_i[lane][bank]);
         //    end
         //    $display("");
         // end

         $display("[permu_deshuffled_operand_i] ");
         for(int bank=0; bank<NumBanksPerLane; bank++) begin
            $write("[bank=%d] ", bank);
            for(int lane=0; lane<NumLanes; lane++) begin
               $write("%h ", operand_i_deshuffled[bank][lane]);
            end
            $display("");
         end
      end

      // if(result_valid_o) begin
      //    $display("[permu_deshuffled_result_o] ");
      //    for(int bank=0; bank<NumBanksPerLane; bank++) begin
      //       $write("[bank=%d] ", bank);
      //       for(int lane=0; lane<NumLanes; lane++) begin
      //          $write("%h ", result_o_deshuffled[bank][lane]);
      //       end
      //       $display("");
      //    end
      // end

      if(&permu_result_req_o) begin
         $display("[permu_shuffled_result_o] ");
         for(int bank=0; bank<NumBanksPerLane; bank++) begin
            $write("[bank=%d] ", bank);
            for(int lane=0; lane<NumLanes; lane++) begin
               $write("%h ", permu_result_wdata_o[lane][bank]);
            end
            $display("");
         end
      end
   end
   `endif


  // ----------
   // Permutation network
   // ----------
   SimdPermutation simd_permutation(
    .clock(clk_i),
    .reset(~rst_ni),

    .io_permute(permute_i),
    .io_mode(lut_mode_i), 
    .io_selIdxVal(selIdxVal),

    .io_inValid(operand_valid_i),
    .io_inReady(operand_ready_o),
    .io_inData_0_0(operand_i_deshuffled[0][0]),
    .io_inData_0_1(operand_i_deshuffled[0][1]),
    .io_inData_0_2(operand_i_deshuffled[0][2]),
    .io_inData_0_3(operand_i_deshuffled[0][3]),
    .io_inData_0_4(operand_i_deshuffled[0][4]),
    .io_inData_0_5(operand_i_deshuffled[0][5]),
    .io_inData_0_6(operand_i_deshuffled[0][6]),
    .io_inData_0_7(operand_i_deshuffled[0][7]),
    .io_inData_1_0(operand_i_deshuffled[1][0]),
    .io_inData_1_1(operand_i_deshuffled[1][1]),
    .io_inData_1_2(operand_i_deshuffled[1][2]),
    .io_inData_1_3(operand_i_deshuffled[1][3]),
    .io_inData_1_4(operand_i_deshuffled[1][4]),
    .io_inData_1_5(operand_i_deshuffled[1][5]),
    .io_inData_1_6(operand_i_deshuffled[1][6]),
    .io_inData_1_7(operand_i_deshuffled[1][7]),
    .io_inData_2_0(operand_i_deshuffled[2][0]),
    .io_inData_2_1(operand_i_deshuffled[2][1]),
    .io_inData_2_2(operand_i_deshuffled[2][2]),
    .io_inData_2_3(operand_i_deshuffled[2][3]),
    .io_inData_2_4(operand_i_deshuffled[2][4]),
    .io_inData_2_5(operand_i_deshuffled[2][5]),
    .io_inData_2_6(operand_i_deshuffled[2][6]),
    .io_inData_2_7(operand_i_deshuffled[2][7]),
    .io_inData_3_0(operand_i_deshuffled[3][0]),
    .io_inData_3_1(operand_i_deshuffled[3][1]),
    .io_inData_3_2(operand_i_deshuffled[3][2]),
    .io_inData_3_3(operand_i_deshuffled[3][3]),
    .io_inData_3_4(operand_i_deshuffled[3][4]),
    .io_inData_3_5(operand_i_deshuffled[3][5]),
    .io_inData_3_6(operand_i_deshuffled[3][6]),
    .io_inData_3_7(operand_i_deshuffled[3][7]),
    .io_inData_4_0(operand_i_deshuffled[4][0]),
    .io_inData_4_1(operand_i_deshuffled[4][1]),
    .io_inData_4_2(operand_i_deshuffled[4][2]),
    .io_inData_4_3(operand_i_deshuffled[4][3]),
    .io_inData_4_4(operand_i_deshuffled[4][4]),
    .io_inData_4_5(operand_i_deshuffled[4][5]),
    .io_inData_4_6(operand_i_deshuffled[4][6]),
    .io_inData_4_7(operand_i_deshuffled[4][7]),
    .io_inData_5_0(operand_i_deshuffled[5][0]),
    .io_inData_5_1(operand_i_deshuffled[5][1]),
    .io_inData_5_2(operand_i_deshuffled[5][2]),
    .io_inData_5_3(operand_i_deshuffled[5][3]),
    .io_inData_5_4(operand_i_deshuffled[5][4]),
    .io_inData_5_5(operand_i_deshuffled[5][5]),
    .io_inData_5_6(operand_i_deshuffled[5][6]),
    .io_inData_5_7(operand_i_deshuffled[5][7]),
    .io_inData_6_0(operand_i_deshuffled[6][0]),
    .io_inData_6_1(operand_i_deshuffled[6][1]),
    .io_inData_6_2(operand_i_deshuffled[6][2]),
    .io_inData_6_3(operand_i_deshuffled[6][3]),
    .io_inData_6_4(operand_i_deshuffled[6][4]),
    .io_inData_6_5(operand_i_deshuffled[6][5]),
    .io_inData_6_6(operand_i_deshuffled[6][6]),
    .io_inData_6_7(operand_i_deshuffled[6][7]),
    .io_inData_7_0(operand_i_deshuffled[7][0]),
    .io_inData_7_1(operand_i_deshuffled[7][1]),
    .io_inData_7_2(operand_i_deshuffled[7][2]),
    .io_inData_7_3(operand_i_deshuffled[7][3]),
    .io_inData_7_4(operand_i_deshuffled[7][4]),
    .io_inData_7_5(operand_i_deshuffled[7][5]),
    .io_inData_7_6(operand_i_deshuffled[7][6]),
    .io_inData_7_7(operand_i_deshuffled[7][7]),
    .io_outValid(result_valid_o), 
    .io_outReady(result_ready_i), 
    .io_outData_0_0(result_o_deshuffled[0][0]),
    .io_outData_0_1(result_o_deshuffled[0][1]),
    .io_outData_0_2(result_o_deshuffled[0][2]),
    .io_outData_0_3(result_o_deshuffled[0][3]),
    .io_outData_0_4(result_o_deshuffled[0][4]),
    .io_outData_0_5(result_o_deshuffled[0][5]),
    .io_outData_0_6(result_o_deshuffled[0][6]),
    .io_outData_0_7(result_o_deshuffled[0][7]),
    .io_outData_1_0(result_o_deshuffled[1][0]),
    .io_outData_1_1(result_o_deshuffled[1][1]),
    .io_outData_1_2(result_o_deshuffled[1][2]),
    .io_outData_1_3(result_o_deshuffled[1][3]),
    .io_outData_1_4(result_o_deshuffled[1][4]),
    .io_outData_1_5(result_o_deshuffled[1][5]),
    .io_outData_1_6(result_o_deshuffled[1][6]),
    .io_outData_1_7(result_o_deshuffled[1][7]),
    .io_outData_2_0(result_o_deshuffled[2][0]),
    .io_outData_2_1(result_o_deshuffled[2][1]),
    .io_outData_2_2(result_o_deshuffled[2][2]),
    .io_outData_2_3(result_o_deshuffled[2][3]),
    .io_outData_2_4(result_o_deshuffled[2][4]),
    .io_outData_2_5(result_o_deshuffled[2][5]),
    .io_outData_2_6(result_o_deshuffled[2][6]),
    .io_outData_2_7(result_o_deshuffled[2][7]),
    .io_outData_3_0(result_o_deshuffled[3][0]),
    .io_outData_3_1(result_o_deshuffled[3][1]),
    .io_outData_3_2(result_o_deshuffled[3][2]),
    .io_outData_3_3(result_o_deshuffled[3][3]),
    .io_outData_3_4(result_o_deshuffled[3][4]),
    .io_outData_3_5(result_o_deshuffled[3][5]),
    .io_outData_3_6(result_o_deshuffled[3][6]),
    .io_outData_3_7(result_o_deshuffled[3][7]),
    .io_outData_4_0(result_o_deshuffled[4][0]),
    .io_outData_4_1(result_o_deshuffled[4][1]),
    .io_outData_4_2(result_o_deshuffled[4][2]),
    .io_outData_4_3(result_o_deshuffled[4][3]),
    .io_outData_4_4(result_o_deshuffled[4][4]),
    .io_outData_4_5(result_o_deshuffled[4][5]),
    .io_outData_4_6(result_o_deshuffled[4][6]),
    .io_outData_4_7(result_o_deshuffled[4][7]),
    .io_outData_5_0(result_o_deshuffled[5][0]),
    .io_outData_5_1(result_o_deshuffled[5][1]),
    .io_outData_5_2(result_o_deshuffled[5][2]),
    .io_outData_5_3(result_o_deshuffled[5][3]),
    .io_outData_5_4(result_o_deshuffled[5][4]),
    .io_outData_5_5(result_o_deshuffled[5][5]),
    .io_outData_5_6(result_o_deshuffled[5][6]),
    .io_outData_5_7(result_o_deshuffled[5][7]),
    .io_outData_6_0(result_o_deshuffled[6][0]),
    .io_outData_6_1(result_o_deshuffled[6][1]),
    .io_outData_6_2(result_o_deshuffled[6][2]),
    .io_outData_6_3(result_o_deshuffled[6][3]),
    .io_outData_6_4(result_o_deshuffled[6][4]),
    .io_outData_6_5(result_o_deshuffled[6][5]),
    .io_outData_6_6(result_o_deshuffled[6][6]),
    .io_outData_6_7(result_o_deshuffled[6][7]),
    .io_outData_7_0(result_o_deshuffled[7][0]),
    .io_outData_7_1(result_o_deshuffled[7][1]),
    .io_outData_7_2(result_o_deshuffled[7][2]),
    .io_outData_7_3(result_o_deshuffled[7][3]),
    .io_outData_7_4(result_o_deshuffled[7][4]),
    .io_outData_7_5(result_o_deshuffled[7][5]),
    .io_outData_7_6(result_o_deshuffled[7][6]),
    .io_outData_7_7(result_o_deshuffled[7][7])
   );

endmodule
