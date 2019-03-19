// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 14 16:21:58 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/butchertd/Documents/eaglesat/FIFO_TESTING/FIFO_TESTING.srcs/sources_1/bd/design_1/ip/design_1_fifo_protector_0_0/design_1_fifo_protector_0_0_sim_netlist.v
// Design      : design_1_fifo_protector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_protector_0_0,fifo_protector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fifo_protector,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_fifo_protector_0_0
   (clk,
    wr_in,
    rd_in,
    global_rst,
    fifo_rst,
    fifo_ready,
    rd_en,
    wr_en);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input wr_in;
  input rd_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 global_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME global_rst, POLARITY ACTIVE_LOW" *) input global_rst;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW" *) output fifo_rst;
  output fifo_ready;
  output rd_en;
  output wr_en;

  wire \<const0> ;
  wire clk;
  wire fifo_rst;
  wire rd_en;
  wire rd_in;
  wire wr_en;
  wire wr_in;

  assign fifo_ready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_fifo_protector_0_0_fifo_protector U0
       (.clk(clk),
        .fifo_rst(fifo_rst),
        .rd_en(rd_en),
        .rd_in(rd_in),
        .wr_en(wr_en),
        .wr_in(wr_in));
endmodule

(* ORIG_REF_NAME = "fifo_protector" *) 
module design_1_fifo_protector_0_0_fifo_protector
   (rd_en,
    wr_en,
    fifo_rst,
    clk,
    rd_in,
    wr_in);
  output rd_en;
  output wr_en;
  output fifo_rst;
  input clk;
  input rd_in;
  input wr_in;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire clk;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire fifo_rst;
  wire fifo_rst_i_1_n_0;
  wire rd_en;
  wire rd_en__0_i_1_n_0;
  wire rd_in;
  wire wr_en;
  wire wr_en__0_i_1_n_0;
  wire wr_in;

  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7E02)) 
    fifo_rst_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(fifo_rst),
        .O(fifo_rst_i_1_n_0));
  FDRE fifo_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rst_i_1_n_0),
        .Q(fifo_rst),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE00)) 
    rd_en__0_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(rd_en),
        .O(rd_en__0_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rd_en_reg
       (.CLR(1'b0),
        .D(rd_in),
        .G(1'b0),
        .GE(1'b1),
        .Q(rd_en));
  FDRE rd_en_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(rd_en__0_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE00)) 
    wr_en__0_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(wr_en),
        .O(wr_en__0_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.CLR(1'b0),
        .D(wr_in),
        .G(1'b0),
        .GE(1'b1),
        .Q(wr_en));
  FDRE wr_en_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(wr_en__0_i_1_n_0),
        .Q(wr_en),
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
