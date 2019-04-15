// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 14 15:30:04 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_threshold_memory_0_0/fpga_design_threshold_memory_0_0_stub.v
// Design      : fpga_design_threshold_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "threshold_memory,Vivado 2018.2" *)
module fpga_design_threshold_memory_0_0(threshold_in, rst, clk, threshold_out)
/* synthesis syn_black_box black_box_pad_pin="threshold_in[11:0],rst,clk,threshold_out[11:0]" */;
  input [11:0]threshold_in;
  input rst;
  input clk;
  output [11:0]threshold_out;
endmodule
