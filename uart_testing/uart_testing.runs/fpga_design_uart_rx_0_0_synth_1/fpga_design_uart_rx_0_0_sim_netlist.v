// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar  9 11:08:07 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_design_uart_rx_0_0_sim_netlist.v
// Design      : fpga_design_uart_rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_design_uart_rx_0_0,uart_rx,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart_rx,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Rx,
    uart_clk,
    rst,
    Rx_out,
    Rx_end);
  input Rx;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 uart_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME uart_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input uart_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  output [7:0]Rx_out;
  output Rx_end;

  wire \<const1> ;
  wire Rx;
  wire [7:0]Rx_out;
  wire rst;
  wire uart_clk;

  assign Rx_end = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx U0
       (.Rx(Rx),
        .Rx_out(Rx_out),
        .rst(rst),
        .uart_clk(uart_clk));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (Rx_out,
    rst,
    uart_clk,
    Rx);
  output [7:0]Rx_out;
  input rst;
  input uart_clk;
  input Rx;

  wire Rx;
  wire [7:0]Rx_out;
  wire \Rx_shift_registers_reg_n_0_[0] ;
  wire counter;
  wire [3:0]counter_reg__0;
  wire current_state;
  wire current_state_i_1_n_0;
  wire eqOp__0;
  wire [7:0]p_0_in;
  wire [3:0]plusOp;
  wire rst;
  wire uart_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \Rx_out[7]_i_1 
       (.I0(current_state),
        .O(counter));
  FDRE \Rx_out_reg[0] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[0]),
        .Q(Rx_out[0]),
        .R(counter));
  FDRE \Rx_out_reg[1] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[1]),
        .Q(Rx_out[1]),
        .R(counter));
  FDRE \Rx_out_reg[2] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[2]),
        .Q(Rx_out[2]),
        .R(counter));
  FDRE \Rx_out_reg[3] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[3]),
        .Q(Rx_out[3]),
        .R(counter));
  FDRE \Rx_out_reg[4] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[4]),
        .Q(Rx_out[4]),
        .R(counter));
  FDRE \Rx_out_reg[5] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[5]),
        .Q(Rx_out[5]),
        .R(counter));
  FDRE \Rx_out_reg[6] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[6]),
        .Q(Rx_out[6]),
        .R(counter));
  FDRE \Rx_out_reg[7] 
       (.C(uart_clk),
        .CE(eqOp__0),
        .D(p_0_in[7]),
        .Q(Rx_out[7]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[0] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(Rx),
        .Q(\Rx_shift_registers_reg_n_0_[0] ),
        .R(counter));
  FDRE \Rx_shift_registers_reg[1] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(\Rx_shift_registers_reg_n_0_[0] ),
        .Q(p_0_in[0]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[2] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[3] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[4] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[5] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[6] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[7] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(counter));
  FDRE \Rx_shift_registers_reg[8] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(counter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(plusOp[3]));
  FDRE \counter_reg[0] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(counter_reg__0[0]),
        .R(counter));
  FDRE \counter_reg[1] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(counter_reg__0[1]),
        .R(counter));
  FDRE \counter_reg[2] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(counter_reg__0[2]),
        .R(counter));
  FDRE \counter_reg[3] 
       (.C(uart_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(counter_reg__0[3]),
        .R(counter));
  LUT6 #(
    .INIT(64'h4440444444444444)) 
    current_state_i_1
       (.I0(rst),
        .I1(current_state),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[0]),
        .I4(counter_reg__0[3]),
        .I5(counter_reg__0[1]),
        .O(current_state_i_1_n_0));
  FDRE current_state_reg
       (.C(uart_clk),
        .CE(1'b1),
        .D(current_state_i_1_n_0),
        .Q(current_state),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    current_state_reg__0
       (.C(Rx),
        .CE(1'b1),
        .D(1'b1),
        .Q(current_state),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    eqOp
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .O(eqOp__0));
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
