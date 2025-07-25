module VectorReg(
  input         clock,
  input         reset,
  input         io_inValid, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input         io_rotate, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [1:0]  io_rotateLevel, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_7 // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  wire [63:0] _T__0_0 = io_inValid ? io_inData_0_0 : reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_1 = io_inValid ? io_inData_0_1 : reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_2 = io_inValid ? io_inData_0_2 : reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_3 = io_inValid ? io_inData_0_3 : reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_4 = io_inValid ? io_inData_0_4 : reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_5 = io_inValid ? io_inData_0_5 : reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_6 = io_inValid ? io_inData_0_6 : reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__0_7 = io_inValid ? io_inData_0_7 : reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_0 = io_inValid ? io_inData_1_0 : reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_1 = io_inValid ? io_inData_1_1 : reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_2 = io_inValid ? io_inData_1_2 : reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_3 = io_inValid ? io_inData_1_3 : reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_4 = io_inValid ? io_inData_1_4 : reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_5 = io_inValid ? io_inData_1_5 : reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_6 = io_inValid ? io_inData_1_6 : reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__1_7 = io_inValid ? io_inData_1_7 : reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_0 = io_inValid ? io_inData_2_0 : reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_1 = io_inValid ? io_inData_2_1 : reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_2 = io_inValid ? io_inData_2_2 : reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_3 = io_inValid ? io_inData_2_3 : reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_4 = io_inValid ? io_inData_2_4 : reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_5 = io_inValid ? io_inData_2_5 : reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_6 = io_inValid ? io_inData_2_6 : reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__2_7 = io_inValid ? io_inData_2_7 : reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_0 = io_inValid ? io_inData_3_0 : reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_1 = io_inValid ? io_inData_3_1 : reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_2 = io_inValid ? io_inData_3_2 : reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_3 = io_inValid ? io_inData_3_3 : reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_4 = io_inValid ? io_inData_3_4 : reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_5 = io_inValid ? io_inData_3_5 : reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_6 = io_inValid ? io_inData_3_6 : reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__3_7 = io_inValid ? io_inData_3_7 : reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_0 = io_inValid ? io_inData_4_0 : reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_1 = io_inValid ? io_inData_4_1 : reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_2 = io_inValid ? io_inData_4_2 : reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_3 = io_inValid ? io_inData_4_3 : reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_4 = io_inValid ? io_inData_4_4 : reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_5 = io_inValid ? io_inData_4_5 : reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_6 = io_inValid ? io_inData_4_6 : reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__4_7 = io_inValid ? io_inData_4_7 : reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_0 = io_inValid ? io_inData_5_0 : reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_1 = io_inValid ? io_inData_5_1 : reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_2 = io_inValid ? io_inData_5_2 : reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_3 = io_inValid ? io_inData_5_3 : reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_4 = io_inValid ? io_inData_5_4 : reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_5 = io_inValid ? io_inData_5_5 : reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_6 = io_inValid ? io_inData_5_6 : reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__5_7 = io_inValid ? io_inData_5_7 : reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_0 = io_inValid ? io_inData_6_0 : reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_1 = io_inValid ? io_inData_6_1 : reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_2 = io_inValid ? io_inData_6_2 : reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_3 = io_inValid ? io_inData_6_3 : reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_4 = io_inValid ? io_inData_6_4 : reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_5 = io_inValid ? io_inData_6_5 : reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_6 = io_inValid ? io_inData_6_6 : reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__6_7 = io_inValid ? io_inData_6_7 : reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_0 = io_inValid ? io_inData_7_0 : reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_1 = io_inValid ? io_inData_7_1 : reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_2 = io_inValid ? io_inData_7_2 : reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_3 = io_inValid ? io_inData_7_3 : reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_4 = io_inValid ? io_inData_7_4 : reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_5 = io_inValid ? io_inData_7_5 : reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_6 = io_inValid ? io_inData_7_6 : reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [63:0] _T__7_7 = io_inValid ? io_inData_7_7 : reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
  wire [511:0] lo_lo_lo = {reg_0_7,reg_0_6,reg_0_5,reg_0_4,reg_0_3,reg_0_2,reg_0_1,reg_0_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [1023:0] lo_lo = {reg_1_7,reg_1_6,reg_1_5,reg_1_4,reg_1_3,reg_1_2,reg_1_1,reg_1_0,lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] lo_hi_lo = {reg_2_7,reg_2_6,reg_2_5,reg_2_4,reg_2_3,reg_2_2,reg_2_1,reg_2_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [2047:0] lo = {reg_3_7,reg_3_6,reg_3_5,reg_3_4,reg_3_3,reg_3_2,reg_3_1,reg_3_0,lo_hi_lo,lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] hi_lo_lo = {reg_4_7,reg_4_6,reg_4_5,reg_4_4,reg_4_3,reg_4_2,reg_4_1,reg_4_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [1023:0] hi_lo = {reg_5_7,reg_5_6,reg_5_5,reg_5_4,reg_5_3,reg_5_2,reg_5_1,reg_5_0,hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] hi_hi_lo = {reg_6_7,reg_6_6,reg_6_5,reg_6_4,reg_6_3,reg_6_2,reg_6_1,reg_6_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [2047:0] hi = {reg_7_7,reg_7_6,reg_7_5,reg_7_4,reg_7_3,reg_7_2,reg_7_1,reg_7_0,hi_hi_lo,hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [4095:0] _T_9 = {hi,lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_0 = _T_9[63:0]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_1 = _T_9[127:64]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_2 = _T_9[191:128]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_3 = _T_9[255:192]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_4 = _T_9[319:256]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_5 = _T_9[383:320]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_6 = _T_9[447:384]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_7 = _T_9[511:448]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_0 = _T_9[575:512]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_1 = _T_9[639:576]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_2 = _T_9[703:640]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_3 = _T_9[767:704]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_4 = _T_9[831:768]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_5 = _T_9[895:832]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_6 = _T_9[959:896]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_7 = _T_9[1023:960]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_0 = _T_9[1087:1024]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_1 = _T_9[1151:1088]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_2 = _T_9[1215:1152]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_3 = _T_9[1279:1216]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_4 = _T_9[1343:1280]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_5 = _T_9[1407:1344]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_6 = _T_9[1471:1408]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_7 = _T_9[1535:1472]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_0 = _T_9[1599:1536]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_1 = _T_9[1663:1600]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_2 = _T_9[1727:1664]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_3 = _T_9[1791:1728]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_4 = _T_9[1855:1792]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_5 = _T_9[1919:1856]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_6 = _T_9[1983:1920]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_7 = _T_9[2047:1984]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_0 = _T_9[2111:2048]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_1 = _T_9[2175:2112]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_2 = _T_9[2239:2176]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_3 = _T_9[2303:2240]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_4 = _T_9[2367:2304]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_5 = _T_9[2431:2368]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_6 = _T_9[2495:2432]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_7 = _T_9[2559:2496]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_0 = _T_9[2623:2560]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_1 = _T_9[2687:2624]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_2 = _T_9[2751:2688]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_3 = _T_9[2815:2752]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_4 = _T_9[2879:2816]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_5 = _T_9[2943:2880]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_6 = _T_9[3007:2944]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_7 = _T_9[3071:3008]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_0 = _T_9[3135:3072]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_1 = _T_9[3199:3136]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_2 = _T_9[3263:3200]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_3 = _T_9[3327:3264]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_4 = _T_9[3391:3328]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_5 = _T_9[3455:3392]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_6 = _T_9[3519:3456]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_7 = _T_9[3583:3520]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_0 = _T_9[3647:3584]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_1 = _T_9[3711:3648]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_2 = _T_9[3775:3712]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_3 = _T_9[3839:3776]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_4 = _T_9[3903:3840]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_5 = _T_9[3967:3904]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_6 = _T_9[4031:3968]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_7 = _T_9[4095:4032]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_0 <= reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_0 <= reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_0 <= reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_0 <= _T__0_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_1 <= reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_1 <= reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_1 <= reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_1 <= _T__0_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_2 <= reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_2 <= reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_2 <= reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_2 <= _T__0_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_3 <= reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_3 <= reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_3 <= reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_3 <= _T__0_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_4 <= reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_4 <= reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_4 <= reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_4 <= _T__0_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_5 <= reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_5 <= reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_5 <= reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_5 <= _T__0_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_6 <= reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_6 <= reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_6 <= reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_6 <= _T__0_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_7 <= reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_7 <= reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_0_7 <= reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_0_7 <= _T__0_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_0 <= reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_0 <= reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_0 <= reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_0 <= _T__1_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_1 <= reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_1 <= reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_1 <= reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_1 <= _T__1_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_2 <= reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_2 <= reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_2 <= reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_2 <= _T__1_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_3 <= reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_3 <= reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_3 <= reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_3 <= _T__1_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_4 <= reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_4 <= reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_4 <= reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_4 <= _T__1_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_5 <= reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_5 <= reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_5 <= reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_5 <= _T__1_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_6 <= reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_6 <= reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_6 <= reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_6 <= _T__1_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_7 <= reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_7 <= reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_1_7 <= reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_1_7 <= _T__1_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_0 <= reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_0 <= reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_0 <= reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_0 <= _T__2_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_1 <= reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_1 <= reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_1 <= reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_1 <= _T__2_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_2 <= reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_2 <= reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_2 <= reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_2 <= _T__2_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_3 <= reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_3 <= reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_3 <= reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_3 <= _T__2_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_4 <= reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_4 <= reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_4 <= reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_4 <= _T__2_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_5 <= reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_5 <= reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_5 <= reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_5 <= _T__2_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_6 <= reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_6 <= reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_6 <= reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_6 <= _T__2_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_7 <= reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_7 <= reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_2_7 <= reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_2_7 <= _T__2_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_0 <= reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_0 <= reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_0 <= reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_0 <= _T__3_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_1 <= reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_1 <= reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_1 <= reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_1 <= _T__3_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_2 <= reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_2 <= reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_2 <= reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_2 <= _T__3_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_3 <= reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_3 <= reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_3 <= reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_3 <= _T__3_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_4 <= reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_4 <= reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_4 <= reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_4 <= _T__3_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_5 <= reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_5 <= reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_5 <= reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_5 <= _T__3_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_6 <= reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_6 <= reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_6 <= reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_6 <= _T__3_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_7 <= reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_7 <= reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_3_7 <= reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_3_7 <= _T__3_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_0 <= reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_0 <= reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_0 <= reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_0 <= _T__4_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_1 <= reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_1 <= reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_1 <= reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_1 <= _T__4_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_2 <= reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_2 <= reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_2 <= reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_2 <= _T__4_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_3 <= reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_3 <= reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_3 <= reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_3 <= _T__4_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_4 <= reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_4 <= reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_4 <= reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_4 <= _T__4_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_5 <= reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_5 <= reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_5 <= reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_5 <= _T__4_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_6 <= reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_6 <= reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_6 <= reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_6 <= _T__4_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_7 <= reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_7 <= reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_4_7 <= reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_4_7 <= _T__4_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_0 <= reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_0 <= reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_0 <= reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_0 <= _T__5_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_1 <= reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_1 <= reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_1 <= reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_1 <= _T__5_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_2 <= reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_2 <= reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_2 <= reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_2 <= _T__5_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_3 <= reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_3 <= reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_3 <= reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_3 <= _T__5_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_4 <= reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_4 <= reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_4 <= reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_4 <= _T__5_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_5 <= reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_5 <= reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_5 <= reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_5 <= _T__5_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_6 <= reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_6 <= reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_6 <= reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_6 <= _T__5_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_7 <= reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_7 <= reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_5_7 <= reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_5_7 <= _T__5_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_0 <= reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_0 <= reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_0 <= reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_0 <= _T__6_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_1 <= reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_1 <= reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_1 <= reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_1 <= _T__6_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_2 <= reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_2 <= reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_2 <= reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_2 <= _T__6_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_3 <= reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_3 <= reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_3 <= reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_3 <= _T__6_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_4 <= reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_4 <= reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_4 <= reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_4 <= _T__6_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_5 <= reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_5 <= reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_5 <= reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_5 <= _T__6_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_6 <= reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_6 <= reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_6 <= reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_6 <= _T__6_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_7 <= reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_7 <= reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_6_7 <= reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_6_7 <= _T__6_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_0 <= reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_0 <= reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_0 <= reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_0 <= _T__7_0; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_1 <= reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_1 <= reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_1 <= reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_1 <= _T__7_1; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_2 <= reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_2 <= reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_2 <= reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_2 <= _T__7_2; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_3 <= reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_3 <= reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_3 <= reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_3 <= _T__7_3; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_4 <= reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_4 <= reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_4 <= reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_4 <= _T__7_4; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_5 <= reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_5 <= reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_5 <= reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_5 <= _T__7_5; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_6 <= reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_6 <= reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_6 <= reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_6 <= _T__7_6; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_rotate & io_rotateLevel == 2'h2) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_7 <= reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h1) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_7 <= reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else if (io_rotate & io_rotateLevel == 2'h0) begin // @[src/main/scala/simd_perm/simd_perm.scala 61:53]
      reg_7_7 <= reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 64:58]
    end else begin
      reg_7_7 <= _T__7_7; // @[src/main/scala/simd_perm/simd_perm.scala 57:7]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  reg_0_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  reg_0_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  reg_0_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  reg_0_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  reg_0_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  reg_0_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  reg_0_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  reg_0_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  reg_1_0 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  reg_1_1 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  reg_1_2 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  reg_1_3 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  reg_1_4 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  reg_1_5 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  reg_1_6 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  reg_1_7 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  reg_2_0 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  reg_2_1 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  reg_2_2 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  reg_2_3 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  reg_2_4 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  reg_2_5 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  reg_2_6 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  reg_2_7 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  reg_3_0 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  reg_3_1 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  reg_3_2 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  reg_3_3 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  reg_3_4 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  reg_3_5 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  reg_3_6 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  reg_3_7 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  reg_4_0 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  reg_4_1 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  reg_4_2 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  reg_4_3 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  reg_4_4 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  reg_4_5 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  reg_4_6 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  reg_4_7 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  reg_5_0 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  reg_5_1 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  reg_5_2 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  reg_5_3 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  reg_5_4 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  reg_5_5 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  reg_5_6 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  reg_5_7 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  reg_6_0 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  reg_6_1 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  reg_6_2 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  reg_6_3 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  reg_6_4 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  reg_6_5 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  reg_6_6 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  reg_6_7 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  reg_7_0 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  reg_7_1 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  reg_7_2 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  reg_7_3 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  reg_7_4 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  reg_7_5 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  reg_7_6 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  reg_7_7 = _RAND_63[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module VectorReg_1(
  input         clock,
  input         reset,
  input         io_inValid, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  input  [63:0] io_inData_7_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
  output [63:0] io_outData_7_7 // @[src/main/scala/simd_perm/simd_perm.scala 49:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] reg_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  reg [63:0] reg_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
  wire [511:0] lo_lo_lo = {reg_0_7,reg_0_6,reg_0_5,reg_0_4,reg_0_3,reg_0_2,reg_0_1,reg_0_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [1023:0] lo_lo = {reg_1_7,reg_1_6,reg_1_5,reg_1_4,reg_1_3,reg_1_2,reg_1_1,reg_1_0,lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] lo_hi_lo = {reg_2_7,reg_2_6,reg_2_5,reg_2_4,reg_2_3,reg_2_2,reg_2_1,reg_2_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [2047:0] lo = {reg_3_7,reg_3_6,reg_3_5,reg_3_4,reg_3_3,reg_3_2,reg_3_1,reg_3_0,lo_hi_lo,lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] hi_lo_lo = {reg_4_7,reg_4_6,reg_4_5,reg_4_4,reg_4_3,reg_4_2,reg_4_1,reg_4_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [1023:0] hi_lo = {reg_5_7,reg_5_6,reg_5_5,reg_5_4,reg_5_3,reg_5_2,reg_5_1,reg_5_0,hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [511:0] hi_hi_lo = {reg_6_7,reg_6_6,reg_6_5,reg_6_4,reg_6_3,reg_6_2,reg_6_1,reg_6_0}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [2047:0] hi = {reg_7_7,reg_7_6,reg_7_5,reg_7_4,reg_7_3,reg_7_2,reg_7_1,reg_7_0,hi_hi_lo,hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  wire [4095:0] _T_1 = {hi,lo}; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_0 = _T_1[63:0]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_1 = _T_1[127:64]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_2 = _T_1[191:128]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_3 = _T_1[255:192]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_4 = _T_1[319:256]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_5 = _T_1[383:320]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_6 = _T_1[447:384]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_0_7 = _T_1[511:448]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_0 = _T_1[575:512]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_1 = _T_1[639:576]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_2 = _T_1[703:640]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_3 = _T_1[767:704]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_4 = _T_1[831:768]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_5 = _T_1[895:832]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_6 = _T_1[959:896]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_1_7 = _T_1[1023:960]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_0 = _T_1[1087:1024]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_1 = _T_1[1151:1088]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_2 = _T_1[1215:1152]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_3 = _T_1[1279:1216]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_4 = _T_1[1343:1280]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_5 = _T_1[1407:1344]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_6 = _T_1[1471:1408]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_2_7 = _T_1[1535:1472]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_0 = _T_1[1599:1536]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_1 = _T_1[1663:1600]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_2 = _T_1[1727:1664]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_3 = _T_1[1791:1728]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_4 = _T_1[1855:1792]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_5 = _T_1[1919:1856]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_6 = _T_1[1983:1920]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_3_7 = _T_1[2047:1984]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_0 = _T_1[2111:2048]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_1 = _T_1[2175:2112]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_2 = _T_1[2239:2176]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_3 = _T_1[2303:2240]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_4 = _T_1[2367:2304]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_5 = _T_1[2431:2368]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_6 = _T_1[2495:2432]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_4_7 = _T_1[2559:2496]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_0 = _T_1[2623:2560]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_1 = _T_1[2687:2624]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_2 = _T_1[2751:2688]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_3 = _T_1[2815:2752]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_4 = _T_1[2879:2816]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_5 = _T_1[2943:2880]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_6 = _T_1[3007:2944]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_5_7 = _T_1[3071:3008]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_0 = _T_1[3135:3072]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_1 = _T_1[3199:3136]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_2 = _T_1[3263:3200]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_3 = _T_1[3327:3264]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_4 = _T_1[3391:3328]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_5 = _T_1[3455:3392]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_6 = _T_1[3519:3456]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_6_7 = _T_1[3583:3520]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_0 = _T_1[3647:3584]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_1 = _T_1[3711:3648]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_2 = _T_1[3775:3712]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_3 = _T_1[3839:3776]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_4 = _T_1[3903:3840]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_5 = _T_1[3967:3904]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_6 = _T_1[4031:3968]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  assign io_outData_7_7 = _T_1[4095:4032]; // @[src/main/scala/simd_perm/simd_perm.scala 71:29]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_0 <= io_inData_0_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_1 <= io_inData_0_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_2 <= io_inData_0_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_3 <= io_inData_0_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_4 <= io_inData_0_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_5 <= io_inData_0_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_6 <= io_inData_0_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_0_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_0_7 <= io_inData_0_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_0 <= io_inData_1_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_1 <= io_inData_1_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_2 <= io_inData_1_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_3 <= io_inData_1_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_4 <= io_inData_1_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_5 <= io_inData_1_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_6 <= io_inData_1_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_1_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_1_7 <= io_inData_1_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_0 <= io_inData_2_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_1 <= io_inData_2_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_2 <= io_inData_2_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_3 <= io_inData_2_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_4 <= io_inData_2_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_5 <= io_inData_2_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_6 <= io_inData_2_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_2_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_2_7 <= io_inData_2_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_0 <= io_inData_3_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_1 <= io_inData_3_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_2 <= io_inData_3_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_3 <= io_inData_3_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_4 <= io_inData_3_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_5 <= io_inData_3_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_6 <= io_inData_3_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_3_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_3_7 <= io_inData_3_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_0 <= io_inData_4_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_1 <= io_inData_4_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_2 <= io_inData_4_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_3 <= io_inData_4_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_4 <= io_inData_4_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_5 <= io_inData_4_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_6 <= io_inData_4_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_4_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_4_7 <= io_inData_4_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_0 <= io_inData_5_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_1 <= io_inData_5_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_2 <= io_inData_5_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_3 <= io_inData_5_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_4 <= io_inData_5_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_5 <= io_inData_5_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_6 <= io_inData_5_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_5_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_5_7 <= io_inData_5_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_0 <= io_inData_6_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_1 <= io_inData_6_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_2 <= io_inData_6_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_3 <= io_inData_6_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_4 <= io_inData_6_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_5 <= io_inData_6_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_6 <= io_inData_6_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_6_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_6_7 <= io_inData_6_7;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_0 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_0 <= io_inData_7_0;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_1 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_1 <= io_inData_7_1;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_2 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_2 <= io_inData_7_2;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_3 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_3 <= io_inData_7_3;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_4 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_4 <= io_inData_7_4;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_5 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_5 <= io_inData_7_5;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_6 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_6 <= io_inData_7_6;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
      reg_7_7 <= 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 56:20]
    end else if (io_inValid) begin // @[src/main/scala/simd_perm/simd_perm.scala 57:13]
      reg_7_7 <= io_inData_7_7;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  reg_0_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  reg_0_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  reg_0_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  reg_0_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  reg_0_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  reg_0_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  reg_0_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  reg_0_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  reg_1_0 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  reg_1_1 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  reg_1_2 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  reg_1_3 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  reg_1_4 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  reg_1_5 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  reg_1_6 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  reg_1_7 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  reg_2_0 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  reg_2_1 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  reg_2_2 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  reg_2_3 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  reg_2_4 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  reg_2_5 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  reg_2_6 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  reg_2_7 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  reg_3_0 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  reg_3_1 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  reg_3_2 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  reg_3_3 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  reg_3_4 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  reg_3_5 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  reg_3_6 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  reg_3_7 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  reg_4_0 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  reg_4_1 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  reg_4_2 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  reg_4_3 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  reg_4_4 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  reg_4_5 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  reg_4_6 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  reg_4_7 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  reg_5_0 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  reg_5_1 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  reg_5_2 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  reg_5_3 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  reg_5_4 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  reg_5_5 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  reg_5_6 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  reg_5_7 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  reg_6_0 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  reg_6_1 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  reg_6_2 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  reg_6_3 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  reg_6_4 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  reg_6_5 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  reg_6_6 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  reg_6_7 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  reg_7_0 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  reg_7_1 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  reg_7_2 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  reg_7_3 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  reg_7_4 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  reg_7_5 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  reg_7_6 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  reg_7_7 = _RAND_63[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Crossbar2D(
  input         clock,
  input         reset,
  input  [15:0] io_inVal_0, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_1, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_2, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_3, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_4, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_5, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_6, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_7, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_8, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_9, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_10, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_11, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_12, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_13, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_14, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_15, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_16, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_17, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_18, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_19, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_20, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_21, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_22, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_23, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_24, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_25, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_26, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_27, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_28, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_29, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_30, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [15:0] io_inVal_31, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_0, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_1, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_2, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_3, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_4, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_5, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_6, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_7, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_8, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_9, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_10, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_11, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_12, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_13, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_14, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_15, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_16, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_17, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_18, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_19, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_20, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_21, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_22, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_23, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_24, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_25, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_26, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_27, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_28, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_29, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_30, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  input  [4:0]  io_inIdx_31, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_0, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_1, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_2, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_3, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_4, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_5, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_6, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_7, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_8, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_9, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_10, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_11, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_12, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_13, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_14, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_15, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_16, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_17, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_18, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_19, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_20, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_21, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_22, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_23, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_24, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_25, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_26, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_27, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_28, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_29, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_30, // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
  output [15:0] io_outVal_31 // @[src/main/scala/simd_perm/simd_perm.scala 16:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] reg_out; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1 = 5'h1 == io_inIdx_0 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_3 = 5'h2 == io_inIdx_0 ? io_inVal_2 : _reg_out_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_5 = 5'h3 == io_inIdx_0 ? io_inVal_3 : _reg_out_T_3; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_7 = 5'h4 == io_inIdx_0 ? io_inVal_4 : _reg_out_T_5; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_9 = 5'h5 == io_inIdx_0 ? io_inVal_5 : _reg_out_T_7; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_11 = 5'h6 == io_inIdx_0 ? io_inVal_6 : _reg_out_T_9; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_13 = 5'h7 == io_inIdx_0 ? io_inVal_7 : _reg_out_T_11; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_15 = 5'h8 == io_inIdx_0 ? io_inVal_8 : _reg_out_T_13; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_17 = 5'h9 == io_inIdx_0 ? io_inVal_9 : _reg_out_T_15; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_19 = 5'ha == io_inIdx_0 ? io_inVal_10 : _reg_out_T_17; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_21 = 5'hb == io_inIdx_0 ? io_inVal_11 : _reg_out_T_19; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_23 = 5'hc == io_inIdx_0 ? io_inVal_12 : _reg_out_T_21; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_25 = 5'hd == io_inIdx_0 ? io_inVal_13 : _reg_out_T_23; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_27 = 5'he == io_inIdx_0 ? io_inVal_14 : _reg_out_T_25; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_29 = 5'hf == io_inIdx_0 ? io_inVal_15 : _reg_out_T_27; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_31 = 5'h10 == io_inIdx_0 ? io_inVal_16 : _reg_out_T_29; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_33 = 5'h11 == io_inIdx_0 ? io_inVal_17 : _reg_out_T_31; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_35 = 5'h12 == io_inIdx_0 ? io_inVal_18 : _reg_out_T_33; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_37 = 5'h13 == io_inIdx_0 ? io_inVal_19 : _reg_out_T_35; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_39 = 5'h14 == io_inIdx_0 ? io_inVal_20 : _reg_out_T_37; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_41 = 5'h15 == io_inIdx_0 ? io_inVal_21 : _reg_out_T_39; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_43 = 5'h16 == io_inIdx_0 ? io_inVal_22 : _reg_out_T_41; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_45 = 5'h17 == io_inIdx_0 ? io_inVal_23 : _reg_out_T_43; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_47 = 5'h18 == io_inIdx_0 ? io_inVal_24 : _reg_out_T_45; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_49 = 5'h19 == io_inIdx_0 ? io_inVal_25 : _reg_out_T_47; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_51 = 5'h1a == io_inIdx_0 ? io_inVal_26 : _reg_out_T_49; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_53 = 5'h1b == io_inIdx_0 ? io_inVal_27 : _reg_out_T_51; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_55 = 5'h1c == io_inIdx_0 ? io_inVal_28 : _reg_out_T_53; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_1; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_63 = 5'h1 == io_inIdx_1 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_65 = 5'h2 == io_inIdx_1 ? io_inVal_2 : _reg_out_T_63; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_67 = 5'h3 == io_inIdx_1 ? io_inVal_3 : _reg_out_T_65; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_69 = 5'h4 == io_inIdx_1 ? io_inVal_4 : _reg_out_T_67; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_71 = 5'h5 == io_inIdx_1 ? io_inVal_5 : _reg_out_T_69; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_73 = 5'h6 == io_inIdx_1 ? io_inVal_6 : _reg_out_T_71; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_75 = 5'h7 == io_inIdx_1 ? io_inVal_7 : _reg_out_T_73; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_77 = 5'h8 == io_inIdx_1 ? io_inVal_8 : _reg_out_T_75; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_79 = 5'h9 == io_inIdx_1 ? io_inVal_9 : _reg_out_T_77; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_81 = 5'ha == io_inIdx_1 ? io_inVal_10 : _reg_out_T_79; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_83 = 5'hb == io_inIdx_1 ? io_inVal_11 : _reg_out_T_81; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_85 = 5'hc == io_inIdx_1 ? io_inVal_12 : _reg_out_T_83; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_87 = 5'hd == io_inIdx_1 ? io_inVal_13 : _reg_out_T_85; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_89 = 5'he == io_inIdx_1 ? io_inVal_14 : _reg_out_T_87; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_91 = 5'hf == io_inIdx_1 ? io_inVal_15 : _reg_out_T_89; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_93 = 5'h10 == io_inIdx_1 ? io_inVal_16 : _reg_out_T_91; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_95 = 5'h11 == io_inIdx_1 ? io_inVal_17 : _reg_out_T_93; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_97 = 5'h12 == io_inIdx_1 ? io_inVal_18 : _reg_out_T_95; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_99 = 5'h13 == io_inIdx_1 ? io_inVal_19 : _reg_out_T_97; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_101 = 5'h14 == io_inIdx_1 ? io_inVal_20 : _reg_out_T_99; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_103 = 5'h15 == io_inIdx_1 ? io_inVal_21 : _reg_out_T_101; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_105 = 5'h16 == io_inIdx_1 ? io_inVal_22 : _reg_out_T_103; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_107 = 5'h17 == io_inIdx_1 ? io_inVal_23 : _reg_out_T_105; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_109 = 5'h18 == io_inIdx_1 ? io_inVal_24 : _reg_out_T_107; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_111 = 5'h19 == io_inIdx_1 ? io_inVal_25 : _reg_out_T_109; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_113 = 5'h1a == io_inIdx_1 ? io_inVal_26 : _reg_out_T_111; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_115 = 5'h1b == io_inIdx_1 ? io_inVal_27 : _reg_out_T_113; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_117 = 5'h1c == io_inIdx_1 ? io_inVal_28 : _reg_out_T_115; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_2; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_125 = 5'h1 == io_inIdx_2 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_127 = 5'h2 == io_inIdx_2 ? io_inVal_2 : _reg_out_T_125; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_129 = 5'h3 == io_inIdx_2 ? io_inVal_3 : _reg_out_T_127; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_131 = 5'h4 == io_inIdx_2 ? io_inVal_4 : _reg_out_T_129; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_133 = 5'h5 == io_inIdx_2 ? io_inVal_5 : _reg_out_T_131; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_135 = 5'h6 == io_inIdx_2 ? io_inVal_6 : _reg_out_T_133; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_137 = 5'h7 == io_inIdx_2 ? io_inVal_7 : _reg_out_T_135; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_139 = 5'h8 == io_inIdx_2 ? io_inVal_8 : _reg_out_T_137; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_141 = 5'h9 == io_inIdx_2 ? io_inVal_9 : _reg_out_T_139; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_143 = 5'ha == io_inIdx_2 ? io_inVal_10 : _reg_out_T_141; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_145 = 5'hb == io_inIdx_2 ? io_inVal_11 : _reg_out_T_143; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_147 = 5'hc == io_inIdx_2 ? io_inVal_12 : _reg_out_T_145; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_149 = 5'hd == io_inIdx_2 ? io_inVal_13 : _reg_out_T_147; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_151 = 5'he == io_inIdx_2 ? io_inVal_14 : _reg_out_T_149; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_153 = 5'hf == io_inIdx_2 ? io_inVal_15 : _reg_out_T_151; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_155 = 5'h10 == io_inIdx_2 ? io_inVal_16 : _reg_out_T_153; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_157 = 5'h11 == io_inIdx_2 ? io_inVal_17 : _reg_out_T_155; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_159 = 5'h12 == io_inIdx_2 ? io_inVal_18 : _reg_out_T_157; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_161 = 5'h13 == io_inIdx_2 ? io_inVal_19 : _reg_out_T_159; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_163 = 5'h14 == io_inIdx_2 ? io_inVal_20 : _reg_out_T_161; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_165 = 5'h15 == io_inIdx_2 ? io_inVal_21 : _reg_out_T_163; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_167 = 5'h16 == io_inIdx_2 ? io_inVal_22 : _reg_out_T_165; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_169 = 5'h17 == io_inIdx_2 ? io_inVal_23 : _reg_out_T_167; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_171 = 5'h18 == io_inIdx_2 ? io_inVal_24 : _reg_out_T_169; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_173 = 5'h19 == io_inIdx_2 ? io_inVal_25 : _reg_out_T_171; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_175 = 5'h1a == io_inIdx_2 ? io_inVal_26 : _reg_out_T_173; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_177 = 5'h1b == io_inIdx_2 ? io_inVal_27 : _reg_out_T_175; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_179 = 5'h1c == io_inIdx_2 ? io_inVal_28 : _reg_out_T_177; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_3; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_187 = 5'h1 == io_inIdx_3 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_189 = 5'h2 == io_inIdx_3 ? io_inVal_2 : _reg_out_T_187; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_191 = 5'h3 == io_inIdx_3 ? io_inVal_3 : _reg_out_T_189; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_193 = 5'h4 == io_inIdx_3 ? io_inVal_4 : _reg_out_T_191; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_195 = 5'h5 == io_inIdx_3 ? io_inVal_5 : _reg_out_T_193; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_197 = 5'h6 == io_inIdx_3 ? io_inVal_6 : _reg_out_T_195; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_199 = 5'h7 == io_inIdx_3 ? io_inVal_7 : _reg_out_T_197; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_201 = 5'h8 == io_inIdx_3 ? io_inVal_8 : _reg_out_T_199; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_203 = 5'h9 == io_inIdx_3 ? io_inVal_9 : _reg_out_T_201; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_205 = 5'ha == io_inIdx_3 ? io_inVal_10 : _reg_out_T_203; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_207 = 5'hb == io_inIdx_3 ? io_inVal_11 : _reg_out_T_205; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_209 = 5'hc == io_inIdx_3 ? io_inVal_12 : _reg_out_T_207; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_211 = 5'hd == io_inIdx_3 ? io_inVal_13 : _reg_out_T_209; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_213 = 5'he == io_inIdx_3 ? io_inVal_14 : _reg_out_T_211; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_215 = 5'hf == io_inIdx_3 ? io_inVal_15 : _reg_out_T_213; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_217 = 5'h10 == io_inIdx_3 ? io_inVal_16 : _reg_out_T_215; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_219 = 5'h11 == io_inIdx_3 ? io_inVal_17 : _reg_out_T_217; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_221 = 5'h12 == io_inIdx_3 ? io_inVal_18 : _reg_out_T_219; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_223 = 5'h13 == io_inIdx_3 ? io_inVal_19 : _reg_out_T_221; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_225 = 5'h14 == io_inIdx_3 ? io_inVal_20 : _reg_out_T_223; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_227 = 5'h15 == io_inIdx_3 ? io_inVal_21 : _reg_out_T_225; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_229 = 5'h16 == io_inIdx_3 ? io_inVal_22 : _reg_out_T_227; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_231 = 5'h17 == io_inIdx_3 ? io_inVal_23 : _reg_out_T_229; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_233 = 5'h18 == io_inIdx_3 ? io_inVal_24 : _reg_out_T_231; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_235 = 5'h19 == io_inIdx_3 ? io_inVal_25 : _reg_out_T_233; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_237 = 5'h1a == io_inIdx_3 ? io_inVal_26 : _reg_out_T_235; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_239 = 5'h1b == io_inIdx_3 ? io_inVal_27 : _reg_out_T_237; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_241 = 5'h1c == io_inIdx_3 ? io_inVal_28 : _reg_out_T_239; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_4; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_249 = 5'h1 == io_inIdx_4 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_251 = 5'h2 == io_inIdx_4 ? io_inVal_2 : _reg_out_T_249; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_253 = 5'h3 == io_inIdx_4 ? io_inVal_3 : _reg_out_T_251; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_255 = 5'h4 == io_inIdx_4 ? io_inVal_4 : _reg_out_T_253; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_257 = 5'h5 == io_inIdx_4 ? io_inVal_5 : _reg_out_T_255; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_259 = 5'h6 == io_inIdx_4 ? io_inVal_6 : _reg_out_T_257; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_261 = 5'h7 == io_inIdx_4 ? io_inVal_7 : _reg_out_T_259; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_263 = 5'h8 == io_inIdx_4 ? io_inVal_8 : _reg_out_T_261; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_265 = 5'h9 == io_inIdx_4 ? io_inVal_9 : _reg_out_T_263; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_267 = 5'ha == io_inIdx_4 ? io_inVal_10 : _reg_out_T_265; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_269 = 5'hb == io_inIdx_4 ? io_inVal_11 : _reg_out_T_267; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_271 = 5'hc == io_inIdx_4 ? io_inVal_12 : _reg_out_T_269; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_273 = 5'hd == io_inIdx_4 ? io_inVal_13 : _reg_out_T_271; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_275 = 5'he == io_inIdx_4 ? io_inVal_14 : _reg_out_T_273; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_277 = 5'hf == io_inIdx_4 ? io_inVal_15 : _reg_out_T_275; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_279 = 5'h10 == io_inIdx_4 ? io_inVal_16 : _reg_out_T_277; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_281 = 5'h11 == io_inIdx_4 ? io_inVal_17 : _reg_out_T_279; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_283 = 5'h12 == io_inIdx_4 ? io_inVal_18 : _reg_out_T_281; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_285 = 5'h13 == io_inIdx_4 ? io_inVal_19 : _reg_out_T_283; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_287 = 5'h14 == io_inIdx_4 ? io_inVal_20 : _reg_out_T_285; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_289 = 5'h15 == io_inIdx_4 ? io_inVal_21 : _reg_out_T_287; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_291 = 5'h16 == io_inIdx_4 ? io_inVal_22 : _reg_out_T_289; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_293 = 5'h17 == io_inIdx_4 ? io_inVal_23 : _reg_out_T_291; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_295 = 5'h18 == io_inIdx_4 ? io_inVal_24 : _reg_out_T_293; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_297 = 5'h19 == io_inIdx_4 ? io_inVal_25 : _reg_out_T_295; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_299 = 5'h1a == io_inIdx_4 ? io_inVal_26 : _reg_out_T_297; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_301 = 5'h1b == io_inIdx_4 ? io_inVal_27 : _reg_out_T_299; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_303 = 5'h1c == io_inIdx_4 ? io_inVal_28 : _reg_out_T_301; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_5; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_311 = 5'h1 == io_inIdx_5 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_313 = 5'h2 == io_inIdx_5 ? io_inVal_2 : _reg_out_T_311; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_315 = 5'h3 == io_inIdx_5 ? io_inVal_3 : _reg_out_T_313; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_317 = 5'h4 == io_inIdx_5 ? io_inVal_4 : _reg_out_T_315; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_319 = 5'h5 == io_inIdx_5 ? io_inVal_5 : _reg_out_T_317; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_321 = 5'h6 == io_inIdx_5 ? io_inVal_6 : _reg_out_T_319; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_323 = 5'h7 == io_inIdx_5 ? io_inVal_7 : _reg_out_T_321; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_325 = 5'h8 == io_inIdx_5 ? io_inVal_8 : _reg_out_T_323; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_327 = 5'h9 == io_inIdx_5 ? io_inVal_9 : _reg_out_T_325; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_329 = 5'ha == io_inIdx_5 ? io_inVal_10 : _reg_out_T_327; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_331 = 5'hb == io_inIdx_5 ? io_inVal_11 : _reg_out_T_329; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_333 = 5'hc == io_inIdx_5 ? io_inVal_12 : _reg_out_T_331; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_335 = 5'hd == io_inIdx_5 ? io_inVal_13 : _reg_out_T_333; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_337 = 5'he == io_inIdx_5 ? io_inVal_14 : _reg_out_T_335; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_339 = 5'hf == io_inIdx_5 ? io_inVal_15 : _reg_out_T_337; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_341 = 5'h10 == io_inIdx_5 ? io_inVal_16 : _reg_out_T_339; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_343 = 5'h11 == io_inIdx_5 ? io_inVal_17 : _reg_out_T_341; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_345 = 5'h12 == io_inIdx_5 ? io_inVal_18 : _reg_out_T_343; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_347 = 5'h13 == io_inIdx_5 ? io_inVal_19 : _reg_out_T_345; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_349 = 5'h14 == io_inIdx_5 ? io_inVal_20 : _reg_out_T_347; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_351 = 5'h15 == io_inIdx_5 ? io_inVal_21 : _reg_out_T_349; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_353 = 5'h16 == io_inIdx_5 ? io_inVal_22 : _reg_out_T_351; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_355 = 5'h17 == io_inIdx_5 ? io_inVal_23 : _reg_out_T_353; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_357 = 5'h18 == io_inIdx_5 ? io_inVal_24 : _reg_out_T_355; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_359 = 5'h19 == io_inIdx_5 ? io_inVal_25 : _reg_out_T_357; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_361 = 5'h1a == io_inIdx_5 ? io_inVal_26 : _reg_out_T_359; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_363 = 5'h1b == io_inIdx_5 ? io_inVal_27 : _reg_out_T_361; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_365 = 5'h1c == io_inIdx_5 ? io_inVal_28 : _reg_out_T_363; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_6; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_373 = 5'h1 == io_inIdx_6 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_375 = 5'h2 == io_inIdx_6 ? io_inVal_2 : _reg_out_T_373; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_377 = 5'h3 == io_inIdx_6 ? io_inVal_3 : _reg_out_T_375; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_379 = 5'h4 == io_inIdx_6 ? io_inVal_4 : _reg_out_T_377; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_381 = 5'h5 == io_inIdx_6 ? io_inVal_5 : _reg_out_T_379; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_383 = 5'h6 == io_inIdx_6 ? io_inVal_6 : _reg_out_T_381; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_385 = 5'h7 == io_inIdx_6 ? io_inVal_7 : _reg_out_T_383; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_387 = 5'h8 == io_inIdx_6 ? io_inVal_8 : _reg_out_T_385; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_389 = 5'h9 == io_inIdx_6 ? io_inVal_9 : _reg_out_T_387; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_391 = 5'ha == io_inIdx_6 ? io_inVal_10 : _reg_out_T_389; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_393 = 5'hb == io_inIdx_6 ? io_inVal_11 : _reg_out_T_391; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_395 = 5'hc == io_inIdx_6 ? io_inVal_12 : _reg_out_T_393; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_397 = 5'hd == io_inIdx_6 ? io_inVal_13 : _reg_out_T_395; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_399 = 5'he == io_inIdx_6 ? io_inVal_14 : _reg_out_T_397; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_401 = 5'hf == io_inIdx_6 ? io_inVal_15 : _reg_out_T_399; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_403 = 5'h10 == io_inIdx_6 ? io_inVal_16 : _reg_out_T_401; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_405 = 5'h11 == io_inIdx_6 ? io_inVal_17 : _reg_out_T_403; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_407 = 5'h12 == io_inIdx_6 ? io_inVal_18 : _reg_out_T_405; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_409 = 5'h13 == io_inIdx_6 ? io_inVal_19 : _reg_out_T_407; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_411 = 5'h14 == io_inIdx_6 ? io_inVal_20 : _reg_out_T_409; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_413 = 5'h15 == io_inIdx_6 ? io_inVal_21 : _reg_out_T_411; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_415 = 5'h16 == io_inIdx_6 ? io_inVal_22 : _reg_out_T_413; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_417 = 5'h17 == io_inIdx_6 ? io_inVal_23 : _reg_out_T_415; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_419 = 5'h18 == io_inIdx_6 ? io_inVal_24 : _reg_out_T_417; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_421 = 5'h19 == io_inIdx_6 ? io_inVal_25 : _reg_out_T_419; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_423 = 5'h1a == io_inIdx_6 ? io_inVal_26 : _reg_out_T_421; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_425 = 5'h1b == io_inIdx_6 ? io_inVal_27 : _reg_out_T_423; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_427 = 5'h1c == io_inIdx_6 ? io_inVal_28 : _reg_out_T_425; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_7; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_435 = 5'h1 == io_inIdx_7 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_437 = 5'h2 == io_inIdx_7 ? io_inVal_2 : _reg_out_T_435; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_439 = 5'h3 == io_inIdx_7 ? io_inVal_3 : _reg_out_T_437; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_441 = 5'h4 == io_inIdx_7 ? io_inVal_4 : _reg_out_T_439; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_443 = 5'h5 == io_inIdx_7 ? io_inVal_5 : _reg_out_T_441; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_445 = 5'h6 == io_inIdx_7 ? io_inVal_6 : _reg_out_T_443; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_447 = 5'h7 == io_inIdx_7 ? io_inVal_7 : _reg_out_T_445; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_449 = 5'h8 == io_inIdx_7 ? io_inVal_8 : _reg_out_T_447; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_451 = 5'h9 == io_inIdx_7 ? io_inVal_9 : _reg_out_T_449; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_453 = 5'ha == io_inIdx_7 ? io_inVal_10 : _reg_out_T_451; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_455 = 5'hb == io_inIdx_7 ? io_inVal_11 : _reg_out_T_453; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_457 = 5'hc == io_inIdx_7 ? io_inVal_12 : _reg_out_T_455; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_459 = 5'hd == io_inIdx_7 ? io_inVal_13 : _reg_out_T_457; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_461 = 5'he == io_inIdx_7 ? io_inVal_14 : _reg_out_T_459; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_463 = 5'hf == io_inIdx_7 ? io_inVal_15 : _reg_out_T_461; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_465 = 5'h10 == io_inIdx_7 ? io_inVal_16 : _reg_out_T_463; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_467 = 5'h11 == io_inIdx_7 ? io_inVal_17 : _reg_out_T_465; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_469 = 5'h12 == io_inIdx_7 ? io_inVal_18 : _reg_out_T_467; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_471 = 5'h13 == io_inIdx_7 ? io_inVal_19 : _reg_out_T_469; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_473 = 5'h14 == io_inIdx_7 ? io_inVal_20 : _reg_out_T_471; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_475 = 5'h15 == io_inIdx_7 ? io_inVal_21 : _reg_out_T_473; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_477 = 5'h16 == io_inIdx_7 ? io_inVal_22 : _reg_out_T_475; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_479 = 5'h17 == io_inIdx_7 ? io_inVal_23 : _reg_out_T_477; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_481 = 5'h18 == io_inIdx_7 ? io_inVal_24 : _reg_out_T_479; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_483 = 5'h19 == io_inIdx_7 ? io_inVal_25 : _reg_out_T_481; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_485 = 5'h1a == io_inIdx_7 ? io_inVal_26 : _reg_out_T_483; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_487 = 5'h1b == io_inIdx_7 ? io_inVal_27 : _reg_out_T_485; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_489 = 5'h1c == io_inIdx_7 ? io_inVal_28 : _reg_out_T_487; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_8; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_497 = 5'h1 == io_inIdx_8 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_499 = 5'h2 == io_inIdx_8 ? io_inVal_2 : _reg_out_T_497; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_501 = 5'h3 == io_inIdx_8 ? io_inVal_3 : _reg_out_T_499; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_503 = 5'h4 == io_inIdx_8 ? io_inVal_4 : _reg_out_T_501; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_505 = 5'h5 == io_inIdx_8 ? io_inVal_5 : _reg_out_T_503; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_507 = 5'h6 == io_inIdx_8 ? io_inVal_6 : _reg_out_T_505; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_509 = 5'h7 == io_inIdx_8 ? io_inVal_7 : _reg_out_T_507; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_511 = 5'h8 == io_inIdx_8 ? io_inVal_8 : _reg_out_T_509; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_513 = 5'h9 == io_inIdx_8 ? io_inVal_9 : _reg_out_T_511; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_515 = 5'ha == io_inIdx_8 ? io_inVal_10 : _reg_out_T_513; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_517 = 5'hb == io_inIdx_8 ? io_inVal_11 : _reg_out_T_515; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_519 = 5'hc == io_inIdx_8 ? io_inVal_12 : _reg_out_T_517; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_521 = 5'hd == io_inIdx_8 ? io_inVal_13 : _reg_out_T_519; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_523 = 5'he == io_inIdx_8 ? io_inVal_14 : _reg_out_T_521; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_525 = 5'hf == io_inIdx_8 ? io_inVal_15 : _reg_out_T_523; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_527 = 5'h10 == io_inIdx_8 ? io_inVal_16 : _reg_out_T_525; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_529 = 5'h11 == io_inIdx_8 ? io_inVal_17 : _reg_out_T_527; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_531 = 5'h12 == io_inIdx_8 ? io_inVal_18 : _reg_out_T_529; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_533 = 5'h13 == io_inIdx_8 ? io_inVal_19 : _reg_out_T_531; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_535 = 5'h14 == io_inIdx_8 ? io_inVal_20 : _reg_out_T_533; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_537 = 5'h15 == io_inIdx_8 ? io_inVal_21 : _reg_out_T_535; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_539 = 5'h16 == io_inIdx_8 ? io_inVal_22 : _reg_out_T_537; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_541 = 5'h17 == io_inIdx_8 ? io_inVal_23 : _reg_out_T_539; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_543 = 5'h18 == io_inIdx_8 ? io_inVal_24 : _reg_out_T_541; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_545 = 5'h19 == io_inIdx_8 ? io_inVal_25 : _reg_out_T_543; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_547 = 5'h1a == io_inIdx_8 ? io_inVal_26 : _reg_out_T_545; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_549 = 5'h1b == io_inIdx_8 ? io_inVal_27 : _reg_out_T_547; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_551 = 5'h1c == io_inIdx_8 ? io_inVal_28 : _reg_out_T_549; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_9; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_559 = 5'h1 == io_inIdx_9 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_561 = 5'h2 == io_inIdx_9 ? io_inVal_2 : _reg_out_T_559; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_563 = 5'h3 == io_inIdx_9 ? io_inVal_3 : _reg_out_T_561; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_565 = 5'h4 == io_inIdx_9 ? io_inVal_4 : _reg_out_T_563; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_567 = 5'h5 == io_inIdx_9 ? io_inVal_5 : _reg_out_T_565; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_569 = 5'h6 == io_inIdx_9 ? io_inVal_6 : _reg_out_T_567; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_571 = 5'h7 == io_inIdx_9 ? io_inVal_7 : _reg_out_T_569; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_573 = 5'h8 == io_inIdx_9 ? io_inVal_8 : _reg_out_T_571; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_575 = 5'h9 == io_inIdx_9 ? io_inVal_9 : _reg_out_T_573; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_577 = 5'ha == io_inIdx_9 ? io_inVal_10 : _reg_out_T_575; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_579 = 5'hb == io_inIdx_9 ? io_inVal_11 : _reg_out_T_577; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_581 = 5'hc == io_inIdx_9 ? io_inVal_12 : _reg_out_T_579; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_583 = 5'hd == io_inIdx_9 ? io_inVal_13 : _reg_out_T_581; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_585 = 5'he == io_inIdx_9 ? io_inVal_14 : _reg_out_T_583; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_587 = 5'hf == io_inIdx_9 ? io_inVal_15 : _reg_out_T_585; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_589 = 5'h10 == io_inIdx_9 ? io_inVal_16 : _reg_out_T_587; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_591 = 5'h11 == io_inIdx_9 ? io_inVal_17 : _reg_out_T_589; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_593 = 5'h12 == io_inIdx_9 ? io_inVal_18 : _reg_out_T_591; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_595 = 5'h13 == io_inIdx_9 ? io_inVal_19 : _reg_out_T_593; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_597 = 5'h14 == io_inIdx_9 ? io_inVal_20 : _reg_out_T_595; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_599 = 5'h15 == io_inIdx_9 ? io_inVal_21 : _reg_out_T_597; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_601 = 5'h16 == io_inIdx_9 ? io_inVal_22 : _reg_out_T_599; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_603 = 5'h17 == io_inIdx_9 ? io_inVal_23 : _reg_out_T_601; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_605 = 5'h18 == io_inIdx_9 ? io_inVal_24 : _reg_out_T_603; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_607 = 5'h19 == io_inIdx_9 ? io_inVal_25 : _reg_out_T_605; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_609 = 5'h1a == io_inIdx_9 ? io_inVal_26 : _reg_out_T_607; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_611 = 5'h1b == io_inIdx_9 ? io_inVal_27 : _reg_out_T_609; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_613 = 5'h1c == io_inIdx_9 ? io_inVal_28 : _reg_out_T_611; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_10; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_621 = 5'h1 == io_inIdx_10 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_623 = 5'h2 == io_inIdx_10 ? io_inVal_2 : _reg_out_T_621; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_625 = 5'h3 == io_inIdx_10 ? io_inVal_3 : _reg_out_T_623; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_627 = 5'h4 == io_inIdx_10 ? io_inVal_4 : _reg_out_T_625; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_629 = 5'h5 == io_inIdx_10 ? io_inVal_5 : _reg_out_T_627; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_631 = 5'h6 == io_inIdx_10 ? io_inVal_6 : _reg_out_T_629; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_633 = 5'h7 == io_inIdx_10 ? io_inVal_7 : _reg_out_T_631; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_635 = 5'h8 == io_inIdx_10 ? io_inVal_8 : _reg_out_T_633; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_637 = 5'h9 == io_inIdx_10 ? io_inVal_9 : _reg_out_T_635; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_639 = 5'ha == io_inIdx_10 ? io_inVal_10 : _reg_out_T_637; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_641 = 5'hb == io_inIdx_10 ? io_inVal_11 : _reg_out_T_639; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_643 = 5'hc == io_inIdx_10 ? io_inVal_12 : _reg_out_T_641; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_645 = 5'hd == io_inIdx_10 ? io_inVal_13 : _reg_out_T_643; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_647 = 5'he == io_inIdx_10 ? io_inVal_14 : _reg_out_T_645; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_649 = 5'hf == io_inIdx_10 ? io_inVal_15 : _reg_out_T_647; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_651 = 5'h10 == io_inIdx_10 ? io_inVal_16 : _reg_out_T_649; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_653 = 5'h11 == io_inIdx_10 ? io_inVal_17 : _reg_out_T_651; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_655 = 5'h12 == io_inIdx_10 ? io_inVal_18 : _reg_out_T_653; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_657 = 5'h13 == io_inIdx_10 ? io_inVal_19 : _reg_out_T_655; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_659 = 5'h14 == io_inIdx_10 ? io_inVal_20 : _reg_out_T_657; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_661 = 5'h15 == io_inIdx_10 ? io_inVal_21 : _reg_out_T_659; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_663 = 5'h16 == io_inIdx_10 ? io_inVal_22 : _reg_out_T_661; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_665 = 5'h17 == io_inIdx_10 ? io_inVal_23 : _reg_out_T_663; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_667 = 5'h18 == io_inIdx_10 ? io_inVal_24 : _reg_out_T_665; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_669 = 5'h19 == io_inIdx_10 ? io_inVal_25 : _reg_out_T_667; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_671 = 5'h1a == io_inIdx_10 ? io_inVal_26 : _reg_out_T_669; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_673 = 5'h1b == io_inIdx_10 ? io_inVal_27 : _reg_out_T_671; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_675 = 5'h1c == io_inIdx_10 ? io_inVal_28 : _reg_out_T_673; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_11; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_683 = 5'h1 == io_inIdx_11 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_685 = 5'h2 == io_inIdx_11 ? io_inVal_2 : _reg_out_T_683; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_687 = 5'h3 == io_inIdx_11 ? io_inVal_3 : _reg_out_T_685; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_689 = 5'h4 == io_inIdx_11 ? io_inVal_4 : _reg_out_T_687; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_691 = 5'h5 == io_inIdx_11 ? io_inVal_5 : _reg_out_T_689; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_693 = 5'h6 == io_inIdx_11 ? io_inVal_6 : _reg_out_T_691; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_695 = 5'h7 == io_inIdx_11 ? io_inVal_7 : _reg_out_T_693; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_697 = 5'h8 == io_inIdx_11 ? io_inVal_8 : _reg_out_T_695; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_699 = 5'h9 == io_inIdx_11 ? io_inVal_9 : _reg_out_T_697; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_701 = 5'ha == io_inIdx_11 ? io_inVal_10 : _reg_out_T_699; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_703 = 5'hb == io_inIdx_11 ? io_inVal_11 : _reg_out_T_701; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_705 = 5'hc == io_inIdx_11 ? io_inVal_12 : _reg_out_T_703; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_707 = 5'hd == io_inIdx_11 ? io_inVal_13 : _reg_out_T_705; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_709 = 5'he == io_inIdx_11 ? io_inVal_14 : _reg_out_T_707; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_711 = 5'hf == io_inIdx_11 ? io_inVal_15 : _reg_out_T_709; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_713 = 5'h10 == io_inIdx_11 ? io_inVal_16 : _reg_out_T_711; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_715 = 5'h11 == io_inIdx_11 ? io_inVal_17 : _reg_out_T_713; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_717 = 5'h12 == io_inIdx_11 ? io_inVal_18 : _reg_out_T_715; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_719 = 5'h13 == io_inIdx_11 ? io_inVal_19 : _reg_out_T_717; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_721 = 5'h14 == io_inIdx_11 ? io_inVal_20 : _reg_out_T_719; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_723 = 5'h15 == io_inIdx_11 ? io_inVal_21 : _reg_out_T_721; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_725 = 5'h16 == io_inIdx_11 ? io_inVal_22 : _reg_out_T_723; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_727 = 5'h17 == io_inIdx_11 ? io_inVal_23 : _reg_out_T_725; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_729 = 5'h18 == io_inIdx_11 ? io_inVal_24 : _reg_out_T_727; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_731 = 5'h19 == io_inIdx_11 ? io_inVal_25 : _reg_out_T_729; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_733 = 5'h1a == io_inIdx_11 ? io_inVal_26 : _reg_out_T_731; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_735 = 5'h1b == io_inIdx_11 ? io_inVal_27 : _reg_out_T_733; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_737 = 5'h1c == io_inIdx_11 ? io_inVal_28 : _reg_out_T_735; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_12; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_745 = 5'h1 == io_inIdx_12 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_747 = 5'h2 == io_inIdx_12 ? io_inVal_2 : _reg_out_T_745; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_749 = 5'h3 == io_inIdx_12 ? io_inVal_3 : _reg_out_T_747; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_751 = 5'h4 == io_inIdx_12 ? io_inVal_4 : _reg_out_T_749; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_753 = 5'h5 == io_inIdx_12 ? io_inVal_5 : _reg_out_T_751; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_755 = 5'h6 == io_inIdx_12 ? io_inVal_6 : _reg_out_T_753; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_757 = 5'h7 == io_inIdx_12 ? io_inVal_7 : _reg_out_T_755; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_759 = 5'h8 == io_inIdx_12 ? io_inVal_8 : _reg_out_T_757; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_761 = 5'h9 == io_inIdx_12 ? io_inVal_9 : _reg_out_T_759; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_763 = 5'ha == io_inIdx_12 ? io_inVal_10 : _reg_out_T_761; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_765 = 5'hb == io_inIdx_12 ? io_inVal_11 : _reg_out_T_763; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_767 = 5'hc == io_inIdx_12 ? io_inVal_12 : _reg_out_T_765; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_769 = 5'hd == io_inIdx_12 ? io_inVal_13 : _reg_out_T_767; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_771 = 5'he == io_inIdx_12 ? io_inVal_14 : _reg_out_T_769; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_773 = 5'hf == io_inIdx_12 ? io_inVal_15 : _reg_out_T_771; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_775 = 5'h10 == io_inIdx_12 ? io_inVal_16 : _reg_out_T_773; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_777 = 5'h11 == io_inIdx_12 ? io_inVal_17 : _reg_out_T_775; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_779 = 5'h12 == io_inIdx_12 ? io_inVal_18 : _reg_out_T_777; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_781 = 5'h13 == io_inIdx_12 ? io_inVal_19 : _reg_out_T_779; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_783 = 5'h14 == io_inIdx_12 ? io_inVal_20 : _reg_out_T_781; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_785 = 5'h15 == io_inIdx_12 ? io_inVal_21 : _reg_out_T_783; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_787 = 5'h16 == io_inIdx_12 ? io_inVal_22 : _reg_out_T_785; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_789 = 5'h17 == io_inIdx_12 ? io_inVal_23 : _reg_out_T_787; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_791 = 5'h18 == io_inIdx_12 ? io_inVal_24 : _reg_out_T_789; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_793 = 5'h19 == io_inIdx_12 ? io_inVal_25 : _reg_out_T_791; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_795 = 5'h1a == io_inIdx_12 ? io_inVal_26 : _reg_out_T_793; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_797 = 5'h1b == io_inIdx_12 ? io_inVal_27 : _reg_out_T_795; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_799 = 5'h1c == io_inIdx_12 ? io_inVal_28 : _reg_out_T_797; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_13; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_807 = 5'h1 == io_inIdx_13 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_809 = 5'h2 == io_inIdx_13 ? io_inVal_2 : _reg_out_T_807; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_811 = 5'h3 == io_inIdx_13 ? io_inVal_3 : _reg_out_T_809; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_813 = 5'h4 == io_inIdx_13 ? io_inVal_4 : _reg_out_T_811; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_815 = 5'h5 == io_inIdx_13 ? io_inVal_5 : _reg_out_T_813; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_817 = 5'h6 == io_inIdx_13 ? io_inVal_6 : _reg_out_T_815; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_819 = 5'h7 == io_inIdx_13 ? io_inVal_7 : _reg_out_T_817; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_821 = 5'h8 == io_inIdx_13 ? io_inVal_8 : _reg_out_T_819; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_823 = 5'h9 == io_inIdx_13 ? io_inVal_9 : _reg_out_T_821; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_825 = 5'ha == io_inIdx_13 ? io_inVal_10 : _reg_out_T_823; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_827 = 5'hb == io_inIdx_13 ? io_inVal_11 : _reg_out_T_825; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_829 = 5'hc == io_inIdx_13 ? io_inVal_12 : _reg_out_T_827; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_831 = 5'hd == io_inIdx_13 ? io_inVal_13 : _reg_out_T_829; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_833 = 5'he == io_inIdx_13 ? io_inVal_14 : _reg_out_T_831; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_835 = 5'hf == io_inIdx_13 ? io_inVal_15 : _reg_out_T_833; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_837 = 5'h10 == io_inIdx_13 ? io_inVal_16 : _reg_out_T_835; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_839 = 5'h11 == io_inIdx_13 ? io_inVal_17 : _reg_out_T_837; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_841 = 5'h12 == io_inIdx_13 ? io_inVal_18 : _reg_out_T_839; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_843 = 5'h13 == io_inIdx_13 ? io_inVal_19 : _reg_out_T_841; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_845 = 5'h14 == io_inIdx_13 ? io_inVal_20 : _reg_out_T_843; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_847 = 5'h15 == io_inIdx_13 ? io_inVal_21 : _reg_out_T_845; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_849 = 5'h16 == io_inIdx_13 ? io_inVal_22 : _reg_out_T_847; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_851 = 5'h17 == io_inIdx_13 ? io_inVal_23 : _reg_out_T_849; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_853 = 5'h18 == io_inIdx_13 ? io_inVal_24 : _reg_out_T_851; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_855 = 5'h19 == io_inIdx_13 ? io_inVal_25 : _reg_out_T_853; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_857 = 5'h1a == io_inIdx_13 ? io_inVal_26 : _reg_out_T_855; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_859 = 5'h1b == io_inIdx_13 ? io_inVal_27 : _reg_out_T_857; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_861 = 5'h1c == io_inIdx_13 ? io_inVal_28 : _reg_out_T_859; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_14; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_869 = 5'h1 == io_inIdx_14 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_871 = 5'h2 == io_inIdx_14 ? io_inVal_2 : _reg_out_T_869; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_873 = 5'h3 == io_inIdx_14 ? io_inVal_3 : _reg_out_T_871; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_875 = 5'h4 == io_inIdx_14 ? io_inVal_4 : _reg_out_T_873; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_877 = 5'h5 == io_inIdx_14 ? io_inVal_5 : _reg_out_T_875; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_879 = 5'h6 == io_inIdx_14 ? io_inVal_6 : _reg_out_T_877; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_881 = 5'h7 == io_inIdx_14 ? io_inVal_7 : _reg_out_T_879; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_883 = 5'h8 == io_inIdx_14 ? io_inVal_8 : _reg_out_T_881; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_885 = 5'h9 == io_inIdx_14 ? io_inVal_9 : _reg_out_T_883; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_887 = 5'ha == io_inIdx_14 ? io_inVal_10 : _reg_out_T_885; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_889 = 5'hb == io_inIdx_14 ? io_inVal_11 : _reg_out_T_887; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_891 = 5'hc == io_inIdx_14 ? io_inVal_12 : _reg_out_T_889; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_893 = 5'hd == io_inIdx_14 ? io_inVal_13 : _reg_out_T_891; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_895 = 5'he == io_inIdx_14 ? io_inVal_14 : _reg_out_T_893; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_897 = 5'hf == io_inIdx_14 ? io_inVal_15 : _reg_out_T_895; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_899 = 5'h10 == io_inIdx_14 ? io_inVal_16 : _reg_out_T_897; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_901 = 5'h11 == io_inIdx_14 ? io_inVal_17 : _reg_out_T_899; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_903 = 5'h12 == io_inIdx_14 ? io_inVal_18 : _reg_out_T_901; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_905 = 5'h13 == io_inIdx_14 ? io_inVal_19 : _reg_out_T_903; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_907 = 5'h14 == io_inIdx_14 ? io_inVal_20 : _reg_out_T_905; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_909 = 5'h15 == io_inIdx_14 ? io_inVal_21 : _reg_out_T_907; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_911 = 5'h16 == io_inIdx_14 ? io_inVal_22 : _reg_out_T_909; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_913 = 5'h17 == io_inIdx_14 ? io_inVal_23 : _reg_out_T_911; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_915 = 5'h18 == io_inIdx_14 ? io_inVal_24 : _reg_out_T_913; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_917 = 5'h19 == io_inIdx_14 ? io_inVal_25 : _reg_out_T_915; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_919 = 5'h1a == io_inIdx_14 ? io_inVal_26 : _reg_out_T_917; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_921 = 5'h1b == io_inIdx_14 ? io_inVal_27 : _reg_out_T_919; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_923 = 5'h1c == io_inIdx_14 ? io_inVal_28 : _reg_out_T_921; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_15; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_931 = 5'h1 == io_inIdx_15 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_933 = 5'h2 == io_inIdx_15 ? io_inVal_2 : _reg_out_T_931; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_935 = 5'h3 == io_inIdx_15 ? io_inVal_3 : _reg_out_T_933; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_937 = 5'h4 == io_inIdx_15 ? io_inVal_4 : _reg_out_T_935; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_939 = 5'h5 == io_inIdx_15 ? io_inVal_5 : _reg_out_T_937; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_941 = 5'h6 == io_inIdx_15 ? io_inVal_6 : _reg_out_T_939; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_943 = 5'h7 == io_inIdx_15 ? io_inVal_7 : _reg_out_T_941; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_945 = 5'h8 == io_inIdx_15 ? io_inVal_8 : _reg_out_T_943; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_947 = 5'h9 == io_inIdx_15 ? io_inVal_9 : _reg_out_T_945; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_949 = 5'ha == io_inIdx_15 ? io_inVal_10 : _reg_out_T_947; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_951 = 5'hb == io_inIdx_15 ? io_inVal_11 : _reg_out_T_949; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_953 = 5'hc == io_inIdx_15 ? io_inVal_12 : _reg_out_T_951; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_955 = 5'hd == io_inIdx_15 ? io_inVal_13 : _reg_out_T_953; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_957 = 5'he == io_inIdx_15 ? io_inVal_14 : _reg_out_T_955; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_959 = 5'hf == io_inIdx_15 ? io_inVal_15 : _reg_out_T_957; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_961 = 5'h10 == io_inIdx_15 ? io_inVal_16 : _reg_out_T_959; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_963 = 5'h11 == io_inIdx_15 ? io_inVal_17 : _reg_out_T_961; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_965 = 5'h12 == io_inIdx_15 ? io_inVal_18 : _reg_out_T_963; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_967 = 5'h13 == io_inIdx_15 ? io_inVal_19 : _reg_out_T_965; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_969 = 5'h14 == io_inIdx_15 ? io_inVal_20 : _reg_out_T_967; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_971 = 5'h15 == io_inIdx_15 ? io_inVal_21 : _reg_out_T_969; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_973 = 5'h16 == io_inIdx_15 ? io_inVal_22 : _reg_out_T_971; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_975 = 5'h17 == io_inIdx_15 ? io_inVal_23 : _reg_out_T_973; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_977 = 5'h18 == io_inIdx_15 ? io_inVal_24 : _reg_out_T_975; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_979 = 5'h19 == io_inIdx_15 ? io_inVal_25 : _reg_out_T_977; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_981 = 5'h1a == io_inIdx_15 ? io_inVal_26 : _reg_out_T_979; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_983 = 5'h1b == io_inIdx_15 ? io_inVal_27 : _reg_out_T_981; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_985 = 5'h1c == io_inIdx_15 ? io_inVal_28 : _reg_out_T_983; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_16; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_993 = 5'h1 == io_inIdx_16 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_995 = 5'h2 == io_inIdx_16 ? io_inVal_2 : _reg_out_T_993; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_997 = 5'h3 == io_inIdx_16 ? io_inVal_3 : _reg_out_T_995; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_999 = 5'h4 == io_inIdx_16 ? io_inVal_4 : _reg_out_T_997; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1001 = 5'h5 == io_inIdx_16 ? io_inVal_5 : _reg_out_T_999; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1003 = 5'h6 == io_inIdx_16 ? io_inVal_6 : _reg_out_T_1001; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1005 = 5'h7 == io_inIdx_16 ? io_inVal_7 : _reg_out_T_1003; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1007 = 5'h8 == io_inIdx_16 ? io_inVal_8 : _reg_out_T_1005; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1009 = 5'h9 == io_inIdx_16 ? io_inVal_9 : _reg_out_T_1007; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1011 = 5'ha == io_inIdx_16 ? io_inVal_10 : _reg_out_T_1009; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1013 = 5'hb == io_inIdx_16 ? io_inVal_11 : _reg_out_T_1011; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1015 = 5'hc == io_inIdx_16 ? io_inVal_12 : _reg_out_T_1013; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1017 = 5'hd == io_inIdx_16 ? io_inVal_13 : _reg_out_T_1015; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1019 = 5'he == io_inIdx_16 ? io_inVal_14 : _reg_out_T_1017; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1021 = 5'hf == io_inIdx_16 ? io_inVal_15 : _reg_out_T_1019; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1023 = 5'h10 == io_inIdx_16 ? io_inVal_16 : _reg_out_T_1021; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1025 = 5'h11 == io_inIdx_16 ? io_inVal_17 : _reg_out_T_1023; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1027 = 5'h12 == io_inIdx_16 ? io_inVal_18 : _reg_out_T_1025; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1029 = 5'h13 == io_inIdx_16 ? io_inVal_19 : _reg_out_T_1027; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1031 = 5'h14 == io_inIdx_16 ? io_inVal_20 : _reg_out_T_1029; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1033 = 5'h15 == io_inIdx_16 ? io_inVal_21 : _reg_out_T_1031; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1035 = 5'h16 == io_inIdx_16 ? io_inVal_22 : _reg_out_T_1033; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1037 = 5'h17 == io_inIdx_16 ? io_inVal_23 : _reg_out_T_1035; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1039 = 5'h18 == io_inIdx_16 ? io_inVal_24 : _reg_out_T_1037; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1041 = 5'h19 == io_inIdx_16 ? io_inVal_25 : _reg_out_T_1039; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1043 = 5'h1a == io_inIdx_16 ? io_inVal_26 : _reg_out_T_1041; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1045 = 5'h1b == io_inIdx_16 ? io_inVal_27 : _reg_out_T_1043; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1047 = 5'h1c == io_inIdx_16 ? io_inVal_28 : _reg_out_T_1045; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_17; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1055 = 5'h1 == io_inIdx_17 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1057 = 5'h2 == io_inIdx_17 ? io_inVal_2 : _reg_out_T_1055; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1059 = 5'h3 == io_inIdx_17 ? io_inVal_3 : _reg_out_T_1057; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1061 = 5'h4 == io_inIdx_17 ? io_inVal_4 : _reg_out_T_1059; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1063 = 5'h5 == io_inIdx_17 ? io_inVal_5 : _reg_out_T_1061; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1065 = 5'h6 == io_inIdx_17 ? io_inVal_6 : _reg_out_T_1063; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1067 = 5'h7 == io_inIdx_17 ? io_inVal_7 : _reg_out_T_1065; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1069 = 5'h8 == io_inIdx_17 ? io_inVal_8 : _reg_out_T_1067; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1071 = 5'h9 == io_inIdx_17 ? io_inVal_9 : _reg_out_T_1069; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1073 = 5'ha == io_inIdx_17 ? io_inVal_10 : _reg_out_T_1071; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1075 = 5'hb == io_inIdx_17 ? io_inVal_11 : _reg_out_T_1073; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1077 = 5'hc == io_inIdx_17 ? io_inVal_12 : _reg_out_T_1075; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1079 = 5'hd == io_inIdx_17 ? io_inVal_13 : _reg_out_T_1077; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1081 = 5'he == io_inIdx_17 ? io_inVal_14 : _reg_out_T_1079; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1083 = 5'hf == io_inIdx_17 ? io_inVal_15 : _reg_out_T_1081; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1085 = 5'h10 == io_inIdx_17 ? io_inVal_16 : _reg_out_T_1083; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1087 = 5'h11 == io_inIdx_17 ? io_inVal_17 : _reg_out_T_1085; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1089 = 5'h12 == io_inIdx_17 ? io_inVal_18 : _reg_out_T_1087; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1091 = 5'h13 == io_inIdx_17 ? io_inVal_19 : _reg_out_T_1089; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1093 = 5'h14 == io_inIdx_17 ? io_inVal_20 : _reg_out_T_1091; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1095 = 5'h15 == io_inIdx_17 ? io_inVal_21 : _reg_out_T_1093; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1097 = 5'h16 == io_inIdx_17 ? io_inVal_22 : _reg_out_T_1095; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1099 = 5'h17 == io_inIdx_17 ? io_inVal_23 : _reg_out_T_1097; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1101 = 5'h18 == io_inIdx_17 ? io_inVal_24 : _reg_out_T_1099; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1103 = 5'h19 == io_inIdx_17 ? io_inVal_25 : _reg_out_T_1101; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1105 = 5'h1a == io_inIdx_17 ? io_inVal_26 : _reg_out_T_1103; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1107 = 5'h1b == io_inIdx_17 ? io_inVal_27 : _reg_out_T_1105; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1109 = 5'h1c == io_inIdx_17 ? io_inVal_28 : _reg_out_T_1107; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_18; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1117 = 5'h1 == io_inIdx_18 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1119 = 5'h2 == io_inIdx_18 ? io_inVal_2 : _reg_out_T_1117; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1121 = 5'h3 == io_inIdx_18 ? io_inVal_3 : _reg_out_T_1119; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1123 = 5'h4 == io_inIdx_18 ? io_inVal_4 : _reg_out_T_1121; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1125 = 5'h5 == io_inIdx_18 ? io_inVal_5 : _reg_out_T_1123; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1127 = 5'h6 == io_inIdx_18 ? io_inVal_6 : _reg_out_T_1125; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1129 = 5'h7 == io_inIdx_18 ? io_inVal_7 : _reg_out_T_1127; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1131 = 5'h8 == io_inIdx_18 ? io_inVal_8 : _reg_out_T_1129; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1133 = 5'h9 == io_inIdx_18 ? io_inVal_9 : _reg_out_T_1131; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1135 = 5'ha == io_inIdx_18 ? io_inVal_10 : _reg_out_T_1133; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1137 = 5'hb == io_inIdx_18 ? io_inVal_11 : _reg_out_T_1135; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1139 = 5'hc == io_inIdx_18 ? io_inVal_12 : _reg_out_T_1137; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1141 = 5'hd == io_inIdx_18 ? io_inVal_13 : _reg_out_T_1139; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1143 = 5'he == io_inIdx_18 ? io_inVal_14 : _reg_out_T_1141; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1145 = 5'hf == io_inIdx_18 ? io_inVal_15 : _reg_out_T_1143; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1147 = 5'h10 == io_inIdx_18 ? io_inVal_16 : _reg_out_T_1145; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1149 = 5'h11 == io_inIdx_18 ? io_inVal_17 : _reg_out_T_1147; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1151 = 5'h12 == io_inIdx_18 ? io_inVal_18 : _reg_out_T_1149; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1153 = 5'h13 == io_inIdx_18 ? io_inVal_19 : _reg_out_T_1151; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1155 = 5'h14 == io_inIdx_18 ? io_inVal_20 : _reg_out_T_1153; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1157 = 5'h15 == io_inIdx_18 ? io_inVal_21 : _reg_out_T_1155; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1159 = 5'h16 == io_inIdx_18 ? io_inVal_22 : _reg_out_T_1157; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1161 = 5'h17 == io_inIdx_18 ? io_inVal_23 : _reg_out_T_1159; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1163 = 5'h18 == io_inIdx_18 ? io_inVal_24 : _reg_out_T_1161; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1165 = 5'h19 == io_inIdx_18 ? io_inVal_25 : _reg_out_T_1163; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1167 = 5'h1a == io_inIdx_18 ? io_inVal_26 : _reg_out_T_1165; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1169 = 5'h1b == io_inIdx_18 ? io_inVal_27 : _reg_out_T_1167; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1171 = 5'h1c == io_inIdx_18 ? io_inVal_28 : _reg_out_T_1169; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_19; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1179 = 5'h1 == io_inIdx_19 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1181 = 5'h2 == io_inIdx_19 ? io_inVal_2 : _reg_out_T_1179; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1183 = 5'h3 == io_inIdx_19 ? io_inVal_3 : _reg_out_T_1181; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1185 = 5'h4 == io_inIdx_19 ? io_inVal_4 : _reg_out_T_1183; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1187 = 5'h5 == io_inIdx_19 ? io_inVal_5 : _reg_out_T_1185; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1189 = 5'h6 == io_inIdx_19 ? io_inVal_6 : _reg_out_T_1187; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1191 = 5'h7 == io_inIdx_19 ? io_inVal_7 : _reg_out_T_1189; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1193 = 5'h8 == io_inIdx_19 ? io_inVal_8 : _reg_out_T_1191; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1195 = 5'h9 == io_inIdx_19 ? io_inVal_9 : _reg_out_T_1193; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1197 = 5'ha == io_inIdx_19 ? io_inVal_10 : _reg_out_T_1195; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1199 = 5'hb == io_inIdx_19 ? io_inVal_11 : _reg_out_T_1197; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1201 = 5'hc == io_inIdx_19 ? io_inVal_12 : _reg_out_T_1199; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1203 = 5'hd == io_inIdx_19 ? io_inVal_13 : _reg_out_T_1201; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1205 = 5'he == io_inIdx_19 ? io_inVal_14 : _reg_out_T_1203; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1207 = 5'hf == io_inIdx_19 ? io_inVal_15 : _reg_out_T_1205; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1209 = 5'h10 == io_inIdx_19 ? io_inVal_16 : _reg_out_T_1207; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1211 = 5'h11 == io_inIdx_19 ? io_inVal_17 : _reg_out_T_1209; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1213 = 5'h12 == io_inIdx_19 ? io_inVal_18 : _reg_out_T_1211; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1215 = 5'h13 == io_inIdx_19 ? io_inVal_19 : _reg_out_T_1213; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1217 = 5'h14 == io_inIdx_19 ? io_inVal_20 : _reg_out_T_1215; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1219 = 5'h15 == io_inIdx_19 ? io_inVal_21 : _reg_out_T_1217; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1221 = 5'h16 == io_inIdx_19 ? io_inVal_22 : _reg_out_T_1219; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1223 = 5'h17 == io_inIdx_19 ? io_inVal_23 : _reg_out_T_1221; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1225 = 5'h18 == io_inIdx_19 ? io_inVal_24 : _reg_out_T_1223; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1227 = 5'h19 == io_inIdx_19 ? io_inVal_25 : _reg_out_T_1225; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1229 = 5'h1a == io_inIdx_19 ? io_inVal_26 : _reg_out_T_1227; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1231 = 5'h1b == io_inIdx_19 ? io_inVal_27 : _reg_out_T_1229; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1233 = 5'h1c == io_inIdx_19 ? io_inVal_28 : _reg_out_T_1231; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_20; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1241 = 5'h1 == io_inIdx_20 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1243 = 5'h2 == io_inIdx_20 ? io_inVal_2 : _reg_out_T_1241; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1245 = 5'h3 == io_inIdx_20 ? io_inVal_3 : _reg_out_T_1243; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1247 = 5'h4 == io_inIdx_20 ? io_inVal_4 : _reg_out_T_1245; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1249 = 5'h5 == io_inIdx_20 ? io_inVal_5 : _reg_out_T_1247; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1251 = 5'h6 == io_inIdx_20 ? io_inVal_6 : _reg_out_T_1249; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1253 = 5'h7 == io_inIdx_20 ? io_inVal_7 : _reg_out_T_1251; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1255 = 5'h8 == io_inIdx_20 ? io_inVal_8 : _reg_out_T_1253; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1257 = 5'h9 == io_inIdx_20 ? io_inVal_9 : _reg_out_T_1255; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1259 = 5'ha == io_inIdx_20 ? io_inVal_10 : _reg_out_T_1257; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1261 = 5'hb == io_inIdx_20 ? io_inVal_11 : _reg_out_T_1259; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1263 = 5'hc == io_inIdx_20 ? io_inVal_12 : _reg_out_T_1261; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1265 = 5'hd == io_inIdx_20 ? io_inVal_13 : _reg_out_T_1263; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1267 = 5'he == io_inIdx_20 ? io_inVal_14 : _reg_out_T_1265; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1269 = 5'hf == io_inIdx_20 ? io_inVal_15 : _reg_out_T_1267; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1271 = 5'h10 == io_inIdx_20 ? io_inVal_16 : _reg_out_T_1269; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1273 = 5'h11 == io_inIdx_20 ? io_inVal_17 : _reg_out_T_1271; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1275 = 5'h12 == io_inIdx_20 ? io_inVal_18 : _reg_out_T_1273; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1277 = 5'h13 == io_inIdx_20 ? io_inVal_19 : _reg_out_T_1275; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1279 = 5'h14 == io_inIdx_20 ? io_inVal_20 : _reg_out_T_1277; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1281 = 5'h15 == io_inIdx_20 ? io_inVal_21 : _reg_out_T_1279; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1283 = 5'h16 == io_inIdx_20 ? io_inVal_22 : _reg_out_T_1281; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1285 = 5'h17 == io_inIdx_20 ? io_inVal_23 : _reg_out_T_1283; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1287 = 5'h18 == io_inIdx_20 ? io_inVal_24 : _reg_out_T_1285; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1289 = 5'h19 == io_inIdx_20 ? io_inVal_25 : _reg_out_T_1287; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1291 = 5'h1a == io_inIdx_20 ? io_inVal_26 : _reg_out_T_1289; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1293 = 5'h1b == io_inIdx_20 ? io_inVal_27 : _reg_out_T_1291; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1295 = 5'h1c == io_inIdx_20 ? io_inVal_28 : _reg_out_T_1293; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_21; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1303 = 5'h1 == io_inIdx_21 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1305 = 5'h2 == io_inIdx_21 ? io_inVal_2 : _reg_out_T_1303; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1307 = 5'h3 == io_inIdx_21 ? io_inVal_3 : _reg_out_T_1305; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1309 = 5'h4 == io_inIdx_21 ? io_inVal_4 : _reg_out_T_1307; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1311 = 5'h5 == io_inIdx_21 ? io_inVal_5 : _reg_out_T_1309; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1313 = 5'h6 == io_inIdx_21 ? io_inVal_6 : _reg_out_T_1311; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1315 = 5'h7 == io_inIdx_21 ? io_inVal_7 : _reg_out_T_1313; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1317 = 5'h8 == io_inIdx_21 ? io_inVal_8 : _reg_out_T_1315; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1319 = 5'h9 == io_inIdx_21 ? io_inVal_9 : _reg_out_T_1317; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1321 = 5'ha == io_inIdx_21 ? io_inVal_10 : _reg_out_T_1319; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1323 = 5'hb == io_inIdx_21 ? io_inVal_11 : _reg_out_T_1321; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1325 = 5'hc == io_inIdx_21 ? io_inVal_12 : _reg_out_T_1323; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1327 = 5'hd == io_inIdx_21 ? io_inVal_13 : _reg_out_T_1325; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1329 = 5'he == io_inIdx_21 ? io_inVal_14 : _reg_out_T_1327; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1331 = 5'hf == io_inIdx_21 ? io_inVal_15 : _reg_out_T_1329; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1333 = 5'h10 == io_inIdx_21 ? io_inVal_16 : _reg_out_T_1331; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1335 = 5'h11 == io_inIdx_21 ? io_inVal_17 : _reg_out_T_1333; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1337 = 5'h12 == io_inIdx_21 ? io_inVal_18 : _reg_out_T_1335; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1339 = 5'h13 == io_inIdx_21 ? io_inVal_19 : _reg_out_T_1337; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1341 = 5'h14 == io_inIdx_21 ? io_inVal_20 : _reg_out_T_1339; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1343 = 5'h15 == io_inIdx_21 ? io_inVal_21 : _reg_out_T_1341; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1345 = 5'h16 == io_inIdx_21 ? io_inVal_22 : _reg_out_T_1343; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1347 = 5'h17 == io_inIdx_21 ? io_inVal_23 : _reg_out_T_1345; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1349 = 5'h18 == io_inIdx_21 ? io_inVal_24 : _reg_out_T_1347; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1351 = 5'h19 == io_inIdx_21 ? io_inVal_25 : _reg_out_T_1349; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1353 = 5'h1a == io_inIdx_21 ? io_inVal_26 : _reg_out_T_1351; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1355 = 5'h1b == io_inIdx_21 ? io_inVal_27 : _reg_out_T_1353; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1357 = 5'h1c == io_inIdx_21 ? io_inVal_28 : _reg_out_T_1355; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_22; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1365 = 5'h1 == io_inIdx_22 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1367 = 5'h2 == io_inIdx_22 ? io_inVal_2 : _reg_out_T_1365; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1369 = 5'h3 == io_inIdx_22 ? io_inVal_3 : _reg_out_T_1367; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1371 = 5'h4 == io_inIdx_22 ? io_inVal_4 : _reg_out_T_1369; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1373 = 5'h5 == io_inIdx_22 ? io_inVal_5 : _reg_out_T_1371; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1375 = 5'h6 == io_inIdx_22 ? io_inVal_6 : _reg_out_T_1373; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1377 = 5'h7 == io_inIdx_22 ? io_inVal_7 : _reg_out_T_1375; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1379 = 5'h8 == io_inIdx_22 ? io_inVal_8 : _reg_out_T_1377; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1381 = 5'h9 == io_inIdx_22 ? io_inVal_9 : _reg_out_T_1379; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1383 = 5'ha == io_inIdx_22 ? io_inVal_10 : _reg_out_T_1381; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1385 = 5'hb == io_inIdx_22 ? io_inVal_11 : _reg_out_T_1383; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1387 = 5'hc == io_inIdx_22 ? io_inVal_12 : _reg_out_T_1385; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1389 = 5'hd == io_inIdx_22 ? io_inVal_13 : _reg_out_T_1387; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1391 = 5'he == io_inIdx_22 ? io_inVal_14 : _reg_out_T_1389; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1393 = 5'hf == io_inIdx_22 ? io_inVal_15 : _reg_out_T_1391; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1395 = 5'h10 == io_inIdx_22 ? io_inVal_16 : _reg_out_T_1393; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1397 = 5'h11 == io_inIdx_22 ? io_inVal_17 : _reg_out_T_1395; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1399 = 5'h12 == io_inIdx_22 ? io_inVal_18 : _reg_out_T_1397; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1401 = 5'h13 == io_inIdx_22 ? io_inVal_19 : _reg_out_T_1399; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1403 = 5'h14 == io_inIdx_22 ? io_inVal_20 : _reg_out_T_1401; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1405 = 5'h15 == io_inIdx_22 ? io_inVal_21 : _reg_out_T_1403; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1407 = 5'h16 == io_inIdx_22 ? io_inVal_22 : _reg_out_T_1405; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1409 = 5'h17 == io_inIdx_22 ? io_inVal_23 : _reg_out_T_1407; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1411 = 5'h18 == io_inIdx_22 ? io_inVal_24 : _reg_out_T_1409; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1413 = 5'h19 == io_inIdx_22 ? io_inVal_25 : _reg_out_T_1411; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1415 = 5'h1a == io_inIdx_22 ? io_inVal_26 : _reg_out_T_1413; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1417 = 5'h1b == io_inIdx_22 ? io_inVal_27 : _reg_out_T_1415; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1419 = 5'h1c == io_inIdx_22 ? io_inVal_28 : _reg_out_T_1417; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_23; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1427 = 5'h1 == io_inIdx_23 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1429 = 5'h2 == io_inIdx_23 ? io_inVal_2 : _reg_out_T_1427; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1431 = 5'h3 == io_inIdx_23 ? io_inVal_3 : _reg_out_T_1429; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1433 = 5'h4 == io_inIdx_23 ? io_inVal_4 : _reg_out_T_1431; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1435 = 5'h5 == io_inIdx_23 ? io_inVal_5 : _reg_out_T_1433; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1437 = 5'h6 == io_inIdx_23 ? io_inVal_6 : _reg_out_T_1435; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1439 = 5'h7 == io_inIdx_23 ? io_inVal_7 : _reg_out_T_1437; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1441 = 5'h8 == io_inIdx_23 ? io_inVal_8 : _reg_out_T_1439; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1443 = 5'h9 == io_inIdx_23 ? io_inVal_9 : _reg_out_T_1441; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1445 = 5'ha == io_inIdx_23 ? io_inVal_10 : _reg_out_T_1443; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1447 = 5'hb == io_inIdx_23 ? io_inVal_11 : _reg_out_T_1445; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1449 = 5'hc == io_inIdx_23 ? io_inVal_12 : _reg_out_T_1447; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1451 = 5'hd == io_inIdx_23 ? io_inVal_13 : _reg_out_T_1449; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1453 = 5'he == io_inIdx_23 ? io_inVal_14 : _reg_out_T_1451; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1455 = 5'hf == io_inIdx_23 ? io_inVal_15 : _reg_out_T_1453; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1457 = 5'h10 == io_inIdx_23 ? io_inVal_16 : _reg_out_T_1455; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1459 = 5'h11 == io_inIdx_23 ? io_inVal_17 : _reg_out_T_1457; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1461 = 5'h12 == io_inIdx_23 ? io_inVal_18 : _reg_out_T_1459; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1463 = 5'h13 == io_inIdx_23 ? io_inVal_19 : _reg_out_T_1461; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1465 = 5'h14 == io_inIdx_23 ? io_inVal_20 : _reg_out_T_1463; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1467 = 5'h15 == io_inIdx_23 ? io_inVal_21 : _reg_out_T_1465; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1469 = 5'h16 == io_inIdx_23 ? io_inVal_22 : _reg_out_T_1467; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1471 = 5'h17 == io_inIdx_23 ? io_inVal_23 : _reg_out_T_1469; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1473 = 5'h18 == io_inIdx_23 ? io_inVal_24 : _reg_out_T_1471; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1475 = 5'h19 == io_inIdx_23 ? io_inVal_25 : _reg_out_T_1473; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1477 = 5'h1a == io_inIdx_23 ? io_inVal_26 : _reg_out_T_1475; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1479 = 5'h1b == io_inIdx_23 ? io_inVal_27 : _reg_out_T_1477; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1481 = 5'h1c == io_inIdx_23 ? io_inVal_28 : _reg_out_T_1479; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_24; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1489 = 5'h1 == io_inIdx_24 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1491 = 5'h2 == io_inIdx_24 ? io_inVal_2 : _reg_out_T_1489; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1493 = 5'h3 == io_inIdx_24 ? io_inVal_3 : _reg_out_T_1491; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1495 = 5'h4 == io_inIdx_24 ? io_inVal_4 : _reg_out_T_1493; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1497 = 5'h5 == io_inIdx_24 ? io_inVal_5 : _reg_out_T_1495; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1499 = 5'h6 == io_inIdx_24 ? io_inVal_6 : _reg_out_T_1497; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1501 = 5'h7 == io_inIdx_24 ? io_inVal_7 : _reg_out_T_1499; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1503 = 5'h8 == io_inIdx_24 ? io_inVal_8 : _reg_out_T_1501; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1505 = 5'h9 == io_inIdx_24 ? io_inVal_9 : _reg_out_T_1503; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1507 = 5'ha == io_inIdx_24 ? io_inVal_10 : _reg_out_T_1505; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1509 = 5'hb == io_inIdx_24 ? io_inVal_11 : _reg_out_T_1507; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1511 = 5'hc == io_inIdx_24 ? io_inVal_12 : _reg_out_T_1509; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1513 = 5'hd == io_inIdx_24 ? io_inVal_13 : _reg_out_T_1511; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1515 = 5'he == io_inIdx_24 ? io_inVal_14 : _reg_out_T_1513; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1517 = 5'hf == io_inIdx_24 ? io_inVal_15 : _reg_out_T_1515; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1519 = 5'h10 == io_inIdx_24 ? io_inVal_16 : _reg_out_T_1517; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1521 = 5'h11 == io_inIdx_24 ? io_inVal_17 : _reg_out_T_1519; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1523 = 5'h12 == io_inIdx_24 ? io_inVal_18 : _reg_out_T_1521; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1525 = 5'h13 == io_inIdx_24 ? io_inVal_19 : _reg_out_T_1523; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1527 = 5'h14 == io_inIdx_24 ? io_inVal_20 : _reg_out_T_1525; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1529 = 5'h15 == io_inIdx_24 ? io_inVal_21 : _reg_out_T_1527; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1531 = 5'h16 == io_inIdx_24 ? io_inVal_22 : _reg_out_T_1529; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1533 = 5'h17 == io_inIdx_24 ? io_inVal_23 : _reg_out_T_1531; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1535 = 5'h18 == io_inIdx_24 ? io_inVal_24 : _reg_out_T_1533; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1537 = 5'h19 == io_inIdx_24 ? io_inVal_25 : _reg_out_T_1535; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1539 = 5'h1a == io_inIdx_24 ? io_inVal_26 : _reg_out_T_1537; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1541 = 5'h1b == io_inIdx_24 ? io_inVal_27 : _reg_out_T_1539; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1543 = 5'h1c == io_inIdx_24 ? io_inVal_28 : _reg_out_T_1541; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_25; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1551 = 5'h1 == io_inIdx_25 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1553 = 5'h2 == io_inIdx_25 ? io_inVal_2 : _reg_out_T_1551; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1555 = 5'h3 == io_inIdx_25 ? io_inVal_3 : _reg_out_T_1553; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1557 = 5'h4 == io_inIdx_25 ? io_inVal_4 : _reg_out_T_1555; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1559 = 5'h5 == io_inIdx_25 ? io_inVal_5 : _reg_out_T_1557; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1561 = 5'h6 == io_inIdx_25 ? io_inVal_6 : _reg_out_T_1559; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1563 = 5'h7 == io_inIdx_25 ? io_inVal_7 : _reg_out_T_1561; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1565 = 5'h8 == io_inIdx_25 ? io_inVal_8 : _reg_out_T_1563; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1567 = 5'h9 == io_inIdx_25 ? io_inVal_9 : _reg_out_T_1565; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1569 = 5'ha == io_inIdx_25 ? io_inVal_10 : _reg_out_T_1567; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1571 = 5'hb == io_inIdx_25 ? io_inVal_11 : _reg_out_T_1569; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1573 = 5'hc == io_inIdx_25 ? io_inVal_12 : _reg_out_T_1571; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1575 = 5'hd == io_inIdx_25 ? io_inVal_13 : _reg_out_T_1573; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1577 = 5'he == io_inIdx_25 ? io_inVal_14 : _reg_out_T_1575; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1579 = 5'hf == io_inIdx_25 ? io_inVal_15 : _reg_out_T_1577; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1581 = 5'h10 == io_inIdx_25 ? io_inVal_16 : _reg_out_T_1579; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1583 = 5'h11 == io_inIdx_25 ? io_inVal_17 : _reg_out_T_1581; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1585 = 5'h12 == io_inIdx_25 ? io_inVal_18 : _reg_out_T_1583; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1587 = 5'h13 == io_inIdx_25 ? io_inVal_19 : _reg_out_T_1585; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1589 = 5'h14 == io_inIdx_25 ? io_inVal_20 : _reg_out_T_1587; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1591 = 5'h15 == io_inIdx_25 ? io_inVal_21 : _reg_out_T_1589; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1593 = 5'h16 == io_inIdx_25 ? io_inVal_22 : _reg_out_T_1591; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1595 = 5'h17 == io_inIdx_25 ? io_inVal_23 : _reg_out_T_1593; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1597 = 5'h18 == io_inIdx_25 ? io_inVal_24 : _reg_out_T_1595; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1599 = 5'h19 == io_inIdx_25 ? io_inVal_25 : _reg_out_T_1597; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1601 = 5'h1a == io_inIdx_25 ? io_inVal_26 : _reg_out_T_1599; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1603 = 5'h1b == io_inIdx_25 ? io_inVal_27 : _reg_out_T_1601; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1605 = 5'h1c == io_inIdx_25 ? io_inVal_28 : _reg_out_T_1603; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_26; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1613 = 5'h1 == io_inIdx_26 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1615 = 5'h2 == io_inIdx_26 ? io_inVal_2 : _reg_out_T_1613; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1617 = 5'h3 == io_inIdx_26 ? io_inVal_3 : _reg_out_T_1615; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1619 = 5'h4 == io_inIdx_26 ? io_inVal_4 : _reg_out_T_1617; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1621 = 5'h5 == io_inIdx_26 ? io_inVal_5 : _reg_out_T_1619; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1623 = 5'h6 == io_inIdx_26 ? io_inVal_6 : _reg_out_T_1621; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1625 = 5'h7 == io_inIdx_26 ? io_inVal_7 : _reg_out_T_1623; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1627 = 5'h8 == io_inIdx_26 ? io_inVal_8 : _reg_out_T_1625; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1629 = 5'h9 == io_inIdx_26 ? io_inVal_9 : _reg_out_T_1627; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1631 = 5'ha == io_inIdx_26 ? io_inVal_10 : _reg_out_T_1629; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1633 = 5'hb == io_inIdx_26 ? io_inVal_11 : _reg_out_T_1631; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1635 = 5'hc == io_inIdx_26 ? io_inVal_12 : _reg_out_T_1633; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1637 = 5'hd == io_inIdx_26 ? io_inVal_13 : _reg_out_T_1635; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1639 = 5'he == io_inIdx_26 ? io_inVal_14 : _reg_out_T_1637; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1641 = 5'hf == io_inIdx_26 ? io_inVal_15 : _reg_out_T_1639; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1643 = 5'h10 == io_inIdx_26 ? io_inVal_16 : _reg_out_T_1641; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1645 = 5'h11 == io_inIdx_26 ? io_inVal_17 : _reg_out_T_1643; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1647 = 5'h12 == io_inIdx_26 ? io_inVal_18 : _reg_out_T_1645; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1649 = 5'h13 == io_inIdx_26 ? io_inVal_19 : _reg_out_T_1647; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1651 = 5'h14 == io_inIdx_26 ? io_inVal_20 : _reg_out_T_1649; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1653 = 5'h15 == io_inIdx_26 ? io_inVal_21 : _reg_out_T_1651; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1655 = 5'h16 == io_inIdx_26 ? io_inVal_22 : _reg_out_T_1653; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1657 = 5'h17 == io_inIdx_26 ? io_inVal_23 : _reg_out_T_1655; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1659 = 5'h18 == io_inIdx_26 ? io_inVal_24 : _reg_out_T_1657; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1661 = 5'h19 == io_inIdx_26 ? io_inVal_25 : _reg_out_T_1659; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1663 = 5'h1a == io_inIdx_26 ? io_inVal_26 : _reg_out_T_1661; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1665 = 5'h1b == io_inIdx_26 ? io_inVal_27 : _reg_out_T_1663; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1667 = 5'h1c == io_inIdx_26 ? io_inVal_28 : _reg_out_T_1665; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_27; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1675 = 5'h1 == io_inIdx_27 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1677 = 5'h2 == io_inIdx_27 ? io_inVal_2 : _reg_out_T_1675; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1679 = 5'h3 == io_inIdx_27 ? io_inVal_3 : _reg_out_T_1677; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1681 = 5'h4 == io_inIdx_27 ? io_inVal_4 : _reg_out_T_1679; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1683 = 5'h5 == io_inIdx_27 ? io_inVal_5 : _reg_out_T_1681; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1685 = 5'h6 == io_inIdx_27 ? io_inVal_6 : _reg_out_T_1683; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1687 = 5'h7 == io_inIdx_27 ? io_inVal_7 : _reg_out_T_1685; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1689 = 5'h8 == io_inIdx_27 ? io_inVal_8 : _reg_out_T_1687; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1691 = 5'h9 == io_inIdx_27 ? io_inVal_9 : _reg_out_T_1689; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1693 = 5'ha == io_inIdx_27 ? io_inVal_10 : _reg_out_T_1691; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1695 = 5'hb == io_inIdx_27 ? io_inVal_11 : _reg_out_T_1693; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1697 = 5'hc == io_inIdx_27 ? io_inVal_12 : _reg_out_T_1695; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1699 = 5'hd == io_inIdx_27 ? io_inVal_13 : _reg_out_T_1697; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1701 = 5'he == io_inIdx_27 ? io_inVal_14 : _reg_out_T_1699; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1703 = 5'hf == io_inIdx_27 ? io_inVal_15 : _reg_out_T_1701; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1705 = 5'h10 == io_inIdx_27 ? io_inVal_16 : _reg_out_T_1703; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1707 = 5'h11 == io_inIdx_27 ? io_inVal_17 : _reg_out_T_1705; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1709 = 5'h12 == io_inIdx_27 ? io_inVal_18 : _reg_out_T_1707; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1711 = 5'h13 == io_inIdx_27 ? io_inVal_19 : _reg_out_T_1709; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1713 = 5'h14 == io_inIdx_27 ? io_inVal_20 : _reg_out_T_1711; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1715 = 5'h15 == io_inIdx_27 ? io_inVal_21 : _reg_out_T_1713; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1717 = 5'h16 == io_inIdx_27 ? io_inVal_22 : _reg_out_T_1715; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1719 = 5'h17 == io_inIdx_27 ? io_inVal_23 : _reg_out_T_1717; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1721 = 5'h18 == io_inIdx_27 ? io_inVal_24 : _reg_out_T_1719; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1723 = 5'h19 == io_inIdx_27 ? io_inVal_25 : _reg_out_T_1721; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1725 = 5'h1a == io_inIdx_27 ? io_inVal_26 : _reg_out_T_1723; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1727 = 5'h1b == io_inIdx_27 ? io_inVal_27 : _reg_out_T_1725; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1729 = 5'h1c == io_inIdx_27 ? io_inVal_28 : _reg_out_T_1727; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_28; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1737 = 5'h1 == io_inIdx_28 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1739 = 5'h2 == io_inIdx_28 ? io_inVal_2 : _reg_out_T_1737; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1741 = 5'h3 == io_inIdx_28 ? io_inVal_3 : _reg_out_T_1739; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1743 = 5'h4 == io_inIdx_28 ? io_inVal_4 : _reg_out_T_1741; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1745 = 5'h5 == io_inIdx_28 ? io_inVal_5 : _reg_out_T_1743; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1747 = 5'h6 == io_inIdx_28 ? io_inVal_6 : _reg_out_T_1745; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1749 = 5'h7 == io_inIdx_28 ? io_inVal_7 : _reg_out_T_1747; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1751 = 5'h8 == io_inIdx_28 ? io_inVal_8 : _reg_out_T_1749; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1753 = 5'h9 == io_inIdx_28 ? io_inVal_9 : _reg_out_T_1751; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1755 = 5'ha == io_inIdx_28 ? io_inVal_10 : _reg_out_T_1753; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1757 = 5'hb == io_inIdx_28 ? io_inVal_11 : _reg_out_T_1755; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1759 = 5'hc == io_inIdx_28 ? io_inVal_12 : _reg_out_T_1757; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1761 = 5'hd == io_inIdx_28 ? io_inVal_13 : _reg_out_T_1759; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1763 = 5'he == io_inIdx_28 ? io_inVal_14 : _reg_out_T_1761; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1765 = 5'hf == io_inIdx_28 ? io_inVal_15 : _reg_out_T_1763; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1767 = 5'h10 == io_inIdx_28 ? io_inVal_16 : _reg_out_T_1765; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1769 = 5'h11 == io_inIdx_28 ? io_inVal_17 : _reg_out_T_1767; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1771 = 5'h12 == io_inIdx_28 ? io_inVal_18 : _reg_out_T_1769; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1773 = 5'h13 == io_inIdx_28 ? io_inVal_19 : _reg_out_T_1771; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1775 = 5'h14 == io_inIdx_28 ? io_inVal_20 : _reg_out_T_1773; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1777 = 5'h15 == io_inIdx_28 ? io_inVal_21 : _reg_out_T_1775; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1779 = 5'h16 == io_inIdx_28 ? io_inVal_22 : _reg_out_T_1777; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1781 = 5'h17 == io_inIdx_28 ? io_inVal_23 : _reg_out_T_1779; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1783 = 5'h18 == io_inIdx_28 ? io_inVal_24 : _reg_out_T_1781; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1785 = 5'h19 == io_inIdx_28 ? io_inVal_25 : _reg_out_T_1783; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1787 = 5'h1a == io_inIdx_28 ? io_inVal_26 : _reg_out_T_1785; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1789 = 5'h1b == io_inIdx_28 ? io_inVal_27 : _reg_out_T_1787; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1791 = 5'h1c == io_inIdx_28 ? io_inVal_28 : _reg_out_T_1789; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_29; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1799 = 5'h1 == io_inIdx_29 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1801 = 5'h2 == io_inIdx_29 ? io_inVal_2 : _reg_out_T_1799; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1803 = 5'h3 == io_inIdx_29 ? io_inVal_3 : _reg_out_T_1801; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1805 = 5'h4 == io_inIdx_29 ? io_inVal_4 : _reg_out_T_1803; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1807 = 5'h5 == io_inIdx_29 ? io_inVal_5 : _reg_out_T_1805; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1809 = 5'h6 == io_inIdx_29 ? io_inVal_6 : _reg_out_T_1807; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1811 = 5'h7 == io_inIdx_29 ? io_inVal_7 : _reg_out_T_1809; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1813 = 5'h8 == io_inIdx_29 ? io_inVal_8 : _reg_out_T_1811; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1815 = 5'h9 == io_inIdx_29 ? io_inVal_9 : _reg_out_T_1813; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1817 = 5'ha == io_inIdx_29 ? io_inVal_10 : _reg_out_T_1815; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1819 = 5'hb == io_inIdx_29 ? io_inVal_11 : _reg_out_T_1817; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1821 = 5'hc == io_inIdx_29 ? io_inVal_12 : _reg_out_T_1819; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1823 = 5'hd == io_inIdx_29 ? io_inVal_13 : _reg_out_T_1821; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1825 = 5'he == io_inIdx_29 ? io_inVal_14 : _reg_out_T_1823; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1827 = 5'hf == io_inIdx_29 ? io_inVal_15 : _reg_out_T_1825; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1829 = 5'h10 == io_inIdx_29 ? io_inVal_16 : _reg_out_T_1827; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1831 = 5'h11 == io_inIdx_29 ? io_inVal_17 : _reg_out_T_1829; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1833 = 5'h12 == io_inIdx_29 ? io_inVal_18 : _reg_out_T_1831; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1835 = 5'h13 == io_inIdx_29 ? io_inVal_19 : _reg_out_T_1833; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1837 = 5'h14 == io_inIdx_29 ? io_inVal_20 : _reg_out_T_1835; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1839 = 5'h15 == io_inIdx_29 ? io_inVal_21 : _reg_out_T_1837; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1841 = 5'h16 == io_inIdx_29 ? io_inVal_22 : _reg_out_T_1839; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1843 = 5'h17 == io_inIdx_29 ? io_inVal_23 : _reg_out_T_1841; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1845 = 5'h18 == io_inIdx_29 ? io_inVal_24 : _reg_out_T_1843; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1847 = 5'h19 == io_inIdx_29 ? io_inVal_25 : _reg_out_T_1845; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1849 = 5'h1a == io_inIdx_29 ? io_inVal_26 : _reg_out_T_1847; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1851 = 5'h1b == io_inIdx_29 ? io_inVal_27 : _reg_out_T_1849; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1853 = 5'h1c == io_inIdx_29 ? io_inVal_28 : _reg_out_T_1851; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_30; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1861 = 5'h1 == io_inIdx_30 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1863 = 5'h2 == io_inIdx_30 ? io_inVal_2 : _reg_out_T_1861; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1865 = 5'h3 == io_inIdx_30 ? io_inVal_3 : _reg_out_T_1863; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1867 = 5'h4 == io_inIdx_30 ? io_inVal_4 : _reg_out_T_1865; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1869 = 5'h5 == io_inIdx_30 ? io_inVal_5 : _reg_out_T_1867; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1871 = 5'h6 == io_inIdx_30 ? io_inVal_6 : _reg_out_T_1869; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1873 = 5'h7 == io_inIdx_30 ? io_inVal_7 : _reg_out_T_1871; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1875 = 5'h8 == io_inIdx_30 ? io_inVal_8 : _reg_out_T_1873; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1877 = 5'h9 == io_inIdx_30 ? io_inVal_9 : _reg_out_T_1875; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1879 = 5'ha == io_inIdx_30 ? io_inVal_10 : _reg_out_T_1877; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1881 = 5'hb == io_inIdx_30 ? io_inVal_11 : _reg_out_T_1879; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1883 = 5'hc == io_inIdx_30 ? io_inVal_12 : _reg_out_T_1881; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1885 = 5'hd == io_inIdx_30 ? io_inVal_13 : _reg_out_T_1883; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1887 = 5'he == io_inIdx_30 ? io_inVal_14 : _reg_out_T_1885; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1889 = 5'hf == io_inIdx_30 ? io_inVal_15 : _reg_out_T_1887; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1891 = 5'h10 == io_inIdx_30 ? io_inVal_16 : _reg_out_T_1889; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1893 = 5'h11 == io_inIdx_30 ? io_inVal_17 : _reg_out_T_1891; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1895 = 5'h12 == io_inIdx_30 ? io_inVal_18 : _reg_out_T_1893; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1897 = 5'h13 == io_inIdx_30 ? io_inVal_19 : _reg_out_T_1895; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1899 = 5'h14 == io_inIdx_30 ? io_inVal_20 : _reg_out_T_1897; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1901 = 5'h15 == io_inIdx_30 ? io_inVal_21 : _reg_out_T_1899; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1903 = 5'h16 == io_inIdx_30 ? io_inVal_22 : _reg_out_T_1901; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1905 = 5'h17 == io_inIdx_30 ? io_inVal_23 : _reg_out_T_1903; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1907 = 5'h18 == io_inIdx_30 ? io_inVal_24 : _reg_out_T_1905; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1909 = 5'h19 == io_inIdx_30 ? io_inVal_25 : _reg_out_T_1907; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1911 = 5'h1a == io_inIdx_30 ? io_inVal_26 : _reg_out_T_1909; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1913 = 5'h1b == io_inIdx_30 ? io_inVal_27 : _reg_out_T_1911; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1915 = 5'h1c == io_inIdx_30 ? io_inVal_28 : _reg_out_T_1913; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  reg [15:0] reg_out_31; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
  wire [15:0] _reg_out_T_1923 = 5'h1 == io_inIdx_31 ? io_inVal_1 : io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1925 = 5'h2 == io_inIdx_31 ? io_inVal_2 : _reg_out_T_1923; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1927 = 5'h3 == io_inIdx_31 ? io_inVal_3 : _reg_out_T_1925; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1929 = 5'h4 == io_inIdx_31 ? io_inVal_4 : _reg_out_T_1927; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1931 = 5'h5 == io_inIdx_31 ? io_inVal_5 : _reg_out_T_1929; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1933 = 5'h6 == io_inIdx_31 ? io_inVal_6 : _reg_out_T_1931; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1935 = 5'h7 == io_inIdx_31 ? io_inVal_7 : _reg_out_T_1933; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1937 = 5'h8 == io_inIdx_31 ? io_inVal_8 : _reg_out_T_1935; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1939 = 5'h9 == io_inIdx_31 ? io_inVal_9 : _reg_out_T_1937; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1941 = 5'ha == io_inIdx_31 ? io_inVal_10 : _reg_out_T_1939; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1943 = 5'hb == io_inIdx_31 ? io_inVal_11 : _reg_out_T_1941; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1945 = 5'hc == io_inIdx_31 ? io_inVal_12 : _reg_out_T_1943; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1947 = 5'hd == io_inIdx_31 ? io_inVal_13 : _reg_out_T_1945; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1949 = 5'he == io_inIdx_31 ? io_inVal_14 : _reg_out_T_1947; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1951 = 5'hf == io_inIdx_31 ? io_inVal_15 : _reg_out_T_1949; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1953 = 5'h10 == io_inIdx_31 ? io_inVal_16 : _reg_out_T_1951; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1955 = 5'h11 == io_inIdx_31 ? io_inVal_17 : _reg_out_T_1953; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1957 = 5'h12 == io_inIdx_31 ? io_inVal_18 : _reg_out_T_1955; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1959 = 5'h13 == io_inIdx_31 ? io_inVal_19 : _reg_out_T_1957; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1961 = 5'h14 == io_inIdx_31 ? io_inVal_20 : _reg_out_T_1959; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1963 = 5'h15 == io_inIdx_31 ? io_inVal_21 : _reg_out_T_1961; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1965 = 5'h16 == io_inIdx_31 ? io_inVal_22 : _reg_out_T_1963; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1967 = 5'h17 == io_inIdx_31 ? io_inVal_23 : _reg_out_T_1965; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1969 = 5'h18 == io_inIdx_31 ? io_inVal_24 : _reg_out_T_1967; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1971 = 5'h19 == io_inIdx_31 ? io_inVal_25 : _reg_out_T_1969; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1973 = 5'h1a == io_inIdx_31 ? io_inVal_26 : _reg_out_T_1971; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1975 = 5'h1b == io_inIdx_31 ? io_inVal_27 : _reg_out_T_1973; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  wire [15:0] _reg_out_T_1977 = 5'h1c == io_inIdx_31 ? io_inVal_28 : _reg_out_T_1975; // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
  assign io_outVal_0 = reg_out; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_1 = reg_out_1; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_2 = reg_out_2; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_3 = reg_out_3; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_4 = reg_out_4; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_5 = reg_out_5; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_6 = reg_out_6; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_7 = reg_out_7; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_8 = reg_out_8; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_9 = reg_out_9; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_10 = reg_out_10; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_11 = reg_out_11; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_12 = reg_out_12; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_13 = reg_out_13; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_14 = reg_out_14; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_15 = reg_out_15; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_16 = reg_out_16; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_17 = reg_out_17; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_18 = reg_out_18; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_19 = reg_out_19; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_20 = reg_out_20; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_21 = reg_out_21; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_22 = reg_out_22; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_23 = reg_out_23; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_24 = reg_out_24; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_25 = reg_out_25; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_26 = reg_out_26; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_27 = reg_out_27; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_28 = reg_out_28; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_29 = reg_out_29; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_30 = reg_out_30; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  assign io_outVal_31 = reg_out_31; // @[src/main/scala/simd_perm/simd_perm.scala 28:22]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_0) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out <= io_inVal_31;
    end else if (5'h1e == io_inIdx_0) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out <= io_inVal_30;
    end else if (5'h1d == io_inIdx_0) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out <= io_inVal_29;
    end else begin
      reg_out <= _reg_out_T_55;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_1 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_1) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_1 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_1) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_1 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_1) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_1 <= io_inVal_29;
    end else begin
      reg_out_1 <= _reg_out_T_117;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_2 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_2) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_2 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_2) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_2 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_2) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_2 <= io_inVal_29;
    end else begin
      reg_out_2 <= _reg_out_T_179;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_3 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_3) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_3 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_3) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_3 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_3) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_3 <= io_inVal_29;
    end else begin
      reg_out_3 <= _reg_out_T_241;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_4 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_4) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_4 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_4) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_4 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_4) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_4 <= io_inVal_29;
    end else begin
      reg_out_4 <= _reg_out_T_303;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_5 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_5) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_5 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_5) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_5 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_5) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_5 <= io_inVal_29;
    end else begin
      reg_out_5 <= _reg_out_T_365;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_6 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_6) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_6 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_6) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_6 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_6) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_6 <= io_inVal_29;
    end else begin
      reg_out_6 <= _reg_out_T_427;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_7 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_7) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_7 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_7) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_7 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_7) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_7 <= io_inVal_29;
    end else begin
      reg_out_7 <= _reg_out_T_489;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_8 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_8) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_8 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_8) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_8 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_8) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_8 <= io_inVal_29;
    end else begin
      reg_out_8 <= _reg_out_T_551;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_9 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_9) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_9 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_9) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_9 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_9) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_9 <= io_inVal_29;
    end else begin
      reg_out_9 <= _reg_out_T_613;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_10 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_10) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_10 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_10) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_10 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_10) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_10 <= io_inVal_29;
    end else begin
      reg_out_10 <= _reg_out_T_675;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_11 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_11) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_11 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_11) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_11 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_11) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_11 <= io_inVal_29;
    end else begin
      reg_out_11 <= _reg_out_T_737;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_12 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_12) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_12 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_12) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_12 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_12) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_12 <= io_inVal_29;
    end else begin
      reg_out_12 <= _reg_out_T_799;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_13 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_13) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_13 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_13) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_13 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_13) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_13 <= io_inVal_29;
    end else begin
      reg_out_13 <= _reg_out_T_861;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_14 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_14) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_14 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_14) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_14 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_14) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_14 <= io_inVal_29;
    end else begin
      reg_out_14 <= _reg_out_T_923;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_15 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_15) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_15 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_15) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_15 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_15) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_15 <= io_inVal_29;
    end else begin
      reg_out_15 <= _reg_out_T_985;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_16 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_16) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_16 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_16) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_16 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_16) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_16 <= io_inVal_29;
    end else begin
      reg_out_16 <= _reg_out_T_1047;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_17 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_17) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_17 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_17) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_17 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_17) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_17 <= io_inVal_29;
    end else begin
      reg_out_17 <= _reg_out_T_1109;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_18 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_18) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_18 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_18) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_18 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_18) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_18 <= io_inVal_29;
    end else begin
      reg_out_18 <= _reg_out_T_1171;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_19 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_19) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_19 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_19) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_19 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_19) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_19 <= io_inVal_29;
    end else begin
      reg_out_19 <= _reg_out_T_1233;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_20 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_20) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_20 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_20) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_20 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_20) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_20 <= io_inVal_29;
    end else begin
      reg_out_20 <= _reg_out_T_1295;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_21 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_21) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_21 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_21) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_21 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_21) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_21 <= io_inVal_29;
    end else begin
      reg_out_21 <= _reg_out_T_1357;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_22 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_22) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_22 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_22) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_22 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_22) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_22 <= io_inVal_29;
    end else begin
      reg_out_22 <= _reg_out_T_1419;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_23 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_23) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_23 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_23) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_23 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_23) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_23 <= io_inVal_29;
    end else begin
      reg_out_23 <= _reg_out_T_1481;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_24 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_24) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_24 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_24) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_24 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_24) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_24 <= io_inVal_29;
    end else begin
      reg_out_24 <= _reg_out_T_1543;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_25 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_25) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_25 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_25) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_25 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_25) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_25 <= io_inVal_29;
    end else begin
      reg_out_25 <= _reg_out_T_1605;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_26 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_26) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_26 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_26) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_26 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_26) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_26 <= io_inVal_29;
    end else begin
      reg_out_26 <= _reg_out_T_1667;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_27 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_27) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_27 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_27) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_27 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_27) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_27 <= io_inVal_29;
    end else begin
      reg_out_27 <= _reg_out_T_1729;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_28 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_28) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_28 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_28) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_28 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_28) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_28 <= io_inVal_29;
    end else begin
      reg_out_28 <= _reg_out_T_1791;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_29 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_29) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_29 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_29) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_29 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_29) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_29 <= io_inVal_29;
    end else begin
      reg_out_29 <= _reg_out_T_1853;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_30 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_30) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_30 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_30) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_30 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_30) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_30 <= io_inVal_29;
    end else begin
      reg_out_30 <= _reg_out_T_1915;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
      reg_out_31 <= 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 26:28]
    end else if (5'h1f == io_inIdx_31) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_31 <= io_inVal_31;
    end else if (5'h1e == io_inIdx_31) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_31 <= io_inVal_30;
    end else if (5'h1d == io_inIdx_31) begin // @[src/main/scala/simd_perm/simd_perm.scala 27:60]
      reg_out_31 <= io_inVal_29;
    end else begin
      reg_out_31 <= _reg_out_T_1977;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_out = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  reg_out_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  reg_out_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  reg_out_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  reg_out_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  reg_out_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  reg_out_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  reg_out_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  reg_out_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  reg_out_9 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  reg_out_10 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  reg_out_11 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  reg_out_12 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  reg_out_13 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  reg_out_14 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  reg_out_15 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  reg_out_16 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  reg_out_17 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  reg_out_18 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  reg_out_19 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  reg_out_20 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  reg_out_21 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  reg_out_22 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  reg_out_23 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  reg_out_24 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  reg_out_25 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  reg_out_26 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  reg_out_27 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  reg_out_28 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  reg_out_29 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  reg_out_30 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  reg_out_31 = _RAND_31[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimdPermutation(
  input         clock,
  input         reset,
  input         io_inValid, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output        io_inReady, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input         io_selIdxVal, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [63:0] io_inData_7_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input         io_permute, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [2:0]  io_mode, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [15:0] io_mask_idx_bit, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input  [3:0]  io_rshift_idx_bit, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output        io_outValid, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  input         io_outReady, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_0_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_1_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_2_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_3_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_4_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_5_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_6_7, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_0, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_1, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_2, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_3, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_4, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_5, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_6, // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
  output [63:0] io_outData_7_7 // @[src/main/scala/simd_perm/simd_perm.scala 96:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  idxReg_clock; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire  idxReg_reset; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire  idxReg_io_inValid; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_inData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire  idxReg_io_rotate; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [1:0] idxReg_io_rotateLevel; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire [63:0] idxReg_io_outData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
  wire  valReg_clock; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire  valReg_reset; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire  valReg_io_inValid; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_inData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire [63:0] valReg_io_outData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
  wire  xbars_0_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_0_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_0_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_0_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_1_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_1_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_1_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_1_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_2_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_2_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_2_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_2_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_3_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_3_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_3_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_3_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_4_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_4_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_4_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_4_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_5_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_5_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_5_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_5_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_6_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_6_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_6_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_6_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_7_clock; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire  xbars_7_reset; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_inVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [4:0] xbars_7_io_inIdx_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [15:0] xbars_7_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
  wire [511:0] _T = {valReg_io_outData_0_7,valReg_io_outData_0_6,valReg_io_outData_0_5,valReg_io_outData_0_4,
    valReg_io_outData_0_3,valReg_io_outData_0_2,valReg_io_outData_0_1,valReg_io_outData_0_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_33 = {idxReg_io_outData_0_7,idxReg_io_outData_0_6,idxReg_io_outData_0_5,idxReg_io_outData_0_4,
    idxReg_io_outData_0_3,idxReg_io_outData_0_2,idxReg_io_outData_0_1,idxReg_io_outData_0_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  reg [1:0] stateReg; // @[src/main/scala/simd_perm/simd_perm.scala 189:25]
  wire [10:0] _lt_xBar_PermSize_T_1 = 11'h8 << io_mode; // @[src/main/scala/simd_perm/simd_perm.scala 208:61]
  wire  lt_xBar_PermSize = 11'h20 < _lt_xBar_PermSize_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 208:54]
  wire  eq_xBar_PermSize = 11'h20 == _lt_xBar_PermSize_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 209:54]
  wire  gt_xBar_PermSize = 11'h20 > _lt_xBar_PermSize_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 210:54]
  wire [2:0] _T_1301 = {lt_xBar_PermSize,eq_xBar_PermSize,gt_xBar_PermSize}; // @[src/main/scala/simd_perm/simd_perm.scala 211:19]
  wire [2:0] _mask_0_T_4 = 3'h2 + io_mode; // @[src/main/scala/simd_perm/simd_perm.scala 127:74]
  wire [22:0] _mask_0_T_5 = 23'h1 << _mask_0_T_4; // @[src/main/scala/simd_perm/simd_perm.scala 127:53]
  wire [22:0] _GEN_0 = 3'h0 < io_mode ? 23'h0 : _mask_0_T_5; // @[src/main/scala/simd_perm/simd_perm.scala 124:38 125:32 127:32]
  wire [15:0] mask_0 = _GEN_0[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 119:49]
  wire [15:0] _GEN_33 = 3'h1 == _T_1301 ? mask_0 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 211:75 224:23 162:41]
  wire [15:0] _GEN_66 = 3'h2 == _T_1301 ? 16'h0 : _GEN_33; // @[src/main/scala/simd_perm/simd_perm.scala 162:41 211:75]
  wire [15:0] _GEN_100 = 3'h4 == _T_1301 ? 16'h0 : _GEN_66; // @[src/main/scala/simd_perm/simd_perm.scala 162:41 211:75]
  wire [15:0] _GEN_136 = io_permute ? _GEN_100 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 204:24 162:41]
  wire [15:0] offsetVec_0 = 2'h0 == stateReg ? _GEN_136 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 198:20 162:41]
  wire [15:0] _T_66 = _T_33[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_67 = _T_66 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_68 = _T_67 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_69 = _T_33[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_70 = _T_69 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_71 = _T_70 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_72 = _T_33[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_73 = _T_72 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_74 = _T_73 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_75 = _T_33[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_76 = _T_75 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_77 = _T_76 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_78 = _T_33[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_79 = _T_78 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_80 = _T_79 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_81 = _T_33[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_82 = _T_81 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_83 = _T_82 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_84 = _T_33[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_85 = _T_84 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_86 = _T_85 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_87 = _T_33[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_88 = _T_87 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_89 = _T_88 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_90 = _T_33[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_91 = _T_90 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_92 = _T_91 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_93 = _T_33[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_94 = _T_93 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_95 = _T_94 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_96 = _T_33[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_97 = _T_96 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_98 = _T_97 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_99 = _T_33[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_100 = _T_99 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_101 = _T_100 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_102 = _T_33[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_103 = _T_102 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_104 = _T_103 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_105 = _T_33[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_106 = _T_105 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_107 = _T_106 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_108 = _T_33[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_109 = _T_108 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_110 = _T_109 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_111 = _T_33[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_112 = _T_111 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_113 = _T_112 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [2:0] _mask_16_T_4 = 3'h3 + io_mode; // @[src/main/scala/simd_perm/simd_perm.scala 127:74]
  wire [22:0] _mask_16_T_5 = 23'h1 << _mask_16_T_4; // @[src/main/scala/simd_perm/simd_perm.scala 127:53]
  wire [22:0] _GEN_16 = 3'h1 < io_mode ? 23'h0 : _mask_16_T_5; // @[src/main/scala/simd_perm/simd_perm.scala 124:38 125:32 127:32]
  wire [15:0] mask_16 = _GEN_16[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 119:49]
  wire [15:0] _GEN_49 = 3'h1 == _T_1301 ? mask_16 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 211:75 224:23 162:41]
  wire [15:0] _GEN_82 = 3'h2 == _T_1301 ? 16'h0 : _GEN_49; // @[src/main/scala/simd_perm/simd_perm.scala 162:41 211:75]
  wire [15:0] _GEN_116 = 3'h4 == _T_1301 ? 16'h0 : _GEN_82; // @[src/main/scala/simd_perm/simd_perm.scala 162:41 211:75]
  wire [15:0] _GEN_152 = io_permute ? _GEN_116 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 204:24 162:41]
  wire [15:0] offsetVec_16 = 2'h0 == stateReg ? _GEN_152 : 16'h0; // @[src/main/scala/simd_perm/simd_perm.scala 198:20 162:41]
  wire [15:0] _T_114 = _T_33[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_115 = _T_114 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_116 = _T_115 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_117 = _T_33[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_118 = _T_117 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_119 = _T_118 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_120 = _T_33[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_121 = _T_120 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_122 = _T_121 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_123 = _T_33[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_124 = _T_123 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_125 = _T_124 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_126 = _T_33[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_127 = _T_126 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_128 = _T_127 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_129 = _T_33[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_130 = _T_129 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_131 = _T_130 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_132 = _T_33[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_133 = _T_132 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_134 = _T_133 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_135 = _T_33[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_136 = _T_135 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_137 = _T_136 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_138 = _T_33[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_139 = _T_138 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_140 = _T_139 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_141 = _T_33[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_142 = _T_141 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_143 = _T_142 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_144 = _T_33[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_145 = _T_144 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_146 = _T_145 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_147 = _T_33[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_148 = _T_147 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_149 = _T_148 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_150 = _T_33[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_151 = _T_150 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_152 = _T_151 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_153 = _T_33[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_154 = _T_153 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_155 = _T_154 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_156 = _T_33[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_157 = _T_156 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_158 = _T_157 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_159 = _T_33[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_160 = _T_159 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_161 = _T_160 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_162 = {valReg_io_outData_1_7,valReg_io_outData_1_6,valReg_io_outData_1_5,valReg_io_outData_1_4,
    valReg_io_outData_1_3,valReg_io_outData_1_2,valReg_io_outData_1_1,valReg_io_outData_1_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_195 = {idxReg_io_outData_1_7,idxReg_io_outData_1_6,idxReg_io_outData_1_5,idxReg_io_outData_1_4,
    idxReg_io_outData_1_3,idxReg_io_outData_1_2,idxReg_io_outData_1_1,idxReg_io_outData_1_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_228 = _T_195[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_229 = _T_228 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_230 = _T_229 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_231 = _T_195[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_232 = _T_231 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_233 = _T_232 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_234 = _T_195[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_235 = _T_234 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_236 = _T_235 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_237 = _T_195[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_238 = _T_237 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_239 = _T_238 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_240 = _T_195[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_241 = _T_240 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_242 = _T_241 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_243 = _T_195[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_244 = _T_243 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_245 = _T_244 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_246 = _T_195[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_247 = _T_246 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_248 = _T_247 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_249 = _T_195[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_250 = _T_249 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_251 = _T_250 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_252 = _T_195[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_253 = _T_252 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_254 = _T_253 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_255 = _T_195[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_256 = _T_255 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_257 = _T_256 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_258 = _T_195[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_259 = _T_258 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_260 = _T_259 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_261 = _T_195[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_262 = _T_261 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_263 = _T_262 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_264 = _T_195[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_265 = _T_264 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_266 = _T_265 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_267 = _T_195[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_268 = _T_267 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_269 = _T_268 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_270 = _T_195[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_271 = _T_270 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_272 = _T_271 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_273 = _T_195[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_274 = _T_273 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_275 = _T_274 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_276 = _T_195[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_277 = _T_276 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_278 = _T_277 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_279 = _T_195[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_280 = _T_279 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_281 = _T_280 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_282 = _T_195[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_283 = _T_282 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_284 = _T_283 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_285 = _T_195[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_286 = _T_285 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_287 = _T_286 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_288 = _T_195[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_289 = _T_288 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_290 = _T_289 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_291 = _T_195[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_292 = _T_291 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_293 = _T_292 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_294 = _T_195[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_295 = _T_294 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_296 = _T_295 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_297 = _T_195[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_298 = _T_297 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_299 = _T_298 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_300 = _T_195[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_301 = _T_300 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_302 = _T_301 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_303 = _T_195[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_304 = _T_303 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_305 = _T_304 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_306 = _T_195[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_307 = _T_306 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_308 = _T_307 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_309 = _T_195[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_310 = _T_309 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_311 = _T_310 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_312 = _T_195[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_313 = _T_312 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_314 = _T_313 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_315 = _T_195[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_316 = _T_315 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_317 = _T_316 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_318 = _T_195[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_319 = _T_318 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_320 = _T_319 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_321 = _T_195[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_322 = _T_321 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_323 = _T_322 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_324 = {valReg_io_outData_2_7,valReg_io_outData_2_6,valReg_io_outData_2_5,valReg_io_outData_2_4,
    valReg_io_outData_2_3,valReg_io_outData_2_2,valReg_io_outData_2_1,valReg_io_outData_2_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_357 = {idxReg_io_outData_2_7,idxReg_io_outData_2_6,idxReg_io_outData_2_5,idxReg_io_outData_2_4,
    idxReg_io_outData_2_3,idxReg_io_outData_2_2,idxReg_io_outData_2_1,idxReg_io_outData_2_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_390 = _T_357[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_391 = _T_390 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_392 = _T_391 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_393 = _T_357[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_394 = _T_393 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_395 = _T_394 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_396 = _T_357[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_397 = _T_396 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_398 = _T_397 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_399 = _T_357[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_400 = _T_399 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_401 = _T_400 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_402 = _T_357[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_403 = _T_402 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_404 = _T_403 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_405 = _T_357[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_406 = _T_405 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_407 = _T_406 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_408 = _T_357[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_409 = _T_408 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_410 = _T_409 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_411 = _T_357[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_412 = _T_411 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_413 = _T_412 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_414 = _T_357[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_415 = _T_414 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_416 = _T_415 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_417 = _T_357[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_418 = _T_417 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_419 = _T_418 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_420 = _T_357[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_421 = _T_420 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_422 = _T_421 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_423 = _T_357[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_424 = _T_423 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_425 = _T_424 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_426 = _T_357[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_427 = _T_426 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_428 = _T_427 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_429 = _T_357[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_430 = _T_429 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_431 = _T_430 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_432 = _T_357[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_433 = _T_432 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_434 = _T_433 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_435 = _T_357[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_436 = _T_435 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_437 = _T_436 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_438 = _T_357[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_439 = _T_438 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_440 = _T_439 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_441 = _T_357[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_442 = _T_441 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_443 = _T_442 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_444 = _T_357[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_445 = _T_444 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_446 = _T_445 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_447 = _T_357[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_448 = _T_447 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_449 = _T_448 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_450 = _T_357[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_451 = _T_450 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_452 = _T_451 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_453 = _T_357[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_454 = _T_453 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_455 = _T_454 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_456 = _T_357[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_457 = _T_456 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_458 = _T_457 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_459 = _T_357[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_460 = _T_459 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_461 = _T_460 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_462 = _T_357[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_463 = _T_462 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_464 = _T_463 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_465 = _T_357[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_466 = _T_465 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_467 = _T_466 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_468 = _T_357[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_469 = _T_468 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_470 = _T_469 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_471 = _T_357[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_472 = _T_471 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_473 = _T_472 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_474 = _T_357[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_475 = _T_474 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_476 = _T_475 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_477 = _T_357[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_478 = _T_477 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_479 = _T_478 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_480 = _T_357[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_481 = _T_480 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_482 = _T_481 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_483 = _T_357[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_484 = _T_483 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_485 = _T_484 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_486 = {valReg_io_outData_3_7,valReg_io_outData_3_6,valReg_io_outData_3_5,valReg_io_outData_3_4,
    valReg_io_outData_3_3,valReg_io_outData_3_2,valReg_io_outData_3_1,valReg_io_outData_3_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_519 = {idxReg_io_outData_3_7,idxReg_io_outData_3_6,idxReg_io_outData_3_5,idxReg_io_outData_3_4,
    idxReg_io_outData_3_3,idxReg_io_outData_3_2,idxReg_io_outData_3_1,idxReg_io_outData_3_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_552 = _T_519[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_553 = _T_552 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_554 = _T_553 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_555 = _T_519[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_556 = _T_555 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_557 = _T_556 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_558 = _T_519[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_559 = _T_558 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_560 = _T_559 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_561 = _T_519[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_562 = _T_561 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_563 = _T_562 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_564 = _T_519[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_565 = _T_564 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_566 = _T_565 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_567 = _T_519[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_568 = _T_567 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_569 = _T_568 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_570 = _T_519[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_571 = _T_570 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_572 = _T_571 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_573 = _T_519[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_574 = _T_573 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_575 = _T_574 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_576 = _T_519[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_577 = _T_576 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_578 = _T_577 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_579 = _T_519[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_580 = _T_579 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_581 = _T_580 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_582 = _T_519[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_583 = _T_582 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_584 = _T_583 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_585 = _T_519[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_586 = _T_585 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_587 = _T_586 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_588 = _T_519[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_589 = _T_588 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_590 = _T_589 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_591 = _T_519[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_592 = _T_591 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_593 = _T_592 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_594 = _T_519[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_595 = _T_594 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_596 = _T_595 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_597 = _T_519[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_598 = _T_597 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_599 = _T_598 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_600 = _T_519[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_601 = _T_600 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_602 = _T_601 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_603 = _T_519[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_604 = _T_603 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_605 = _T_604 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_606 = _T_519[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_607 = _T_606 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_608 = _T_607 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_609 = _T_519[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_610 = _T_609 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_611 = _T_610 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_612 = _T_519[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_613 = _T_612 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_614 = _T_613 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_615 = _T_519[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_616 = _T_615 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_617 = _T_616 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_618 = _T_519[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_619 = _T_618 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_620 = _T_619 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_621 = _T_519[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_622 = _T_621 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_623 = _T_622 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_624 = _T_519[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_625 = _T_624 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_626 = _T_625 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_627 = _T_519[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_628 = _T_627 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_629 = _T_628 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_630 = _T_519[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_631 = _T_630 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_632 = _T_631 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_633 = _T_519[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_634 = _T_633 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_635 = _T_634 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_636 = _T_519[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_637 = _T_636 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_638 = _T_637 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_639 = _T_519[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_640 = _T_639 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_641 = _T_640 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_642 = _T_519[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_643 = _T_642 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_644 = _T_643 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_645 = _T_519[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_646 = _T_645 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_647 = _T_646 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_648 = {valReg_io_outData_4_7,valReg_io_outData_4_6,valReg_io_outData_4_5,valReg_io_outData_4_4,
    valReg_io_outData_4_3,valReg_io_outData_4_2,valReg_io_outData_4_1,valReg_io_outData_4_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_681 = {idxReg_io_outData_4_7,idxReg_io_outData_4_6,idxReg_io_outData_4_5,idxReg_io_outData_4_4,
    idxReg_io_outData_4_3,idxReg_io_outData_4_2,idxReg_io_outData_4_1,idxReg_io_outData_4_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_714 = _T_681[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_715 = _T_714 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_716 = _T_715 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_717 = _T_681[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_718 = _T_717 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_719 = _T_718 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_720 = _T_681[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_721 = _T_720 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_722 = _T_721 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_723 = _T_681[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_724 = _T_723 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_725 = _T_724 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_726 = _T_681[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_727 = _T_726 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_728 = _T_727 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_729 = _T_681[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_730 = _T_729 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_731 = _T_730 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_732 = _T_681[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_733 = _T_732 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_734 = _T_733 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_735 = _T_681[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_736 = _T_735 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_737 = _T_736 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_738 = _T_681[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_739 = _T_738 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_740 = _T_739 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_741 = _T_681[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_742 = _T_741 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_743 = _T_742 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_744 = _T_681[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_745 = _T_744 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_746 = _T_745 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_747 = _T_681[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_748 = _T_747 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_749 = _T_748 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_750 = _T_681[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_751 = _T_750 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_752 = _T_751 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_753 = _T_681[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_754 = _T_753 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_755 = _T_754 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_756 = _T_681[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_757 = _T_756 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_758 = _T_757 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_759 = _T_681[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_760 = _T_759 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_761 = _T_760 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_762 = _T_681[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_763 = _T_762 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_764 = _T_763 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_765 = _T_681[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_766 = _T_765 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_767 = _T_766 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_768 = _T_681[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_769 = _T_768 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_770 = _T_769 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_771 = _T_681[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_772 = _T_771 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_773 = _T_772 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_774 = _T_681[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_775 = _T_774 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_776 = _T_775 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_777 = _T_681[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_778 = _T_777 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_779 = _T_778 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_780 = _T_681[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_781 = _T_780 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_782 = _T_781 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_783 = _T_681[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_784 = _T_783 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_785 = _T_784 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_786 = _T_681[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_787 = _T_786 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_788 = _T_787 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_789 = _T_681[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_790 = _T_789 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_791 = _T_790 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_792 = _T_681[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_793 = _T_792 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_794 = _T_793 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_795 = _T_681[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_796 = _T_795 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_797 = _T_796 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_798 = _T_681[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_799 = _T_798 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_800 = _T_799 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_801 = _T_681[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_802 = _T_801 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_803 = _T_802 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_804 = _T_681[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_805 = _T_804 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_806 = _T_805 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_807 = _T_681[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_808 = _T_807 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_809 = _T_808 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_810 = {valReg_io_outData_5_7,valReg_io_outData_5_6,valReg_io_outData_5_5,valReg_io_outData_5_4,
    valReg_io_outData_5_3,valReg_io_outData_5_2,valReg_io_outData_5_1,valReg_io_outData_5_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_843 = {idxReg_io_outData_5_7,idxReg_io_outData_5_6,idxReg_io_outData_5_5,idxReg_io_outData_5_4,
    idxReg_io_outData_5_3,idxReg_io_outData_5_2,idxReg_io_outData_5_1,idxReg_io_outData_5_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_876 = _T_843[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_877 = _T_876 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_878 = _T_877 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_879 = _T_843[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_880 = _T_879 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_881 = _T_880 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_882 = _T_843[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_883 = _T_882 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_884 = _T_883 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_885 = _T_843[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_886 = _T_885 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_887 = _T_886 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_888 = _T_843[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_889 = _T_888 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_890 = _T_889 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_891 = _T_843[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_892 = _T_891 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_893 = _T_892 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_894 = _T_843[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_895 = _T_894 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_896 = _T_895 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_897 = _T_843[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_898 = _T_897 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_899 = _T_898 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_900 = _T_843[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_901 = _T_900 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_902 = _T_901 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_903 = _T_843[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_904 = _T_903 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_905 = _T_904 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_906 = _T_843[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_907 = _T_906 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_908 = _T_907 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_909 = _T_843[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_910 = _T_909 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_911 = _T_910 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_912 = _T_843[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_913 = _T_912 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_914 = _T_913 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_915 = _T_843[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_916 = _T_915 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_917 = _T_916 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_918 = _T_843[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_919 = _T_918 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_920 = _T_919 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_921 = _T_843[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_922 = _T_921 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_923 = _T_922 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_924 = _T_843[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_925 = _T_924 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_926 = _T_925 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_927 = _T_843[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_928 = _T_927 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_929 = _T_928 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_930 = _T_843[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_931 = _T_930 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_932 = _T_931 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_933 = _T_843[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_934 = _T_933 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_935 = _T_934 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_936 = _T_843[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_937 = _T_936 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_938 = _T_937 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_939 = _T_843[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_940 = _T_939 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_941 = _T_940 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_942 = _T_843[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_943 = _T_942 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_944 = _T_943 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_945 = _T_843[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_946 = _T_945 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_947 = _T_946 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_948 = _T_843[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_949 = _T_948 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_950 = _T_949 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_951 = _T_843[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_952 = _T_951 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_953 = _T_952 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_954 = _T_843[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_955 = _T_954 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_956 = _T_955 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_957 = _T_843[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_958 = _T_957 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_959 = _T_958 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_960 = _T_843[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_961 = _T_960 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_962 = _T_961 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_963 = _T_843[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_964 = _T_963 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_965 = _T_964 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_966 = _T_843[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_967 = _T_966 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_968 = _T_967 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_969 = _T_843[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_970 = _T_969 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_971 = _T_970 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_972 = {valReg_io_outData_6_7,valReg_io_outData_6_6,valReg_io_outData_6_5,valReg_io_outData_6_4,
    valReg_io_outData_6_3,valReg_io_outData_6_2,valReg_io_outData_6_1,valReg_io_outData_6_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_1005 = {idxReg_io_outData_6_7,idxReg_io_outData_6_6,idxReg_io_outData_6_5,idxReg_io_outData_6_4,
    idxReg_io_outData_6_3,idxReg_io_outData_6_2,idxReg_io_outData_6_1,idxReg_io_outData_6_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_1038 = _T_1005[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1039 = _T_1038 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1040 = _T_1039 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1041 = _T_1005[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1042 = _T_1041 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1043 = _T_1042 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1044 = _T_1005[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1045 = _T_1044 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1046 = _T_1045 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1047 = _T_1005[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1048 = _T_1047 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1049 = _T_1048 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1050 = _T_1005[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1051 = _T_1050 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1052 = _T_1051 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1053 = _T_1005[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1054 = _T_1053 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1055 = _T_1054 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1056 = _T_1005[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1057 = _T_1056 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1058 = _T_1057 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1059 = _T_1005[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1060 = _T_1059 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1061 = _T_1060 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1062 = _T_1005[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1063 = _T_1062 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1064 = _T_1063 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1065 = _T_1005[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1066 = _T_1065 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1067 = _T_1066 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1068 = _T_1005[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1069 = _T_1068 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1070 = _T_1069 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1071 = _T_1005[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1072 = _T_1071 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1073 = _T_1072 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1074 = _T_1005[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1075 = _T_1074 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1076 = _T_1075 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1077 = _T_1005[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1078 = _T_1077 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1079 = _T_1078 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1080 = _T_1005[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1081 = _T_1080 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1082 = _T_1081 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1083 = _T_1005[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1084 = _T_1083 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1085 = _T_1084 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1086 = _T_1005[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1087 = _T_1086 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1088 = _T_1087 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1089 = _T_1005[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1090 = _T_1089 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1091 = _T_1090 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1092 = _T_1005[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1093 = _T_1092 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1094 = _T_1093 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1095 = _T_1005[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1096 = _T_1095 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1097 = _T_1096 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1098 = _T_1005[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1099 = _T_1098 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1100 = _T_1099 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1101 = _T_1005[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1102 = _T_1101 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1103 = _T_1102 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1104 = _T_1005[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1105 = _T_1104 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1106 = _T_1105 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1107 = _T_1005[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1108 = _T_1107 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1109 = _T_1108 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1110 = _T_1005[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1111 = _T_1110 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1112 = _T_1111 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1113 = _T_1005[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1114 = _T_1113 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1115 = _T_1114 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1116 = _T_1005[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1117 = _T_1116 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1118 = _T_1117 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1119 = _T_1005[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1120 = _T_1119 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1121 = _T_1120 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1122 = _T_1005[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1123 = _T_1122 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1124 = _T_1123 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1125 = _T_1005[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1126 = _T_1125 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1127 = _T_1126 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1128 = _T_1005[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1129 = _T_1128 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1130 = _T_1129 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1131 = _T_1005[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1132 = _T_1131 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1133 = _T_1132 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [511:0] _T_1134 = {valReg_io_outData_7_7,valReg_io_outData_7_6,valReg_io_outData_7_5,valReg_io_outData_7_4,
    valReg_io_outData_7_3,valReg_io_outData_7_2,valReg_io_outData_7_1,valReg_io_outData_7_0}; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  wire [511:0] _T_1167 = {idxReg_io_outData_7_7,idxReg_io_outData_7_6,idxReg_io_outData_7_5,idxReg_io_outData_7_4,
    idxReg_io_outData_7_3,idxReg_io_outData_7_2,idxReg_io_outData_7_1,idxReg_io_outData_7_0}; // @[src/main/scala/simd_perm/simd_perm.scala 168:69]
  wire [15:0] _T_1200 = _T_1167[15:0] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1201 = _T_1200 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1202 = _T_1201 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1203 = _T_1167[31:16] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1204 = _T_1203 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1205 = _T_1204 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1206 = _T_1167[47:32] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1207 = _T_1206 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1208 = _T_1207 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1209 = _T_1167[63:48] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1210 = _T_1209 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1211 = _T_1210 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1212 = _T_1167[79:64] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1213 = _T_1212 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1214 = _T_1213 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1215 = _T_1167[95:80] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1216 = _T_1215 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1217 = _T_1216 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1218 = _T_1167[111:96] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1219 = _T_1218 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1220 = _T_1219 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1221 = _T_1167[127:112] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1222 = _T_1221 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1223 = _T_1222 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1224 = _T_1167[143:128] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1225 = _T_1224 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1226 = _T_1225 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1227 = _T_1167[159:144] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1228 = _T_1227 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1229 = _T_1228 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1230 = _T_1167[175:160] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1231 = _T_1230 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1232 = _T_1231 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1233 = _T_1167[191:176] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1234 = _T_1233 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1235 = _T_1234 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1236 = _T_1167[207:192] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1237 = _T_1236 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1238 = _T_1237 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1239 = _T_1167[223:208] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1240 = _T_1239 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1241 = _T_1240 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1242 = _T_1167[239:224] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1243 = _T_1242 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1244 = _T_1243 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1245 = _T_1167[255:240] | offsetVec_0; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1246 = _T_1245 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1247 = _T_1246 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1248 = _T_1167[271:256] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1249 = _T_1248 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1250 = _T_1249 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1251 = _T_1167[287:272] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1252 = _T_1251 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1253 = _T_1252 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1254 = _T_1167[303:288] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1255 = _T_1254 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1256 = _T_1255 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1257 = _T_1167[319:304] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1258 = _T_1257 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1259 = _T_1258 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1260 = _T_1167[335:320] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1261 = _T_1260 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1262 = _T_1261 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1263 = _T_1167[351:336] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1264 = _T_1263 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1265 = _T_1264 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1266 = _T_1167[367:352] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1267 = _T_1266 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1268 = _T_1267 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1269 = _T_1167[383:368] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1270 = _T_1269 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1271 = _T_1270 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1272 = _T_1167[399:384] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1273 = _T_1272 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1274 = _T_1273 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1275 = _T_1167[415:400] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1276 = _T_1275 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1277 = _T_1276 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1278 = _T_1167[431:416] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1279 = _T_1278 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1280 = _T_1279 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1281 = _T_1167[447:432] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1282 = _T_1281 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1283 = _T_1282 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1284 = _T_1167[463:448] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1285 = _T_1284 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1286 = _T_1285 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1287 = _T_1167[479:464] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1288 = _T_1287 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1289 = _T_1288 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1290 = _T_1167[495:480] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1291 = _T_1290 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1292 = _T_1291 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _T_1293 = _T_1167[511:496] | offsetVec_16; // @[src/main/scala/simd_perm/simd_perm.scala 168:144]
  wire [15:0] _T_1294 = _T_1293 & io_mask_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:149]
  wire [15:0] _T_1295 = _T_1294 >> io_rshift_idx_bit; // @[src/main/scala/simd_perm/simd_perm.scala 168:168]
  wire [15:0] _xbarsVecOut_WIRE__0_1 = xbars_0_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_0 = xbars_0_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_3 = xbars_0_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_2 = xbars_0_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_5 = xbars_0_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_4 = xbars_0_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_7 = xbars_0_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_6 = xbars_0_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_lo_lo_lo_lo = {_xbarsVecOut_WIRE__0_7,_xbarsVecOut_WIRE__0_6,_xbarsVecOut_WIRE__0_5,
    _xbarsVecOut_WIRE__0_4,_xbarsVecOut_WIRE__0_3,_xbarsVecOut_WIRE__0_2,_xbarsVecOut_WIRE__0_1,_xbarsVecOut_WIRE__0_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__0_9 = xbars_0_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_8 = xbars_0_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_11 = xbars_0_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_10 = xbars_0_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_13 = xbars_0_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_12 = xbars_0_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_15 = xbars_0_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_14 = xbars_0_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_lo_lo_lo_lo = {_xbarsVecOut_WIRE__0_15,_xbarsVecOut_WIRE__0_14,_xbarsVecOut_WIRE__0_13,
    _xbarsVecOut_WIRE__0_12,_xbarsVecOut_WIRE__0_11,_xbarsVecOut_WIRE__0_10,_xbarsVecOut_WIRE__0_9,
    _xbarsVecOut_WIRE__0_8,xbarsVecOut_lo_lo_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__0_17 = xbars_0_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_16 = xbars_0_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_19 = xbars_0_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_18 = xbars_0_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_21 = xbars_0_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_20 = xbars_0_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_23 = xbars_0_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_22 = xbars_0_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_lo_lo_hi_lo = {_xbarsVecOut_WIRE__0_23,_xbarsVecOut_WIRE__0_22,_xbarsVecOut_WIRE__0_21,
    _xbarsVecOut_WIRE__0_20,_xbarsVecOut_WIRE__0_19,_xbarsVecOut_WIRE__0_18,_xbarsVecOut_WIRE__0_17,
    _xbarsVecOut_WIRE__0_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__0_25 = xbars_0_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_24 = xbars_0_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_27 = xbars_0_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_26 = xbars_0_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_29 = xbars_0_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_28 = xbars_0_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_31 = xbars_0_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__0_30 = xbars_0_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_lo_lo_lo = {_xbarsVecOut_WIRE__0_31,_xbarsVecOut_WIRE__0_30,_xbarsVecOut_WIRE__0_29,
    _xbarsVecOut_WIRE__0_28,_xbarsVecOut_WIRE__0_27,_xbarsVecOut_WIRE__0_26,_xbarsVecOut_WIRE__0_25,
    _xbarsVecOut_WIRE__0_24,xbarsVecOut_lo_lo_lo_hi_lo,xbarsVecOut_lo_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__1_1 = xbars_1_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_0 = xbars_1_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_3 = xbars_1_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_2 = xbars_1_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_5 = xbars_1_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_4 = xbars_1_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_7 = xbars_1_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_6 = xbars_1_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_lo_hi_lo_lo = {_xbarsVecOut_WIRE__1_7,_xbarsVecOut_WIRE__1_6,_xbarsVecOut_WIRE__1_5,
    _xbarsVecOut_WIRE__1_4,_xbarsVecOut_WIRE__1_3,_xbarsVecOut_WIRE__1_2,_xbarsVecOut_WIRE__1_1,_xbarsVecOut_WIRE__1_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__1_9 = xbars_1_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_8 = xbars_1_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_11 = xbars_1_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_10 = xbars_1_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_13 = xbars_1_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_12 = xbars_1_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_15 = xbars_1_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_14 = xbars_1_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_lo_lo_hi_lo = {_xbarsVecOut_WIRE__1_15,_xbarsVecOut_WIRE__1_14,_xbarsVecOut_WIRE__1_13,
    _xbarsVecOut_WIRE__1_12,_xbarsVecOut_WIRE__1_11,_xbarsVecOut_WIRE__1_10,_xbarsVecOut_WIRE__1_9,
    _xbarsVecOut_WIRE__1_8,xbarsVecOut_lo_lo_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__1_17 = xbars_1_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_16 = xbars_1_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_19 = xbars_1_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_18 = xbars_1_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_21 = xbars_1_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_20 = xbars_1_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_23 = xbars_1_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_22 = xbars_1_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_lo_hi_hi_lo = {_xbarsVecOut_WIRE__1_23,_xbarsVecOut_WIRE__1_22,_xbarsVecOut_WIRE__1_21,
    _xbarsVecOut_WIRE__1_20,_xbarsVecOut_WIRE__1_19,_xbarsVecOut_WIRE__1_18,_xbarsVecOut_WIRE__1_17,
    _xbarsVecOut_WIRE__1_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__1_25 = xbars_1_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_24 = xbars_1_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_27 = xbars_1_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_26 = xbars_1_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_29 = xbars_1_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_28 = xbars_1_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_31 = xbars_1_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__1_30 = xbars_1_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_lo_lo_hi = {_xbarsVecOut_WIRE__1_31,_xbarsVecOut_WIRE__1_30,_xbarsVecOut_WIRE__1_29,
    _xbarsVecOut_WIRE__1_28,_xbarsVecOut_WIRE__1_27,_xbarsVecOut_WIRE__1_26,_xbarsVecOut_WIRE__1_25,
    _xbarsVecOut_WIRE__1_24,xbarsVecOut_lo_lo_hi_hi_lo,xbarsVecOut_lo_lo_hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__2_1 = xbars_2_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_0 = xbars_2_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_3 = xbars_2_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_2 = xbars_2_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_5 = xbars_2_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_4 = xbars_2_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_7 = xbars_2_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_6 = xbars_2_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_hi_lo_lo_lo = {_xbarsVecOut_WIRE__2_7,_xbarsVecOut_WIRE__2_6,_xbarsVecOut_WIRE__2_5,
    _xbarsVecOut_WIRE__2_4,_xbarsVecOut_WIRE__2_3,_xbarsVecOut_WIRE__2_2,_xbarsVecOut_WIRE__2_1,_xbarsVecOut_WIRE__2_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__2_9 = xbars_2_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_8 = xbars_2_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_11 = xbars_2_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_10 = xbars_2_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_13 = xbars_2_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_12 = xbars_2_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_15 = xbars_2_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_14 = xbars_2_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_lo_hi_lo_lo = {_xbarsVecOut_WIRE__2_15,_xbarsVecOut_WIRE__2_14,_xbarsVecOut_WIRE__2_13,
    _xbarsVecOut_WIRE__2_12,_xbarsVecOut_WIRE__2_11,_xbarsVecOut_WIRE__2_10,_xbarsVecOut_WIRE__2_9,
    _xbarsVecOut_WIRE__2_8,xbarsVecOut_lo_hi_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__2_17 = xbars_2_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_16 = xbars_2_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_19 = xbars_2_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_18 = xbars_2_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_21 = xbars_2_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_20 = xbars_2_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_23 = xbars_2_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_22 = xbars_2_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_hi_lo_hi_lo = {_xbarsVecOut_WIRE__2_23,_xbarsVecOut_WIRE__2_22,_xbarsVecOut_WIRE__2_21,
    _xbarsVecOut_WIRE__2_20,_xbarsVecOut_WIRE__2_19,_xbarsVecOut_WIRE__2_18,_xbarsVecOut_WIRE__2_17,
    _xbarsVecOut_WIRE__2_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__2_25 = xbars_2_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_24 = xbars_2_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_27 = xbars_2_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_26 = xbars_2_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_29 = xbars_2_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_28 = xbars_2_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_31 = xbars_2_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__2_30 = xbars_2_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_lo_hi_lo = {_xbarsVecOut_WIRE__2_31,_xbarsVecOut_WIRE__2_30,_xbarsVecOut_WIRE__2_29,
    _xbarsVecOut_WIRE__2_28,_xbarsVecOut_WIRE__2_27,_xbarsVecOut_WIRE__2_26,_xbarsVecOut_WIRE__2_25,
    _xbarsVecOut_WIRE__2_24,xbarsVecOut_lo_hi_lo_hi_lo,xbarsVecOut_lo_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__3_1 = xbars_3_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_0 = xbars_3_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_3 = xbars_3_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_2 = xbars_3_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_5 = xbars_3_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_4 = xbars_3_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_7 = xbars_3_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_6 = xbars_3_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_hi_hi_lo_lo = {_xbarsVecOut_WIRE__3_7,_xbarsVecOut_WIRE__3_6,_xbarsVecOut_WIRE__3_5,
    _xbarsVecOut_WIRE__3_4,_xbarsVecOut_WIRE__3_3,_xbarsVecOut_WIRE__3_2,_xbarsVecOut_WIRE__3_1,_xbarsVecOut_WIRE__3_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__3_9 = xbars_3_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_8 = xbars_3_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_11 = xbars_3_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_10 = xbars_3_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_13 = xbars_3_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_12 = xbars_3_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_15 = xbars_3_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_14 = xbars_3_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_lo_hi_hi_lo = {_xbarsVecOut_WIRE__3_15,_xbarsVecOut_WIRE__3_14,_xbarsVecOut_WIRE__3_13,
    _xbarsVecOut_WIRE__3_12,_xbarsVecOut_WIRE__3_11,_xbarsVecOut_WIRE__3_10,_xbarsVecOut_WIRE__3_9,
    _xbarsVecOut_WIRE__3_8,xbarsVecOut_lo_hi_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__3_17 = xbars_3_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_16 = xbars_3_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_19 = xbars_3_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_18 = xbars_3_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_21 = xbars_3_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_20 = xbars_3_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_23 = xbars_3_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_22 = xbars_3_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_lo_hi_hi_hi_lo = {_xbarsVecOut_WIRE__3_23,_xbarsVecOut_WIRE__3_22,_xbarsVecOut_WIRE__3_21,
    _xbarsVecOut_WIRE__3_20,_xbarsVecOut_WIRE__3_19,_xbarsVecOut_WIRE__3_18,_xbarsVecOut_WIRE__3_17,
    _xbarsVecOut_WIRE__3_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__3_25 = xbars_3_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_24 = xbars_3_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_27 = xbars_3_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_26 = xbars_3_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_29 = xbars_3_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_28 = xbars_3_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_31 = xbars_3_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__3_30 = xbars_3_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_lo_hi_hi = {_xbarsVecOut_WIRE__3_31,_xbarsVecOut_WIRE__3_30,_xbarsVecOut_WIRE__3_29,
    _xbarsVecOut_WIRE__3_28,_xbarsVecOut_WIRE__3_27,_xbarsVecOut_WIRE__3_26,_xbarsVecOut_WIRE__3_25,
    _xbarsVecOut_WIRE__3_24,xbarsVecOut_lo_hi_hi_hi_lo,xbarsVecOut_lo_hi_hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__4_1 = xbars_4_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_0 = xbars_4_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_3 = xbars_4_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_2 = xbars_4_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_5 = xbars_4_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_4 = xbars_4_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_7 = xbars_4_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_6 = xbars_4_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_lo_lo_lo_lo = {_xbarsVecOut_WIRE__4_7,_xbarsVecOut_WIRE__4_6,_xbarsVecOut_WIRE__4_5,
    _xbarsVecOut_WIRE__4_4,_xbarsVecOut_WIRE__4_3,_xbarsVecOut_WIRE__4_2,_xbarsVecOut_WIRE__4_1,_xbarsVecOut_WIRE__4_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__4_9 = xbars_4_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_8 = xbars_4_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_11 = xbars_4_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_10 = xbars_4_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_13 = xbars_4_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_12 = xbars_4_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_15 = xbars_4_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_14 = xbars_4_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_hi_lo_lo_lo = {_xbarsVecOut_WIRE__4_15,_xbarsVecOut_WIRE__4_14,_xbarsVecOut_WIRE__4_13,
    _xbarsVecOut_WIRE__4_12,_xbarsVecOut_WIRE__4_11,_xbarsVecOut_WIRE__4_10,_xbarsVecOut_WIRE__4_9,
    _xbarsVecOut_WIRE__4_8,xbarsVecOut_hi_lo_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__4_17 = xbars_4_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_16 = xbars_4_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_19 = xbars_4_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_18 = xbars_4_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_21 = xbars_4_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_20 = xbars_4_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_23 = xbars_4_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_22 = xbars_4_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_lo_lo_hi_lo = {_xbarsVecOut_WIRE__4_23,_xbarsVecOut_WIRE__4_22,_xbarsVecOut_WIRE__4_21,
    _xbarsVecOut_WIRE__4_20,_xbarsVecOut_WIRE__4_19,_xbarsVecOut_WIRE__4_18,_xbarsVecOut_WIRE__4_17,
    _xbarsVecOut_WIRE__4_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__4_25 = xbars_4_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_24 = xbars_4_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_27 = xbars_4_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_26 = xbars_4_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_29 = xbars_4_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_28 = xbars_4_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_31 = xbars_4_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__4_30 = xbars_4_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_hi_lo_lo = {_xbarsVecOut_WIRE__4_31,_xbarsVecOut_WIRE__4_30,_xbarsVecOut_WIRE__4_29,
    _xbarsVecOut_WIRE__4_28,_xbarsVecOut_WIRE__4_27,_xbarsVecOut_WIRE__4_26,_xbarsVecOut_WIRE__4_25,
    _xbarsVecOut_WIRE__4_24,xbarsVecOut_hi_lo_lo_hi_lo,xbarsVecOut_hi_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__5_1 = xbars_5_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_0 = xbars_5_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_3 = xbars_5_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_2 = xbars_5_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_5 = xbars_5_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_4 = xbars_5_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_7 = xbars_5_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_6 = xbars_5_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_lo_hi_lo_lo = {_xbarsVecOut_WIRE__5_7,_xbarsVecOut_WIRE__5_6,_xbarsVecOut_WIRE__5_5,
    _xbarsVecOut_WIRE__5_4,_xbarsVecOut_WIRE__5_3,_xbarsVecOut_WIRE__5_2,_xbarsVecOut_WIRE__5_1,_xbarsVecOut_WIRE__5_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__5_9 = xbars_5_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_8 = xbars_5_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_11 = xbars_5_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_10 = xbars_5_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_13 = xbars_5_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_12 = xbars_5_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_15 = xbars_5_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_14 = xbars_5_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_hi_lo_hi_lo = {_xbarsVecOut_WIRE__5_15,_xbarsVecOut_WIRE__5_14,_xbarsVecOut_WIRE__5_13,
    _xbarsVecOut_WIRE__5_12,_xbarsVecOut_WIRE__5_11,_xbarsVecOut_WIRE__5_10,_xbarsVecOut_WIRE__5_9,
    _xbarsVecOut_WIRE__5_8,xbarsVecOut_hi_lo_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__5_17 = xbars_5_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_16 = xbars_5_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_19 = xbars_5_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_18 = xbars_5_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_21 = xbars_5_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_20 = xbars_5_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_23 = xbars_5_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_22 = xbars_5_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_lo_hi_hi_lo = {_xbarsVecOut_WIRE__5_23,_xbarsVecOut_WIRE__5_22,_xbarsVecOut_WIRE__5_21,
    _xbarsVecOut_WIRE__5_20,_xbarsVecOut_WIRE__5_19,_xbarsVecOut_WIRE__5_18,_xbarsVecOut_WIRE__5_17,
    _xbarsVecOut_WIRE__5_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__5_25 = xbars_5_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_24 = xbars_5_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_27 = xbars_5_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_26 = xbars_5_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_29 = xbars_5_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_28 = xbars_5_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_31 = xbars_5_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__5_30 = xbars_5_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_hi_lo_hi = {_xbarsVecOut_WIRE__5_31,_xbarsVecOut_WIRE__5_30,_xbarsVecOut_WIRE__5_29,
    _xbarsVecOut_WIRE__5_28,_xbarsVecOut_WIRE__5_27,_xbarsVecOut_WIRE__5_26,_xbarsVecOut_WIRE__5_25,
    _xbarsVecOut_WIRE__5_24,xbarsVecOut_hi_lo_hi_hi_lo,xbarsVecOut_hi_lo_hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__6_1 = xbars_6_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_0 = xbars_6_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_3 = xbars_6_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_2 = xbars_6_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_5 = xbars_6_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_4 = xbars_6_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_7 = xbars_6_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_6 = xbars_6_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_hi_lo_lo_lo = {_xbarsVecOut_WIRE__6_7,_xbarsVecOut_WIRE__6_6,_xbarsVecOut_WIRE__6_5,
    _xbarsVecOut_WIRE__6_4,_xbarsVecOut_WIRE__6_3,_xbarsVecOut_WIRE__6_2,_xbarsVecOut_WIRE__6_1,_xbarsVecOut_WIRE__6_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__6_9 = xbars_6_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_8 = xbars_6_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_11 = xbars_6_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_10 = xbars_6_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_13 = xbars_6_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_12 = xbars_6_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_15 = xbars_6_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_14 = xbars_6_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_hi_hi_lo_lo = {_xbarsVecOut_WIRE__6_15,_xbarsVecOut_WIRE__6_14,_xbarsVecOut_WIRE__6_13,
    _xbarsVecOut_WIRE__6_12,_xbarsVecOut_WIRE__6_11,_xbarsVecOut_WIRE__6_10,_xbarsVecOut_WIRE__6_9,
    _xbarsVecOut_WIRE__6_8,xbarsVecOut_hi_hi_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__6_17 = xbars_6_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_16 = xbars_6_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_19 = xbars_6_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_18 = xbars_6_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_21 = xbars_6_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_20 = xbars_6_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_23 = xbars_6_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_22 = xbars_6_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_hi_lo_hi_lo = {_xbarsVecOut_WIRE__6_23,_xbarsVecOut_WIRE__6_22,_xbarsVecOut_WIRE__6_21,
    _xbarsVecOut_WIRE__6_20,_xbarsVecOut_WIRE__6_19,_xbarsVecOut_WIRE__6_18,_xbarsVecOut_WIRE__6_17,
    _xbarsVecOut_WIRE__6_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__6_25 = xbars_6_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_24 = xbars_6_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_27 = xbars_6_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_26 = xbars_6_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_29 = xbars_6_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_28 = xbars_6_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_31 = xbars_6_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__6_30 = xbars_6_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_hi_hi_lo = {_xbarsVecOut_WIRE__6_31,_xbarsVecOut_WIRE__6_30,_xbarsVecOut_WIRE__6_29,
    _xbarsVecOut_WIRE__6_28,_xbarsVecOut_WIRE__6_27,_xbarsVecOut_WIRE__6_26,_xbarsVecOut_WIRE__6_25,
    _xbarsVecOut_WIRE__6_24,xbarsVecOut_hi_hi_lo_hi_lo,xbarsVecOut_hi_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__7_1 = xbars_7_io_outVal_1; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_0 = xbars_7_io_outVal_0; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_3 = xbars_7_io_outVal_3; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_2 = xbars_7_io_outVal_2; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_5 = xbars_7_io_outVal_5; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_4 = xbars_7_io_outVal_4; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_7 = xbars_7_io_outVal_7; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_6 = xbars_7_io_outVal_6; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_hi_hi_lo_lo = {_xbarsVecOut_WIRE__7_7,_xbarsVecOut_WIRE__7_6,_xbarsVecOut_WIRE__7_5,
    _xbarsVecOut_WIRE__7_4,_xbarsVecOut_WIRE__7_3,_xbarsVecOut_WIRE__7_2,_xbarsVecOut_WIRE__7_1,_xbarsVecOut_WIRE__7_0}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__7_9 = xbars_7_io_outVal_9; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_8 = xbars_7_io_outVal_8; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_11 = xbars_7_io_outVal_11; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_10 = xbars_7_io_outVal_10; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_13 = xbars_7_io_outVal_13; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_12 = xbars_7_io_outVal_12; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_15 = xbars_7_io_outVal_15; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_14 = xbars_7_io_outVal_14; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [255:0] xbarsVecOut_hi_hi_hi_lo = {_xbarsVecOut_WIRE__7_15,_xbarsVecOut_WIRE__7_14,_xbarsVecOut_WIRE__7_13,
    _xbarsVecOut_WIRE__7_12,_xbarsVecOut_WIRE__7_11,_xbarsVecOut_WIRE__7_10,_xbarsVecOut_WIRE__7_9,
    _xbarsVecOut_WIRE__7_8,xbarsVecOut_hi_hi_hi_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__7_17 = xbars_7_io_outVal_17; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_16 = xbars_7_io_outVal_16; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_19 = xbars_7_io_outVal_19; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_18 = xbars_7_io_outVal_18; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_21 = xbars_7_io_outVal_21; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_20 = xbars_7_io_outVal_20; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_23 = xbars_7_io_outVal_23; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_22 = xbars_7_io_outVal_22; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [127:0] xbarsVecOut_hi_hi_hi_hi_lo = {_xbarsVecOut_WIRE__7_23,_xbarsVecOut_WIRE__7_22,_xbarsVecOut_WIRE__7_21,
    _xbarsVecOut_WIRE__7_20,_xbarsVecOut_WIRE__7_19,_xbarsVecOut_WIRE__7_18,_xbarsVecOut_WIRE__7_17,
    _xbarsVecOut_WIRE__7_16}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [15:0] _xbarsVecOut_WIRE__7_25 = xbars_7_io_outVal_25; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_24 = xbars_7_io_outVal_24; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_27 = xbars_7_io_outVal_27; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_26 = xbars_7_io_outVal_26; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_29 = xbars_7_io_outVal_29; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_28 = xbars_7_io_outVal_28; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_31 = xbars_7_io_outVal_31; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [15:0] _xbarsVecOut_WIRE__7_30 = xbars_7_io_outVal_30; // @[src/main/scala/simd_perm/simd_perm.scala 172:{28,28}]
  wire [511:0] xbarsVecOut_hi_hi_hi = {_xbarsVecOut_WIRE__7_31,_xbarsVecOut_WIRE__7_30,_xbarsVecOut_WIRE__7_29,
    _xbarsVecOut_WIRE__7_28,_xbarsVecOut_WIRE__7_27,_xbarsVecOut_WIRE__7_26,_xbarsVecOut_WIRE__7_25,
    _xbarsVecOut_WIRE__7_24,xbarsVecOut_hi_hi_hi_hi_lo,xbarsVecOut_hi_hi_hi_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [4095:0] _xbarsVecOut_T = {xbarsVecOut_hi_hi_hi,xbarsVecOut_hi_hi_lo,xbarsVecOut_hi_lo_hi,xbarsVecOut_hi_lo_lo,
    xbarsVecOut_lo_hi_hi,xbarsVecOut_lo_hi_lo,xbarsVecOut_lo_lo_hi,xbarsVecOut_lo_lo_lo}; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_0 = _xbarsVecOut_T[63:0]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_1 = _xbarsVecOut_T[127:64]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_2 = _xbarsVecOut_T[191:128]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_3 = _xbarsVecOut_T[255:192]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_4 = _xbarsVecOut_T[319:256]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_5 = _xbarsVecOut_T[383:320]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_6 = _xbarsVecOut_T[447:384]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_0_7 = _xbarsVecOut_T[511:448]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_0 = _xbarsVecOut_T[575:512]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_1 = _xbarsVecOut_T[639:576]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_2 = _xbarsVecOut_T[703:640]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_3 = _xbarsVecOut_T[767:704]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_4 = _xbarsVecOut_T[831:768]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_5 = _xbarsVecOut_T[895:832]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_6 = _xbarsVecOut_T[959:896]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_1_7 = _xbarsVecOut_T[1023:960]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_0 = _xbarsVecOut_T[1087:1024]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_1 = _xbarsVecOut_T[1151:1088]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_2 = _xbarsVecOut_T[1215:1152]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_3 = _xbarsVecOut_T[1279:1216]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_4 = _xbarsVecOut_T[1343:1280]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_5 = _xbarsVecOut_T[1407:1344]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_6 = _xbarsVecOut_T[1471:1408]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_2_7 = _xbarsVecOut_T[1535:1472]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_0 = _xbarsVecOut_T[1599:1536]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_1 = _xbarsVecOut_T[1663:1600]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_2 = _xbarsVecOut_T[1727:1664]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_3 = _xbarsVecOut_T[1791:1728]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_4 = _xbarsVecOut_T[1855:1792]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_5 = _xbarsVecOut_T[1919:1856]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_6 = _xbarsVecOut_T[1983:1920]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_3_7 = _xbarsVecOut_T[2047:1984]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_0 = _xbarsVecOut_T[2111:2048]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_1 = _xbarsVecOut_T[2175:2112]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_2 = _xbarsVecOut_T[2239:2176]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_3 = _xbarsVecOut_T[2303:2240]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_4 = _xbarsVecOut_T[2367:2304]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_5 = _xbarsVecOut_T[2431:2368]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_6 = _xbarsVecOut_T[2495:2432]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_4_7 = _xbarsVecOut_T[2559:2496]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_0 = _xbarsVecOut_T[2623:2560]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_1 = _xbarsVecOut_T[2687:2624]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_2 = _xbarsVecOut_T[2751:2688]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_3 = _xbarsVecOut_T[2815:2752]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_4 = _xbarsVecOut_T[2879:2816]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_5 = _xbarsVecOut_T[2943:2880]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_6 = _xbarsVecOut_T[3007:2944]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_5_7 = _xbarsVecOut_T[3071:3008]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_0 = _xbarsVecOut_T[3135:3072]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_1 = _xbarsVecOut_T[3199:3136]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_2 = _xbarsVecOut_T[3263:3200]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_3 = _xbarsVecOut_T[3327:3264]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_4 = _xbarsVecOut_T[3391:3328]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_5 = _xbarsVecOut_T[3455:3392]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_6 = _xbarsVecOut_T[3519:3456]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_6_7 = _xbarsVecOut_T[3583:3520]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_0 = _xbarsVecOut_T[3647:3584]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_1 = _xbarsVecOut_T[3711:3648]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_2 = _xbarsVecOut_T[3775:3712]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_3 = _xbarsVecOut_T[3839:3776]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_4 = _xbarsVecOut_T[3903:3840]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_5 = _xbarsVecOut_T[3967:3904]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_6 = _xbarsVecOut_T[4031:3968]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire [63:0] xbarsVecOut_7_7 = _xbarsVecOut_T[4095:4032]; // @[src/main/scala/simd_perm/simd_perm.scala 172:61]
  wire  _T_1296 = io_outValid & io_outReady; // @[src/main/scala/simd_perm/simd_perm.scala 178:17]
  reg [3:0] rotateCnt; // @[src/main/scala/simd_perm/simd_perm.scala 190:26]
  reg [2:0] modeReg; // @[src/main/scala/simd_perm/simd_perm.scala 191:24]
  wire [3:0] _rotateCnt_T_1 = rotateCnt + 4'h1; // @[src/main/scala/simd_perm/simd_perm.scala 215:36]
  wire [1:0] _GEN_32 = 3'h1 == _T_1301 ? 2'h2 : stateReg; // @[src/main/scala/simd_perm/simd_perm.scala 211:75 223:22 189:25]
  wire [1:0] _GEN_65 = 3'h2 == _T_1301 ? 2'h2 : _GEN_32; // @[src/main/scala/simd_perm/simd_perm.scala 211:75 219:22]
  wire  _GEN_132 = io_permute ? 1'h0 : 1'h1; // @[src/main/scala/simd_perm/simd_perm.scala 200:18 204:24 205:20]
  wire [2:0] _rotate_lv_T_2 = 3'h3 + modeReg; // @[src/main/scala/simd_perm/simd_perm.scala 235:27]
  wire [2:0] _rotate_lv = _rotate_lv_T_2 - 3'h5; // @[src/main/scala/simd_perm/simd_perm.scala 235:42]
  wire [11:0] _T_1372 = 12'h1 << _rotate_lv; // @[src/main/scala/simd_perm/simd_perm.scala 236:53]
  wire [11:0] _T_1374 = _T_1372 - 12'h1; // @[src/main/scala/simd_perm/simd_perm.scala 236:67]
  wire [11:0] _GEN_219 = {{8'd0}, rotateCnt}; // @[src/main/scala/simd_perm/simd_perm.scala 236:22]
  wire  _T_1375 = _GEN_219 < _T_1374; // @[src/main/scala/simd_perm/simd_perm.scala 236:22]
  wire [1:0] _GEN_171 = io_outReady ? 2'h0 : stateReg; // @[src/main/scala/simd_perm/simd_perm.scala 250:25 251:18 189:25]
  wire  _GEN_180 = 2'h1 == stateReg ? 1'h0 : 2'h2 == stateReg; // @[src/main/scala/simd_perm/simd_perm.scala 194:15 198:20]
  VectorReg idxReg ( // @[src/main/scala/simd_perm/simd_perm.scala 136:22]
    .clock(idxReg_clock),
    .reset(idxReg_reset),
    .io_inValid(idxReg_io_inValid),
    .io_inData_0_0(idxReg_io_inData_0_0),
    .io_inData_0_1(idxReg_io_inData_0_1),
    .io_inData_0_2(idxReg_io_inData_0_2),
    .io_inData_0_3(idxReg_io_inData_0_3),
    .io_inData_0_4(idxReg_io_inData_0_4),
    .io_inData_0_5(idxReg_io_inData_0_5),
    .io_inData_0_6(idxReg_io_inData_0_6),
    .io_inData_0_7(idxReg_io_inData_0_7),
    .io_inData_1_0(idxReg_io_inData_1_0),
    .io_inData_1_1(idxReg_io_inData_1_1),
    .io_inData_1_2(idxReg_io_inData_1_2),
    .io_inData_1_3(idxReg_io_inData_1_3),
    .io_inData_1_4(idxReg_io_inData_1_4),
    .io_inData_1_5(idxReg_io_inData_1_5),
    .io_inData_1_6(idxReg_io_inData_1_6),
    .io_inData_1_7(idxReg_io_inData_1_7),
    .io_inData_2_0(idxReg_io_inData_2_0),
    .io_inData_2_1(idxReg_io_inData_2_1),
    .io_inData_2_2(idxReg_io_inData_2_2),
    .io_inData_2_3(idxReg_io_inData_2_3),
    .io_inData_2_4(idxReg_io_inData_2_4),
    .io_inData_2_5(idxReg_io_inData_2_5),
    .io_inData_2_6(idxReg_io_inData_2_6),
    .io_inData_2_7(idxReg_io_inData_2_7),
    .io_inData_3_0(idxReg_io_inData_3_0),
    .io_inData_3_1(idxReg_io_inData_3_1),
    .io_inData_3_2(idxReg_io_inData_3_2),
    .io_inData_3_3(idxReg_io_inData_3_3),
    .io_inData_3_4(idxReg_io_inData_3_4),
    .io_inData_3_5(idxReg_io_inData_3_5),
    .io_inData_3_6(idxReg_io_inData_3_6),
    .io_inData_3_7(idxReg_io_inData_3_7),
    .io_inData_4_0(idxReg_io_inData_4_0),
    .io_inData_4_1(idxReg_io_inData_4_1),
    .io_inData_4_2(idxReg_io_inData_4_2),
    .io_inData_4_3(idxReg_io_inData_4_3),
    .io_inData_4_4(idxReg_io_inData_4_4),
    .io_inData_4_5(idxReg_io_inData_4_5),
    .io_inData_4_6(idxReg_io_inData_4_6),
    .io_inData_4_7(idxReg_io_inData_4_7),
    .io_inData_5_0(idxReg_io_inData_5_0),
    .io_inData_5_1(idxReg_io_inData_5_1),
    .io_inData_5_2(idxReg_io_inData_5_2),
    .io_inData_5_3(idxReg_io_inData_5_3),
    .io_inData_5_4(idxReg_io_inData_5_4),
    .io_inData_5_5(idxReg_io_inData_5_5),
    .io_inData_5_6(idxReg_io_inData_5_6),
    .io_inData_5_7(idxReg_io_inData_5_7),
    .io_inData_6_0(idxReg_io_inData_6_0),
    .io_inData_6_1(idxReg_io_inData_6_1),
    .io_inData_6_2(idxReg_io_inData_6_2),
    .io_inData_6_3(idxReg_io_inData_6_3),
    .io_inData_6_4(idxReg_io_inData_6_4),
    .io_inData_6_5(idxReg_io_inData_6_5),
    .io_inData_6_6(idxReg_io_inData_6_6),
    .io_inData_6_7(idxReg_io_inData_6_7),
    .io_inData_7_0(idxReg_io_inData_7_0),
    .io_inData_7_1(idxReg_io_inData_7_1),
    .io_inData_7_2(idxReg_io_inData_7_2),
    .io_inData_7_3(idxReg_io_inData_7_3),
    .io_inData_7_4(idxReg_io_inData_7_4),
    .io_inData_7_5(idxReg_io_inData_7_5),
    .io_inData_7_6(idxReg_io_inData_7_6),
    .io_inData_7_7(idxReg_io_inData_7_7),
    .io_rotate(idxReg_io_rotate),
    .io_rotateLevel(idxReg_io_rotateLevel),
    .io_outData_0_0(idxReg_io_outData_0_0),
    .io_outData_0_1(idxReg_io_outData_0_1),
    .io_outData_0_2(idxReg_io_outData_0_2),
    .io_outData_0_3(idxReg_io_outData_0_3),
    .io_outData_0_4(idxReg_io_outData_0_4),
    .io_outData_0_5(idxReg_io_outData_0_5),
    .io_outData_0_6(idxReg_io_outData_0_6),
    .io_outData_0_7(idxReg_io_outData_0_7),
    .io_outData_1_0(idxReg_io_outData_1_0),
    .io_outData_1_1(idxReg_io_outData_1_1),
    .io_outData_1_2(idxReg_io_outData_1_2),
    .io_outData_1_3(idxReg_io_outData_1_3),
    .io_outData_1_4(idxReg_io_outData_1_4),
    .io_outData_1_5(idxReg_io_outData_1_5),
    .io_outData_1_6(idxReg_io_outData_1_6),
    .io_outData_1_7(idxReg_io_outData_1_7),
    .io_outData_2_0(idxReg_io_outData_2_0),
    .io_outData_2_1(idxReg_io_outData_2_1),
    .io_outData_2_2(idxReg_io_outData_2_2),
    .io_outData_2_3(idxReg_io_outData_2_3),
    .io_outData_2_4(idxReg_io_outData_2_4),
    .io_outData_2_5(idxReg_io_outData_2_5),
    .io_outData_2_6(idxReg_io_outData_2_6),
    .io_outData_2_7(idxReg_io_outData_2_7),
    .io_outData_3_0(idxReg_io_outData_3_0),
    .io_outData_3_1(idxReg_io_outData_3_1),
    .io_outData_3_2(idxReg_io_outData_3_2),
    .io_outData_3_3(idxReg_io_outData_3_3),
    .io_outData_3_4(idxReg_io_outData_3_4),
    .io_outData_3_5(idxReg_io_outData_3_5),
    .io_outData_3_6(idxReg_io_outData_3_6),
    .io_outData_3_7(idxReg_io_outData_3_7),
    .io_outData_4_0(idxReg_io_outData_4_0),
    .io_outData_4_1(idxReg_io_outData_4_1),
    .io_outData_4_2(idxReg_io_outData_4_2),
    .io_outData_4_3(idxReg_io_outData_4_3),
    .io_outData_4_4(idxReg_io_outData_4_4),
    .io_outData_4_5(idxReg_io_outData_4_5),
    .io_outData_4_6(idxReg_io_outData_4_6),
    .io_outData_4_7(idxReg_io_outData_4_7),
    .io_outData_5_0(idxReg_io_outData_5_0),
    .io_outData_5_1(idxReg_io_outData_5_1),
    .io_outData_5_2(idxReg_io_outData_5_2),
    .io_outData_5_3(idxReg_io_outData_5_3),
    .io_outData_5_4(idxReg_io_outData_5_4),
    .io_outData_5_5(idxReg_io_outData_5_5),
    .io_outData_5_6(idxReg_io_outData_5_6),
    .io_outData_5_7(idxReg_io_outData_5_7),
    .io_outData_6_0(idxReg_io_outData_6_0),
    .io_outData_6_1(idxReg_io_outData_6_1),
    .io_outData_6_2(idxReg_io_outData_6_2),
    .io_outData_6_3(idxReg_io_outData_6_3),
    .io_outData_6_4(idxReg_io_outData_6_4),
    .io_outData_6_5(idxReg_io_outData_6_5),
    .io_outData_6_6(idxReg_io_outData_6_6),
    .io_outData_6_7(idxReg_io_outData_6_7),
    .io_outData_7_0(idxReg_io_outData_7_0),
    .io_outData_7_1(idxReg_io_outData_7_1),
    .io_outData_7_2(idxReg_io_outData_7_2),
    .io_outData_7_3(idxReg_io_outData_7_3),
    .io_outData_7_4(idxReg_io_outData_7_4),
    .io_outData_7_5(idxReg_io_outData_7_5),
    .io_outData_7_6(idxReg_io_outData_7_6),
    .io_outData_7_7(idxReg_io_outData_7_7)
  );
  VectorReg_1 valReg ( // @[src/main/scala/simd_perm/simd_perm.scala 149:22]
    .clock(valReg_clock),
    .reset(valReg_reset),
    .io_inValid(valReg_io_inValid),
    .io_inData_0_0(valReg_io_inData_0_0),
    .io_inData_0_1(valReg_io_inData_0_1),
    .io_inData_0_2(valReg_io_inData_0_2),
    .io_inData_0_3(valReg_io_inData_0_3),
    .io_inData_0_4(valReg_io_inData_0_4),
    .io_inData_0_5(valReg_io_inData_0_5),
    .io_inData_0_6(valReg_io_inData_0_6),
    .io_inData_0_7(valReg_io_inData_0_7),
    .io_inData_1_0(valReg_io_inData_1_0),
    .io_inData_1_1(valReg_io_inData_1_1),
    .io_inData_1_2(valReg_io_inData_1_2),
    .io_inData_1_3(valReg_io_inData_1_3),
    .io_inData_1_4(valReg_io_inData_1_4),
    .io_inData_1_5(valReg_io_inData_1_5),
    .io_inData_1_6(valReg_io_inData_1_6),
    .io_inData_1_7(valReg_io_inData_1_7),
    .io_inData_2_0(valReg_io_inData_2_0),
    .io_inData_2_1(valReg_io_inData_2_1),
    .io_inData_2_2(valReg_io_inData_2_2),
    .io_inData_2_3(valReg_io_inData_2_3),
    .io_inData_2_4(valReg_io_inData_2_4),
    .io_inData_2_5(valReg_io_inData_2_5),
    .io_inData_2_6(valReg_io_inData_2_6),
    .io_inData_2_7(valReg_io_inData_2_7),
    .io_inData_3_0(valReg_io_inData_3_0),
    .io_inData_3_1(valReg_io_inData_3_1),
    .io_inData_3_2(valReg_io_inData_3_2),
    .io_inData_3_3(valReg_io_inData_3_3),
    .io_inData_3_4(valReg_io_inData_3_4),
    .io_inData_3_5(valReg_io_inData_3_5),
    .io_inData_3_6(valReg_io_inData_3_6),
    .io_inData_3_7(valReg_io_inData_3_7),
    .io_inData_4_0(valReg_io_inData_4_0),
    .io_inData_4_1(valReg_io_inData_4_1),
    .io_inData_4_2(valReg_io_inData_4_2),
    .io_inData_4_3(valReg_io_inData_4_3),
    .io_inData_4_4(valReg_io_inData_4_4),
    .io_inData_4_5(valReg_io_inData_4_5),
    .io_inData_4_6(valReg_io_inData_4_6),
    .io_inData_4_7(valReg_io_inData_4_7),
    .io_inData_5_0(valReg_io_inData_5_0),
    .io_inData_5_1(valReg_io_inData_5_1),
    .io_inData_5_2(valReg_io_inData_5_2),
    .io_inData_5_3(valReg_io_inData_5_3),
    .io_inData_5_4(valReg_io_inData_5_4),
    .io_inData_5_5(valReg_io_inData_5_5),
    .io_inData_5_6(valReg_io_inData_5_6),
    .io_inData_5_7(valReg_io_inData_5_7),
    .io_inData_6_0(valReg_io_inData_6_0),
    .io_inData_6_1(valReg_io_inData_6_1),
    .io_inData_6_2(valReg_io_inData_6_2),
    .io_inData_6_3(valReg_io_inData_6_3),
    .io_inData_6_4(valReg_io_inData_6_4),
    .io_inData_6_5(valReg_io_inData_6_5),
    .io_inData_6_6(valReg_io_inData_6_6),
    .io_inData_6_7(valReg_io_inData_6_7),
    .io_inData_7_0(valReg_io_inData_7_0),
    .io_inData_7_1(valReg_io_inData_7_1),
    .io_inData_7_2(valReg_io_inData_7_2),
    .io_inData_7_3(valReg_io_inData_7_3),
    .io_inData_7_4(valReg_io_inData_7_4),
    .io_inData_7_5(valReg_io_inData_7_5),
    .io_inData_7_6(valReg_io_inData_7_6),
    .io_inData_7_7(valReg_io_inData_7_7),
    .io_outData_0_0(valReg_io_outData_0_0),
    .io_outData_0_1(valReg_io_outData_0_1),
    .io_outData_0_2(valReg_io_outData_0_2),
    .io_outData_0_3(valReg_io_outData_0_3),
    .io_outData_0_4(valReg_io_outData_0_4),
    .io_outData_0_5(valReg_io_outData_0_5),
    .io_outData_0_6(valReg_io_outData_0_6),
    .io_outData_0_7(valReg_io_outData_0_7),
    .io_outData_1_0(valReg_io_outData_1_0),
    .io_outData_1_1(valReg_io_outData_1_1),
    .io_outData_1_2(valReg_io_outData_1_2),
    .io_outData_1_3(valReg_io_outData_1_3),
    .io_outData_1_4(valReg_io_outData_1_4),
    .io_outData_1_5(valReg_io_outData_1_5),
    .io_outData_1_6(valReg_io_outData_1_6),
    .io_outData_1_7(valReg_io_outData_1_7),
    .io_outData_2_0(valReg_io_outData_2_0),
    .io_outData_2_1(valReg_io_outData_2_1),
    .io_outData_2_2(valReg_io_outData_2_2),
    .io_outData_2_3(valReg_io_outData_2_3),
    .io_outData_2_4(valReg_io_outData_2_4),
    .io_outData_2_5(valReg_io_outData_2_5),
    .io_outData_2_6(valReg_io_outData_2_6),
    .io_outData_2_7(valReg_io_outData_2_7),
    .io_outData_3_0(valReg_io_outData_3_0),
    .io_outData_3_1(valReg_io_outData_3_1),
    .io_outData_3_2(valReg_io_outData_3_2),
    .io_outData_3_3(valReg_io_outData_3_3),
    .io_outData_3_4(valReg_io_outData_3_4),
    .io_outData_3_5(valReg_io_outData_3_5),
    .io_outData_3_6(valReg_io_outData_3_6),
    .io_outData_3_7(valReg_io_outData_3_7),
    .io_outData_4_0(valReg_io_outData_4_0),
    .io_outData_4_1(valReg_io_outData_4_1),
    .io_outData_4_2(valReg_io_outData_4_2),
    .io_outData_4_3(valReg_io_outData_4_3),
    .io_outData_4_4(valReg_io_outData_4_4),
    .io_outData_4_5(valReg_io_outData_4_5),
    .io_outData_4_6(valReg_io_outData_4_6),
    .io_outData_4_7(valReg_io_outData_4_7),
    .io_outData_5_0(valReg_io_outData_5_0),
    .io_outData_5_1(valReg_io_outData_5_1),
    .io_outData_5_2(valReg_io_outData_5_2),
    .io_outData_5_3(valReg_io_outData_5_3),
    .io_outData_5_4(valReg_io_outData_5_4),
    .io_outData_5_5(valReg_io_outData_5_5),
    .io_outData_5_6(valReg_io_outData_5_6),
    .io_outData_5_7(valReg_io_outData_5_7),
    .io_outData_6_0(valReg_io_outData_6_0),
    .io_outData_6_1(valReg_io_outData_6_1),
    .io_outData_6_2(valReg_io_outData_6_2),
    .io_outData_6_3(valReg_io_outData_6_3),
    .io_outData_6_4(valReg_io_outData_6_4),
    .io_outData_6_5(valReg_io_outData_6_5),
    .io_outData_6_6(valReg_io_outData_6_6),
    .io_outData_6_7(valReg_io_outData_6_7),
    .io_outData_7_0(valReg_io_outData_7_0),
    .io_outData_7_1(valReg_io_outData_7_1),
    .io_outData_7_2(valReg_io_outData_7_2),
    .io_outData_7_3(valReg_io_outData_7_3),
    .io_outData_7_4(valReg_io_outData_7_4),
    .io_outData_7_5(valReg_io_outData_7_5),
    .io_outData_7_6(valReg_io_outData_7_6),
    .io_outData_7_7(valReg_io_outData_7_7)
  );
  Crossbar2D xbars_0 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_0_clock),
    .reset(xbars_0_reset),
    .io_inVal_0(xbars_0_io_inVal_0),
    .io_inVal_1(xbars_0_io_inVal_1),
    .io_inVal_2(xbars_0_io_inVal_2),
    .io_inVal_3(xbars_0_io_inVal_3),
    .io_inVal_4(xbars_0_io_inVal_4),
    .io_inVal_5(xbars_0_io_inVal_5),
    .io_inVal_6(xbars_0_io_inVal_6),
    .io_inVal_7(xbars_0_io_inVal_7),
    .io_inVal_8(xbars_0_io_inVal_8),
    .io_inVal_9(xbars_0_io_inVal_9),
    .io_inVal_10(xbars_0_io_inVal_10),
    .io_inVal_11(xbars_0_io_inVal_11),
    .io_inVal_12(xbars_0_io_inVal_12),
    .io_inVal_13(xbars_0_io_inVal_13),
    .io_inVal_14(xbars_0_io_inVal_14),
    .io_inVal_15(xbars_0_io_inVal_15),
    .io_inVal_16(xbars_0_io_inVal_16),
    .io_inVal_17(xbars_0_io_inVal_17),
    .io_inVal_18(xbars_0_io_inVal_18),
    .io_inVal_19(xbars_0_io_inVal_19),
    .io_inVal_20(xbars_0_io_inVal_20),
    .io_inVal_21(xbars_0_io_inVal_21),
    .io_inVal_22(xbars_0_io_inVal_22),
    .io_inVal_23(xbars_0_io_inVal_23),
    .io_inVal_24(xbars_0_io_inVal_24),
    .io_inVal_25(xbars_0_io_inVal_25),
    .io_inVal_26(xbars_0_io_inVal_26),
    .io_inVal_27(xbars_0_io_inVal_27),
    .io_inVal_28(xbars_0_io_inVal_28),
    .io_inVal_29(xbars_0_io_inVal_29),
    .io_inVal_30(xbars_0_io_inVal_30),
    .io_inVal_31(xbars_0_io_inVal_31),
    .io_inIdx_0(xbars_0_io_inIdx_0),
    .io_inIdx_1(xbars_0_io_inIdx_1),
    .io_inIdx_2(xbars_0_io_inIdx_2),
    .io_inIdx_3(xbars_0_io_inIdx_3),
    .io_inIdx_4(xbars_0_io_inIdx_4),
    .io_inIdx_5(xbars_0_io_inIdx_5),
    .io_inIdx_6(xbars_0_io_inIdx_6),
    .io_inIdx_7(xbars_0_io_inIdx_7),
    .io_inIdx_8(xbars_0_io_inIdx_8),
    .io_inIdx_9(xbars_0_io_inIdx_9),
    .io_inIdx_10(xbars_0_io_inIdx_10),
    .io_inIdx_11(xbars_0_io_inIdx_11),
    .io_inIdx_12(xbars_0_io_inIdx_12),
    .io_inIdx_13(xbars_0_io_inIdx_13),
    .io_inIdx_14(xbars_0_io_inIdx_14),
    .io_inIdx_15(xbars_0_io_inIdx_15),
    .io_inIdx_16(xbars_0_io_inIdx_16),
    .io_inIdx_17(xbars_0_io_inIdx_17),
    .io_inIdx_18(xbars_0_io_inIdx_18),
    .io_inIdx_19(xbars_0_io_inIdx_19),
    .io_inIdx_20(xbars_0_io_inIdx_20),
    .io_inIdx_21(xbars_0_io_inIdx_21),
    .io_inIdx_22(xbars_0_io_inIdx_22),
    .io_inIdx_23(xbars_0_io_inIdx_23),
    .io_inIdx_24(xbars_0_io_inIdx_24),
    .io_inIdx_25(xbars_0_io_inIdx_25),
    .io_inIdx_26(xbars_0_io_inIdx_26),
    .io_inIdx_27(xbars_0_io_inIdx_27),
    .io_inIdx_28(xbars_0_io_inIdx_28),
    .io_inIdx_29(xbars_0_io_inIdx_29),
    .io_inIdx_30(xbars_0_io_inIdx_30),
    .io_inIdx_31(xbars_0_io_inIdx_31),
    .io_outVal_0(xbars_0_io_outVal_0),
    .io_outVal_1(xbars_0_io_outVal_1),
    .io_outVal_2(xbars_0_io_outVal_2),
    .io_outVal_3(xbars_0_io_outVal_3),
    .io_outVal_4(xbars_0_io_outVal_4),
    .io_outVal_5(xbars_0_io_outVal_5),
    .io_outVal_6(xbars_0_io_outVal_6),
    .io_outVal_7(xbars_0_io_outVal_7),
    .io_outVal_8(xbars_0_io_outVal_8),
    .io_outVal_9(xbars_0_io_outVal_9),
    .io_outVal_10(xbars_0_io_outVal_10),
    .io_outVal_11(xbars_0_io_outVal_11),
    .io_outVal_12(xbars_0_io_outVal_12),
    .io_outVal_13(xbars_0_io_outVal_13),
    .io_outVal_14(xbars_0_io_outVal_14),
    .io_outVal_15(xbars_0_io_outVal_15),
    .io_outVal_16(xbars_0_io_outVal_16),
    .io_outVal_17(xbars_0_io_outVal_17),
    .io_outVal_18(xbars_0_io_outVal_18),
    .io_outVal_19(xbars_0_io_outVal_19),
    .io_outVal_20(xbars_0_io_outVal_20),
    .io_outVal_21(xbars_0_io_outVal_21),
    .io_outVal_22(xbars_0_io_outVal_22),
    .io_outVal_23(xbars_0_io_outVal_23),
    .io_outVal_24(xbars_0_io_outVal_24),
    .io_outVal_25(xbars_0_io_outVal_25),
    .io_outVal_26(xbars_0_io_outVal_26),
    .io_outVal_27(xbars_0_io_outVal_27),
    .io_outVal_28(xbars_0_io_outVal_28),
    .io_outVal_29(xbars_0_io_outVal_29),
    .io_outVal_30(xbars_0_io_outVal_30),
    .io_outVal_31(xbars_0_io_outVal_31)
  );
  Crossbar2D xbars_1 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_1_clock),
    .reset(xbars_1_reset),
    .io_inVal_0(xbars_1_io_inVal_0),
    .io_inVal_1(xbars_1_io_inVal_1),
    .io_inVal_2(xbars_1_io_inVal_2),
    .io_inVal_3(xbars_1_io_inVal_3),
    .io_inVal_4(xbars_1_io_inVal_4),
    .io_inVal_5(xbars_1_io_inVal_5),
    .io_inVal_6(xbars_1_io_inVal_6),
    .io_inVal_7(xbars_1_io_inVal_7),
    .io_inVal_8(xbars_1_io_inVal_8),
    .io_inVal_9(xbars_1_io_inVal_9),
    .io_inVal_10(xbars_1_io_inVal_10),
    .io_inVal_11(xbars_1_io_inVal_11),
    .io_inVal_12(xbars_1_io_inVal_12),
    .io_inVal_13(xbars_1_io_inVal_13),
    .io_inVal_14(xbars_1_io_inVal_14),
    .io_inVal_15(xbars_1_io_inVal_15),
    .io_inVal_16(xbars_1_io_inVal_16),
    .io_inVal_17(xbars_1_io_inVal_17),
    .io_inVal_18(xbars_1_io_inVal_18),
    .io_inVal_19(xbars_1_io_inVal_19),
    .io_inVal_20(xbars_1_io_inVal_20),
    .io_inVal_21(xbars_1_io_inVal_21),
    .io_inVal_22(xbars_1_io_inVal_22),
    .io_inVal_23(xbars_1_io_inVal_23),
    .io_inVal_24(xbars_1_io_inVal_24),
    .io_inVal_25(xbars_1_io_inVal_25),
    .io_inVal_26(xbars_1_io_inVal_26),
    .io_inVal_27(xbars_1_io_inVal_27),
    .io_inVal_28(xbars_1_io_inVal_28),
    .io_inVal_29(xbars_1_io_inVal_29),
    .io_inVal_30(xbars_1_io_inVal_30),
    .io_inVal_31(xbars_1_io_inVal_31),
    .io_inIdx_0(xbars_1_io_inIdx_0),
    .io_inIdx_1(xbars_1_io_inIdx_1),
    .io_inIdx_2(xbars_1_io_inIdx_2),
    .io_inIdx_3(xbars_1_io_inIdx_3),
    .io_inIdx_4(xbars_1_io_inIdx_4),
    .io_inIdx_5(xbars_1_io_inIdx_5),
    .io_inIdx_6(xbars_1_io_inIdx_6),
    .io_inIdx_7(xbars_1_io_inIdx_7),
    .io_inIdx_8(xbars_1_io_inIdx_8),
    .io_inIdx_9(xbars_1_io_inIdx_9),
    .io_inIdx_10(xbars_1_io_inIdx_10),
    .io_inIdx_11(xbars_1_io_inIdx_11),
    .io_inIdx_12(xbars_1_io_inIdx_12),
    .io_inIdx_13(xbars_1_io_inIdx_13),
    .io_inIdx_14(xbars_1_io_inIdx_14),
    .io_inIdx_15(xbars_1_io_inIdx_15),
    .io_inIdx_16(xbars_1_io_inIdx_16),
    .io_inIdx_17(xbars_1_io_inIdx_17),
    .io_inIdx_18(xbars_1_io_inIdx_18),
    .io_inIdx_19(xbars_1_io_inIdx_19),
    .io_inIdx_20(xbars_1_io_inIdx_20),
    .io_inIdx_21(xbars_1_io_inIdx_21),
    .io_inIdx_22(xbars_1_io_inIdx_22),
    .io_inIdx_23(xbars_1_io_inIdx_23),
    .io_inIdx_24(xbars_1_io_inIdx_24),
    .io_inIdx_25(xbars_1_io_inIdx_25),
    .io_inIdx_26(xbars_1_io_inIdx_26),
    .io_inIdx_27(xbars_1_io_inIdx_27),
    .io_inIdx_28(xbars_1_io_inIdx_28),
    .io_inIdx_29(xbars_1_io_inIdx_29),
    .io_inIdx_30(xbars_1_io_inIdx_30),
    .io_inIdx_31(xbars_1_io_inIdx_31),
    .io_outVal_0(xbars_1_io_outVal_0),
    .io_outVal_1(xbars_1_io_outVal_1),
    .io_outVal_2(xbars_1_io_outVal_2),
    .io_outVal_3(xbars_1_io_outVal_3),
    .io_outVal_4(xbars_1_io_outVal_4),
    .io_outVal_5(xbars_1_io_outVal_5),
    .io_outVal_6(xbars_1_io_outVal_6),
    .io_outVal_7(xbars_1_io_outVal_7),
    .io_outVal_8(xbars_1_io_outVal_8),
    .io_outVal_9(xbars_1_io_outVal_9),
    .io_outVal_10(xbars_1_io_outVal_10),
    .io_outVal_11(xbars_1_io_outVal_11),
    .io_outVal_12(xbars_1_io_outVal_12),
    .io_outVal_13(xbars_1_io_outVal_13),
    .io_outVal_14(xbars_1_io_outVal_14),
    .io_outVal_15(xbars_1_io_outVal_15),
    .io_outVal_16(xbars_1_io_outVal_16),
    .io_outVal_17(xbars_1_io_outVal_17),
    .io_outVal_18(xbars_1_io_outVal_18),
    .io_outVal_19(xbars_1_io_outVal_19),
    .io_outVal_20(xbars_1_io_outVal_20),
    .io_outVal_21(xbars_1_io_outVal_21),
    .io_outVal_22(xbars_1_io_outVal_22),
    .io_outVal_23(xbars_1_io_outVal_23),
    .io_outVal_24(xbars_1_io_outVal_24),
    .io_outVal_25(xbars_1_io_outVal_25),
    .io_outVal_26(xbars_1_io_outVal_26),
    .io_outVal_27(xbars_1_io_outVal_27),
    .io_outVal_28(xbars_1_io_outVal_28),
    .io_outVal_29(xbars_1_io_outVal_29),
    .io_outVal_30(xbars_1_io_outVal_30),
    .io_outVal_31(xbars_1_io_outVal_31)
  );
  Crossbar2D xbars_2 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_2_clock),
    .reset(xbars_2_reset),
    .io_inVal_0(xbars_2_io_inVal_0),
    .io_inVal_1(xbars_2_io_inVal_1),
    .io_inVal_2(xbars_2_io_inVal_2),
    .io_inVal_3(xbars_2_io_inVal_3),
    .io_inVal_4(xbars_2_io_inVal_4),
    .io_inVal_5(xbars_2_io_inVal_5),
    .io_inVal_6(xbars_2_io_inVal_6),
    .io_inVal_7(xbars_2_io_inVal_7),
    .io_inVal_8(xbars_2_io_inVal_8),
    .io_inVal_9(xbars_2_io_inVal_9),
    .io_inVal_10(xbars_2_io_inVal_10),
    .io_inVal_11(xbars_2_io_inVal_11),
    .io_inVal_12(xbars_2_io_inVal_12),
    .io_inVal_13(xbars_2_io_inVal_13),
    .io_inVal_14(xbars_2_io_inVal_14),
    .io_inVal_15(xbars_2_io_inVal_15),
    .io_inVal_16(xbars_2_io_inVal_16),
    .io_inVal_17(xbars_2_io_inVal_17),
    .io_inVal_18(xbars_2_io_inVal_18),
    .io_inVal_19(xbars_2_io_inVal_19),
    .io_inVal_20(xbars_2_io_inVal_20),
    .io_inVal_21(xbars_2_io_inVal_21),
    .io_inVal_22(xbars_2_io_inVal_22),
    .io_inVal_23(xbars_2_io_inVal_23),
    .io_inVal_24(xbars_2_io_inVal_24),
    .io_inVal_25(xbars_2_io_inVal_25),
    .io_inVal_26(xbars_2_io_inVal_26),
    .io_inVal_27(xbars_2_io_inVal_27),
    .io_inVal_28(xbars_2_io_inVal_28),
    .io_inVal_29(xbars_2_io_inVal_29),
    .io_inVal_30(xbars_2_io_inVal_30),
    .io_inVal_31(xbars_2_io_inVal_31),
    .io_inIdx_0(xbars_2_io_inIdx_0),
    .io_inIdx_1(xbars_2_io_inIdx_1),
    .io_inIdx_2(xbars_2_io_inIdx_2),
    .io_inIdx_3(xbars_2_io_inIdx_3),
    .io_inIdx_4(xbars_2_io_inIdx_4),
    .io_inIdx_5(xbars_2_io_inIdx_5),
    .io_inIdx_6(xbars_2_io_inIdx_6),
    .io_inIdx_7(xbars_2_io_inIdx_7),
    .io_inIdx_8(xbars_2_io_inIdx_8),
    .io_inIdx_9(xbars_2_io_inIdx_9),
    .io_inIdx_10(xbars_2_io_inIdx_10),
    .io_inIdx_11(xbars_2_io_inIdx_11),
    .io_inIdx_12(xbars_2_io_inIdx_12),
    .io_inIdx_13(xbars_2_io_inIdx_13),
    .io_inIdx_14(xbars_2_io_inIdx_14),
    .io_inIdx_15(xbars_2_io_inIdx_15),
    .io_inIdx_16(xbars_2_io_inIdx_16),
    .io_inIdx_17(xbars_2_io_inIdx_17),
    .io_inIdx_18(xbars_2_io_inIdx_18),
    .io_inIdx_19(xbars_2_io_inIdx_19),
    .io_inIdx_20(xbars_2_io_inIdx_20),
    .io_inIdx_21(xbars_2_io_inIdx_21),
    .io_inIdx_22(xbars_2_io_inIdx_22),
    .io_inIdx_23(xbars_2_io_inIdx_23),
    .io_inIdx_24(xbars_2_io_inIdx_24),
    .io_inIdx_25(xbars_2_io_inIdx_25),
    .io_inIdx_26(xbars_2_io_inIdx_26),
    .io_inIdx_27(xbars_2_io_inIdx_27),
    .io_inIdx_28(xbars_2_io_inIdx_28),
    .io_inIdx_29(xbars_2_io_inIdx_29),
    .io_inIdx_30(xbars_2_io_inIdx_30),
    .io_inIdx_31(xbars_2_io_inIdx_31),
    .io_outVal_0(xbars_2_io_outVal_0),
    .io_outVal_1(xbars_2_io_outVal_1),
    .io_outVal_2(xbars_2_io_outVal_2),
    .io_outVal_3(xbars_2_io_outVal_3),
    .io_outVal_4(xbars_2_io_outVal_4),
    .io_outVal_5(xbars_2_io_outVal_5),
    .io_outVal_6(xbars_2_io_outVal_6),
    .io_outVal_7(xbars_2_io_outVal_7),
    .io_outVal_8(xbars_2_io_outVal_8),
    .io_outVal_9(xbars_2_io_outVal_9),
    .io_outVal_10(xbars_2_io_outVal_10),
    .io_outVal_11(xbars_2_io_outVal_11),
    .io_outVal_12(xbars_2_io_outVal_12),
    .io_outVal_13(xbars_2_io_outVal_13),
    .io_outVal_14(xbars_2_io_outVal_14),
    .io_outVal_15(xbars_2_io_outVal_15),
    .io_outVal_16(xbars_2_io_outVal_16),
    .io_outVal_17(xbars_2_io_outVal_17),
    .io_outVal_18(xbars_2_io_outVal_18),
    .io_outVal_19(xbars_2_io_outVal_19),
    .io_outVal_20(xbars_2_io_outVal_20),
    .io_outVal_21(xbars_2_io_outVal_21),
    .io_outVal_22(xbars_2_io_outVal_22),
    .io_outVal_23(xbars_2_io_outVal_23),
    .io_outVal_24(xbars_2_io_outVal_24),
    .io_outVal_25(xbars_2_io_outVal_25),
    .io_outVal_26(xbars_2_io_outVal_26),
    .io_outVal_27(xbars_2_io_outVal_27),
    .io_outVal_28(xbars_2_io_outVal_28),
    .io_outVal_29(xbars_2_io_outVal_29),
    .io_outVal_30(xbars_2_io_outVal_30),
    .io_outVal_31(xbars_2_io_outVal_31)
  );
  Crossbar2D xbars_3 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_3_clock),
    .reset(xbars_3_reset),
    .io_inVal_0(xbars_3_io_inVal_0),
    .io_inVal_1(xbars_3_io_inVal_1),
    .io_inVal_2(xbars_3_io_inVal_2),
    .io_inVal_3(xbars_3_io_inVal_3),
    .io_inVal_4(xbars_3_io_inVal_4),
    .io_inVal_5(xbars_3_io_inVal_5),
    .io_inVal_6(xbars_3_io_inVal_6),
    .io_inVal_7(xbars_3_io_inVal_7),
    .io_inVal_8(xbars_3_io_inVal_8),
    .io_inVal_9(xbars_3_io_inVal_9),
    .io_inVal_10(xbars_3_io_inVal_10),
    .io_inVal_11(xbars_3_io_inVal_11),
    .io_inVal_12(xbars_3_io_inVal_12),
    .io_inVal_13(xbars_3_io_inVal_13),
    .io_inVal_14(xbars_3_io_inVal_14),
    .io_inVal_15(xbars_3_io_inVal_15),
    .io_inVal_16(xbars_3_io_inVal_16),
    .io_inVal_17(xbars_3_io_inVal_17),
    .io_inVal_18(xbars_3_io_inVal_18),
    .io_inVal_19(xbars_3_io_inVal_19),
    .io_inVal_20(xbars_3_io_inVal_20),
    .io_inVal_21(xbars_3_io_inVal_21),
    .io_inVal_22(xbars_3_io_inVal_22),
    .io_inVal_23(xbars_3_io_inVal_23),
    .io_inVal_24(xbars_3_io_inVal_24),
    .io_inVal_25(xbars_3_io_inVal_25),
    .io_inVal_26(xbars_3_io_inVal_26),
    .io_inVal_27(xbars_3_io_inVal_27),
    .io_inVal_28(xbars_3_io_inVal_28),
    .io_inVal_29(xbars_3_io_inVal_29),
    .io_inVal_30(xbars_3_io_inVal_30),
    .io_inVal_31(xbars_3_io_inVal_31),
    .io_inIdx_0(xbars_3_io_inIdx_0),
    .io_inIdx_1(xbars_3_io_inIdx_1),
    .io_inIdx_2(xbars_3_io_inIdx_2),
    .io_inIdx_3(xbars_3_io_inIdx_3),
    .io_inIdx_4(xbars_3_io_inIdx_4),
    .io_inIdx_5(xbars_3_io_inIdx_5),
    .io_inIdx_6(xbars_3_io_inIdx_6),
    .io_inIdx_7(xbars_3_io_inIdx_7),
    .io_inIdx_8(xbars_3_io_inIdx_8),
    .io_inIdx_9(xbars_3_io_inIdx_9),
    .io_inIdx_10(xbars_3_io_inIdx_10),
    .io_inIdx_11(xbars_3_io_inIdx_11),
    .io_inIdx_12(xbars_3_io_inIdx_12),
    .io_inIdx_13(xbars_3_io_inIdx_13),
    .io_inIdx_14(xbars_3_io_inIdx_14),
    .io_inIdx_15(xbars_3_io_inIdx_15),
    .io_inIdx_16(xbars_3_io_inIdx_16),
    .io_inIdx_17(xbars_3_io_inIdx_17),
    .io_inIdx_18(xbars_3_io_inIdx_18),
    .io_inIdx_19(xbars_3_io_inIdx_19),
    .io_inIdx_20(xbars_3_io_inIdx_20),
    .io_inIdx_21(xbars_3_io_inIdx_21),
    .io_inIdx_22(xbars_3_io_inIdx_22),
    .io_inIdx_23(xbars_3_io_inIdx_23),
    .io_inIdx_24(xbars_3_io_inIdx_24),
    .io_inIdx_25(xbars_3_io_inIdx_25),
    .io_inIdx_26(xbars_3_io_inIdx_26),
    .io_inIdx_27(xbars_3_io_inIdx_27),
    .io_inIdx_28(xbars_3_io_inIdx_28),
    .io_inIdx_29(xbars_3_io_inIdx_29),
    .io_inIdx_30(xbars_3_io_inIdx_30),
    .io_inIdx_31(xbars_3_io_inIdx_31),
    .io_outVal_0(xbars_3_io_outVal_0),
    .io_outVal_1(xbars_3_io_outVal_1),
    .io_outVal_2(xbars_3_io_outVal_2),
    .io_outVal_3(xbars_3_io_outVal_3),
    .io_outVal_4(xbars_3_io_outVal_4),
    .io_outVal_5(xbars_3_io_outVal_5),
    .io_outVal_6(xbars_3_io_outVal_6),
    .io_outVal_7(xbars_3_io_outVal_7),
    .io_outVal_8(xbars_3_io_outVal_8),
    .io_outVal_9(xbars_3_io_outVal_9),
    .io_outVal_10(xbars_3_io_outVal_10),
    .io_outVal_11(xbars_3_io_outVal_11),
    .io_outVal_12(xbars_3_io_outVal_12),
    .io_outVal_13(xbars_3_io_outVal_13),
    .io_outVal_14(xbars_3_io_outVal_14),
    .io_outVal_15(xbars_3_io_outVal_15),
    .io_outVal_16(xbars_3_io_outVal_16),
    .io_outVal_17(xbars_3_io_outVal_17),
    .io_outVal_18(xbars_3_io_outVal_18),
    .io_outVal_19(xbars_3_io_outVal_19),
    .io_outVal_20(xbars_3_io_outVal_20),
    .io_outVal_21(xbars_3_io_outVal_21),
    .io_outVal_22(xbars_3_io_outVal_22),
    .io_outVal_23(xbars_3_io_outVal_23),
    .io_outVal_24(xbars_3_io_outVal_24),
    .io_outVal_25(xbars_3_io_outVal_25),
    .io_outVal_26(xbars_3_io_outVal_26),
    .io_outVal_27(xbars_3_io_outVal_27),
    .io_outVal_28(xbars_3_io_outVal_28),
    .io_outVal_29(xbars_3_io_outVal_29),
    .io_outVal_30(xbars_3_io_outVal_30),
    .io_outVal_31(xbars_3_io_outVal_31)
  );
  Crossbar2D xbars_4 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_4_clock),
    .reset(xbars_4_reset),
    .io_inVal_0(xbars_4_io_inVal_0),
    .io_inVal_1(xbars_4_io_inVal_1),
    .io_inVal_2(xbars_4_io_inVal_2),
    .io_inVal_3(xbars_4_io_inVal_3),
    .io_inVal_4(xbars_4_io_inVal_4),
    .io_inVal_5(xbars_4_io_inVal_5),
    .io_inVal_6(xbars_4_io_inVal_6),
    .io_inVal_7(xbars_4_io_inVal_7),
    .io_inVal_8(xbars_4_io_inVal_8),
    .io_inVal_9(xbars_4_io_inVal_9),
    .io_inVal_10(xbars_4_io_inVal_10),
    .io_inVal_11(xbars_4_io_inVal_11),
    .io_inVal_12(xbars_4_io_inVal_12),
    .io_inVal_13(xbars_4_io_inVal_13),
    .io_inVal_14(xbars_4_io_inVal_14),
    .io_inVal_15(xbars_4_io_inVal_15),
    .io_inVal_16(xbars_4_io_inVal_16),
    .io_inVal_17(xbars_4_io_inVal_17),
    .io_inVal_18(xbars_4_io_inVal_18),
    .io_inVal_19(xbars_4_io_inVal_19),
    .io_inVal_20(xbars_4_io_inVal_20),
    .io_inVal_21(xbars_4_io_inVal_21),
    .io_inVal_22(xbars_4_io_inVal_22),
    .io_inVal_23(xbars_4_io_inVal_23),
    .io_inVal_24(xbars_4_io_inVal_24),
    .io_inVal_25(xbars_4_io_inVal_25),
    .io_inVal_26(xbars_4_io_inVal_26),
    .io_inVal_27(xbars_4_io_inVal_27),
    .io_inVal_28(xbars_4_io_inVal_28),
    .io_inVal_29(xbars_4_io_inVal_29),
    .io_inVal_30(xbars_4_io_inVal_30),
    .io_inVal_31(xbars_4_io_inVal_31),
    .io_inIdx_0(xbars_4_io_inIdx_0),
    .io_inIdx_1(xbars_4_io_inIdx_1),
    .io_inIdx_2(xbars_4_io_inIdx_2),
    .io_inIdx_3(xbars_4_io_inIdx_3),
    .io_inIdx_4(xbars_4_io_inIdx_4),
    .io_inIdx_5(xbars_4_io_inIdx_5),
    .io_inIdx_6(xbars_4_io_inIdx_6),
    .io_inIdx_7(xbars_4_io_inIdx_7),
    .io_inIdx_8(xbars_4_io_inIdx_8),
    .io_inIdx_9(xbars_4_io_inIdx_9),
    .io_inIdx_10(xbars_4_io_inIdx_10),
    .io_inIdx_11(xbars_4_io_inIdx_11),
    .io_inIdx_12(xbars_4_io_inIdx_12),
    .io_inIdx_13(xbars_4_io_inIdx_13),
    .io_inIdx_14(xbars_4_io_inIdx_14),
    .io_inIdx_15(xbars_4_io_inIdx_15),
    .io_inIdx_16(xbars_4_io_inIdx_16),
    .io_inIdx_17(xbars_4_io_inIdx_17),
    .io_inIdx_18(xbars_4_io_inIdx_18),
    .io_inIdx_19(xbars_4_io_inIdx_19),
    .io_inIdx_20(xbars_4_io_inIdx_20),
    .io_inIdx_21(xbars_4_io_inIdx_21),
    .io_inIdx_22(xbars_4_io_inIdx_22),
    .io_inIdx_23(xbars_4_io_inIdx_23),
    .io_inIdx_24(xbars_4_io_inIdx_24),
    .io_inIdx_25(xbars_4_io_inIdx_25),
    .io_inIdx_26(xbars_4_io_inIdx_26),
    .io_inIdx_27(xbars_4_io_inIdx_27),
    .io_inIdx_28(xbars_4_io_inIdx_28),
    .io_inIdx_29(xbars_4_io_inIdx_29),
    .io_inIdx_30(xbars_4_io_inIdx_30),
    .io_inIdx_31(xbars_4_io_inIdx_31),
    .io_outVal_0(xbars_4_io_outVal_0),
    .io_outVal_1(xbars_4_io_outVal_1),
    .io_outVal_2(xbars_4_io_outVal_2),
    .io_outVal_3(xbars_4_io_outVal_3),
    .io_outVal_4(xbars_4_io_outVal_4),
    .io_outVal_5(xbars_4_io_outVal_5),
    .io_outVal_6(xbars_4_io_outVal_6),
    .io_outVal_7(xbars_4_io_outVal_7),
    .io_outVal_8(xbars_4_io_outVal_8),
    .io_outVal_9(xbars_4_io_outVal_9),
    .io_outVal_10(xbars_4_io_outVal_10),
    .io_outVal_11(xbars_4_io_outVal_11),
    .io_outVal_12(xbars_4_io_outVal_12),
    .io_outVal_13(xbars_4_io_outVal_13),
    .io_outVal_14(xbars_4_io_outVal_14),
    .io_outVal_15(xbars_4_io_outVal_15),
    .io_outVal_16(xbars_4_io_outVal_16),
    .io_outVal_17(xbars_4_io_outVal_17),
    .io_outVal_18(xbars_4_io_outVal_18),
    .io_outVal_19(xbars_4_io_outVal_19),
    .io_outVal_20(xbars_4_io_outVal_20),
    .io_outVal_21(xbars_4_io_outVal_21),
    .io_outVal_22(xbars_4_io_outVal_22),
    .io_outVal_23(xbars_4_io_outVal_23),
    .io_outVal_24(xbars_4_io_outVal_24),
    .io_outVal_25(xbars_4_io_outVal_25),
    .io_outVal_26(xbars_4_io_outVal_26),
    .io_outVal_27(xbars_4_io_outVal_27),
    .io_outVal_28(xbars_4_io_outVal_28),
    .io_outVal_29(xbars_4_io_outVal_29),
    .io_outVal_30(xbars_4_io_outVal_30),
    .io_outVal_31(xbars_4_io_outVal_31)
  );
  Crossbar2D xbars_5 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_5_clock),
    .reset(xbars_5_reset),
    .io_inVal_0(xbars_5_io_inVal_0),
    .io_inVal_1(xbars_5_io_inVal_1),
    .io_inVal_2(xbars_5_io_inVal_2),
    .io_inVal_3(xbars_5_io_inVal_3),
    .io_inVal_4(xbars_5_io_inVal_4),
    .io_inVal_5(xbars_5_io_inVal_5),
    .io_inVal_6(xbars_5_io_inVal_6),
    .io_inVal_7(xbars_5_io_inVal_7),
    .io_inVal_8(xbars_5_io_inVal_8),
    .io_inVal_9(xbars_5_io_inVal_9),
    .io_inVal_10(xbars_5_io_inVal_10),
    .io_inVal_11(xbars_5_io_inVal_11),
    .io_inVal_12(xbars_5_io_inVal_12),
    .io_inVal_13(xbars_5_io_inVal_13),
    .io_inVal_14(xbars_5_io_inVal_14),
    .io_inVal_15(xbars_5_io_inVal_15),
    .io_inVal_16(xbars_5_io_inVal_16),
    .io_inVal_17(xbars_5_io_inVal_17),
    .io_inVal_18(xbars_5_io_inVal_18),
    .io_inVal_19(xbars_5_io_inVal_19),
    .io_inVal_20(xbars_5_io_inVal_20),
    .io_inVal_21(xbars_5_io_inVal_21),
    .io_inVal_22(xbars_5_io_inVal_22),
    .io_inVal_23(xbars_5_io_inVal_23),
    .io_inVal_24(xbars_5_io_inVal_24),
    .io_inVal_25(xbars_5_io_inVal_25),
    .io_inVal_26(xbars_5_io_inVal_26),
    .io_inVal_27(xbars_5_io_inVal_27),
    .io_inVal_28(xbars_5_io_inVal_28),
    .io_inVal_29(xbars_5_io_inVal_29),
    .io_inVal_30(xbars_5_io_inVal_30),
    .io_inVal_31(xbars_5_io_inVal_31),
    .io_inIdx_0(xbars_5_io_inIdx_0),
    .io_inIdx_1(xbars_5_io_inIdx_1),
    .io_inIdx_2(xbars_5_io_inIdx_2),
    .io_inIdx_3(xbars_5_io_inIdx_3),
    .io_inIdx_4(xbars_5_io_inIdx_4),
    .io_inIdx_5(xbars_5_io_inIdx_5),
    .io_inIdx_6(xbars_5_io_inIdx_6),
    .io_inIdx_7(xbars_5_io_inIdx_7),
    .io_inIdx_8(xbars_5_io_inIdx_8),
    .io_inIdx_9(xbars_5_io_inIdx_9),
    .io_inIdx_10(xbars_5_io_inIdx_10),
    .io_inIdx_11(xbars_5_io_inIdx_11),
    .io_inIdx_12(xbars_5_io_inIdx_12),
    .io_inIdx_13(xbars_5_io_inIdx_13),
    .io_inIdx_14(xbars_5_io_inIdx_14),
    .io_inIdx_15(xbars_5_io_inIdx_15),
    .io_inIdx_16(xbars_5_io_inIdx_16),
    .io_inIdx_17(xbars_5_io_inIdx_17),
    .io_inIdx_18(xbars_5_io_inIdx_18),
    .io_inIdx_19(xbars_5_io_inIdx_19),
    .io_inIdx_20(xbars_5_io_inIdx_20),
    .io_inIdx_21(xbars_5_io_inIdx_21),
    .io_inIdx_22(xbars_5_io_inIdx_22),
    .io_inIdx_23(xbars_5_io_inIdx_23),
    .io_inIdx_24(xbars_5_io_inIdx_24),
    .io_inIdx_25(xbars_5_io_inIdx_25),
    .io_inIdx_26(xbars_5_io_inIdx_26),
    .io_inIdx_27(xbars_5_io_inIdx_27),
    .io_inIdx_28(xbars_5_io_inIdx_28),
    .io_inIdx_29(xbars_5_io_inIdx_29),
    .io_inIdx_30(xbars_5_io_inIdx_30),
    .io_inIdx_31(xbars_5_io_inIdx_31),
    .io_outVal_0(xbars_5_io_outVal_0),
    .io_outVal_1(xbars_5_io_outVal_1),
    .io_outVal_2(xbars_5_io_outVal_2),
    .io_outVal_3(xbars_5_io_outVal_3),
    .io_outVal_4(xbars_5_io_outVal_4),
    .io_outVal_5(xbars_5_io_outVal_5),
    .io_outVal_6(xbars_5_io_outVal_6),
    .io_outVal_7(xbars_5_io_outVal_7),
    .io_outVal_8(xbars_5_io_outVal_8),
    .io_outVal_9(xbars_5_io_outVal_9),
    .io_outVal_10(xbars_5_io_outVal_10),
    .io_outVal_11(xbars_5_io_outVal_11),
    .io_outVal_12(xbars_5_io_outVal_12),
    .io_outVal_13(xbars_5_io_outVal_13),
    .io_outVal_14(xbars_5_io_outVal_14),
    .io_outVal_15(xbars_5_io_outVal_15),
    .io_outVal_16(xbars_5_io_outVal_16),
    .io_outVal_17(xbars_5_io_outVal_17),
    .io_outVal_18(xbars_5_io_outVal_18),
    .io_outVal_19(xbars_5_io_outVal_19),
    .io_outVal_20(xbars_5_io_outVal_20),
    .io_outVal_21(xbars_5_io_outVal_21),
    .io_outVal_22(xbars_5_io_outVal_22),
    .io_outVal_23(xbars_5_io_outVal_23),
    .io_outVal_24(xbars_5_io_outVal_24),
    .io_outVal_25(xbars_5_io_outVal_25),
    .io_outVal_26(xbars_5_io_outVal_26),
    .io_outVal_27(xbars_5_io_outVal_27),
    .io_outVal_28(xbars_5_io_outVal_28),
    .io_outVal_29(xbars_5_io_outVal_29),
    .io_outVal_30(xbars_5_io_outVal_30),
    .io_outVal_31(xbars_5_io_outVal_31)
  );
  Crossbar2D xbars_6 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_6_clock),
    .reset(xbars_6_reset),
    .io_inVal_0(xbars_6_io_inVal_0),
    .io_inVal_1(xbars_6_io_inVal_1),
    .io_inVal_2(xbars_6_io_inVal_2),
    .io_inVal_3(xbars_6_io_inVal_3),
    .io_inVal_4(xbars_6_io_inVal_4),
    .io_inVal_5(xbars_6_io_inVal_5),
    .io_inVal_6(xbars_6_io_inVal_6),
    .io_inVal_7(xbars_6_io_inVal_7),
    .io_inVal_8(xbars_6_io_inVal_8),
    .io_inVal_9(xbars_6_io_inVal_9),
    .io_inVal_10(xbars_6_io_inVal_10),
    .io_inVal_11(xbars_6_io_inVal_11),
    .io_inVal_12(xbars_6_io_inVal_12),
    .io_inVal_13(xbars_6_io_inVal_13),
    .io_inVal_14(xbars_6_io_inVal_14),
    .io_inVal_15(xbars_6_io_inVal_15),
    .io_inVal_16(xbars_6_io_inVal_16),
    .io_inVal_17(xbars_6_io_inVal_17),
    .io_inVal_18(xbars_6_io_inVal_18),
    .io_inVal_19(xbars_6_io_inVal_19),
    .io_inVal_20(xbars_6_io_inVal_20),
    .io_inVal_21(xbars_6_io_inVal_21),
    .io_inVal_22(xbars_6_io_inVal_22),
    .io_inVal_23(xbars_6_io_inVal_23),
    .io_inVal_24(xbars_6_io_inVal_24),
    .io_inVal_25(xbars_6_io_inVal_25),
    .io_inVal_26(xbars_6_io_inVal_26),
    .io_inVal_27(xbars_6_io_inVal_27),
    .io_inVal_28(xbars_6_io_inVal_28),
    .io_inVal_29(xbars_6_io_inVal_29),
    .io_inVal_30(xbars_6_io_inVal_30),
    .io_inVal_31(xbars_6_io_inVal_31),
    .io_inIdx_0(xbars_6_io_inIdx_0),
    .io_inIdx_1(xbars_6_io_inIdx_1),
    .io_inIdx_2(xbars_6_io_inIdx_2),
    .io_inIdx_3(xbars_6_io_inIdx_3),
    .io_inIdx_4(xbars_6_io_inIdx_4),
    .io_inIdx_5(xbars_6_io_inIdx_5),
    .io_inIdx_6(xbars_6_io_inIdx_6),
    .io_inIdx_7(xbars_6_io_inIdx_7),
    .io_inIdx_8(xbars_6_io_inIdx_8),
    .io_inIdx_9(xbars_6_io_inIdx_9),
    .io_inIdx_10(xbars_6_io_inIdx_10),
    .io_inIdx_11(xbars_6_io_inIdx_11),
    .io_inIdx_12(xbars_6_io_inIdx_12),
    .io_inIdx_13(xbars_6_io_inIdx_13),
    .io_inIdx_14(xbars_6_io_inIdx_14),
    .io_inIdx_15(xbars_6_io_inIdx_15),
    .io_inIdx_16(xbars_6_io_inIdx_16),
    .io_inIdx_17(xbars_6_io_inIdx_17),
    .io_inIdx_18(xbars_6_io_inIdx_18),
    .io_inIdx_19(xbars_6_io_inIdx_19),
    .io_inIdx_20(xbars_6_io_inIdx_20),
    .io_inIdx_21(xbars_6_io_inIdx_21),
    .io_inIdx_22(xbars_6_io_inIdx_22),
    .io_inIdx_23(xbars_6_io_inIdx_23),
    .io_inIdx_24(xbars_6_io_inIdx_24),
    .io_inIdx_25(xbars_6_io_inIdx_25),
    .io_inIdx_26(xbars_6_io_inIdx_26),
    .io_inIdx_27(xbars_6_io_inIdx_27),
    .io_inIdx_28(xbars_6_io_inIdx_28),
    .io_inIdx_29(xbars_6_io_inIdx_29),
    .io_inIdx_30(xbars_6_io_inIdx_30),
    .io_inIdx_31(xbars_6_io_inIdx_31),
    .io_outVal_0(xbars_6_io_outVal_0),
    .io_outVal_1(xbars_6_io_outVal_1),
    .io_outVal_2(xbars_6_io_outVal_2),
    .io_outVal_3(xbars_6_io_outVal_3),
    .io_outVal_4(xbars_6_io_outVal_4),
    .io_outVal_5(xbars_6_io_outVal_5),
    .io_outVal_6(xbars_6_io_outVal_6),
    .io_outVal_7(xbars_6_io_outVal_7),
    .io_outVal_8(xbars_6_io_outVal_8),
    .io_outVal_9(xbars_6_io_outVal_9),
    .io_outVal_10(xbars_6_io_outVal_10),
    .io_outVal_11(xbars_6_io_outVal_11),
    .io_outVal_12(xbars_6_io_outVal_12),
    .io_outVal_13(xbars_6_io_outVal_13),
    .io_outVal_14(xbars_6_io_outVal_14),
    .io_outVal_15(xbars_6_io_outVal_15),
    .io_outVal_16(xbars_6_io_outVal_16),
    .io_outVal_17(xbars_6_io_outVal_17),
    .io_outVal_18(xbars_6_io_outVal_18),
    .io_outVal_19(xbars_6_io_outVal_19),
    .io_outVal_20(xbars_6_io_outVal_20),
    .io_outVal_21(xbars_6_io_outVal_21),
    .io_outVal_22(xbars_6_io_outVal_22),
    .io_outVal_23(xbars_6_io_outVal_23),
    .io_outVal_24(xbars_6_io_outVal_24),
    .io_outVal_25(xbars_6_io_outVal_25),
    .io_outVal_26(xbars_6_io_outVal_26),
    .io_outVal_27(xbars_6_io_outVal_27),
    .io_outVal_28(xbars_6_io_outVal_28),
    .io_outVal_29(xbars_6_io_outVal_29),
    .io_outVal_30(xbars_6_io_outVal_30),
    .io_outVal_31(xbars_6_io_outVal_31)
  );
  Crossbar2D xbars_7 ( // @[src/main/scala/simd_perm/simd_perm.scala 164:43]
    .clock(xbars_7_clock),
    .reset(xbars_7_reset),
    .io_inVal_0(xbars_7_io_inVal_0),
    .io_inVal_1(xbars_7_io_inVal_1),
    .io_inVal_2(xbars_7_io_inVal_2),
    .io_inVal_3(xbars_7_io_inVal_3),
    .io_inVal_4(xbars_7_io_inVal_4),
    .io_inVal_5(xbars_7_io_inVal_5),
    .io_inVal_6(xbars_7_io_inVal_6),
    .io_inVal_7(xbars_7_io_inVal_7),
    .io_inVal_8(xbars_7_io_inVal_8),
    .io_inVal_9(xbars_7_io_inVal_9),
    .io_inVal_10(xbars_7_io_inVal_10),
    .io_inVal_11(xbars_7_io_inVal_11),
    .io_inVal_12(xbars_7_io_inVal_12),
    .io_inVal_13(xbars_7_io_inVal_13),
    .io_inVal_14(xbars_7_io_inVal_14),
    .io_inVal_15(xbars_7_io_inVal_15),
    .io_inVal_16(xbars_7_io_inVal_16),
    .io_inVal_17(xbars_7_io_inVal_17),
    .io_inVal_18(xbars_7_io_inVal_18),
    .io_inVal_19(xbars_7_io_inVal_19),
    .io_inVal_20(xbars_7_io_inVal_20),
    .io_inVal_21(xbars_7_io_inVal_21),
    .io_inVal_22(xbars_7_io_inVal_22),
    .io_inVal_23(xbars_7_io_inVal_23),
    .io_inVal_24(xbars_7_io_inVal_24),
    .io_inVal_25(xbars_7_io_inVal_25),
    .io_inVal_26(xbars_7_io_inVal_26),
    .io_inVal_27(xbars_7_io_inVal_27),
    .io_inVal_28(xbars_7_io_inVal_28),
    .io_inVal_29(xbars_7_io_inVal_29),
    .io_inVal_30(xbars_7_io_inVal_30),
    .io_inVal_31(xbars_7_io_inVal_31),
    .io_inIdx_0(xbars_7_io_inIdx_0),
    .io_inIdx_1(xbars_7_io_inIdx_1),
    .io_inIdx_2(xbars_7_io_inIdx_2),
    .io_inIdx_3(xbars_7_io_inIdx_3),
    .io_inIdx_4(xbars_7_io_inIdx_4),
    .io_inIdx_5(xbars_7_io_inIdx_5),
    .io_inIdx_6(xbars_7_io_inIdx_6),
    .io_inIdx_7(xbars_7_io_inIdx_7),
    .io_inIdx_8(xbars_7_io_inIdx_8),
    .io_inIdx_9(xbars_7_io_inIdx_9),
    .io_inIdx_10(xbars_7_io_inIdx_10),
    .io_inIdx_11(xbars_7_io_inIdx_11),
    .io_inIdx_12(xbars_7_io_inIdx_12),
    .io_inIdx_13(xbars_7_io_inIdx_13),
    .io_inIdx_14(xbars_7_io_inIdx_14),
    .io_inIdx_15(xbars_7_io_inIdx_15),
    .io_inIdx_16(xbars_7_io_inIdx_16),
    .io_inIdx_17(xbars_7_io_inIdx_17),
    .io_inIdx_18(xbars_7_io_inIdx_18),
    .io_inIdx_19(xbars_7_io_inIdx_19),
    .io_inIdx_20(xbars_7_io_inIdx_20),
    .io_inIdx_21(xbars_7_io_inIdx_21),
    .io_inIdx_22(xbars_7_io_inIdx_22),
    .io_inIdx_23(xbars_7_io_inIdx_23),
    .io_inIdx_24(xbars_7_io_inIdx_24),
    .io_inIdx_25(xbars_7_io_inIdx_25),
    .io_inIdx_26(xbars_7_io_inIdx_26),
    .io_inIdx_27(xbars_7_io_inIdx_27),
    .io_inIdx_28(xbars_7_io_inIdx_28),
    .io_inIdx_29(xbars_7_io_inIdx_29),
    .io_inIdx_30(xbars_7_io_inIdx_30),
    .io_inIdx_31(xbars_7_io_inIdx_31),
    .io_outVal_0(xbars_7_io_outVal_0),
    .io_outVal_1(xbars_7_io_outVal_1),
    .io_outVal_2(xbars_7_io_outVal_2),
    .io_outVal_3(xbars_7_io_outVal_3),
    .io_outVal_4(xbars_7_io_outVal_4),
    .io_outVal_5(xbars_7_io_outVal_5),
    .io_outVal_6(xbars_7_io_outVal_6),
    .io_outVal_7(xbars_7_io_outVal_7),
    .io_outVal_8(xbars_7_io_outVal_8),
    .io_outVal_9(xbars_7_io_outVal_9),
    .io_outVal_10(xbars_7_io_outVal_10),
    .io_outVal_11(xbars_7_io_outVal_11),
    .io_outVal_12(xbars_7_io_outVal_12),
    .io_outVal_13(xbars_7_io_outVal_13),
    .io_outVal_14(xbars_7_io_outVal_14),
    .io_outVal_15(xbars_7_io_outVal_15),
    .io_outVal_16(xbars_7_io_outVal_16),
    .io_outVal_17(xbars_7_io_outVal_17),
    .io_outVal_18(xbars_7_io_outVal_18),
    .io_outVal_19(xbars_7_io_outVal_19),
    .io_outVal_20(xbars_7_io_outVal_20),
    .io_outVal_21(xbars_7_io_outVal_21),
    .io_outVal_22(xbars_7_io_outVal_22),
    .io_outVal_23(xbars_7_io_outVal_23),
    .io_outVal_24(xbars_7_io_outVal_24),
    .io_outVal_25(xbars_7_io_outVal_25),
    .io_outVal_26(xbars_7_io_outVal_26),
    .io_outVal_27(xbars_7_io_outVal_27),
    .io_outVal_28(xbars_7_io_outVal_28),
    .io_outVal_29(xbars_7_io_outVal_29),
    .io_outVal_30(xbars_7_io_outVal_30),
    .io_outVal_31(xbars_7_io_outVal_31)
  );
  assign io_inReady = 2'h0 == stateReg & _GEN_132; // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
  assign io_outValid = 2'h0 == stateReg ? 1'h0 : _GEN_180; // @[src/main/scala/simd_perm/simd_perm.scala 198:20 201:19]
  assign io_outData_0_0 = _T_1296 ? xbarsVecOut_0_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_1 = _T_1296 ? xbarsVecOut_0_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_2 = _T_1296 ? xbarsVecOut_0_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_3 = _T_1296 ? xbarsVecOut_0_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_4 = _T_1296 ? xbarsVecOut_0_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_5 = _T_1296 ? xbarsVecOut_0_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_6 = _T_1296 ? xbarsVecOut_0_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_0_7 = _T_1296 ? xbarsVecOut_0_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_0 = _T_1296 ? xbarsVecOut_1_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_1 = _T_1296 ? xbarsVecOut_1_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_2 = _T_1296 ? xbarsVecOut_1_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_3 = _T_1296 ? xbarsVecOut_1_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_4 = _T_1296 ? xbarsVecOut_1_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_5 = _T_1296 ? xbarsVecOut_1_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_6 = _T_1296 ? xbarsVecOut_1_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_1_7 = _T_1296 ? xbarsVecOut_1_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_0 = _T_1296 ? xbarsVecOut_2_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_1 = _T_1296 ? xbarsVecOut_2_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_2 = _T_1296 ? xbarsVecOut_2_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_3 = _T_1296 ? xbarsVecOut_2_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_4 = _T_1296 ? xbarsVecOut_2_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_5 = _T_1296 ? xbarsVecOut_2_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_6 = _T_1296 ? xbarsVecOut_2_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_2_7 = _T_1296 ? xbarsVecOut_2_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_0 = _T_1296 ? xbarsVecOut_3_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_1 = _T_1296 ? xbarsVecOut_3_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_2 = _T_1296 ? xbarsVecOut_3_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_3 = _T_1296 ? xbarsVecOut_3_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_4 = _T_1296 ? xbarsVecOut_3_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_5 = _T_1296 ? xbarsVecOut_3_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_6 = _T_1296 ? xbarsVecOut_3_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_3_7 = _T_1296 ? xbarsVecOut_3_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_0 = _T_1296 ? xbarsVecOut_4_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_1 = _T_1296 ? xbarsVecOut_4_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_2 = _T_1296 ? xbarsVecOut_4_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_3 = _T_1296 ? xbarsVecOut_4_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_4 = _T_1296 ? xbarsVecOut_4_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_5 = _T_1296 ? xbarsVecOut_4_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_6 = _T_1296 ? xbarsVecOut_4_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_4_7 = _T_1296 ? xbarsVecOut_4_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_0 = _T_1296 ? xbarsVecOut_5_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_1 = _T_1296 ? xbarsVecOut_5_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_2 = _T_1296 ? xbarsVecOut_5_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_3 = _T_1296 ? xbarsVecOut_5_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_4 = _T_1296 ? xbarsVecOut_5_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_5 = _T_1296 ? xbarsVecOut_5_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_6 = _T_1296 ? xbarsVecOut_5_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_5_7 = _T_1296 ? xbarsVecOut_5_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_0 = _T_1296 ? xbarsVecOut_6_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_1 = _T_1296 ? xbarsVecOut_6_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_2 = _T_1296 ? xbarsVecOut_6_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_3 = _T_1296 ? xbarsVecOut_6_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_4 = _T_1296 ? xbarsVecOut_6_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_5 = _T_1296 ? xbarsVecOut_6_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_6 = _T_1296 ? xbarsVecOut_6_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_6_7 = _T_1296 ? xbarsVecOut_6_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_0 = _T_1296 ? xbarsVecOut_7_0 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_1 = _T_1296 ? xbarsVecOut_7_1 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_2 = _T_1296 ? xbarsVecOut_7_2 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_3 = _T_1296 ? xbarsVecOut_7_3 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_4 = _T_1296 ? xbarsVecOut_7_4 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_5 = _T_1296 ? xbarsVecOut_7_5 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_6 = _T_1296 ? xbarsVecOut_7_6 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign io_outData_7_7 = _T_1296 ? xbarsVecOut_7_7 : 64'h0; // @[src/main/scala/simd_perm/simd_perm.scala 177:20]
  assign idxReg_clock = clock;
  assign idxReg_reset = reset;
  assign idxReg_io_inValid = io_inValid & ~io_selIdxVal; // @[src/main/scala/simd_perm/simd_perm.scala 144:36]
  assign idxReg_io_inData_0_0 = io_inData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_1 = io_inData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_2 = io_inData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_3 = io_inData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_4 = io_inData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_5 = io_inData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_6 = io_inData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_0_7 = io_inData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_0 = io_inData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_1 = io_inData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_2 = io_inData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_3 = io_inData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_4 = io_inData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_5 = io_inData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_6 = io_inData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_1_7 = io_inData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_0 = io_inData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_1 = io_inData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_2 = io_inData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_3 = io_inData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_4 = io_inData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_5 = io_inData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_6 = io_inData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_2_7 = io_inData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_0 = io_inData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_1 = io_inData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_2 = io_inData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_3 = io_inData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_4 = io_inData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_5 = io_inData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_6 = io_inData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_3_7 = io_inData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_0 = io_inData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_1 = io_inData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_2 = io_inData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_3 = io_inData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_4 = io_inData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_5 = io_inData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_6 = io_inData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_4_7 = io_inData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_0 = io_inData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_1 = io_inData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_2 = io_inData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_3 = io_inData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_4 = io_inData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_5 = io_inData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_6 = io_inData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_5_7 = io_inData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_0 = io_inData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_1 = io_inData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_2 = io_inData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_3 = io_inData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_4 = io_inData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_5 = io_inData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_6 = io_inData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_6_7 = io_inData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_0 = io_inData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_1 = io_inData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_2 = io_inData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_3 = io_inData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_4 = io_inData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_5 = io_inData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_6 = io_inData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_inData_7_7 = io_inData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 145:20]
  assign idxReg_io_rotate = 2'h0 == stateReg ? 1'h0 : 2'h1 == stateReg & _T_1375; // @[src/main/scala/simd_perm/simd_perm.scala 198:20 134:33]
  assign idxReg_io_rotateLevel = rotateCnt[1:0]; // @[src/main/scala/simd_perm/simd_perm.scala 135:38 195:21]
  assign valReg_clock = clock;
  assign valReg_reset = reset;
  assign valReg_io_inValid = io_inValid & io_selIdxVal; // @[src/main/scala/simd_perm/simd_perm.scala 156:36]
  assign valReg_io_inData_0_0 = io_inData_0_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_1 = io_inData_0_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_2 = io_inData_0_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_3 = io_inData_0_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_4 = io_inData_0_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_5 = io_inData_0_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_6 = io_inData_0_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_0_7 = io_inData_0_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_0 = io_inData_1_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_1 = io_inData_1_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_2 = io_inData_1_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_3 = io_inData_1_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_4 = io_inData_1_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_5 = io_inData_1_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_6 = io_inData_1_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_1_7 = io_inData_1_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_0 = io_inData_2_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_1 = io_inData_2_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_2 = io_inData_2_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_3 = io_inData_2_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_4 = io_inData_2_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_5 = io_inData_2_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_6 = io_inData_2_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_2_7 = io_inData_2_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_0 = io_inData_3_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_1 = io_inData_3_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_2 = io_inData_3_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_3 = io_inData_3_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_4 = io_inData_3_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_5 = io_inData_3_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_6 = io_inData_3_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_3_7 = io_inData_3_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_0 = io_inData_4_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_1 = io_inData_4_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_2 = io_inData_4_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_3 = io_inData_4_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_4 = io_inData_4_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_5 = io_inData_4_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_6 = io_inData_4_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_4_7 = io_inData_4_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_0 = io_inData_5_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_1 = io_inData_5_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_2 = io_inData_5_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_3 = io_inData_5_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_4 = io_inData_5_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_5 = io_inData_5_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_6 = io_inData_5_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_5_7 = io_inData_5_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_0 = io_inData_6_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_1 = io_inData_6_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_2 = io_inData_6_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_3 = io_inData_6_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_4 = io_inData_6_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_5 = io_inData_6_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_6 = io_inData_6_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_6_7 = io_inData_6_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_0 = io_inData_7_0; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_1 = io_inData_7_1; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_2 = io_inData_7_2; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_3 = io_inData_7_3; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_4 = io_inData_7_4; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_5 = io_inData_7_5; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_6 = io_inData_7_6; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign valReg_io_inData_7_7 = io_inData_7_7; // @[src/main/scala/simd_perm/simd_perm.scala 157:20]
  assign xbars_0_clock = clock;
  assign xbars_0_reset = reset;
  assign xbars_0_io_inVal_0 = _T[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_1 = _T[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_2 = _T[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_3 = _T[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_4 = _T[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_5 = _T[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_6 = _T[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_7 = _T[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_8 = _T[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_9 = _T[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_10 = _T[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_11 = _T[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_12 = _T[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_13 = _T[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_14 = _T[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_15 = _T[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_16 = _T[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_17 = _T[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_18 = _T[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_19 = _T[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_20 = _T[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_21 = _T[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_22 = _T[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_23 = _T[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_24 = _T[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_25 = _T[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_26 = _T[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_27 = _T[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_28 = _T[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_29 = _T[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_30 = _T[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inVal_31 = _T[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_0_io_inIdx_0 = _T_68[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_1 = _T_71[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_2 = _T_74[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_3 = _T_77[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_4 = _T_80[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_5 = _T_83[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_6 = _T_86[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_7 = _T_89[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_8 = _T_92[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_9 = _T_95[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_10 = _T_98[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_11 = _T_101[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_12 = _T_104[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_13 = _T_107[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_14 = _T_110[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_15 = _T_113[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_16 = _T_116[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_17 = _T_119[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_18 = _T_122[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_19 = _T_125[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_20 = _T_128[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_21 = _T_131[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_22 = _T_134[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_23 = _T_137[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_24 = _T_140[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_25 = _T_143[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_26 = _T_146[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_27 = _T_149[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_28 = _T_152[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_29 = _T_155[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_30 = _T_158[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_0_io_inIdx_31 = _T_161[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_clock = clock;
  assign xbars_1_reset = reset;
  assign xbars_1_io_inVal_0 = _T_162[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_1 = _T_162[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_2 = _T_162[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_3 = _T_162[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_4 = _T_162[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_5 = _T_162[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_6 = _T_162[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_7 = _T_162[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_8 = _T_162[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_9 = _T_162[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_10 = _T_162[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_11 = _T_162[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_12 = _T_162[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_13 = _T_162[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_14 = _T_162[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_15 = _T_162[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_16 = _T_162[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_17 = _T_162[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_18 = _T_162[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_19 = _T_162[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_20 = _T_162[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_21 = _T_162[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_22 = _T_162[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_23 = _T_162[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_24 = _T_162[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_25 = _T_162[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_26 = _T_162[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_27 = _T_162[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_28 = _T_162[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_29 = _T_162[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_30 = _T_162[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inVal_31 = _T_162[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_1_io_inIdx_0 = _T_230[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_1 = _T_233[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_2 = _T_236[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_3 = _T_239[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_4 = _T_242[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_5 = _T_245[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_6 = _T_248[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_7 = _T_251[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_8 = _T_254[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_9 = _T_257[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_10 = _T_260[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_11 = _T_263[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_12 = _T_266[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_13 = _T_269[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_14 = _T_272[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_15 = _T_275[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_16 = _T_278[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_17 = _T_281[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_18 = _T_284[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_19 = _T_287[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_20 = _T_290[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_21 = _T_293[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_22 = _T_296[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_23 = _T_299[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_24 = _T_302[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_25 = _T_305[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_26 = _T_308[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_27 = _T_311[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_28 = _T_314[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_29 = _T_317[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_30 = _T_320[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_1_io_inIdx_31 = _T_323[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_clock = clock;
  assign xbars_2_reset = reset;
  assign xbars_2_io_inVal_0 = _T_324[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_1 = _T_324[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_2 = _T_324[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_3 = _T_324[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_4 = _T_324[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_5 = _T_324[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_6 = _T_324[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_7 = _T_324[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_8 = _T_324[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_9 = _T_324[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_10 = _T_324[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_11 = _T_324[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_12 = _T_324[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_13 = _T_324[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_14 = _T_324[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_15 = _T_324[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_16 = _T_324[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_17 = _T_324[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_18 = _T_324[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_19 = _T_324[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_20 = _T_324[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_21 = _T_324[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_22 = _T_324[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_23 = _T_324[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_24 = _T_324[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_25 = _T_324[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_26 = _T_324[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_27 = _T_324[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_28 = _T_324[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_29 = _T_324[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_30 = _T_324[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inVal_31 = _T_324[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_2_io_inIdx_0 = _T_392[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_1 = _T_395[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_2 = _T_398[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_3 = _T_401[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_4 = _T_404[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_5 = _T_407[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_6 = _T_410[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_7 = _T_413[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_8 = _T_416[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_9 = _T_419[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_10 = _T_422[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_11 = _T_425[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_12 = _T_428[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_13 = _T_431[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_14 = _T_434[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_15 = _T_437[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_16 = _T_440[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_17 = _T_443[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_18 = _T_446[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_19 = _T_449[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_20 = _T_452[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_21 = _T_455[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_22 = _T_458[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_23 = _T_461[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_24 = _T_464[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_25 = _T_467[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_26 = _T_470[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_27 = _T_473[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_28 = _T_476[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_29 = _T_479[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_30 = _T_482[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_2_io_inIdx_31 = _T_485[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_clock = clock;
  assign xbars_3_reset = reset;
  assign xbars_3_io_inVal_0 = _T_486[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_1 = _T_486[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_2 = _T_486[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_3 = _T_486[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_4 = _T_486[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_5 = _T_486[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_6 = _T_486[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_7 = _T_486[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_8 = _T_486[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_9 = _T_486[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_10 = _T_486[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_11 = _T_486[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_12 = _T_486[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_13 = _T_486[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_14 = _T_486[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_15 = _T_486[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_16 = _T_486[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_17 = _T_486[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_18 = _T_486[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_19 = _T_486[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_20 = _T_486[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_21 = _T_486[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_22 = _T_486[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_23 = _T_486[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_24 = _T_486[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_25 = _T_486[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_26 = _T_486[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_27 = _T_486[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_28 = _T_486[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_29 = _T_486[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_30 = _T_486[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inVal_31 = _T_486[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_3_io_inIdx_0 = _T_554[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_1 = _T_557[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_2 = _T_560[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_3 = _T_563[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_4 = _T_566[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_5 = _T_569[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_6 = _T_572[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_7 = _T_575[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_8 = _T_578[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_9 = _T_581[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_10 = _T_584[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_11 = _T_587[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_12 = _T_590[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_13 = _T_593[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_14 = _T_596[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_15 = _T_599[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_16 = _T_602[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_17 = _T_605[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_18 = _T_608[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_19 = _T_611[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_20 = _T_614[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_21 = _T_617[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_22 = _T_620[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_23 = _T_623[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_24 = _T_626[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_25 = _T_629[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_26 = _T_632[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_27 = _T_635[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_28 = _T_638[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_29 = _T_641[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_30 = _T_644[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_3_io_inIdx_31 = _T_647[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_clock = clock;
  assign xbars_4_reset = reset;
  assign xbars_4_io_inVal_0 = _T_648[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_1 = _T_648[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_2 = _T_648[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_3 = _T_648[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_4 = _T_648[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_5 = _T_648[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_6 = _T_648[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_7 = _T_648[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_8 = _T_648[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_9 = _T_648[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_10 = _T_648[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_11 = _T_648[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_12 = _T_648[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_13 = _T_648[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_14 = _T_648[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_15 = _T_648[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_16 = _T_648[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_17 = _T_648[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_18 = _T_648[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_19 = _T_648[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_20 = _T_648[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_21 = _T_648[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_22 = _T_648[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_23 = _T_648[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_24 = _T_648[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_25 = _T_648[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_26 = _T_648[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_27 = _T_648[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_28 = _T_648[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_29 = _T_648[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_30 = _T_648[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inVal_31 = _T_648[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_4_io_inIdx_0 = _T_716[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_1 = _T_719[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_2 = _T_722[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_3 = _T_725[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_4 = _T_728[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_5 = _T_731[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_6 = _T_734[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_7 = _T_737[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_8 = _T_740[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_9 = _T_743[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_10 = _T_746[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_11 = _T_749[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_12 = _T_752[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_13 = _T_755[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_14 = _T_758[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_15 = _T_761[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_16 = _T_764[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_17 = _T_767[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_18 = _T_770[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_19 = _T_773[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_20 = _T_776[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_21 = _T_779[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_22 = _T_782[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_23 = _T_785[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_24 = _T_788[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_25 = _T_791[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_26 = _T_794[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_27 = _T_797[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_28 = _T_800[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_29 = _T_803[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_30 = _T_806[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_4_io_inIdx_31 = _T_809[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_clock = clock;
  assign xbars_5_reset = reset;
  assign xbars_5_io_inVal_0 = _T_810[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_1 = _T_810[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_2 = _T_810[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_3 = _T_810[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_4 = _T_810[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_5 = _T_810[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_6 = _T_810[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_7 = _T_810[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_8 = _T_810[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_9 = _T_810[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_10 = _T_810[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_11 = _T_810[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_12 = _T_810[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_13 = _T_810[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_14 = _T_810[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_15 = _T_810[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_16 = _T_810[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_17 = _T_810[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_18 = _T_810[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_19 = _T_810[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_20 = _T_810[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_21 = _T_810[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_22 = _T_810[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_23 = _T_810[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_24 = _T_810[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_25 = _T_810[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_26 = _T_810[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_27 = _T_810[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_28 = _T_810[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_29 = _T_810[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_30 = _T_810[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inVal_31 = _T_810[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_5_io_inIdx_0 = _T_878[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_1 = _T_881[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_2 = _T_884[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_3 = _T_887[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_4 = _T_890[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_5 = _T_893[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_6 = _T_896[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_7 = _T_899[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_8 = _T_902[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_9 = _T_905[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_10 = _T_908[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_11 = _T_911[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_12 = _T_914[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_13 = _T_917[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_14 = _T_920[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_15 = _T_923[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_16 = _T_926[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_17 = _T_929[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_18 = _T_932[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_19 = _T_935[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_20 = _T_938[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_21 = _T_941[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_22 = _T_944[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_23 = _T_947[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_24 = _T_950[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_25 = _T_953[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_26 = _T_956[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_27 = _T_959[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_28 = _T_962[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_29 = _T_965[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_30 = _T_968[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_5_io_inIdx_31 = _T_971[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_clock = clock;
  assign xbars_6_reset = reset;
  assign xbars_6_io_inVal_0 = _T_972[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_1 = _T_972[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_2 = _T_972[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_3 = _T_972[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_4 = _T_972[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_5 = _T_972[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_6 = _T_972[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_7 = _T_972[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_8 = _T_972[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_9 = _T_972[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_10 = _T_972[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_11 = _T_972[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_12 = _T_972[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_13 = _T_972[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_14 = _T_972[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_15 = _T_972[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_16 = _T_972[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_17 = _T_972[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_18 = _T_972[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_19 = _T_972[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_20 = _T_972[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_21 = _T_972[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_22 = _T_972[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_23 = _T_972[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_24 = _T_972[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_25 = _T_972[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_26 = _T_972[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_27 = _T_972[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_28 = _T_972[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_29 = _T_972[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_30 = _T_972[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inVal_31 = _T_972[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_6_io_inIdx_0 = _T_1040[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_1 = _T_1043[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_2 = _T_1046[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_3 = _T_1049[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_4 = _T_1052[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_5 = _T_1055[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_6 = _T_1058[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_7 = _T_1061[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_8 = _T_1064[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_9 = _T_1067[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_10 = _T_1070[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_11 = _T_1073[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_12 = _T_1076[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_13 = _T_1079[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_14 = _T_1082[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_15 = _T_1085[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_16 = _T_1088[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_17 = _T_1091[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_18 = _T_1094[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_19 = _T_1097[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_20 = _T_1100[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_21 = _T_1103[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_22 = _T_1106[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_23 = _T_1109[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_24 = _T_1112[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_25 = _T_1115[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_26 = _T_1118[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_27 = _T_1121[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_28 = _T_1124[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_29 = _T_1127[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_30 = _T_1130[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_6_io_inIdx_31 = _T_1133[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_clock = clock;
  assign xbars_7_reset = reset;
  assign xbars_7_io_inVal_0 = _T_1134[15:0]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_1 = _T_1134[31:16]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_2 = _T_1134[47:32]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_3 = _T_1134[63:48]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_4 = _T_1134[79:64]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_5 = _T_1134[95:80]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_6 = _T_1134[111:96]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_7 = _T_1134[127:112]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_8 = _T_1134[143:128]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_9 = _T_1134[159:144]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_10 = _T_1134[175:160]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_11 = _T_1134[191:176]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_12 = _T_1134[207:192]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_13 = _T_1134[223:208]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_14 = _T_1134[239:224]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_15 = _T_1134[255:240]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_16 = _T_1134[271:256]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_17 = _T_1134[287:272]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_18 = _T_1134[303:288]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_19 = _T_1134[319:304]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_20 = _T_1134[335:320]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_21 = _T_1134[351:336]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_22 = _T_1134[367:352]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_23 = _T_1134[383:368]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_24 = _T_1134[399:384]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_25 = _T_1134[415:400]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_26 = _T_1134[431:416]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_27 = _T_1134[447:432]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_28 = _T_1134[463:448]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_29 = _T_1134[479:464]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_30 = _T_1134[495:480]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inVal_31 = _T_1134[511:496]; // @[src/main/scala/simd_perm/simd_perm.scala 167:69]
  assign xbars_7_io_inIdx_0 = _T_1202[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_1 = _T_1205[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_2 = _T_1208[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_3 = _T_1211[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_4 = _T_1214[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_5 = _T_1217[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_6 = _T_1220[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_7 = _T_1223[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_8 = _T_1226[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_9 = _T_1229[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_10 = _T_1232[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_11 = _T_1235[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_12 = _T_1238[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_13 = _T_1241[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_14 = _T_1244[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_15 = _T_1247[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_16 = _T_1250[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_17 = _T_1253[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_18 = _T_1256[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_19 = _T_1259[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_20 = _T_1262[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_21 = _T_1265[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_22 = _T_1268[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_23 = _T_1271[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_24 = _T_1274[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_25 = _T_1277[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_26 = _T_1280[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_27 = _T_1283[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_28 = _T_1286[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_29 = _T_1289[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_30 = _T_1292[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  assign xbars_7_io_inIdx_31 = _T_1295[4:0]; // @[src/main/scala/simd_perm/simd_perm.scala 168:31]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 189:25]
      stateReg <= 2'h0; // @[src/main/scala/simd_perm/simd_perm.scala 189:25]
    end else if (2'h0 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (io_permute) begin // @[src/main/scala/simd_perm/simd_perm.scala 204:24]
        if (3'h4 == _T_1301) begin // @[src/main/scala/simd_perm/simd_perm.scala 211:75]
          stateReg <= 2'h1; // @[src/main/scala/simd_perm/simd_perm.scala 214:22]
        end else begin
          stateReg <= _GEN_65;
        end
      end
    end else if (2'h1 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (_GEN_219 < _T_1374) begin // @[src/main/scala/simd_perm/simd_perm.scala 236:73]
        stateReg <= 2'h1; // @[src/main/scala/simd_perm/simd_perm.scala 237:18]
      end else begin
        stateReg <= 2'h2; // @[src/main/scala/simd_perm/simd_perm.scala 240:18]
      end
    end else if (2'h2 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      stateReg <= _GEN_171;
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 190:26]
      rotateCnt <= 4'h0; // @[src/main/scala/simd_perm/simd_perm.scala 190:26]
    end else if (2'h0 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (io_permute) begin // @[src/main/scala/simd_perm/simd_perm.scala 204:24]
        if (3'h4 == _T_1301) begin // @[src/main/scala/simd_perm/simd_perm.scala 211:75]
          rotateCnt <= _rotateCnt_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 215:23]
        end else begin
          rotateCnt <= 4'h0; // @[src/main/scala/simd_perm/simd_perm.scala 202:17]
        end
      end else begin
        rotateCnt <= 4'h0; // @[src/main/scala/simd_perm/simd_perm.scala 202:17]
      end
    end else if (2'h1 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (_GEN_219 < _T_1374) begin // @[src/main/scala/simd_perm/simd_perm.scala 236:73]
        rotateCnt <= _rotateCnt_T_1; // @[src/main/scala/simd_perm/simd_perm.scala 231:17]
      end else begin
        rotateCnt <= 4'h0; // @[src/main/scala/simd_perm/simd_perm.scala 241:19]
      end
    end
    if (reset) begin // @[src/main/scala/simd_perm/simd_perm.scala 191:24]
      modeReg <= 3'h0; // @[src/main/scala/simd_perm/simd_perm.scala 191:24]
    end else if (2'h0 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (io_permute) begin // @[src/main/scala/simd_perm/simd_perm.scala 204:24]
        modeReg <= io_mode; // @[src/main/scala/simd_perm/simd_perm.scala 206:17]
      end
    end else if (!(2'h1 == stateReg)) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
      if (2'h2 == stateReg) begin // @[src/main/scala/simd_perm/simd_perm.scala 198:20]
        modeReg <= 3'h0; // @[src/main/scala/simd_perm/simd_perm.scala 248:15]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  rotateCnt = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  modeReg = _RAND_2[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
