// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar 21 16:27:13 2019
// Host        : BEAST running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_image_thresholding_0_0/fpga_design_image_thresholding_0_0_sim_netlist.v
// Design      : fpga_design_image_thresholding_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_design_image_thresholding_0_0,image_thresholding,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "image_thresholding,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module fpga_design_image_thresholding_0_0
   (imgData,
    layerId,
    cameraId,
    pixClk,
    rst,
    vsync,
    href,
    mem_threshold,
    packet,
    wr_en);
  input [11:0]imgData;
  input layerId;
  input [1:0]cameraId;
  input pixClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input vsync;
  input href;
  input [11:0]mem_threshold;
  output [39:0]packet;
  output wr_en;

  wire [1:0]cameraId;
  wire [11:0]imgData;
  wire layerId;
  wire [11:0]mem_threshold;
  wire [39:0]packet;
  wire pixClk;
  wire rst;
  wire vsync;
  wire wr_en;

  fpga_design_image_thresholding_0_0_image_thresholding U0
       (.cameraId(cameraId),
        .imgData(imgData),
        .layerId(layerId),
        .mem_threshold(mem_threshold),
        .packet(packet),
        .pixClk(pixClk),
        .rst(rst),
        .vsync(vsync),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "image_thresholding" *) 
module fpga_design_image_thresholding_0_0_image_thresholding
   (packet,
    wr_en,
    mem_threshold,
    vsync,
    pixClk,
    rst,
    imgData,
    cameraId,
    layerId);
  output [39:0]packet;
  output wr_en;
  input [11:0]mem_threshold;
  input vsync;
  input pixClk;
  input rst;
  input [11:0]imgData;
  input [1:0]cameraId;
  input layerId;

  wire [1:0]cameraId;
  wire \counter[0]_i_2_n_0 ;
  wire [24:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire [11:0]imgData;
  wire layerId;
  wire [11:0]mem_threshold;
  wire [39:0]packet;
  wire \packet[0]_i_1_n_0 ;
  wire \packet[10]_i_1_n_0 ;
  wire \packet[11]_i_1_n_0 ;
  wire \packet[12]_i_1_n_0 ;
  wire \packet[13]_i_1_n_0 ;
  wire \packet[14]_i_1_n_0 ;
  wire \packet[15]_i_1_n_0 ;
  wire \packet[16]_i_1_n_0 ;
  wire \packet[17]_i_1_n_0 ;
  wire \packet[18]_i_1_n_0 ;
  wire \packet[19]_i_1_n_0 ;
  wire \packet[1]_i_1_n_0 ;
  wire \packet[20]_i_1_n_0 ;
  wire \packet[21]_i_1_n_0 ;
  wire \packet[22]_i_1_n_0 ;
  wire \packet[23]_i_1_n_0 ;
  wire \packet[24]_i_1_n_0 ;
  wire \packet[25]_i_1_n_0 ;
  wire \packet[26]_i_1_n_0 ;
  wire \packet[27]_i_1_n_0 ;
  wire \packet[28]_i_1_n_0 ;
  wire \packet[29]_i_1_n_0 ;
  wire \packet[2]_i_1_n_0 ;
  wire \packet[30]_i_1_n_0 ;
  wire \packet[31]_i_1_n_0 ;
  wire \packet[32]_i_1_n_0 ;
  wire \packet[33]_i_1_n_0 ;
  wire \packet[34]_i_1_n_0 ;
  wire \packet[35]_i_1_n_0 ;
  wire \packet[36]_i_1_n_0 ;
  wire \packet[37]_i_1_n_0 ;
  wire \packet[38]_i_1_n_0 ;
  wire \packet[39]_i_1_n_0 ;
  wire \packet[3]_i_1_n_0 ;
  wire \packet[4]_i_1_n_0 ;
  wire \packet[5]_i_1_n_0 ;
  wire \packet[6]_i_1_n_0 ;
  wire \packet[7]_i_1_n_0 ;
  wire \packet[8]_i_1_n_0 ;
  wire \packet[9]_i_1_n_0 ;
  wire pixClk;
  wire rst;
  wire [11:0]threshold;
  wire \threshold_reg[11]_i_1_n_0 ;
  wire \threshold_reg[11]_i_2_n_0 ;
  wire \threshold_reg[11]_i_3_n_0 ;
  wire vsync;
  wire wr_en;
  wire [3:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDCE \counter_reg[10] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDCE \counter_reg[13] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[16] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDCE \counter_reg[17] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE \counter_reg[18] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE \counter_reg[19] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE \counter_reg[1] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[20] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDCE \counter_reg[21] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE \counter_reg[22] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE \counter_reg[23] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE \counter_reg[24] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO(\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,counter_reg[24]}));
  FDCE \counter_reg[2] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDCE \counter_reg[5] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDCE \counter_reg[9] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({NLW_gtOp_carry__0_CO_UNCONNECTED[3:2],gtOp,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(imgData[10]),
        .I1(threshold[10]),
        .I2(threshold[11]),
        .I3(imgData[11]),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_2
       (.I0(imgData[8]),
        .I1(threshold[8]),
        .I2(threshold[9]),
        .I3(imgData[9]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_3
       (.I0(imgData[10]),
        .I1(threshold[10]),
        .I2(imgData[11]),
        .I3(threshold[11]),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_4
       (.I0(imgData[8]),
        .I1(threshold[8]),
        .I2(imgData[9]),
        .I3(threshold[9]),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(imgData[6]),
        .I1(threshold[6]),
        .I2(threshold[7]),
        .I3(imgData[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(imgData[4]),
        .I1(threshold[4]),
        .I2(threshold[5]),
        .I3(imgData[5]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(imgData[2]),
        .I1(threshold[2]),
        .I2(threshold[3]),
        .I3(imgData[3]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(imgData[0]),
        .I1(threshold[0]),
        .I2(threshold[1]),
        .I3(imgData[1]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(imgData[6]),
        .I1(threshold[6]),
        .I2(imgData[7]),
        .I3(threshold[7]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(imgData[4]),
        .I1(threshold[4]),
        .I2(imgData[5]),
        .I3(threshold[5]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(imgData[2]),
        .I1(threshold[2]),
        .I2(imgData[3]),
        .I3(threshold[3]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(imgData[0]),
        .I1(threshold[0]),
        .I2(imgData[1]),
        .I3(threshold[1]),
        .O(gtOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[0]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[0]),
        .O(\packet[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[10]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[10]),
        .O(\packet[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[11]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[11]),
        .O(\packet[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[12]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[12]),
        .O(\packet[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[13]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[13]),
        .O(\packet[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[14]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[14]),
        .O(\packet[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[15]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[15]),
        .O(\packet[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[16]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[16]),
        .O(\packet[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[17]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[17]),
        .O(\packet[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[18]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[18]),
        .O(\packet[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[19]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[19]),
        .O(\packet[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[1]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[1]),
        .O(\packet[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[20]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[20]),
        .O(\packet[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[21]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[21]),
        .O(\packet[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[22]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[22]),
        .O(\packet[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[23]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[23]),
        .O(\packet[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[24]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[24]),
        .O(\packet[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[25]_i_1 
       (.I0(gtOp),
        .I1(imgData[0]),
        .O(\packet[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[26]_i_1 
       (.I0(gtOp),
        .I1(imgData[1]),
        .O(\packet[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[27]_i_1 
       (.I0(gtOp),
        .I1(imgData[2]),
        .O(\packet[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[28]_i_1 
       (.I0(gtOp),
        .I1(imgData[3]),
        .O(\packet[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[29]_i_1 
       (.I0(gtOp),
        .I1(imgData[4]),
        .O(\packet[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[2]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[2]),
        .O(\packet[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[30]_i_1 
       (.I0(gtOp),
        .I1(imgData[5]),
        .O(\packet[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[31]_i_1 
       (.I0(gtOp),
        .I1(imgData[6]),
        .O(\packet[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[32]_i_1 
       (.I0(gtOp),
        .I1(imgData[7]),
        .O(\packet[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[33]_i_1 
       (.I0(gtOp),
        .I1(imgData[8]),
        .O(\packet[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[34]_i_1 
       (.I0(gtOp),
        .I1(imgData[9]),
        .O(\packet[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[35]_i_1 
       (.I0(gtOp),
        .I1(imgData[10]),
        .O(\packet[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[36]_i_1 
       (.I0(gtOp),
        .I1(imgData[11]),
        .O(\packet[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[37]_i_1 
       (.I0(gtOp),
        .I1(cameraId[0]),
        .O(\packet[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[38]_i_1 
       (.I0(gtOp),
        .I1(cameraId[1]),
        .O(\packet[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[39]_i_1 
       (.I0(gtOp),
        .I1(layerId),
        .O(\packet[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[3]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[3]),
        .O(\packet[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[4]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[4]),
        .O(\packet[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[5]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[5]),
        .O(\packet[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[6]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[6]),
        .O(\packet[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[7]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[7]),
        .O(\packet[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[8]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[8]),
        .O(\packet[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packet[9]_i_1 
       (.I0(gtOp),
        .I1(counter_reg[9]),
        .O(\packet[9]_i_1_n_0 ));
  FDCE \packet_reg[0] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[0]_i_1_n_0 ),
        .Q(packet[0]));
  FDCE \packet_reg[10] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[10]_i_1_n_0 ),
        .Q(packet[10]));
  FDCE \packet_reg[11] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[11]_i_1_n_0 ),
        .Q(packet[11]));
  FDCE \packet_reg[12] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[12]_i_1_n_0 ),
        .Q(packet[12]));
  FDCE \packet_reg[13] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[13]_i_1_n_0 ),
        .Q(packet[13]));
  FDCE \packet_reg[14] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[14]_i_1_n_0 ),
        .Q(packet[14]));
  FDCE \packet_reg[15] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[15]_i_1_n_0 ),
        .Q(packet[15]));
  FDCE \packet_reg[16] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[16]_i_1_n_0 ),
        .Q(packet[16]));
  FDCE \packet_reg[17] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[17]_i_1_n_0 ),
        .Q(packet[17]));
  FDCE \packet_reg[18] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[18]_i_1_n_0 ),
        .Q(packet[18]));
  FDCE \packet_reg[19] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[19]_i_1_n_0 ),
        .Q(packet[19]));
  FDCE \packet_reg[1] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[1]_i_1_n_0 ),
        .Q(packet[1]));
  FDCE \packet_reg[20] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[20]_i_1_n_0 ),
        .Q(packet[20]));
  FDCE \packet_reg[21] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[21]_i_1_n_0 ),
        .Q(packet[21]));
  FDCE \packet_reg[22] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[22]_i_1_n_0 ),
        .Q(packet[22]));
  FDCE \packet_reg[23] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[23]_i_1_n_0 ),
        .Q(packet[23]));
  FDCE \packet_reg[24] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[24]_i_1_n_0 ),
        .Q(packet[24]));
  FDCE \packet_reg[25] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[25]_i_1_n_0 ),
        .Q(packet[25]));
  FDCE \packet_reg[26] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[26]_i_1_n_0 ),
        .Q(packet[26]));
  FDCE \packet_reg[27] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[27]_i_1_n_0 ),
        .Q(packet[27]));
  FDCE \packet_reg[28] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[28]_i_1_n_0 ),
        .Q(packet[28]));
  FDCE \packet_reg[29] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[29]_i_1_n_0 ),
        .Q(packet[29]));
  FDCE \packet_reg[2] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[2]_i_1_n_0 ),
        .Q(packet[2]));
  FDCE \packet_reg[30] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[30]_i_1_n_0 ),
        .Q(packet[30]));
  FDCE \packet_reg[31] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[31]_i_1_n_0 ),
        .Q(packet[31]));
  FDCE \packet_reg[32] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[32]_i_1_n_0 ),
        .Q(packet[32]));
  FDCE \packet_reg[33] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[33]_i_1_n_0 ),
        .Q(packet[33]));
  FDCE \packet_reg[34] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[34]_i_1_n_0 ),
        .Q(packet[34]));
  FDCE \packet_reg[35] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[35]_i_1_n_0 ),
        .Q(packet[35]));
  FDCE \packet_reg[36] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[36]_i_1_n_0 ),
        .Q(packet[36]));
  FDCE \packet_reg[37] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[37]_i_1_n_0 ),
        .Q(packet[37]));
  FDCE \packet_reg[38] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[38]_i_1_n_0 ),
        .Q(packet[38]));
  FDCE \packet_reg[39] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[39]_i_1_n_0 ),
        .Q(packet[39]));
  FDCE \packet_reg[3] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[3]_i_1_n_0 ),
        .Q(packet[3]));
  FDCE \packet_reg[4] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[4]_i_1_n_0 ),
        .Q(packet[4]));
  FDCE \packet_reg[5] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[5]_i_1_n_0 ),
        .Q(packet[5]));
  FDCE \packet_reg[6] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[6]_i_1_n_0 ),
        .Q(packet[6]));
  FDCE \packet_reg[7] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[7]_i_1_n_0 ),
        .Q(packet[7]));
  FDCE \packet_reg[8] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[8]_i_1_n_0 ),
        .Q(packet[8]));
  FDCE \packet_reg[9] 
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(\packet[9]_i_1_n_0 ),
        .Q(packet[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \threshold_reg[0] 
       (.CLR(1'b0),
        .D(mem_threshold[0]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[10] 
       (.CLR(1'b0),
        .D(mem_threshold[10]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[11] 
       (.CLR(1'b0),
        .D(mem_threshold[11]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \threshold_reg[11]_i_1 
       (.I0(mem_threshold[9]),
        .I1(mem_threshold[8]),
        .I2(mem_threshold[10]),
        .I3(mem_threshold[11]),
        .I4(\threshold_reg[11]_i_2_n_0 ),
        .I5(\threshold_reg[11]_i_3_n_0 ),
        .O(\threshold_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \threshold_reg[11]_i_2 
       (.I0(mem_threshold[2]),
        .I1(mem_threshold[3]),
        .I2(mem_threshold[0]),
        .I3(mem_threshold[1]),
        .O(\threshold_reg[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \threshold_reg[11]_i_3 
       (.I0(mem_threshold[6]),
        .I1(mem_threshold[7]),
        .I2(mem_threshold[4]),
        .I3(mem_threshold[5]),
        .O(\threshold_reg[11]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[1] 
       (.CLR(1'b0),
        .D(mem_threshold[1]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[2] 
       (.CLR(1'b0),
        .D(mem_threshold[2]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[3] 
       (.CLR(1'b0),
        .D(mem_threshold[3]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[4] 
       (.CLR(1'b0),
        .D(mem_threshold[4]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[5] 
       (.CLR(1'b0),
        .D(mem_threshold[5]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[6] 
       (.CLR(1'b0),
        .D(mem_threshold[6]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[7] 
       (.CLR(1'b0),
        .D(mem_threshold[7]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[8] 
       (.CLR(1'b0),
        .D(mem_threshold[8]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \threshold_reg[9] 
       (.CLR(1'b0),
        .D(mem_threshold[9]),
        .G(\threshold_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(threshold[9]));
  FDCE wr_en_reg
       (.C(pixClk),
        .CE(vsync),
        .CLR(rst),
        .D(gtOp),
        .Q(wr_en));
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
