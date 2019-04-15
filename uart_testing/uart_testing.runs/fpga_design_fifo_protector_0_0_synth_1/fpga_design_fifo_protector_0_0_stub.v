// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 14 15:31:06 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_design_fifo_protector_0_0_stub.v
// Design      : fpga_design_fifo_protector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_protector,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, wr_in, rd_in, global_rst, fifo_rst, 
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