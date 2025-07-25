// Copyright 2021 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51
//
// Author: Matheus Cavalcante <matheusd@iis.ee.ethz.ch>
// Description:
// Ara's top-level, interfacing with Ariane.

module ara import ara_pkg::*; import rvv_pkg::*; #(
    // RVV Parameters
    parameter  int           unsigned NrLanes      = 0,                          // Number of parallel vector lanes.
    parameter  int           unsigned VLEN         = 0,                          // VLEN [bit]
    parameter  int           unsigned OSSupport    = 1,
    // Support for floating-point data types
    parameter  fpu_support_e          FPUSupport   = FPUSupportHalfSingleDouble,
    // External support for vfrec7, vfrsqrt7
    parameter  fpext_support_e        FPExtSupport = FPExtSupportEnable,
    // Support for fixed-point data types
    parameter  fixpt_support_e        FixPtSupport = FixedPointEnable,
    // Support for segment memory operations
    parameter  seg_support_e          SegSupport   = SegSupportEnable,
    // CVA6 configuration
    parameter  config_pkg::cva6_cfg_t CVA6Cfg      = cva6_config_pkg::cva6_cfg,
    // CVA6-related parameters
    parameter type                    exception_t        = logic,
    parameter type                    accelerator_req_t  = logic,
    parameter type                    accelerator_resp_t = logic,
    parameter type                    acc_mmu_req_t      = logic,
    parameter type                    acc_mmu_resp_t     = logic,
    parameter type                    cva6_to_acc_t      = logic,
    parameter type                    acc_to_cva6_t      = logic,
    // AXI Interface
    parameter  int           unsigned AxiDataWidth = 0,
    parameter  int           unsigned AxiAddrWidth = 0,
    parameter  type                   axi_ar_t     = logic,
    parameter  type                   axi_r_t      = logic,
    parameter  type                   axi_aw_t     = logic,
    parameter  type                   axi_w_t      = logic,
    parameter  type                   axi_b_t      = logic,
    parameter  type                   axi_req_t    = logic,
    parameter  type                   axi_resp_t   = logic,
    // Dependant parameters. DO NOT CHANGE!
    // Ara has NrLanes + 3 processing elements: each one of the lanes, the vector load unit, the
    // vector store unit, the slide unit, and the mask unit.
    localparam int           unsigned NrPEs        = NrLanes + 4 + 1, // +1 for the parallel permutation unit
    localparam type                   vlen_t       = logic[$clog2(VLEN+1)-1:0],
    localparam int           unsigned VLENB        = VLEN / 8
  ) (
    // Clock and Reset
    input  logic              clk_i,
    input  logic              rst_ni,
    // Scan chain
    input  logic              scan_enable_i,
    input  logic              scan_data_i,
    output logic              scan_data_o,

    // Interface with Ariane
    input  cva6_to_acc_t      acc_req_i,
    output acc_to_cva6_t      acc_resp_o,
    // AXI interface
    output axi_req_t          axi_req_o,
    input  axi_resp_t         axi_resp_i
  );

  `include "common_cells/registers.svh"
  `include "ara/ara_typedef.svh"
  import cf_math_pkg::idx_width;

  ///////////////////
  //  Definitions  //
  ///////////////////

  localparam int unsigned MaxVLenPerLane  = VLEN / NrLanes;       // In bits
  localparam int unsigned MaxVLenBPerLane = VLENB / NrLanes;      // In bytes
  localparam int unsigned VRFSizePerLane  = MaxVLenPerLane * 32;  // In bits
  localparam int unsigned VRFBSizePerLane = MaxVLenBPerLane * 32; // In bytes
  // Address of an element in each lane's VRF
  typedef logic [idx_width(VRFBSizePerLane)-1:0] vaddr_t;

  localparam int unsigned DataWidth = $bits(elen_t);
  localparam int unsigned StrbWidth = DataWidth / 8;
  typedef logic [StrbWidth-1:0] strb_t;

  // Interfaces between Ara's dispatcher and Ara's backend
  typedef struct packed {
    ara_op_e op; // Operation

    // Stores and slides do not re-shuffle the
    // source registers. In these two cases, vl refers
    // to the target EEW and vtype.vsew, respectively.
    // Since operand requesters work with the old
    // eew of the source registers, we should rescale
    // vl to the old eew to fetch the correct number of Bytes.
    //
    // Another solution would be to pass directly the target
    // eew (vstores) or the vtype.vsew (vslides), but this would
    // create confusion with the current naming convention
    logic scale_vl;

    // Mask vector register operand
    logic vm;
    rvv_pkg::vew_e eew_vmask;

    // 1st vector register operand
    logic [4:0] vs1;
    logic use_vs1;
    opqueue_conversion_e conversion_vs1;
    rvv_pkg::vew_e eew_vs1;
    rvv_pkg::vew_e old_eew_vs1;

    // 2nd vector register operand
    logic [4:0] vs2;
    logic use_vs2;
    opqueue_conversion_e conversion_vs2;
    rvv_pkg::vew_e eew_vs2;

    // Use vd as an operand as well (e.g., vmacc)
    logic use_vd_op;
    rvv_pkg::vew_e eew_vd_op;

    // Scalar operand
    elen_t scalar_op;
    logic use_scalar_op;

    // 2nd scalar operand: stride for constant-strided vector load/stores, slide offset for vector
    // slides
    elen_t stride;
    logic is_stride_np2;

    // Destination vector register
    logic [4:0] vd;
    logic use_vd;

    // If asserted: vs2 is kept in MulFPU opqueue C, and vd_op in MulFPU A
    logic swap_vs2_vd_op;

    // Effective length multiplier
    rvv_pkg::vlmul_e emul;

    // Number of segments in segment mem op
    logic [2:0] nf;

    // Is this a fault-only-first load?
    logic fault_only_first;

    // Rounding-Mode for FP operations
    fpnew_pkg::roundmode_e fp_rm;
    // Widen FP immediate (re-encoding)
    logic wide_fp_imm;
    // Resizing of FP conversions
    resize_e cvt_resize;

    // Vector machine metadata
    vlen_t vl;
    vlen_t vstart;
    rvv_pkg::vtype_t vtype;

    // Request token, for registration in the sequencer
    logic token;

    // Config bits for lookup table (LUT) mode
    rvv_pkg::vlut_e lut_mode;
    rvv_pkg::vlut_pack_e lut_pack;
  } ara_req_t;

  typedef struct packed {
    // Scalar response
    elen_t resp;

    // Instruction triggered an exception
    exception_t exception;

    // Fault-only-first exception on element whose idx > 0
    logic fof_exception;

    // New value for vstart
    vlen_t exception_vstart;
  } ara_resp_t;

  //////////////////
  //  Dispatcher  //
  //////////////////

  // Interface with the sequencer
  ara_req_t                     ara_req;
  logic                         ara_req_valid;
  logic                         ara_req_ready;
  ara_resp_t                    ara_resp;
  logic                         ara_resp_valid;
  logic                         ara_idle;
  // Interface with the VSTU
  logic                         core_st_pending;
  logic                         load_complete;
  logic                         store_complete;
  logic                         store_pending;
  // Interface with the lanes
  logic      [NrLanes-1:0][4:0] fflags_ex;
  logic      [NrLanes-1:0]      fflags_ex_valid;
  logic      [NrLanes-1:0]      vxsat_flag;
  vxrm_t     [NrLanes-1:0]      alu_vxrm;
  // Flush support for store exceptions
  logic lsu_ex_flush_lane, lsu_ex_flush_done;
  logic [NrLanes-1:0] lsu_ex_flush_stu;

  ara_dispatcher #(
    .CVA6Cfg           (CVA6Cfg           ),
    .NrLanes           (NrLanes           ),
    .VLEN              (VLEN              ),
    .FPUSupport        (FPUSupport        ),
    .SegSupport        (SegSupport        ),
    .ara_req_t         (ara_req_t         ),
    .ara_resp_t        (ara_resp_t        ),
    .accelerator_req_t (accelerator_req_t ),
    .accelerator_resp_t(accelerator_resp_t)
  ) i_dispatcher (
    .clk_i             (clk_i           ),
    .rst_ni            (rst_ni          ),
    // Interface with Ariane
    .acc_req_i         (acc_req_i.acc_req  ),
    .acc_resp_o        (acc_resp_o.acc_resp),
    // Interface with the sequencer
    .ara_req_o         (ara_req         ),
    .ara_req_valid_o   (ara_req_valid   ),
    .ara_req_ready_i   (ara_req_ready   ),
    .ara_resp_i        (ara_resp        ),
    .ara_resp_valid_i  (ara_resp_valid  ),
    .ara_idle_i        (ara_idle        ),
    // Interface with the lanes
    .vxsat_flag_i      (vxsat_flag      ),
    .alu_vxrm_o        (alu_vxrm        ),
    .fflags_ex_i       (fflags_ex       ),
    .fflags_ex_valid_i (fflags_ex_valid ),
    // Flush support
    .lsu_ex_flush_o     (lsu_ex_flush_lane),
    .lsu_ex_flush_done_i(lsu_ex_flush_done),
    // Interface with the Vector Store Unit
    .core_st_pending_o (core_st_pending ),
    .load_complete_i   (load_complete   ),
    .store_complete_i  (store_complete  ),
    .store_pending_i   (store_pending   )
  );

  /////////////////
  //  Sequencer  //
  /////////////////

  // Interface with the PEs
  pe_req_t                         pe_req;
  logic                            pe_req_valid;
  logic              [NrPEs-1:0]   pe_req_ready;
  logic              [NrVInsn-1:0] pe_vinsn_running;
  pe_resp_t          [NrPEs-1:0]   pe_resp;
  // Interface with the address generator
  logic                            addrgen_ack;
  exception_t                      addrgen_exception;
  vlen_t                           addrgen_exception_vstart;
  logic                            addrgen_fof_exception;
  logic                            lsu_current_burst_exception;
  logic              [NrLanes-1:0] alu_vinsn_done;
  logic              [NrLanes-1:0] mfpu_vinsn_done;
  // Interface with the operand requesters
  logic [NrVInsn-1:0][NrVInsn-1:0] global_hazard_table;
  // Indicate if the parallel permutation unit is active
  logic              [NrVInsn-1:0] permu_active_table;
  // Ready for lane 0 (scalar operand fwd)
  logic pe_scalar_resp_ready;

  // Mask unit operands
  elen_t     [NrLanes-1:0][NrMaskFUnits+2-1:0] masku_operand;
  logic      [NrLanes-1:0][NrMaskFUnits+2-1:0] masku_operand_valid;
  logic      [NrLanes-1:0][NrMaskFUnits+2-1:0] masku_operand_ready_masku, masku_operand_ready_lane;
  strb_t     [NrLanes-1:0]                     mask;
  logic      [NrLanes-1:0]                     mask_valid;
  logic                                        mask_valid_lane;
  logic      [NrLanes-1:0]                     lane_mask_ready;

  // Mask unit scalar result variables
  elen_t     result_scalar;
  logic      result_scalar_valid;

  ara_sequencer #(
    .NrLanes    (NrLanes   ),
    .VLEN       (VLEN      ),
    .ara_req_t  (ara_req_t ),
    .ara_resp_t (ara_resp_t),
    .pe_req_t   (pe_req_t  ),
    .pe_resp_t  (pe_resp_t ),
    .exception_t(exception_t)
  ) i_sequencer (
    .clk_i                 (clk_i                    ),
    .rst_ni                (rst_ni                   ),
    // Interface with the dispatcher
    .ara_req_i             (ara_req                  ),
    .ara_req_valid_i       (ara_req_valid            ),
    .ara_req_ready_o       (ara_req_ready            ),
    .ara_resp_o            (ara_resp                 ),
    .ara_resp_valid_o      (ara_resp_valid           ),
    .ara_idle_o            (ara_idle                 ),
    // Interface with the PEs
    .pe_req_o              (pe_req                   ),
    .pe_req_valid_o        (pe_req_valid             ),
    .pe_vinsn_running_o    (pe_vinsn_running         ),
    .pe_req_ready_i        (pe_req_ready             ),
    .pe_resp_i             (pe_resp                  ),
    .alu_vinsn_done_i      (alu_vinsn_done[0]        ),
    .mfpu_vinsn_done_i     (mfpu_vinsn_done[0]       ),
    // Interface with the operand requesters
    .global_hazard_table_o (global_hazard_table      ),
    // Interface with the parallel permutation unit
    .permu_active_table_o  (permu_active_table      ),
    // Interface with the lane 0
    .pe_scalar_resp_i      (pe_req.op inside{[VCPOP:VFIRST]} ? result_scalar : masku_operand[0][1]), // MaskB OpQueue
    .pe_scalar_resp_valid_i(pe_req.op inside{[VCPOP:VFIRST]} ? result_scalar_valid : masku_operand_valid[0][1]), // MaskB OpQueue Valid
    .pe_scalar_resp_ready_o(pe_scalar_resp_ready     ),
    // Interface with the address generator
    .addrgen_ack_i         (addrgen_ack              ),
    .addrgen_exception_i   (addrgen_exception        ),
    .addrgen_exception_vstart_i(addrgen_exception_vstart),
    .addrgen_fof_exception_i(addrgen_fof_exception),
    .lsu_current_burst_exception_i(lsu_current_burst_exception)
  );

  `ifdef DEBUG
    always_ff @(posedge clk_i) begin
      if(pe_req_valid && pe_req_ready) begin
        $display("[ARA] pe_req: op=%h, id=%d, vfu=%h, scale_vl=%d, vl=%d, vs1=%d, vs2=%d, vd=%d, lut_mode=%h", pe_req.op, pe_req.id, pe_req.vfu, pe_req.scale_vl, pe_req.vl, pe_req.vs1, pe_req.vs2, pe_req.vd, pe_req.lut_mode);
      end
    end
  `endif

  // Scalar move support
  always_comb begin
    masku_operand_ready_lane = masku_operand_ready_masku;
    // The scalar move fetches the data from lane 0 - MaskB OpQueue (idx == 1)
    masku_operand_ready_lane[0][1] = masku_operand_ready_masku[0][1] | pe_scalar_resp_ready;
  end

  /////////////
  //  Lanes  //
  /////////////

  // Interface with the vector load/store unit
  // Store unit
  elen_t     [NrLanes-1:0]                     stu_operand;
  logic      [NrLanes-1:0]                     stu_operand_valid;
  logic      [NrLanes-1:0]                     stu_operand_ready;
  // Slide unit/address generation operands
  elen_t     [NrLanes-1:0]                     sldu_addrgen_operand;
  logic      [NrLanes-1:0]                     sldu_operand_valid;
  logic      [NrLanes-1:0]                     addrgen_operand_valid;
  logic      [NrLanes-1:0]                     sldu_operand_ready;
  sldu_mux_e                                   sldu_mux_sel;
  logic                                        addrgen_operand_ready;
  logic      [NrLanes-1:0]                     sldu_red_valid;

  // Results
  // Load Unit
  logic      [NrLanes-1:0]                     ldu_result_req;
  vid_t      [NrLanes-1:0]                     ldu_result_id;
  vaddr_t    [NrLanes-1:0]                     ldu_result_addr;
  elen_t     [NrLanes-1:0]                     ldu_result_wdata;
  strb_t     [NrLanes-1:0]                     ldu_result_be;
  logic      [NrLanes-1:0]                     ldu_result_gnt;
  logic      [NrLanes-1:0]                     ldu_result_final_gnt;
  // Slide Unit
  logic      [NrLanes-1:0]                     sldu_result_req;
  vid_t      [NrLanes-1:0]                     sldu_result_id;
  vaddr_t    [NrLanes-1:0]                     sldu_result_addr;
  elen_t     [NrLanes-1:0]                     sldu_result_wdata;
  strb_t     [NrLanes-1:0]                     sldu_result_be;
  logic      [NrLanes-1:0]                     sldu_result_gnt;
  logic      [NrLanes-1:0]                     sldu_result_final_gnt;
  // Mask Unit
  logic      [NrLanes-1:0]                     masku_result_req;
  vid_t      [NrLanes-1:0]                     masku_result_id;
  vaddr_t    [NrLanes-1:0]                     masku_result_addr;
  elen_t     [NrLanes-1:0]                     masku_result_wdata;
  strb_t     [NrLanes-1:0]                     masku_result_be;
  logic      [NrLanes-1:0]                     masku_result_gnt;
  logic      [NrLanes-1:0]                     masku_result_final_gnt;
  logic      [NrLanes-1:0]                     masku_vrgat_req_valid;
  logic      [NrLanes-1:0]                     masku_vrgat_req_ready;
  vrgat_req_t                                  masku_vrgat_req;
  // Parallel LUT
  elen_t [NrLanes-1:0][NrVRFBanksPerLane-1:0]  permu_operand_lane_o;
  logic  [NrLanes-1:0]                         permu_sel_idx_val_lane_o;
  logic  [NrLanes-1:0]                         permu_operand_valid_lane_o;
  logic  [NrLanes-1:0]                         permu_operand_ready_lane_i;
  // logic  [1:0][NrLanes-1:0]                    permu_operand_ready_lane_i;

  logic     [NrLanes-1:0]                      permu_result_req;
  vid_t     [NrLanes-1:0]                      permu_result_id;
  vaddr_t   [NrLanes-1:0]                      permu_result_addr;
  elen_t [NrLanes-1:0][NrVRFBanksPerLane-1:0]  permu_result_wdata;
  logic     [NrLanes-1:0]                      permu_result_gnt;


  for (genvar lane = 0; lane < NrLanes; lane++) begin: gen_lanes
    lane #(
      .NrLanes              (NrLanes              ),
      .VLEN                 (VLEN                 ),
      .CVA6Cfg              (CVA6Cfg              ),
      .FPUSupport           (FPUSupport           ),
      .FPExtSupport         (FPExtSupport         ),
      .FixPtSupport         (FixPtSupport         ),
      .pe_req_t_bits        ($bits(pe_req_t)      ),
      .pe_resp_t_bits       ($bits(pe_resp_t)     )
    ) i_lane (
      .clk_i                           (clk_i                               ),
      .rst_ni                          (rst_ni                              ),
      .scan_enable_i                   (scan_enable_i                       ),
      .scan_data_i                     (1'b0                                ),
      .scan_data_o                     (/* Unused */                        ),
      .lane_id_i                       (lane[idx_width(NrLanes)-1:0]        ),
      // Interface with the dispatcher
      .vxsat_flag_o                    (vxsat_flag[lane]                    ),
      .alu_vxrm_i                      (alu_vxrm[lane]                      ),
      .fflags_ex_o                     (fflags_ex[lane]                     ),
      .fflags_ex_valid_o               (fflags_ex_valid[lane]               ),
      // Support for store exception flush
      .lsu_ex_flush_i                  (lsu_ex_flush_lane                   ),
      .lsu_ex_flush_o                  (lsu_ex_flush_stu[lane]              ),
      // Interface with the sequencer
      .pe_req_i                        (pe_req                              ),
      .pe_req_valid_i                  (pe_req_valid                        ),
      .pe_vinsn_running_i              (pe_vinsn_running                    ),
      .pe_req_ready_o                  (pe_req_ready[lane]                  ),
      .pe_resp_o                       (pe_resp[lane]                       ),
      .alu_vinsn_done_o                (alu_vinsn_done[lane]                ),
      .mfpu_vinsn_done_o               (mfpu_vinsn_done[lane]               ),
      .global_hazard_table_i           (global_hazard_table                 ),
      // Interface with the parallel permutation unit
      .permu_active_table_i            (permu_active_table                  ),
      // Interface with the slide unit
      .sldu_result_req_i               (sldu_result_req[lane]               ),
      .sldu_result_addr_i              (sldu_result_addr[lane]              ),
      .sldu_result_id_i                (sldu_result_id[lane]                ),
      .sldu_result_wdata_i             (sldu_result_wdata[lane]             ),
      .sldu_result_be_i                (sldu_result_be[lane]                ),
      .sldu_result_gnt_o               (sldu_result_gnt[lane]               ),
      .sldu_result_final_gnt_o         (sldu_result_final_gnt[lane]         ),
      // Interface with the load unit
      .ldu_result_req_i                (ldu_result_req[lane]                ),
      .ldu_result_addr_i               (ldu_result_addr[lane]               ),
      .ldu_result_id_i                 (ldu_result_id[lane]                 ),
      .ldu_result_wdata_i              (ldu_result_wdata[lane]              ),
      .ldu_result_be_i                 (ldu_result_be[lane]                 ),
      .ldu_result_gnt_o                (ldu_result_gnt[lane]                ),
      .ldu_result_final_gnt_o          (ldu_result_final_gnt[lane]          ),
      // Interface with the store unit
      .stu_operand_o                   (stu_operand[lane]                   ),
      .stu_operand_valid_o             (stu_operand_valid[lane]             ),
      .stu_operand_ready_i             (stu_operand_ready[lane]             ),
      // Interface with the slide/address generation unit
      .sldu_addrgen_operand_o          (sldu_addrgen_operand[lane]          ),
      .sldu_operand_valid_o            (sldu_operand_valid[lane]            ),
      .addrgen_operand_valid_o         (addrgen_operand_valid[lane]         ),
      .addrgen_operand_ready_i         (addrgen_operand_ready               ),
      .sldu_mux_sel_i                  (sldu_mux_sel                        ),
      .sldu_operand_ready_i            (sldu_operand_ready[lane]            ),
      .sldu_red_valid_i                (sldu_red_valid[lane]                ),
      // Interface with the mask unit
      .mask_operand_o                  (masku_operand[lane]                 ),
      .mask_operand_valid_o            (masku_operand_valid[lane]           ),
      .mask_operand_ready_i            (masku_operand_ready_lane[lane]      ),
      .masku_result_req_i              (masku_result_req[lane]              ),
      .masku_result_addr_i             (masku_result_addr[lane]             ),
      .masku_result_id_i               (masku_result_id[lane]               ),
      .masku_result_wdata_i            (masku_result_wdata[lane]            ),
      .masku_result_be_i               (masku_result_be[lane]               ),
      .masku_result_gnt_o              (masku_result_gnt[lane]              ),
      .masku_result_final_gnt_o        (masku_result_final_gnt[lane]        ),
      .masku_vrgat_req_valid_i         (masku_vrgat_req_valid[lane]         ),
      .masku_vrgat_req_ready_o         (masku_vrgat_req_ready[lane]         ),
      .masku_vrgat_req_i               (masku_vrgat_req                     ),
      .mask_i                          (mask[lane]                          ),
      .mask_valid_i                    (mask_valid[lane] & mask_valid_lane  ),
      .mask_ready_o                    (lane_mask_ready[lane]               ),
      // Interface with the parallel permutation network in mask unit
      .permu_operand_o                 (permu_operand_lane_o[lane]          ),
      .permu_sel_idx_val_o             (permu_sel_idx_val_lane_o[lane]      ),
      .permu_operand_valid_o           (permu_operand_valid_lane_o[lane]    ),
      .permu_operand_ready_i           (permu_operand_ready_lane_i[lane]    ),

      .permu_result_req_i              (permu_result_req[lane]              ),
      .permu_result_id_i               (permu_result_id[lane]               ),
      .permu_result_addr_i             (permu_result_addr[lane]             ),
      .permu_result_wdata_i            (permu_result_wdata[lane]            ),
      .permu_result_gnt_o              (permu_result_gnt[lane]              )
    );
  end: gen_lanes

  ///////////////////////////////
  //  SIMD Permutation Network //
  ///////////////////////////////

  logic  permu_operand_valid_i;
  logic  permu_operand_ready_o;

  permu #(
    .NumLanes(NrLanes),
    .NumBanksPerLane(NrVRFBanksPerLane),
    .NumSegments(NrVRFBanksPerLane),
    .NumRotationRadix(4),
    .SizeXbar(32),
    .VLEN(VLEN),
    .vaddr_t(vaddr_t),
    .pe_req_t(pe_req_t),
    .pe_resp_t(pe_resp_t)
  ) i_simd_perm (
    // Declare some signals so we can see how I/O works
    .clk_i                    (clk_i                            ),
    .rst_ni                   (rst_ni                           ),
    .operand_i                (permu_operand_lane_o             ),
    .sel_idx_val_i            (|permu_sel_idx_val_lane_o        ),
    .operand_valid_i          (permu_operand_valid_i            ),
    .operand_ready_o          (permu_operand_ready_o            ),
    // Interface with the main sequencer
    .pe_req_i                 (pe_req                           ),
    .pe_req_valid_i           (pe_req_valid                     ),
    .pe_vinsn_running_i       (pe_vinsn_running                 ),
    .pe_req_ready_o           (pe_req_ready[NrLanes+OffsetPerm] ),
    .pe_resp_o                (pe_resp[NrLanes+OffsetPerm]      ),
    // Interface with the lanes
    .permu_result_req_o       (permu_result_req                 ),
    .permu_result_id_o        (permu_result_id                  ),
    .permu_result_addr_o      (permu_result_addr                ),
    .permu_result_wdata_o     (permu_result_wdata               ),
    .permu_result_gnt_i       (permu_result_gnt                 )
  );

  assign permu_operand_valid_i = |permu_operand_valid_lane_o;
  assign permu_operand_ready_lane_i = {NrLanes{permu_operand_ready_o}};


  //////////////////////////////
  //  Vector Load/Store Unit  //
  //////////////////////////////

  // Interface with the Mask unit
  logic vldu_mask_ready;
  logic vstu_mask_ready;

  // Optional OS support
  logic acc_mmu_misaligned_ex, acc_mmu_req, acc_mmu_is_store, acc_mmu_dtlb_hit, acc_mmu_valid;
  logic acc_mmu_en, acc_mmu_en_q;
  logic [CVA6Cfg.VLEN-1:0] acc_mmu_vaddr;
  logic [CVA6Cfg.PLEN-1:0] acc_mmu_paddr;
  logic [CVA6Cfg.PPNW-1:0] acc_mmu_dtlb_ppn;
  exception_t acc_mmu_exception;

  if (OSSupport) begin
    assign acc_resp_o.acc_mmu_req.acc_mmu_misaligned_ex = acc_mmu_misaligned_ex;
    assign acc_resp_o.acc_mmu_req.acc_mmu_req           = acc_mmu_req;
    assign acc_resp_o.acc_mmu_req.acc_mmu_vaddr         = acc_mmu_vaddr;
    assign acc_resp_o.acc_mmu_req.acc_mmu_is_store      = acc_mmu_is_store;
    assign acc_mmu_dtlb_hit  = acc_req_i.acc_mmu_resp.acc_mmu_dtlb_hit;
    assign acc_mmu_dtlb_ppn  = acc_req_i.acc_mmu_resp.acc_mmu_dtlb_ppn;
    assign acc_mmu_valid     = acc_req_i.acc_mmu_resp.acc_mmu_valid;
    assign acc_mmu_paddr     = acc_req_i.acc_mmu_resp.acc_mmu_paddr;
    assign acc_mmu_exception = acc_req_i.acc_mmu_resp.acc_mmu_exception;
    assign acc_mmu_en        = acc_req_i.acc_mmu_en;
  end else begin
    assign acc_resp_o.acc_mmu_req.acc_mmu_misaligned_ex = '0;
    assign acc_resp_o.acc_mmu_req.acc_mmu_req           = '0;
    assign acc_resp_o.acc_mmu_req.acc_mmu_vaddr         = '0;
    assign acc_resp_o.acc_mmu_req.acc_mmu_is_store      = '0;
    assign acc_mmu_en        = '0;
    assign acc_mmu_dtlb_hit  = '0;
    assign acc_mmu_dtlb_ppn  = '0;
    assign acc_mmu_valid     = '0;
    assign acc_mmu_paddr     = '0;
    assign acc_mmu_exception = '0;
  end

  // Break path for acc_mmu_en. This signal can afford some additional latency
  // since vector mem ops take multiple cycles to reach the addrgen
  `FF(acc_mmu_en_q, acc_mmu_en, '0, clk_i, rst_ni);

  vlsu #(
    .NrLanes     (NrLanes     ),
    .VLEN        (VLEN        ),
    .AxiDataWidth(AxiDataWidth),
    .AxiAddrWidth(AxiAddrWidth),
    .axi_ar_t    (axi_ar_t    ),
    .axi_r_t     (axi_r_t     ),
    .axi_aw_t    (axi_aw_t    ),
    .axi_w_t     (axi_w_t     ),
    .axi_b_t     (axi_b_t     ),
    .axi_req_t   (axi_req_t   ),
    .axi_resp_t  (axi_resp_t  ),
    .vaddr_t     (vaddr_t     ),
    .pe_req_t    (pe_req_t    ),
    .pe_resp_t   (pe_resp_t   ),
    .CVA6Cfg     (CVA6Cfg     ),
    .exception_t (exception_t )
  ) i_vlsu (
    .clk_i                      (clk_i                                                 ),
    .rst_ni                     (rst_ni                                                ),
    // AXI memory interface
    .axi_req_o                  (axi_req_o                                             ),
    .axi_resp_i                 (axi_resp_i                                            ),
    // Interface with the dispatcher
    .core_st_pending_i          (core_st_pending                                       ),
    .load_complete_o            (load_complete                                         ),
    .store_complete_o           (store_complete                                        ),
    .store_pending_o            (store_pending                                         ),
    // STU exception support
    .lsu_ex_flush_i             (|lsu_ex_flush_stu                                     ),
    .lsu_ex_flush_done_o        (lsu_ex_flush_done                                     ),
    // Interface with the sequencer
    .pe_req_i                   (pe_req                                                ),
    .pe_req_valid_i             (pe_req_valid                                          ),
    .pe_vinsn_running_i         (pe_vinsn_running                                      ),
    .pe_req_ready_o             (pe_req_ready[NrLanes+OffsetStore : NrLanes+OffsetLoad]),
    .pe_resp_o                  (pe_resp[NrLanes+OffsetStore : NrLanes+OffsetLoad]     ),
    .addrgen_ack_o              (addrgen_ack                                           ),
    .addrgen_exception_o        (addrgen_exception                                     ),
    .addrgen_exception_vstart_o (addrgen_exception_vstart                              ),
    .addrgen_fof_exception_o    (addrgen_fof_exception                                 ),
    .lsu_current_burst_exception_o (lsu_current_burst_exception),
    // Interface with the Mask unit
    .mask_i                     (mask                                                  ),
    .mask_valid_i               (mask_valid                                            ),
    .vldu_mask_ready_o          (vldu_mask_ready                                       ),
    .vstu_mask_ready_o          (vstu_mask_ready                                       ),
    // Interface with the lanes
    // Store unit
    .stu_operand_i              (stu_operand                                           ),
    .stu_operand_valid_i        (stu_operand_valid                                     ),
    .stu_operand_ready_o        (stu_operand_ready                                     ),
    // Address Generation
    .addrgen_operand_i          (sldu_addrgen_operand                                  ),
    .addrgen_operand_valid_i    (addrgen_operand_valid                                 ),
    .addrgen_operand_ready_o    (addrgen_operand_ready                                 ),
    // CSR input
    .en_ld_st_translation_i     (acc_mmu_en_q                                          ),
    // Interface with CVA6's sv39 MMU
    .mmu_misaligned_ex_o        (acc_mmu_misaligned_ex                                 ),
    .mmu_req_o                  (acc_mmu_req                                           ),
    .mmu_vaddr_o                (acc_mmu_vaddr                                         ),
    .mmu_is_store_o             (acc_mmu_is_store                                      ),
    .mmu_dtlb_hit_i             (acc_mmu_dtlb_hit                                      ),
    .mmu_dtlb_ppn_i             (acc_mmu_dtlb_ppn                                      ),
    .mmu_valid_i                (acc_mmu_valid                                         ),
    .mmu_paddr_i                (acc_mmu_paddr                                         ),
    .mmu_exception_i            (acc_mmu_exception                                     ),
    // Load unit
    .ldu_result_req_o           (ldu_result_req                                        ),
    .ldu_result_addr_o          (ldu_result_addr                                       ),
    .ldu_result_id_o            (ldu_result_id                                         ),
    .ldu_result_wdata_o         (ldu_result_wdata                                      ),
    .ldu_result_be_o            (ldu_result_be                                         ),
    .ldu_result_gnt_i           (ldu_result_gnt                                        ),
    .ldu_result_final_gnt_i     (ldu_result_final_gnt                                  )
  );

  //////////////////
  //  Slide unit  //
  //////////////////

  // Interface with the Mask Unit
  logic sldu_mask_ready;

  sldu #(
    .NrLanes  (NrLanes  ),
    .VLEN     (VLEN     ),
    .vaddr_t  (vaddr_t  ),
    .pe_req_t (pe_req_t ),
    .pe_resp_t(pe_resp_t)
  ) i_sldu (
    .clk_i                   (clk_i                            ),
    .rst_ni                  (rst_ni                           ),
    // Interface with the main sequencer
    .pe_req_i                (pe_req                           ),
    .pe_req_valid_i          (pe_req_valid                     ),
    .pe_vinsn_running_i      (pe_vinsn_running                 ),
    .pe_req_ready_o          (pe_req_ready[NrLanes+OffsetSlide]),
    .pe_resp_o               (pe_resp[NrLanes+OffsetSlide]     ),
    // Interface with the lanes
    .sldu_operand_i          (sldu_addrgen_operand             ),
    .sldu_operand_valid_i    (sldu_operand_valid               ),
    .sldu_operand_ready_o    (sldu_operand_ready               ),
    .sldu_result_req_o       (sldu_result_req                  ),
    .sldu_result_addr_o      (sldu_result_addr                 ),
    .sldu_result_id_o        (sldu_result_id                   ),
    .sldu_result_be_o        (sldu_result_be                   ),
    .sldu_result_wdata_o     (sldu_result_wdata                ),
    .sldu_result_gnt_i       (sldu_result_gnt                  ),
    .sldu_mux_sel_o          (sldu_mux_sel                     ),
    .sldu_red_valid_o        (sldu_red_valid                   ),
    .sldu_result_final_gnt_i (sldu_result_final_gnt            ),
    // Interface with the Mask unit
    .mask_i                  (mask                             ),
    .mask_valid_i            (mask_valid                       ),
    .mask_ready_o            (sldu_mask_ready                  )
  );

  /////////////////
  //  Mask unit  //
  /////////////////

  masku #(
    .NrLanes  (NrLanes  ),
    .VLEN     (VLEN     ),
    .vaddr_t  (vaddr_t  ),
    .pe_req_t (pe_req_t ),
    .pe_resp_t(pe_resp_t)
  ) i_masku (
    .clk_i                   (clk_i                           ),
    .rst_ni                  (rst_ni                          ),
    // Interface with the main sequencer
    .pe_req_i                (pe_req                          ),
    .pe_req_valid_i          (pe_req_valid                    ),
    .pe_vinsn_running_i      (pe_vinsn_running                ),
    .pe_req_ready_o          (pe_req_ready[NrLanes+OffsetMask]),
    .pe_resp_o               (pe_resp[NrLanes+OffsetMask]     ),
    .result_scalar_o         (result_scalar                   ),
    .result_scalar_valid_o   (result_scalar_valid             ),
    // Interface with the lanes
    .masku_operand_i         (masku_operand                   ),
    .masku_operand_valid_i   (masku_operand_valid             ),
    .masku_operand_ready_o   (masku_operand_ready_masku       ),
    .masku_result_req_o      (masku_result_req                ),
    .masku_result_addr_o     (masku_result_addr               ),
    .masku_result_id_o       (masku_result_id                 ),
    .masku_result_wdata_o    (masku_result_wdata              ),
    .masku_result_be_o       (masku_result_be                 ),
    .masku_result_gnt_i      (masku_result_gnt                ),
    .masku_result_final_gnt_i(masku_result_final_gnt          ),
    .masku_vrgat_req_valid_o (masku_vrgat_req_valid           ),
    .masku_vrgat_req_ready_i (masku_vrgat_req_ready           ),
    .masku_vrgat_req_o       (masku_vrgat_req                 ),
    // Interface with the VFUs
    .mask_o                  (mask                            ),
    .mask_valid_o            (mask_valid                      ),
    .mask_valid_lane_o       (mask_valid_lane                 ),
    .lane_mask_ready_i       (lane_mask_ready                 ),
    .vldu_mask_ready_i       (vldu_mask_ready                 ),
    .vstu_mask_ready_i       (vstu_mask_ready                 ),
    .sldu_mask_ready_i       (sldu_mask_ready                 )
  );


  //////////////////
  //  Assertions  //
  //////////////////

  if (NrLanes == 0)
    $error("[ara] Ara needs to have at least one lane.");

  if (NrLanes != 2**$clog2(NrLanes))
    $error("[ara] The number of lanes must be a power of two.");

  if (NrLanes > MaxNrLanes)
    $error("[ara] Ara supports at most MaxNrLanes lanes.");

  if (VLEN == 0)
    $error("[ara] The vector length must be greater than zero.");

  if (VLEN < ELEN)
    $error(
      "[ara] The vector length must be greater or equal than the maximum size of a single vector element"
    );

  if (VLEN != 2**$clog2(VLEN))
    $error("[ara] The vector length must be a power of two.");

endmodule : ara
