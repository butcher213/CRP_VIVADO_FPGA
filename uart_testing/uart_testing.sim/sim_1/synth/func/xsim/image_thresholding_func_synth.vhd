-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Feb 26 13:41:36 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/image_thresholding_func_synth.vhd
-- Design      : image_thresholding
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_thresholding is
  port (
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    layerId : in STD_LOGIC;
    cameraId : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    packet : out STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_thresholding : entity is true;
end image_thresholding;

architecture STRUCTURE of image_thresholding is
  signal cameraId_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  signal imgData_IBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal layerId_IBUF : STD_LOGIC;
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
  signal packet_OBUF : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal pixClk_IBUF : STD_LOGIC;
  signal pixClk_IBUF_BUFG : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal vsync_IBUF : STD_LOGIC;
  signal wr_en_OBUF : STD_LOGIC;
  signal wr_en_i_10_n_0 : STD_LOGIC;
  signal wr_en_i_11_n_0 : STD_LOGIC;
  signal wr_en_i_12_n_0 : STD_LOGIC;
  signal wr_en_i_13_n_0 : STD_LOGIC;
  signal wr_en_i_3_n_0 : STD_LOGIC;
  signal wr_en_i_4_n_0 : STD_LOGIC;
  signal wr_en_i_5_n_0 : STD_LOGIC;
  signal wr_en_i_6_n_0 : STD_LOGIC;
  signal wr_en_i_7_n_0 : STD_LOGIC;
  signal wr_en_i_8_n_0 : STD_LOGIC;
  signal wr_en_i_9_n_0 : STD_LOGIC;
  signal wr_en_reg_i_1_n_3 : STD_LOGIC;
  signal wr_en_reg_i_2_n_0 : STD_LOGIC;
  signal wr_en_reg_i_2_n_1 : STD_LOGIC;
  signal wr_en_reg_i_2_n_2 : STD_LOGIC;
  signal wr_en_reg_i_2_n_3 : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_wr_en_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_wr_en_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_wr_en_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
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
begin
\cameraId_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cameraId(0),
      O => cameraId_IBUF(0)
    );
\cameraId_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cameraId(1),
      O => cameraId_IBUF(1)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
\imgData_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(0),
      O => imgData_IBUF(0)
    );
\imgData_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(10),
      O => imgData_IBUF(10)
    );
\imgData_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(11),
      O => imgData_IBUF(11)
    );
\imgData_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(1),
      O => imgData_IBUF(1)
    );
\imgData_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(2),
      O => imgData_IBUF(2)
    );
\imgData_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(3),
      O => imgData_IBUF(3)
    );
\imgData_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(4),
      O => imgData_IBUF(4)
    );
\imgData_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(5),
      O => imgData_IBUF(5)
    );
\imgData_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(6),
      O => imgData_IBUF(6)
    );
\imgData_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(7),
      O => imgData_IBUF(7)
    );
\imgData_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(8),
      O => imgData_IBUF(8)
    );
\imgData_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(9),
      O => imgData_IBUF(9)
    );
layerId_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => layerId,
      O => layerId_IBUF
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
      I1 => imgData_IBUF(0),
      O => \packet[25]_i_1_n_0\
    );
\packet[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(1),
      O => \packet[26]_i_1_n_0\
    );
\packet[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(2),
      O => \packet[27]_i_1_n_0\
    );
\packet[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(3),
      O => \packet[28]_i_1_n_0\
    );
\packet[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(4),
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
      I1 => imgData_IBUF(5),
      O => \packet[30]_i_1_n_0\
    );
\packet[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(6),
      O => \packet[31]_i_1_n_0\
    );
\packet[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(7),
      O => \packet[32]_i_1_n_0\
    );
\packet[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(8),
      O => \packet[33]_i_1_n_0\
    );
\packet[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(9),
      O => \packet[34]_i_1_n_0\
    );
\packet[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(10),
      O => \packet[35]_i_1_n_0\
    );
\packet[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData_IBUF(11),
      O => \packet[36]_i_1_n_0\
    );
\packet[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId_IBUF(0),
      O => \packet[37]_i_1_n_0\
    );
\packet[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId_IBUF(1),
      O => \packet[38]_i_1_n_0\
    );
\packet[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => layerId_IBUF,
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
\packet_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(0),
      O => packet(0)
    );
\packet_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(10),
      O => packet(10)
    );
\packet_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(11),
      O => packet(11)
    );
\packet_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(12),
      O => packet(12)
    );
\packet_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(13),
      O => packet(13)
    );
\packet_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(14),
      O => packet(14)
    );
\packet_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(15),
      O => packet(15)
    );
\packet_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(16),
      O => packet(16)
    );
\packet_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(17),
      O => packet(17)
    );
\packet_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(18),
      O => packet(18)
    );
\packet_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(19),
      O => packet(19)
    );
\packet_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(1),
      O => packet(1)
    );
\packet_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(20),
      O => packet(20)
    );
\packet_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(21),
      O => packet(21)
    );
\packet_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(22),
      O => packet(22)
    );
\packet_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(23),
      O => packet(23)
    );
\packet_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(24),
      O => packet(24)
    );
\packet_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(25),
      O => packet(25)
    );
\packet_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(26),
      O => packet(26)
    );
\packet_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(27),
      O => packet(27)
    );
\packet_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(28),
      O => packet(28)
    );
\packet_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(29),
      O => packet(29)
    );
\packet_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(2),
      O => packet(2)
    );
\packet_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(30),
      O => packet(30)
    );
\packet_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(31),
      O => packet(31)
    );
\packet_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(32),
      O => packet(32)
    );
\packet_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(33),
      O => packet(33)
    );
\packet_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(34),
      O => packet(34)
    );
\packet_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(35),
      O => packet(35)
    );
\packet_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(36),
      O => packet(36)
    );
\packet_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(37),
      O => packet(37)
    );
\packet_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(38),
      O => packet(38)
    );
\packet_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(39),
      O => packet(39)
    );
\packet_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(3),
      O => packet(3)
    );
\packet_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(4),
      O => packet(4)
    );
\packet_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(5),
      O => packet(5)
    );
\packet_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(6),
      O => packet(6)
    );
\packet_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(7),
      O => packet(7)
    );
\packet_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(8),
      O => packet(8)
    );
\packet_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => packet_OBUF(9),
      O => packet(9)
    );
\packet_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[0]_i_1_n_0\,
      Q => packet_OBUF(0)
    );
\packet_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[10]_i_1_n_0\,
      Q => packet_OBUF(10)
    );
\packet_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[11]_i_1_n_0\,
      Q => packet_OBUF(11)
    );
\packet_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[12]_i_1_n_0\,
      Q => packet_OBUF(12)
    );
\packet_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[13]_i_1_n_0\,
      Q => packet_OBUF(13)
    );
\packet_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[14]_i_1_n_0\,
      Q => packet_OBUF(14)
    );
\packet_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[15]_i_1_n_0\,
      Q => packet_OBUF(15)
    );
\packet_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[16]_i_1_n_0\,
      Q => packet_OBUF(16)
    );
\packet_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[17]_i_1_n_0\,
      Q => packet_OBUF(17)
    );
\packet_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[18]_i_1_n_0\,
      Q => packet_OBUF(18)
    );
\packet_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[19]_i_1_n_0\,
      Q => packet_OBUF(19)
    );
\packet_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[1]_i_1_n_0\,
      Q => packet_OBUF(1)
    );
\packet_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[20]_i_1_n_0\,
      Q => packet_OBUF(20)
    );
\packet_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[21]_i_1_n_0\,
      Q => packet_OBUF(21)
    );
\packet_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[22]_i_1_n_0\,
      Q => packet_OBUF(22)
    );
\packet_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[23]_i_1_n_0\,
      Q => packet_OBUF(23)
    );
\packet_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[24]_i_1_n_0\,
      Q => packet_OBUF(24)
    );
\packet_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[25]_i_1_n_0\,
      Q => packet_OBUF(25)
    );
\packet_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[26]_i_1_n_0\,
      Q => packet_OBUF(26)
    );
\packet_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[27]_i_1_n_0\,
      Q => packet_OBUF(27)
    );
\packet_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[28]_i_1_n_0\,
      Q => packet_OBUF(28)
    );
\packet_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[29]_i_1_n_0\,
      Q => packet_OBUF(29)
    );
\packet_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[2]_i_1_n_0\,
      Q => packet_OBUF(2)
    );
\packet_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[30]_i_1_n_0\,
      Q => packet_OBUF(30)
    );
\packet_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[31]_i_1_n_0\,
      Q => packet_OBUF(31)
    );
\packet_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[32]_i_1_n_0\,
      Q => packet_OBUF(32)
    );
\packet_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[33]_i_1_n_0\,
      Q => packet_OBUF(33)
    );
\packet_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[34]_i_1_n_0\,
      Q => packet_OBUF(34)
    );
\packet_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[35]_i_1_n_0\,
      Q => packet_OBUF(35)
    );
\packet_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[36]_i_1_n_0\,
      Q => packet_OBUF(36)
    );
\packet_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[37]_i_1_n_0\,
      Q => packet_OBUF(37)
    );
\packet_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[38]_i_1_n_0\,
      Q => packet_OBUF(38)
    );
\packet_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[39]_i_1_n_0\,
      Q => packet_OBUF(39)
    );
\packet_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[3]_i_1_n_0\,
      Q => packet_OBUF(3)
    );
\packet_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[4]_i_1_n_0\,
      Q => packet_OBUF(4)
    );
\packet_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[5]_i_1_n_0\,
      Q => packet_OBUF(5)
    );
\packet_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[6]_i_1_n_0\,
      Q => packet_OBUF(6)
    );
\packet_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[7]_i_1_n_0\,
      Q => packet_OBUF(7)
    );
\packet_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[8]_i_1_n_0\,
      Q => packet_OBUF(8)
    );
\packet_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => \packet[9]_i_1_n_0\,
      Q => packet_OBUF(9)
    );
pixClk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => pixClk_IBUF,
      O => pixClk_IBUF_BUFG
    );
pixClk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => pixClk,
      O => pixClk_IBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
vsync_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => vsync,
      O => vsync_IBUF
    );
wr_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => wr_en_OBUF,
      O => wr_en
    );
wr_en_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgData_IBUF(6),
      I1 => imgData_IBUF(7),
      O => wr_en_i_10_n_0
    );
wr_en_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgData_IBUF(4),
      I1 => imgData_IBUF(5),
      O => wr_en_i_11_n_0
    );
wr_en_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgData_IBUF(2),
      I1 => imgData_IBUF(3),
      O => wr_en_i_12_n_0
    );
wr_en_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => imgData_IBUF(0),
      I1 => imgData_IBUF(1),
      O => wr_en_i_13_n_0
    );
wr_en_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => imgData_IBUF(10),
      I1 => imgData_IBUF(11),
      O => wr_en_i_3_n_0
    );
wr_en_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => imgData_IBUF(8),
      I1 => imgData_IBUF(9),
      O => wr_en_i_4_n_0
    );
wr_en_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgData_IBUF(10),
      I1 => imgData_IBUF(11),
      O => wr_en_i_5_n_0
    );
wr_en_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgData_IBUF(8),
      I1 => imgData_IBUF(9),
      O => wr_en_i_6_n_0
    );
wr_en_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => imgData_IBUF(6),
      I1 => imgData_IBUF(7),
      O => wr_en_i_7_n_0
    );
wr_en_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => imgData_IBUF(4),
      I1 => imgData_IBUF(5),
      O => wr_en_i_8_n_0
    );
wr_en_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => imgData_IBUF(2),
      I1 => imgData_IBUF(3),
      O => wr_en_i_9_n_0
    );
wr_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk_IBUF_BUFG,
      CE => vsync_IBUF,
      CLR => rst_IBUF,
      D => gtOp,
      Q => wr_en_OBUF
    );
wr_en_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => wr_en_reg_i_2_n_0,
      CO(3 downto 2) => NLW_wr_en_reg_i_1_CO_UNCONNECTED(3 downto 2),
      CO(1) => gtOp,
      CO(0) => wr_en_reg_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => wr_en_i_3_n_0,
      DI(0) => wr_en_i_4_n_0,
      O(3 downto 0) => NLW_wr_en_reg_i_1_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => wr_en_i_5_n_0,
      S(0) => wr_en_i_6_n_0
    );
wr_en_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wr_en_reg_i_2_n_0,
      CO(2) => wr_en_reg_i_2_n_1,
      CO(1) => wr_en_reg_i_2_n_2,
      CO(0) => wr_en_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => wr_en_i_7_n_0,
      DI(2) => wr_en_i_8_n_0,
      DI(1) => wr_en_i_9_n_0,
      DI(0) => imgData_IBUF(1),
      O(3 downto 0) => NLW_wr_en_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => wr_en_i_10_n_0,
      S(2) => wr_en_i_11_n_0,
      S(1) => wr_en_i_12_n_0,
      S(0) => wr_en_i_13_n_0
    );
end STRUCTURE;
