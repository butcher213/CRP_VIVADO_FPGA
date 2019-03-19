// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Feb  5 16:17:02 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/butchertd/Documents/eaglesat/FIFO_TESTING/FIFO_TESTING.srcs/sources_1/bd/fifo_test/ip/fifo_test_fifo_generator_0_0/fifo_test_fifo_generator_0_0_stub.v
// Design      : fifo_test_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12tcpg238-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *)
module fifo_test_fifo_generator_0_0(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[41:0],wr_en,rd_en,dout[41:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [41:0]din;
  input wr_en;
  input rd_en;
  output [41:0]dout;
  output full;
  output empty;
endmodule
