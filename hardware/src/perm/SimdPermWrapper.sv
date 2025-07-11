// This is a wrapper for the SimdPermutation module
module SimdPermWrapper import ara_pkg::*; import rvv_pkg::*; #(
    parameter int NumLanes = 8,
    parameter int NumBanksPerLane = 8,
    parameter int NumSegments = 8,
    parameter int NumRotationRadix = 4,
    parameter int SizeXbar = 32,
    // DO NOT CHANGE!
    parameter int XLEN = 64,
    parameter int ELENB = XLEN/8,
    parameter int UsePipeline = 1
) (
   // Declare some signals so we can see how I/O works
   input              clk_i,
   input              rst_ni,

   input              operand_valid_i,
   output             operand_ready_o,
   input              selIdxVal,
   input              elen_t [NumLanes-1:0][NumBanksPerLane-1:0]  operand_i,

   input              permute_i,
   input              vlut_e lut_mode_i,

   input              result_ready_i,
   output             result_valid_o,
   output             elen_t [NumLanes-1:0][NumBanksPerLane-1:0] result_o 
);

   // Deshuffled and transposed input for sequential access
   logic[ELEN*NumLanes-1:0] operand_i_deshuffled_flat [NumBanksPerLane-1:0] ;
   elen_t [NumBanksPerLane-1:0][NumLanes-1:0] operand_i_deshuffled;

   elen_t [NumBanksPerLane-1:0][NumLanes-1:0] result_o_deshuffled;
   // logic  [NrLanes*ELEN-1:0] masku_operand_alu_seq_o;

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

      // Shuffle the output operand before sending it to the output
      // for(genvar bank=0; bank<NumBanksPerLane; bank++) begin
      //    for (genvar b = 0; b < (NumLanes * ELENB); b++) begin
      //       automatic int shuffle_idx = shuffle_index(b, NumLanes, EW16);
      //       automatic int lane_idx    = b / ELENB; // rounded down to nearest integer
      //       automatic int lane_offset = b % ELENB;
      //       result_o[lane_idx][bank][8*shuffle_idx +: 8] = result_o_deshuffled[bank][lane_idx][8*lane_offset +: 8];
      //    end
      // end
   end

   `ifdef DEBUG
   always_ff @(posedge clk_i) begin
      if (operand_valid_i && operand_ready_o) begin
         $display("[permu_wrapper_shuffled_operand_i] ");
         for(int bank=0; bank<NumBanksPerLane; bank++) begin
            $display("[bank=%d] ", bank);
            for(int lane=0; lane<NumLanes; lane++) begin
               $write("%h ", operand_i_deshuffled[bank][lane]);
            end
            $display("");
         end
      end
   end
   `endif


   SimdPermutation simd_permutation(
    .clock(clk_i),
    .reset(~rst_ni),

    .io_inValid(operand_valid_i),
    .io_inReady(operand_ready_o),
    .io_selIdxVal(selIdxVal),

    .io_inData_0_0(operand_i_deshuffled[0]),
    .io_inData_0_1(operand_i_deshuffled[1]),
    .io_inData_0_2(operand_i_deshuffled[2]),
    .io_inData_0_3(operand_i_deshuffled[3]),
    .io_inData_0_4(operand_i_deshuffled[4]),
    .io_inData_0_5(operand_i_deshuffled[5]),
    .io_inData_0_6(operand_i_deshuffled[6]),
    .io_inData_0_7(operand_i_deshuffled[7]),
    .io_inData_1_0(operand_i_deshuffled[8]),
    .io_inData_1_1(operand_i_deshuffled[9]),
    .io_inData_1_2(operand_i_deshuffled[10]),
    .io_inData_1_3(operand_i_deshuffled[11]),
    .io_inData_1_4(operand_i_deshuffled[12]),
    .io_inData_1_5(operand_i_deshuffled[13]),
    .io_inData_1_6(operand_i_deshuffled[14]),
    .io_inData_1_7(operand_i_deshuffled[15]),
    .io_inData_2_0(operand_i_deshuffled[16]),
    .io_inData_2_1(operand_i_deshuffled[17]),
    .io_inData_2_2(operand_i_deshuffled[18]),
    .io_inData_2_3(operand_i_deshuffled[19]),
    .io_inData_2_4(operand_i_deshuffled[20]),
    .io_inData_2_5(operand_i_deshuffled[21]),
    .io_inData_2_6(operand_i_deshuffled[22]),
    .io_inData_2_7(operand_i_deshuffled[23]),
    .io_inData_3_0(operand_i_deshuffled[24]),
    .io_inData_3_1(operand_i_deshuffled[25]),
    .io_inData_3_2(operand_i_deshuffled[26]),
    .io_inData_3_3(operand_i_deshuffled[27]),
    .io_inData_3_4(operand_i_deshuffled[28]),
    .io_inData_3_5(operand_i_deshuffled[29]),
    .io_inData_3_6(operand_i_deshuffled[30]),
    .io_inData_3_7(operand_i_deshuffled[31]),
    .io_inData_4_0(operand_i_deshuffled[32]),
    .io_inData_4_1(operand_i_deshuffled[33]),
    .io_inData_4_2(operand_i_deshuffled[34]),
    .io_inData_4_3(operand_i_deshuffled[35]),
    .io_inData_4_4(operand_i_deshuffled[36]),
    .io_inData_4_5(operand_i_deshuffled[37]),
    .io_inData_4_6(operand_i_deshuffled[38]),
    .io_inData_4_7(operand_i_deshuffled[39]),
    .io_inData_5_0(operand_i_deshuffled[40]),
    .io_inData_5_1(operand_i_deshuffled[41]),
    .io_inData_5_2(operand_i_deshuffled[42]),
    .io_inData_5_3(operand_i_deshuffled[43]),
    .io_inData_5_4(operand_i_deshuffled[44]),
    .io_inData_5_5(operand_i_deshuffled[45]),
    .io_inData_5_6(operand_i_deshuffled[46]),
    .io_inData_5_7(operand_i_deshuffled[47]),
    .io_inData_6_0(operand_i_deshuffled[48]),
    .io_inData_6_1(operand_i_deshuffled[49]),
    .io_inData_6_2(operand_i_deshuffled[50]),
    .io_inData_6_3(operand_i_deshuffled[51]),
    .io_inData_6_4(operand_i_deshuffled[52]),
    .io_inData_6_5(operand_i_deshuffled[53]),
    .io_inData_6_6(operand_i_deshuffled[54]),
    .io_inData_6_7(operand_i_deshuffled[55]),
    .io_inData_7_0(operand_i_deshuffled[56]),
    .io_inData_7_1(operand_i_deshuffled[57]),
    .io_inData_7_2(operand_i_deshuffled[58]),
    .io_inData_7_3(operand_i_deshuffled[59]),
    .io_inData_7_4(operand_i_deshuffled[60]),
    .io_inData_7_5(operand_i_deshuffled[61]),
    .io_inData_7_6(operand_i_deshuffled[62]),
    .io_inData_7_7(operand_i_deshuffled[63]),

    .io_permute(permute_i),
    .io_mode(lut_mode_i), 
    .io_outValid(result_valid_o), 
    .io_outReady(result_ready_i), 

    .io_outData_0_0(result_o_deshuffled[0]),
    .io_outData_0_1(result_o_deshuffled[1]),
    .io_outData_0_2(result_o_deshuffled[2]),
    .io_outData_0_3(result_o_deshuffled[3]),
    .io_outData_0_4(result_o_deshuffled[4]),
    .io_outData_0_5(result_o_deshuffled[5]),
    .io_outData_0_6(result_o_deshuffled[6]),
    .io_outData_0_7(result_o_deshuffled[7]),
    .io_outData_1_0(result_o_deshuffled[8]),
    .io_outData_1_1(result_o_deshuffled[9]),
    .io_outData_1_2(result_o_deshuffled[10]),
    .io_outData_1_3(result_o_deshuffled[11]),
    .io_outData_1_4(result_o_deshuffled[12]),
    .io_outData_1_5(result_o_deshuffled[13]),
    .io_outData_1_6(result_o_deshuffled[14]),
    .io_outData_1_7(result_o_deshuffled[15]),
    .io_outData_2_0(result_o_deshuffled[16]),
    .io_outData_2_1(result_o_deshuffled[17]),
    .io_outData_2_2(result_o_deshuffled[18]),
    .io_outData_2_3(result_o_deshuffled[19]),
    .io_outData_2_4(result_o_deshuffled[20]),
    .io_outData_2_5(result_o_deshuffled[21]),
    .io_outData_2_6(result_o_deshuffled[22]),
    .io_outData_2_7(result_o_deshuffled[23]),
    .io_outData_3_0(result_o_deshuffled[24]),
    .io_outData_3_1(result_o_deshuffled[25]),
    .io_outData_3_2(result_o_deshuffled[26]),
    .io_outData_3_3(result_o_deshuffled[27]),
    .io_outData_3_4(result_o_deshuffled[28]),
    .io_outData_3_5(result_o_deshuffled[29]),
    .io_outData_3_6(result_o_deshuffled[30]),
    .io_outData_3_7(result_o_deshuffled[31]),
    .io_outData_4_0(result_o_deshuffled[32]),
    .io_outData_4_1(result_o_deshuffled[33]),
    .io_outData_4_2(result_o_deshuffled[34]),
    .io_outData_4_3(result_o_deshuffled[35]),
    .io_outData_4_4(result_o_deshuffled[36]),
    .io_outData_4_5(result_o_deshuffled[37]),
    .io_outData_4_6(result_o_deshuffled[38]),
    .io_outData_4_7(result_o_deshuffled[39]),
    .io_outData_5_0(result_o_deshuffled[40]),
    .io_outData_5_1(result_o_deshuffled[41]),
    .io_outData_5_2(result_o_deshuffled[42]),
    .io_outData_5_3(result_o_deshuffled[43]),
    .io_outData_5_4(result_o_deshuffled[44]),
    .io_outData_5_5(result_o_deshuffled[45]),
    .io_outData_5_6(result_o_deshuffled[46]),
    .io_outData_5_7(result_o_deshuffled[47]),
    .io_outData_6_0(result_o_deshuffled[48]),
    .io_outData_6_1(result_o_deshuffled[49]),
    .io_outData_6_2(result_o_deshuffled[50]),
    .io_outData_6_3(result_o_deshuffled[51]),
    .io_outData_6_4(result_o_deshuffled[52]),
    .io_outData_6_5(result_o_deshuffled[53]),
    .io_outData_6_6(result_o_deshuffled[54]),
    .io_outData_6_7(result_o_deshuffled[55]),
    .io_outData_7_0(result_o_deshuffled[56]),
    .io_outData_7_1(result_o_deshuffled[57]),
    .io_outData_7_2(result_o_deshuffled[58]),
    .io_outData_7_3(result_o_deshuffled[59]),
    .io_outData_7_4(result_o_deshuffled[60]),
    .io_outData_7_5(result_o_deshuffled[61]),
    .io_outData_7_6(result_o_deshuffled[62]),
    .io_outData_7_7(result_o_deshuffled[63])
   );

endmodule
