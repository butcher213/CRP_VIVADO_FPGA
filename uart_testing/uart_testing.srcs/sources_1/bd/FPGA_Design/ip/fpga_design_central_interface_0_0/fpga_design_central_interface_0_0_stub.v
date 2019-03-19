// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar  9 11:08:08 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_central_interface_0_0/fpga_design_central_interface_0_0_stub.v
// Design      : fpga_design_central_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "central_interface,Vivado 2018.2" *)
module fpga_design_central_interface_0_0(clk, rst, Rx_in, Rx_end, FIFO_ready, FIFO_empty, 
  FIFO_full, Tx_en, read_enable, threshold_out, Tx_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,Rx_in[7:0],Rx_end,FIFO_ready,FIFO_empty,FIFO_full,Tx_en,read_enable,threshold_out[11:0],Tx_out[7:0]" */;
  input clk;
  input rst;
  input [7:0]Rx_in;
  input Rx_end;
  input FIFO_ready;
  input FIFO_empty;
  input FIFO_full;
  output Tx_en;
  output read_enable;
  output [11:0]threshold_out;
  output [7:0]Tx_out;
endmodule
