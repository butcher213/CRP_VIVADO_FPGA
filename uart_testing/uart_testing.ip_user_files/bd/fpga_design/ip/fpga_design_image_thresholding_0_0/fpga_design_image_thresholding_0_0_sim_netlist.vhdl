-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Mar 21 16:27:13 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_image_thresholding_0_0/fpga_design_image_thresholding_0_0_sim_netlist.vhdl
-- Design      : fpga_design_image_thresholding_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_image_thresholding_0_0_image_thresholding is
  port (
    packet : out STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : out STD_LOGIC;
    mem_threshold : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vsync : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    cameraId : in STD_LOGIC_VECTOR ( 1 downto 0 );
    layerId : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_image_thresholding_0_0_image_thresholding : entity is "image_thresholding";
end fpga_design_image_thresholding_0_0_image_thresholding;

architecture STRUCTURE of fpga_design_image_thresholding_0_0_image_thresholding is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \packet[0]_i_1_n_0\ : STD_LOGIC;
  signal \packet[10]_i_1_n_0\ : STD_LOGIC;
  signal \packet[11]_i_1_n_0\ : STD_LOGIC;
  signal \packet[12]_i_1_n_0\ : STD_LOGIC;
  signal \packet[13]_i_1_n_0\ : STD_LOGIC;
  signal \packet[14]_i_1_n_0\ : STD_LOGIC;
  signal \packet[15]_i_1_n_0\ : STD_LOGIC;
  signal \packet[16]_i_1_n_0\ : STD_LOGIC;
  signal \packet[17]_i_1_n_0\ : STD_LOGIC;
  signal \packet[18]_i_1_n_0\ : STD_LOGIC;
  signal \packet[19]_i_1_n_0\ : STD_LOGIC;
  signal \packet[1]_i_1_n_0\ : STD_LOGIC;
  signal \packet[20]_i_1_n_0\ : STD_LOGIC;
  signal \packet[21]_i_1_n_0\ : STD_LOGIC;
  signal \packet[22]_i_1_n_0\ : STD_LOGIC;
  signal \packet[23]_i_1_n_0\ : STD_LOGIC;
  signal \packet[24]_i_1_n_0\ : STD_LOGIC;
  signal \packet[25]_i_1_n_0\ : STD_LOGIC;
  signal \packet[26]_i_1_n_0\ : STD_LOGIC;
  signal \packet[27]_i_1_n_0\ : STD_LOGIC;
  signal \packet[28]_i_1_n_0\ : STD_LOGIC;
  signal \packet[29]_i_1_n_0\ : STD_LOGIC;
  signal \packet[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet[30]_i_1_n_0\ : STD_LOGIC;
  signal \packet[31]_i_1_n_0\ : STD_LOGIC;
  signal \packet[32]_i_1_n_0\ : STD_LOGIC;
  signal \packet[33]_i_1_n_0\ : STD_LOGIC;
  signal \packet[34]_i_1_n_0\ : STD_LOGIC;
  signal \packet[35]_i_1_n_0\ : STD_LOGIC;
  signal \packet[36]_i_1_n_0\ : STD_LOGIC;
  signal \packet[37]_i_1_n_0\ : STD_LOGIC;
  signal \packet[38]_i_1_n_0\ : STD_LOGIC;
  signal \packet[39]_i_1_n_0\ : STD_LOGIC;
  signal \packet[3]_i_1_n_0\ : STD_LOGIC;
  signal \packet[4]_i_1_n_0\ : STD_LOGIC;
  signal \packet[5]_i_1_n_0\ : STD_LOGIC;
  signal \packet[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet[7]_i_1_n_0\ : STD_LOGIC;
  signal \packet[8]_i_1_n_0\ : STD_LOGIC;
  signal \packet[9]_i_1_n_0\ : STD_LOGIC;
  signal threshold : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \threshold_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \threshold_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \packet[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packet[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packet[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packet[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packet[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packet[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packet[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packet[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packet[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \packet[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \packet[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packet[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packet[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packet[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packet[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packet[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packet[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packet[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packet[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packet[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packet[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packet[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packet[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packet[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \packet[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \packet[34]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \packet[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \packet[36]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[37]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[38]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packet[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packet[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packet[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packet[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packet[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packet[9]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \threshold_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[9]\ : label is "LD";
begin
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(24)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 2) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => gtOp,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \gtOp_carry__0_i_1_n_0\,
      DI(0) => \gtOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \gtOp_carry__0_i_3_n_0\,
      S(0) => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(10),
      I1 => threshold(10),
      I2 => threshold(11),
      I3 => imgData(11),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(8),
      I1 => threshold(8),
      I2 => threshold(9),
      I3 => imgData(9),
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(10),
      I1 => threshold(10),
      I2 => imgData(11),
      I3 => threshold(11),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(8),
      I1 => threshold(8),
      I2 => imgData(9),
      I3 => threshold(9),
      O => \gtOp_carry__0_i_4_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(6),
      I1 => threshold(6),
      I2 => threshold(7),
      I3 => imgData(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(4),
      I1 => threshold(4),
      I2 => threshold(5),
      I3 => imgData(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(2),
      I1 => threshold(2),
      I2 => threshold(3),
      I3 => imgData(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(0),
      I1 => threshold(0),
      I2 => threshold(1),
      I3 => imgData(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(6),
      I1 => threshold(6),
      I2 => imgData(7),
      I3 => threshold(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(4),
      I1 => threshold(4),
      I2 => imgData(5),
      I3 => threshold(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(2),
      I1 => threshold(2),
      I2 => imgData(3),
      I3 => threshold(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(0),
      I1 => threshold(0),
      I2 => imgData(1),
      I3 => threshold(1),
      O => gtOp_carry_i_8_n_0
    );
\packet[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(0),
      O => \packet[0]_i_1_n_0\
    );
\packet[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(10),
      O => \packet[10]_i_1_n_0\
    );
\packet[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(11),
      O => \packet[11]_i_1_n_0\
    );
\packet[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(12),
      O => \packet[12]_i_1_n_0\
    );
\packet[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(13),
      O => \packet[13]_i_1_n_0\
    );
\packet[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(14),
      O => \packet[14]_i_1_n_0\
    );
\packet[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(15),
      O => \packet[15]_i_1_n_0\
    );
\packet[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(16),
      O => \packet[16]_i_1_n_0\
    );
\packet[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(17),
      O => \packet[17]_i_1_n_0\
    );
\packet[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(18),
      O => \packet[18]_i_1_n_0\
    );
\packet[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(19),
      O => \packet[19]_i_1_n_0\
    );
\packet[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(1),
      O => \packet[1]_i_1_n_0\
    );
\packet[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(20),
      O => \packet[20]_i_1_n_0\
    );
\packet[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(21),
      O => \packet[21]_i_1_n_0\
    );
\packet[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(22),
      O => \packet[22]_i_1_n_0\
    );
\packet[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(23),
      O => \packet[23]_i_1_n_0\
    );
\packet[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(24),
      O => \packet[24]_i_1_n_0\
    );
\packet[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(0),
      O => \packet[25]_i_1_n_0\
    );
\packet[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(1),
      O => \packet[26]_i_1_n_0\
    );
\packet[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(2),
      O => \packet[27]_i_1_n_0\
    );
\packet[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(3),
      O => \packet[28]_i_1_n_0\
    );
\packet[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(4),
      O => \packet[29]_i_1_n_0\
    );
\packet[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(2),
      O => \packet[2]_i_1_n_0\
    );
\packet[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(5),
      O => \packet[30]_i_1_n_0\
    );
\packet[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(6),
      O => \packet[31]_i_1_n_0\
    );
\packet[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(7),
      O => \packet[32]_i_1_n_0\
    );
\packet[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(8),
      O => \packet[33]_i_1_n_0\
    );
\packet[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(9),
      O => \packet[34]_i_1_n_0\
    );
\packet[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(10),
      O => \packet[35]_i_1_n_0\
    );
\packet[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(11),
      O => \packet[36]_i_1_n_0\
    );
\packet[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId(0),
      O => \packet[37]_i_1_n_0\
    );
\packet[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId(1),
      O => \packet[38]_i_1_n_0\
    );
\packet[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => layerId,
      O => \packet[39]_i_1_n_0\
    );
\packet[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(3),
      O => \packet[3]_i_1_n_0\
    );
\packet[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(4),
      O => \packet[4]_i_1_n_0\
    );
\packet[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(5),
      O => \packet[5]_i_1_n_0\
    );
\packet[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(6),
      O => \packet[6]_i_1_n_0\
    );
\packet[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(7),
      O => \packet[7]_i_1_n_0\
    );
\packet[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(8),
      O => \packet[8]_i_1_n_0\
    );
\packet[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(9),
      O => \packet[9]_i_1_n_0\
    );
\packet_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[0]_i_1_n_0\,
      Q => packet(0)
    );
\packet_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[10]_i_1_n_0\,
      Q => packet(10)
    );
\packet_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[11]_i_1_n_0\,
      Q => packet(11)
    );
\packet_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[12]_i_1_n_0\,
      Q => packet(12)
    );
\packet_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[13]_i_1_n_0\,
      Q => packet(13)
    );
\packet_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[14]_i_1_n_0\,
      Q => packet(14)
    );
\packet_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[15]_i_1_n_0\,
      Q => packet(15)
    );
\packet_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[16]_i_1_n_0\,
      Q => packet(16)
    );
\packet_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[17]_i_1_n_0\,
      Q => packet(17)
    );
\packet_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[18]_i_1_n_0\,
      Q => packet(18)
    );
\packet_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[19]_i_1_n_0\,
      Q => packet(19)
    );
\packet_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[1]_i_1_n_0\,
      Q => packet(1)
    );
\packet_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[20]_i_1_n_0\,
      Q => packet(20)
    );
\packet_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[21]_i_1_n_0\,
      Q => packet(21)
    );
\packet_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[22]_i_1_n_0\,
      Q => packet(22)
    );
\packet_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[23]_i_1_n_0\,
      Q => packet(23)
    );
\packet_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[24]_i_1_n_0\,
      Q => packet(24)
    );
\packet_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[25]_i_1_n_0\,
      Q => packet(25)
    );
\packet_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[26]_i_1_n_0\,
      Q => packet(26)
    );
\packet_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[27]_i_1_n_0\,
      Q => packet(27)
    );
\packet_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[28]_i_1_n_0\,
      Q => packet(28)
    );
\packet_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[29]_i_1_n_0\,
      Q => packet(29)
    );
\packet_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[2]_i_1_n_0\,
      Q => packet(2)
    );
\packet_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[30]_i_1_n_0\,
      Q => packet(30)
    );
\packet_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[31]_i_1_n_0\,
      Q => packet(31)
    );
\packet_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[32]_i_1_n_0\,
      Q => packet(32)
    );
\packet_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[33]_i_1_n_0\,
      Q => packet(33)
    );
\packet_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[34]_i_1_n_0\,
      Q => packet(34)
    );
\packet_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[35]_i_1_n_0\,
      Q => packet(35)
    );
\packet_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[36]_i_1_n_0\,
      Q => packet(36)
    );
\packet_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[37]_i_1_n_0\,
      Q => packet(37)
    );
\packet_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[38]_i_1_n_0\,
      Q => packet(38)
    );
\packet_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[39]_i_1_n_0\,
      Q => packet(39)
    );
\packet_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[3]_i_1_n_0\,
      Q => packet(3)
    );
\packet_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[4]_i_1_n_0\,
      Q => packet(4)
    );
\packet_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[5]_i_1_n_0\,
      Q => packet(5)
    );
\packet_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[6]_i_1_n_0\,
      Q => packet(6)
    );
\packet_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[7]_i_1_n_0\,
      Q => packet(7)
    );
\packet_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[8]_i_1_n_0\,
      Q => packet(8)
    );
\packet_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[9]_i_1_n_0\,
      Q => packet(9)
    );
\threshold_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => mem_threshold(0),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(0)
    );
\threshold_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(10),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(10)
    );
\threshold_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(11),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(11)
    );
\threshold_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => mem_threshold(9),
      I1 => mem_threshold(8),
      I2 => mem_threshold(10),
      I3 => mem_threshold(11),
      I4 => \threshold_reg[11]_i_2_n_0\,
      I5 => \threshold_reg[11]_i_3_n_0\,
      O => \threshold_reg[11]_i_1_n_0\
    );
\threshold_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mem_threshold(2),
      I1 => mem_threshold(3),
      I2 => mem_threshold(0),
      I3 => mem_threshold(1),
      O => \threshold_reg[11]_i_2_n_0\
    );
\threshold_reg[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mem_threshold(6),
      I1 => mem_threshold(7),
      I2 => mem_threshold(4),
      I3 => mem_threshold(5),
      O => \threshold_reg[11]_i_3_n_0\
    );
\threshold_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(1),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(1)
    );
\threshold_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(2),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(2)
    );
\threshold_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(3),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(3)
    );
\threshold_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(4),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(4)
    );
\threshold_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(5),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(5)
    );
\threshold_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(6),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(6)
    );
\threshold_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(7),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(7)
    );
\threshold_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(8),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(8)
    );
\threshold_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(9),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(9)
    );
wr_en_reg: unisim.vcomponents.FDCE
     port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => gtOp,
      Q => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_image_thresholding_0_0 is
  port (
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    layerId : in STD_LOGIC;
    cameraId : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    mem_threshold : in STD_LOGIC_VECTOR ( 11 downto 0 );
    packet : out STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_image_thresholding_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_image_thresholding_0_0 : entity is "fpga_design_image_thresholding_0_0,image_thresholding,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_image_thresholding_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_image_thresholding_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_image_thresholding_0_0 : entity is "image_thresholding,Vivado 2018.2";
end fpga_design_image_thresholding_0_0;

architecture STRUCTURE of fpga_design_image_thresholding_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.fpga_design_image_thresholding_0_0_image_thresholding
     port map (
      cameraId(1 downto 0) => cameraId(1 downto 0),
      imgData(11 downto 0) => imgData(11 downto 0),
      layerId => layerId,
      mem_threshold(11 downto 0) => mem_threshold(11 downto 0),
      packet(39 downto 0) => packet(39 downto 0),
      pixClk => pixClk,
      rst => rst,
      vsync => vsync,
      wr_en => wr_en
    );
end STRUCTURE;
