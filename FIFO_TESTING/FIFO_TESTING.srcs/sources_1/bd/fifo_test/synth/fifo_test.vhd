--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Tue Feb  5 16:15:52 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target fifo_test.bd
--Design      : fifo_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_test is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 41 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 41 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_enm : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fifo_test : entity is "fifo_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fifo_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fifo_test : entity is "fifo_test.hwdef";
end fifo_test;

architecture STRUCTURE of fifo_test is
  component fifo_test_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 41 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 41 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component fifo_test_fifo_generator_0_0;
  signal clk_1 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal rd_en_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal wr_enm_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  din_1(41 downto 0) <= din(41 downto 0);
  dout(41 downto 0) <= fifo_generator_0_dout(41 downto 0);
  empty <= fifo_generator_0_empty;
  full <= fifo_generator_0_full;
  rd_en_1 <= rd_en;
  rst_1 <= rst;
  wr_enm_1 <= wr_enm;
fifo_generator_0: component fifo_test_fifo_generator_0_0
     port map (
      din(41 downto 0) => din_1(41 downto 0),
      dout(41 downto 0) => fifo_generator_0_dout(41 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => clk_1,
      rd_en => rd_en_1,
      rst => rst_1,
      wr_clk => clk_1,
      wr_en => wr_enm_1
    );
end STRUCTURE;
