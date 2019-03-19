// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 28 15:29:24 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/CRP_FPGA/ip/CRP_FPGA_threshold_memory_0_0/CRP_FPGA_threshold_memory_0_0_sim_netlist.v
// Design      : CRP_FPGA_threshold_memory_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CRP_FPGA_threshold_memory_0_0,threshold_memory,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "threshold_memory,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module CRP_FPGA_threshold_memory_0_0
   (threshold_in,
    rst,
    clk,
    threshold_out);
  input [11:0]threshold_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  output [11:0]threshold_out;

  wire clk;
  wire rst;
  wire [11:0]threshold_in;
  wire [11:0]threshold_out;

  CRP_FPGA_threshold_memory_0_0_threshold_memory U0
       (.clk(clk),
        .rst(rst),
        .threshold_in(threshold_in),
        .threshold_out(threshold_out));
endmodule

(* ORIG_REF_NAME = "threshold_memory" *) 
module CRP_FPGA_threshold_memory_0_0_threshold_memory
   (threshold_out,
    rst,
    threshold_in,
    clk);
  output [11:0]threshold_out;
  input rst;
  input [11:0]threshold_in;
  input clk;

  wire clk;
  wire \internal_memory[11]_i_1_n_0 ;
  wire \internal_memory[11]_i_2_n_0 ;
  wire \internal_memory[11]_i_3_n_0 ;
  wire \internal_memory[11]_i_4_n_0 ;
  wire rst;
  wire [11:0]threshold_in;
  wire [11:0]threshold_out;

  LUT3 #(
    .INIT(8'h20)) 
    \internal_memory[11]_i_1 
       (.I0(\internal_memory[11]_i_3_n_0 ),
        .I1(\internal_memory[11]_i_4_n_0 ),
        .I2(rst),
        .O(\internal_memory[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \internal_memory[11]_i_2 
       (.I0(rst),
        .I1(\internal_memory[11]_i_4_n_0 ),
        .I2(\internal_memory[11]_i_3_n_0 ),
        .O(\internal_memory[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \internal_memory[11]_i_3 
       (.I0(threshold_in[10]),
        .I1(threshold_in[9]),
        .I2(threshold_in[11]),
        .I3(threshold_in[6]),
        .I4(threshold_in[7]),
        .I5(threshold_in[8]),
        .O(\internal_memory[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \internal_memory[11]_i_4 
       (.I0(threshold_in[2]),
        .I1(threshold_in[0]),
        .I2(threshold_in[1]),
        .I3(threshold_in[5]),
        .I4(threshold_in[3]),
        .I5(threshold_in[4]),
        .O(\internal_memory[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[0] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[0]),
        .Q(threshold_out[0]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[10] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[10]),
        .Q(threshold_out[10]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[11] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[11]),
        .Q(threshold_out[11]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[1] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[1]),
        .Q(threshold_out[1]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[2] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[2]),
        .Q(threshold_out[2]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[3] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[3]),
        .Q(threshold_out[3]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[4] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[4]),
        .Q(threshold_out[4]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[5] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[5]),
        .Q(threshold_out[5]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[6] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[6]),
        .Q(threshold_out[6]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[7] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[7]),
        .Q(threshold_out[7]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[8] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[8]),
        .Q(threshold_out[8]),
        .R(\internal_memory[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_memory_reg[9] 
       (.C(clk),
        .CE(\internal_memory[11]_i_2_n_0 ),
        .D(threshold_in[9]),
        .Q(threshold_out[9]),
        .R(\internal_memory[11]_i_1_n_0 ));
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
