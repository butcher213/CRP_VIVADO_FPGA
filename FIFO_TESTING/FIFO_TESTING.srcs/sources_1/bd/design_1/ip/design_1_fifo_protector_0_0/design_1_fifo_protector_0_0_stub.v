// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 14 17:26:30 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/butchertd/Documents/eaglesat/FIFO_TESTING/FIFO_TESTING.srcs/sources_1/bd/design_1/ip/design_1_fifo_protector_0_0/design_1_fifo_protector_0_0_stub.v
// Design      : design_1_fifo_protector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12tcpg238-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_protector,Vivado 2018.2" *)
module design_1_fifo_protector_0_0(clk, wr_in, rd_in, global_rst, fifo_rst, 
  fifo_ready, rd_en, wr_en)
/* synthesis syn_black_box black_box_pad_pin="clk,wr_in,rd_in,global_rst,fifo_rst,fifo_ready,rd_en,wr_en" */;
  input clk;
  input wr_in;
  input rd_in;
  input global_rst;
  output fifo_rst;
  output fifo_ready;
  output rd_en;
  output wr_en;
endmodule
