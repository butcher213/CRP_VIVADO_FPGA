// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 28 12:34:36 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_Block_Design/ip/FPGA_Block_Design_uart_tx_0_0_1/FPGA_Block_Design_uart_tx_0_0_stub.v
// Design      : FPGA_Block_Design_uart_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart_tx,Vivado 2018.2" *)
module FPGA_Block_Design_uart_tx_0_0(UART_clk, read_enable, rst, fifo_in, Tx_in, Tx_en, 
  fifo_ready, Tx, Tx_enabled, data_line, tx_lock)
/* synthesis syn_black_box black_box_pad_pin="UART_clk,read_enable,rst,fifo_in[39:0],Tx_in[7:0],Tx_en,fifo_ready,Tx,Tx_enabled,data_line[2:0],tx_lock" */;
  input UART_clk;
  input read_enable;
  input rst;
  input [39:0]fifo_in;
  input [7:0]Tx_in;
  input Tx_en;
  input fifo_ready;
  output Tx;
  output Tx_enabled;
  output [2:0]data_line;
  output tx_lock;
endmodule
