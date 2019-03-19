// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 28 15:29:24 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/CRP_FPGA/ip/CRP_FPGA_threshold_memory_0_0/CRP_FPGA_threshold_memory_0_0_stub.v
// Design      : CRP_FPGA_threshold_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "threshold_memory,Vivado 2018.2" *)
module CRP_FPGA_threshold_memory_0_0(threshold_in, rst, clk, threshold_out)
/* synthesis syn_black_box black_box_pad_pin="threshold_in[11:0],rst,clk,threshold_out[11:0]" */;
  input [11:0]threshold_in;
  input rst;
  input clk;
  output [11:0]threshold_out;
endmodule
