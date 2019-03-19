// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 28 10:21:46 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_block_design/ip/FPGA_block_design_central_interface_0_0/FPGA_block_design_central_interface_0_0_sim_netlist.v
// Design      : FPGA_block_design_central_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_block_design_central_interface_0_0,central_interface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "central_interface,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module FPGA_block_design_central_interface_0_0
   (clk,
    rst,
    Rx_in,
    Rx_end,
    FIFO_ready,
    FIFO_empty,
    FIFO_full,
    Tx_en,
    read_enable,
    threshold_out,
    Tx_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [7:0]Rx_in;
  input Rx_end;
  input FIFO_ready;
  input FIFO_empty;
  input FIFO_full;
  output Tx_en;
  output read_enable;
  output [11:0]threshold_out;
  output [7:0]Tx_out;

  wire \<const0> ;
  wire FIFO_empty;
  wire FIFO_full;
  wire FIFO_ready;
  wire Rx_end;
  wire [7:0]Rx_in;
  wire Tx_en;
  wire [4:0]\^Tx_out ;
  wire clk;
  wire read_enable;
  wire rst;
  wire [11:0]threshold_out;

  assign Tx_out[7] = \<const0> ;
  assign Tx_out[6] = \<const0> ;
  assign Tx_out[5] = \<const0> ;
  assign Tx_out[4:0] = \^Tx_out [4:0];
  GND GND
       (.G(\<const0> ));
  FPGA_block_design_central_interface_0_0_central_interface U0
       (.FIFO_empty(FIFO_empty),
        .FIFO_full(FIFO_full),
        .FIFO_ready(FIFO_ready),
        .Rx_end(Rx_end),
        .Rx_in(Rx_in),
        .Tx_en(Tx_en),
        .Tx_out(\^Tx_out ),
        .clk(clk),
        .read_enable(read_enable),
        .rst(rst),
        .threshold_out(threshold_out));
endmodule

(* ORIG_REF_NAME = "central_interface" *) 
module FPGA_block_design_central_interface_0_0_central_interface
   (threshold_out,
    Tx_out,
    Tx_en,
    read_enable,
    clk,
    Rx_in,
    Rx_end,
    rst,
    FIFO_empty,
    FIFO_full,
    FIFO_ready);
  output [11:0]threshold_out;
  output [4:0]Tx_out;
  output Tx_en;
  output read_enable;
  input clk;
  input [7:0]Rx_in;
  input Rx_end;
  input rst;
  input FIFO_empty;
  input FIFO_full;
  input FIFO_ready;

  wire FIFO_empty;
  wire FIFO_full;
  wire FIFO_ready;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire Rx_end;
  wire [7:0]Rx_in;
  wire Tx_en;
  wire Tx_en_i_1_n_0;
  wire Tx_en_i_2_n_0;
  wire Tx_en_i_3_n_0;
  wire [4:0]Tx_out;
  wire \Tx_out[0]_i_1_n_0 ;
  wire \Tx_out[1]_i_1_n_0 ;
  wire \Tx_out[1]_i_2_n_0 ;
  wire \Tx_out[2]_i_1_n_0 ;
  wire \Tx_out[3]_i_1_n_0 ;
  wire \Tx_out[4]_i_1_n_0 ;
  wire \Tx_out[4]_i_2_n_0 ;
  wire clk;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state__0;
  wire read_enable;
  wire read_enable_i_1_n_0;
  wire rst;
  wire [11:11]threshold;
  wire [11:0]threshold_out;
  wire \threshold_out[11]_i_1_n_0 ;
  wire \threshold_reg_n_0_[0] ;
  wire \threshold_reg_n_0_[10] ;
  wire \threshold_reg_n_0_[11] ;
  wire \threshold_reg_n_0_[1] ;
  wire \threshold_reg_n_0_[2] ;
  wire \threshold_reg_n_0_[3] ;
  wire \threshold_reg_n_0_[4] ;
  wire \threshold_reg_n_0_[5] ;
  wire \threshold_reg_n_0_[6] ;
  wire \threshold_reg_n_0_[7] ;
  wire \threshold_reg_n_0_[8] ;
  wire \threshold_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(current_state__0[1]),
        .I3(\Tx_out[1]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I5(current_state__0[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000080800)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\Tx_out[1]_i_2_n_0 ),
        .I1(Rx_end),
        .I2(Rx_in[4]),
        .I3(Rx_in[5]),
        .I4(Rx_in[6]),
        .I5(FIFO_empty),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state__0[1]),
        .I3(\Tx_out[1]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I5(current_state__0[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(Rx_in[0]),
        .I1(Rx_in[1]),
        .I2(Rx_in[2]),
        .I3(Rx_in[3]),
        .I4(Rx_in[7]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(Rx_end),
        .I1(Rx_in[6]),
        .I2(Rx_in[4]),
        .I3(Rx_in[5]),
        .I4(current_state__0[2]),
        .I5(current_state__0[0]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(threshold),
        .I1(Tx_en_i_2_n_0),
        .I2(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I4(current_state__0[2]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(Rx_in[6]),
        .I1(Rx_in[5]),
        .I2(FIFO_empty),
        .I3(Rx_in[4]),
        .I4(current_state__0[2]),
        .I5(current_state__0[0]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I3(current_state__0[1]),
        .I4(Rx_end),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h33FF32E6)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(current_state__0[0]),
        .I1(current_state__0[1]),
        .I2(Rx_end),
        .I3(current_state__0[2]),
        .I4(rst),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h051A)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(Rx_in[4]),
        .I1(FIFO_empty),
        .I2(Rx_in[6]),
        .I3(Rx_in[5]),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF88FF800088FF8)) 
    Tx_en_i_1
       (.I0(Tx_en_i_2_n_0),
        .I1(Tx_en_i_3_n_0),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .I4(current_state__0[2]),
        .I5(Tx_en),
        .O(Tx_en_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    Tx_en_i_2
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(current_state__0[1]),
        .I2(Rx_end),
        .O(Tx_en_i_2_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    Tx_en_i_3
       (.I0(FIFO_empty),
        .I1(Rx_in[4]),
        .I2(Rx_in[5]),
        .I3(current_state__0[2]),
        .I4(Rx_in[6]),
        .O(Tx_en_i_3_n_0));
  FDRE Tx_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(Tx_en_i_1_n_0),
        .Q(Tx_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    \Tx_out[0]_i_1 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .O(\Tx_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \Tx_out[1]_i_1 
       (.I0(\Tx_out[1]_i_2_n_0 ),
        .I1(Rx_in[4]),
        .I2(FIFO_empty),
        .I3(Rx_in[5]),
        .I4(Rx_in[6]),
        .I5(Tx_en_i_2_n_0),
        .O(\Tx_out[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Tx_out[1]_i_2 
       (.I0(current_state__0[0]),
        .I1(current_state__0[2]),
        .O(\Tx_out[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \Tx_out[2]_i_1 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(FIFO_full),
        .O(\Tx_out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \Tx_out[3]_i_1 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(FIFO_ready),
        .O(\Tx_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Tx_out[4]_i_1 
       (.I0(current_state__0[1]),
        .I1(current_state__0[2]),
        .O(\Tx_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \Tx_out[4]_i_2 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(FIFO_ready),
        .O(\Tx_out[4]_i_2_n_0 ));
  FDRE \Tx_out_reg[0] 
       (.C(clk),
        .CE(\Tx_out[4]_i_1_n_0 ),
        .D(\Tx_out[0]_i_1_n_0 ),
        .Q(Tx_out[0]),
        .R(1'b0));
  FDRE \Tx_out_reg[1] 
       (.C(clk),
        .CE(\Tx_out[4]_i_1_n_0 ),
        .D(\Tx_out[1]_i_1_n_0 ),
        .Q(Tx_out[1]),
        .R(1'b0));
  FDRE \Tx_out_reg[2] 
       (.C(clk),
        .CE(\Tx_out[4]_i_1_n_0 ),
        .D(\Tx_out[2]_i_1_n_0 ),
        .Q(Tx_out[2]),
        .R(1'b0));
  FDRE \Tx_out_reg[3] 
       (.C(clk),
        .CE(\Tx_out[4]_i_1_n_0 ),
        .D(\Tx_out[3]_i_1_n_0 ),
        .Q(Tx_out[3]),
        .R(1'b0));
  FDRE \Tx_out_reg[4] 
       (.C(clk),
        .CE(\Tx_out[4]_i_1_n_0 ),
        .D(\Tx_out[4]_i_2_n_0 ),
        .Q(Tx_out[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE40)) 
    read_enable_i_1
       (.I0(current_state__0[1]),
        .I1(current_state__0[0]),
        .I2(current_state__0[2]),
        .I3(read_enable),
        .O(read_enable_i_1_n_0));
  FDRE read_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_enable_i_1_n_0),
        .Q(read_enable),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \threshold[11]_i_1 
       (.I0(current_state__0[1]),
        .I1(current_state__0[0]),
        .I2(current_state__0[2]),
        .I3(Rx_end),
        .O(threshold));
  LUT4 #(
    .INIT(16'h0400)) 
    \threshold_out[11]_i_1 
       (.I0(current_state__0[0]),
        .I1(current_state__0[2]),
        .I2(current_state__0[1]),
        .I3(Rx_end),
        .O(\threshold_out[11]_i_1_n_0 ));
  FDRE \threshold_out_reg[0] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[0] ),
        .Q(threshold_out[0]),
        .R(1'b0));
  FDRE \threshold_out_reg[10] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[10] ),
        .Q(threshold_out[10]),
        .R(1'b0));
  FDRE \threshold_out_reg[11] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[11] ),
        .Q(threshold_out[11]),
        .R(1'b0));
  FDRE \threshold_out_reg[1] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[1] ),
        .Q(threshold_out[1]),
        .R(1'b0));
  FDRE \threshold_out_reg[2] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[2] ),
        .Q(threshold_out[2]),
        .R(1'b0));
  FDRE \threshold_out_reg[3] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[3] ),
        .Q(threshold_out[3]),
        .R(1'b0));
  FDRE \threshold_out_reg[4] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[4] ),
        .Q(threshold_out[4]),
        .R(1'b0));
  FDRE \threshold_out_reg[5] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[5] ),
        .Q(threshold_out[5]),
        .R(1'b0));
  FDRE \threshold_out_reg[6] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[6] ),
        .Q(threshold_out[6]),
        .R(1'b0));
  FDRE \threshold_out_reg[7] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[7] ),
        .Q(threshold_out[7]),
        .R(1'b0));
  FDRE \threshold_out_reg[8] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[8] ),
        .Q(threshold_out[8]),
        .R(1'b0));
  FDRE \threshold_out_reg[9] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(\threshold_reg_n_0_[9] ),
        .Q(threshold_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[0] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(Rx_in[2]),
        .Q(\threshold_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[10] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[5]),
        .Q(\threshold_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[11] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[6]),
        .Q(\threshold_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[1] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(Rx_in[3]),
        .Q(\threshold_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[2] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(Rx_in[4]),
        .Q(\threshold_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[3] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(Rx_in[5]),
        .Q(\threshold_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[4] 
       (.C(clk),
        .CE(\threshold_out[11]_i_1_n_0 ),
        .D(Rx_in[6]),
        .Q(\threshold_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[5] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[0]),
        .Q(\threshold_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[6] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[1]),
        .Q(\threshold_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[7] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[2]),
        .Q(\threshold_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[8] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[3]),
        .Q(\threshold_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[9] 
       (.C(clk),
        .CE(threshold),
        .D(Rx_in[4]),
        .Q(\threshold_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
