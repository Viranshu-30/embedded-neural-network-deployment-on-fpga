// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:51 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/image_bram_ip/image_bram_ip_stub.v
// Design      : image_bram_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module image_bram_ip(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="ena,wea[0:0],addra[9:0],dina[7:0],douta[7:0],enb,web[0:0],addrb[9:0],dinb[7:0],doutb[7:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb /* synthesis syn_isclock = 1 */;
  input enb;
  input [0:0]web;
  input [9:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
endmodule
