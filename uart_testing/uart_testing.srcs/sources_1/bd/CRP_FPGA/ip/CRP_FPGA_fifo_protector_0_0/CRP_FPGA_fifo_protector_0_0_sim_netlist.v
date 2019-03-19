// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 28 15:28:46 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/CRP_FPGA/ip/CRP_FPGA_fifo_protector_0_0/CRP_FPGA_fifo_protector_0_0_sim_netlist.v
// Design      : CRP_FPGA_fifo_protector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CRP_FPGA_fifo_protector_0_0,fifo_protector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fifo_protector,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module CRP_FPGA_fifo_protector_0_0
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

  wire clk;
  wire fifo_ready;
  wire fifo_rst;
  wire global_rst;
  wire rd_en;
  wire rd_in;
  wire wr_en;
  wire wr_in;

  CRP_FPGA_fifo_protector_0_0_fifo_protector U0
       (.clk(clk),
        .fifo_ready(fifo_ready),
        .fifo_rst(fifo_rst),
        .global_rst(global_rst),
        .rd_en(rd_en),
        .rd_in(rd_in),
        .wr_en(wr_en),
        .wr_in(wr_in));
endmodule

(* ORIG_REF_NAME = "fifo_protector" *) 
module CRP_FPGA_fifo_protector_0_0_fifo_protector
   (rd_en,
    wr_en,
    fifo_ready,
    fifo_rst,
    clk,
    global_rst,
    rd_in,
    wr_in);
  output rd_en;
  output wr_en;
  output fifo_ready;
  output fifo_rst;
  input clk;
  input global_rst;
  input rd_in;
  input wr_in;

  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire clk;
  wire fifo_ready;
  wire fifo_ready_i_1_n_0;
  wire fifo_rst;
  wire fifo_rst_i_1_n_0;
  wire global_rst;
  wire rd_en;
  wire rd_en_i_1_n_0;
  wire rd_in;
  wire wr_en;
  wire wr_en_i_1_n_0;
  wire wr_in;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state[8]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_current_state[8]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(global_rst),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[8]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDC)) 
    fifo_ready_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(fifo_ready),
        .O(fifo_ready_i_1_n_0));
  FDRE fifo_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_ready_i_1_n_0),
        .Q(fifo_ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABAA)) 
    fifo_rst_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(fifo_rst),
        .O(fifo_rst_i_1_n_0));
  FDRE fifo_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rst_i_1_n_0),
        .Q(fifo_rst),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA3A0)) 
    rd_en_i_1
       (.I0(rd_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(rd_en),
        .O(rd_en_i_1_n_0));
  FDRE rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(rd_en_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA3A0)) 
    wr_en_i_1
       (.I0(wr_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(wr_en),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
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
