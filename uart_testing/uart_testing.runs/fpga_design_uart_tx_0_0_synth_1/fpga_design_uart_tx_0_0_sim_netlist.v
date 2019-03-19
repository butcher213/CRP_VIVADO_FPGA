// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar  9 11:08:07 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_design_uart_tx_0_0_sim_netlist.v
// Design      : fpga_design_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_design_uart_tx_0_0,uart_tx,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart_tx,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (UART_clk,
    read_enable,
    rst,
    fifo_in,
    Tx_in,
    Tx_en,
    fifo_ready,
    Tx,
    rd_en,
    Tx_enabled,
    tx_lock);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 UART_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME UART_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input UART_clk;
  input read_enable;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [39:0]fifo_in;
  input [7:0]Tx_in;
  input Tx_en;
  input fifo_ready;
  output Tx;
  output rd_en;
  output Tx_enabled;
  output tx_lock;

  wire Tx;
  wire Tx_en;
  wire Tx_enabled;
  wire [7:0]Tx_in;
  wire UART_clk;
  wire [39:0]fifo_in;
  wire rd_en;
  wire read_enable;
  wire rst;
  wire tx_lock;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx U0
       (.Tx(Tx),
        .Tx_en(Tx_en),
        .Tx_enabled(Tx_enabled),
        .Tx_in(Tx_in),
        .UART_clk(UART_clk),
        .fifo_in(fifo_in),
        .rd_en(rd_en),
        .read_enable(read_enable),
        .rst(rst),
        .tx_lock(tx_lock));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (Tx,
    Tx_enabled,
    tx_lock,
    rd_en,
    Tx_en,
    read_enable,
    UART_clk,
    fifo_in,
    rst,
    Tx_in);
  output Tx;
  output Tx_enabled;
  output tx_lock;
  output rd_en;
  input Tx_en;
  input read_enable;
  input UART_clk;
  input [39:0]fifo_in;
  input rst;
  input [7:0]Tx_in;

  wire \FSM_sequential_Tx_line_index[0]_i_1_n_0 ;
  wire \FSM_sequential_Tx_line_index[1]_i_1_n_0 ;
  wire \FSM_sequential_Tx_line_index[2]_i_1_n_0 ;
  wire \FSM_sequential_Tx_line_index[2]_i_2_n_0 ;
  wire Tx;
  wire Tx_en;
  wire Tx_enabled;
  wire Tx_enabled_i_1_n_0;
  wire Tx_i_1_n_0;
  wire Tx_i_2_n_0;
  wire Tx_i_3_n_0;
  wire [7:0]Tx_in;
  (* RTL_KEEP = "yes" *) wire [2:0]Tx_line_index__0;
  wire \Tx_shift_registers[0]_i_1_n_0 ;
  wire \Tx_shift_registers[1]_i_1_n_0 ;
  wire \Tx_shift_registers[2]_i_1_n_0 ;
  wire \Tx_shift_registers[2]_i_2_n_0 ;
  wire \Tx_shift_registers[2]_i_3_n_0 ;
  wire \Tx_shift_registers[3]_i_1_n_0 ;
  wire \Tx_shift_registers[3]_i_2_n_0 ;
  wire \Tx_shift_registers[3]_i_3_n_0 ;
  wire \Tx_shift_registers[4]_i_1_n_0 ;
  wire \Tx_shift_registers[4]_i_2_n_0 ;
  wire \Tx_shift_registers[4]_i_3_n_0 ;
  wire \Tx_shift_registers[5]_i_1_n_0 ;
  wire \Tx_shift_registers[5]_i_2_n_0 ;
  wire \Tx_shift_registers[5]_i_3_n_0 ;
  wire \Tx_shift_registers[6]_i_1_n_0 ;
  wire \Tx_shift_registers[6]_i_2_n_0 ;
  wire \Tx_shift_registers[6]_i_3_n_0 ;
  wire \Tx_shift_registers[7]_i_1_n_0 ;
  wire \Tx_shift_registers[7]_i_2_n_0 ;
  wire \Tx_shift_registers[7]_i_3_n_0 ;
  wire \Tx_shift_registers[8]_i_1_n_0 ;
  wire \Tx_shift_registers[8]_i_2_n_0 ;
  wire \Tx_shift_registers[8]_i_3_n_0 ;
  wire \Tx_shift_registers[9]_i_1_n_0 ;
  wire \Tx_shift_registers_reg_n_0_[0] ;
  wire \Tx_shift_registers_reg_n_0_[1] ;
  wire \Tx_shift_registers_reg_n_0_[2] ;
  wire \Tx_shift_registers_reg_n_0_[3] ;
  wire \Tx_shift_registers_reg_n_0_[4] ;
  wire \Tx_shift_registers_reg_n_0_[5] ;
  wire \Tx_shift_registers_reg_n_0_[6] ;
  wire \Tx_shift_registers_reg_n_0_[7] ;
  wire \Tx_shift_registers_reg_n_0_[8] ;
  wire \Tx_shift_registers_reg_n_0_[9] ;
  wire UART_clk;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire [39:0]fifo_data;
  wire \fifo_data[39]_i_1_n_0 ;
  wire \fifo_data[39]_i_2_n_0 ;
  wire [39:0]fifo_in;
  wire rd_en;
  wire rd_en_i_1_n_0;
  wire read_enable;
  wire rst;
  wire transmit_lock_i_1_n_0;
  wire tx_lock;

  LUT6 #(
    .INIT(64'hFFFFC44400000444)) 
    \FSM_sequential_Tx_line_index[0]_i_1 
       (.I0(Tx_line_index__0[0]),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(Tx_line_index__0[2]),
        .I3(Tx_line_index__0[1]),
        .I4(\FSM_sequential_Tx_line_index[2]_i_2_n_0 ),
        .I5(Tx_line_index__0[0]),
        .O(\FSM_sequential_Tx_line_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC48800000488)) 
    \FSM_sequential_Tx_line_index[1]_i_1 
       (.I0(Tx_line_index__0[0]),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(Tx_line_index__0[2]),
        .I3(Tx_line_index__0[1]),
        .I4(\FSM_sequential_Tx_line_index[2]_i_2_n_0 ),
        .I5(Tx_line_index__0[1]),
        .O(\FSM_sequential_Tx_line_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC8C0000008C0)) 
    \FSM_sequential_Tx_line_index[2]_i_1 
       (.I0(Tx_line_index__0[0]),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(Tx_line_index__0[2]),
        .I3(Tx_line_index__0[1]),
        .I4(\FSM_sequential_Tx_line_index[2]_i_2_n_0 ),
        .I5(Tx_line_index__0[2]),
        .O(\FSM_sequential_Tx_line_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_Tx_line_index[2]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\FSM_sequential_Tx_line_index[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101," *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_Tx_line_index_reg[0] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\FSM_sequential_Tx_line_index[0]_i_1_n_0 ),
        .Q(Tx_line_index__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101," *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_Tx_line_index_reg[1] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\FSM_sequential_Tx_line_index[1]_i_1_n_0 ),
        .Q(Tx_line_index__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101," *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_Tx_line_index_reg[2] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\FSM_sequential_Tx_line_index[2]_i_1_n_0 ),
        .Q(Tx_line_index__0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    Tx_enabled_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Tx_enabled),
        .O(Tx_enabled_i_1_n_0));
  FDRE Tx_enabled_reg
       (.C(UART_clk),
        .CE(1'b1),
        .D(Tx_enabled_i_1_n_0),
        .Q(Tx_enabled),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFAEF000F0A2F)) 
    Tx_i_1
       (.I0(\Tx_shift_registers_reg_n_0_[0] ),
        .I1(Tx_i_2_n_0),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(Tx),
        .O(Tx_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    Tx_i_2
       (.I0(\Tx_shift_registers_reg_n_0_[3] ),
        .I1(\Tx_shift_registers_reg_n_0_[9] ),
        .I2(\Tx_shift_registers_reg_n_0_[0] ),
        .I3(\Tx_shift_registers_reg_n_0_[1] ),
        .I4(Tx_i_3_n_0),
        .O(Tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Tx_i_3
       (.I0(\Tx_shift_registers_reg_n_0_[7] ),
        .I1(\Tx_shift_registers_reg_n_0_[2] ),
        .I2(\Tx_shift_registers_reg_n_0_[6] ),
        .I3(\Tx_shift_registers_reg_n_0_[8] ),
        .I4(\Tx_shift_registers_reg_n_0_[4] ),
        .I5(\Tx_shift_registers_reg_n_0_[5] ),
        .O(Tx_i_3_n_0));
  FDRE Tx_reg
       (.C(UART_clk),
        .CE(1'b1),
        .D(Tx_i_1_n_0),
        .Q(Tx),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5E50)) 
    \Tx_shift_registers[0]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\Tx_shift_registers_reg_n_0_[1] ),
        .O(\Tx_shift_registers[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8C8080)) 
    \Tx_shift_registers[1]_i_1 
       (.I0(Tx_in[0]),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\Tx_shift_registers_reg_n_0_[2] ),
        .O(\Tx_shift_registers[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCEAC0C0CCEAC0)) 
    \Tx_shift_registers[2]_i_1 
       (.I0(\Tx_shift_registers[2]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[1]),
        .O(\Tx_shift_registers[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Tx_shift_registers[2]_i_2 
       (.I0(fifo_data[35]),
        .I1(Tx_line_index__0[0]),
        .I2(fifo_data[28]),
        .I3(Tx_line_index__0[2]),
        .I4(\Tx_shift_registers[2]_i_3_n_0 ),
        .O(\Tx_shift_registers[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[2]_i_3 
       (.I0(fifo_data[21]),
        .I1(fifo_data[14]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[7]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[0]),
        .O(\Tx_shift_registers[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCEAC0C0CCEAC0)) 
    \Tx_shift_registers[3]_i_1 
       (.I0(\Tx_shift_registers[3]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[2]),
        .O(\Tx_shift_registers[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Tx_shift_registers[3]_i_2 
       (.I0(fifo_data[36]),
        .I1(Tx_line_index__0[0]),
        .I2(fifo_data[29]),
        .I3(Tx_line_index__0[2]),
        .I4(\Tx_shift_registers[3]_i_3_n_0 ),
        .O(\Tx_shift_registers[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[3]_i_3 
       (.I0(fifo_data[22]),
        .I1(fifo_data[15]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[8]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[1]),
        .O(\Tx_shift_registers[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCEAC0C0CCEAC0)) 
    \Tx_shift_registers[4]_i_1 
       (.I0(\Tx_shift_registers[4]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[3]),
        .O(\Tx_shift_registers[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Tx_shift_registers[4]_i_2 
       (.I0(fifo_data[37]),
        .I1(Tx_line_index__0[0]),
        .I2(fifo_data[30]),
        .I3(Tx_line_index__0[2]),
        .I4(\Tx_shift_registers[4]_i_3_n_0 ),
        .O(\Tx_shift_registers[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[4]_i_3 
       (.I0(fifo_data[23]),
        .I1(fifo_data[16]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[9]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[2]),
        .O(\Tx_shift_registers[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCEAC0C0CCEAC0)) 
    \Tx_shift_registers[5]_i_1 
       (.I0(\Tx_shift_registers[5]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[6] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[4]),
        .O(\Tx_shift_registers[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Tx_shift_registers[5]_i_2 
       (.I0(fifo_data[38]),
        .I1(Tx_line_index__0[0]),
        .I2(fifo_data[31]),
        .I3(Tx_line_index__0[2]),
        .I4(\Tx_shift_registers[5]_i_3_n_0 ),
        .O(\Tx_shift_registers[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[5]_i_3 
       (.I0(fifo_data[24]),
        .I1(fifo_data[17]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[10]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[3]),
        .O(\Tx_shift_registers[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCEAC0C0CCEAC0)) 
    \Tx_shift_registers[6]_i_1 
       (.I0(\Tx_shift_registers[6]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[7] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[5]),
        .O(\Tx_shift_registers[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Tx_shift_registers[6]_i_2 
       (.I0(fifo_data[39]),
        .I1(Tx_line_index__0[0]),
        .I2(fifo_data[32]),
        .I3(Tx_line_index__0[2]),
        .I4(\Tx_shift_registers[6]_i_3_n_0 ),
        .O(\Tx_shift_registers[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[6]_i_3 
       (.I0(fifo_data[25]),
        .I1(fifo_data[18]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[11]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[4]),
        .O(\Tx_shift_registers[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEEAEAEAEEEAEA)) 
    \Tx_shift_registers[7]_i_1 
       (.I0(\Tx_shift_registers[7]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[8] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[6]),
        .O(\Tx_shift_registers[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002E220000)) 
    \Tx_shift_registers[7]_i_2 
       (.I0(\Tx_shift_registers[7]_i_3_n_0 ),
        .I1(Tx_line_index__0[2]),
        .I2(Tx_line_index__0[0]),
        .I3(fifo_data[33]),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\Tx_shift_registers[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[7]_i_3 
       (.I0(fifo_data[26]),
        .I1(fifo_data[19]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[12]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[5]),
        .O(\Tx_shift_registers[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEEAEAEAEEEAEA)) 
    \Tx_shift_registers[8]_i_1 
       (.I0(\Tx_shift_registers[8]_i_2_n_0 ),
        .I1(\Tx_shift_registers_reg_n_0_[9] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Tx_in[7]),
        .O(\Tx_shift_registers[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002E220000)) 
    \Tx_shift_registers[8]_i_2 
       (.I0(\Tx_shift_registers[8]_i_3_n_0 ),
        .I1(Tx_line_index__0[2]),
        .I2(Tx_line_index__0[0]),
        .I3(fifo_data[34]),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\Tx_shift_registers[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Tx_shift_registers[8]_i_3 
       (.I0(fifo_data[27]),
        .I1(fifo_data[20]),
        .I2(Tx_line_index__0[1]),
        .I3(fifo_data[13]),
        .I4(Tx_line_index__0[0]),
        .I5(fifo_data[6]),
        .O(\Tx_shift_registers[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555505557777)) 
    \Tx_shift_registers[9]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Tx_i_2_n_0),
        .I2(Tx_line_index__0[1]),
        .I3(Tx_line_index__0[2]),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\Tx_shift_registers[9]_i_1_n_0 ));
  FDRE \Tx_shift_registers_reg[0] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[0]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[1] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[1]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[2] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[2]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[3] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[3]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[4] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[4]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[5] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[5]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[6] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[6]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[7] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[7]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[8] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\Tx_shift_registers[8]_i_1_n_0 ),
        .Q(\Tx_shift_registers_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \Tx_shift_registers_reg[9] 
       (.C(UART_clk),
        .CE(\Tx_shift_registers[9]_i_1_n_0 ),
        .D(\current_state_reg_n_0_[0] ),
        .Q(\Tx_shift_registers_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000F000EE)) 
    \current_state[0]_i_1 
       (.I0(Tx_en),
        .I1(read_enable),
        .I2(Tx_i_2_n_0),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4445FFFF44440000)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state[1]_i_2_n_0 ),
        .I2(Tx_i_2_n_0),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state[2]_i_2_n_0 ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000777700000F00)) 
    \current_state[1]_i_2 
       (.I0(Tx_line_index__0[2]),
        .I1(Tx_line_index__0[1]),
        .I2(read_enable),
        .I3(Tx_en),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01FFC000)) 
    \current_state[2]_i_1 
       (.I0(Tx_i_2_n_0),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state[2]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(Tx_en),
        .I5(read_enable),
        .O(\current_state[2]_i_2_n_0 ));
  FDRE \current_state_reg[0] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \current_state_reg[1] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \current_state_reg[2] 
       (.C(UART_clk),
        .CE(1'b1),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \fifo_data[39]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .O(\fifo_data[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000103030303)) 
    \fifo_data[39]_i_2 
       (.I0(Tx_line_index__0[0]),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Tx_line_index__0[2]),
        .I4(Tx_line_index__0[1]),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\fifo_data[39]_i_2_n_0 ));
  FDRE \fifo_data_reg[0] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[0]),
        .Q(fifo_data[0]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[10] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[10]),
        .Q(fifo_data[10]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[11] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[11]),
        .Q(fifo_data[11]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[12] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[12]),
        .Q(fifo_data[12]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[13] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[13]),
        .Q(fifo_data[13]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[14] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[14]),
        .Q(fifo_data[14]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[15] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[15]),
        .Q(fifo_data[15]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[16] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[16]),
        .Q(fifo_data[16]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[17] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[17]),
        .Q(fifo_data[17]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[18] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[18]),
        .Q(fifo_data[18]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[19] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[19]),
        .Q(fifo_data[19]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[1] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[1]),
        .Q(fifo_data[1]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[20] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[20]),
        .Q(fifo_data[20]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[21] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[21]),
        .Q(fifo_data[21]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[22] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[22]),
        .Q(fifo_data[22]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[23] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[23]),
        .Q(fifo_data[23]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[24] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[24]),
        .Q(fifo_data[24]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[25] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[25]),
        .Q(fifo_data[25]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[26] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[26]),
        .Q(fifo_data[26]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[27] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[27]),
        .Q(fifo_data[27]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[28] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[28]),
        .Q(fifo_data[28]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[29] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[29]),
        .Q(fifo_data[29]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[2] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[2]),
        .Q(fifo_data[2]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[30] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[30]),
        .Q(fifo_data[30]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[31] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[31]),
        .Q(fifo_data[31]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[32] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[32]),
        .Q(fifo_data[32]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[33] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[33]),
        .Q(fifo_data[33]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[34] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[34]),
        .Q(fifo_data[34]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[35] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[35]),
        .Q(fifo_data[35]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[36] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[36]),
        .Q(fifo_data[36]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[37] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[37]),
        .Q(fifo_data[37]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[38] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[38]),
        .Q(fifo_data[38]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[39] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[39]),
        .Q(fifo_data[39]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[3] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[3]),
        .Q(fifo_data[3]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[4] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[4]),
        .Q(fifo_data[4]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[5] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[5]),
        .Q(fifo_data[5]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[6] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[6]),
        .Q(fifo_data[6]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[7] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[7]),
        .Q(fifo_data[7]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[8] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[8]),
        .Q(fifo_data[8]),
        .R(\fifo_data[39]_i_1_n_0 ));
  FDRE \fifo_data_reg[9] 
       (.C(UART_clk),
        .CE(\fifo_data[39]_i_2_n_0 ),
        .D(fifo_in[9]),
        .Q(fifo_data[9]),
        .R(\fifo_data[39]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    rd_en_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\fifo_data[39]_i_2_n_0 ),
        .I2(rd_en),
        .O(rd_en_i_1_n_0));
  FDRE rd_en_reg
       (.C(UART_clk),
        .CE(1'b1),
        .D(rd_en_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE0C)) 
    transmit_lock_i_1
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(tx_lock),
        .O(transmit_lock_i_1_n_0));
  FDRE transmit_lock_reg
       (.C(UART_clk),
        .CE(1'b1),
        .D(transmit_lock_i_1_n_0),
        .Q(tx_lock),
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
