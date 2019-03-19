--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 14 17:25:26 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    empty : out STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    fifo_reset : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_enable : out STD_LOGIC;
    rd_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_enable : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_0;
  component design_1_fifo_protector_0_0 is
  port (
    clk : in STD_LOGIC;
    wr_in : in STD_LOGIC;
    rd_in : in STD_LOGIC;
    global_rst : in STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC
  );
  end component design_1_fifo_protector_0_0;
  signal clk_1 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fifo_protector_0_fifo_ready : STD_LOGIC;
  signal fifo_protector_0_fifo_rst : STD_LOGIC;
  signal fifo_protector_0_rd_en : STD_LOGIC;
  signal fifo_protector_0_wr_en : STD_LOGIC;
  signal rd_in_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  din_1(39 downto 0) <= din(39 downto 0);
  dout(39 downto 0) <= fifo_generator_0_dout(39 downto 0);
  empty <= fifo_generator_0_empty;
  fifo_ready <= fifo_protector_0_fifo_ready;
  fifo_reset <= fifo_protector_0_fifo_rst;
  full <= fifo_generator_0_full;
  rd_enable <= fifo_protector_0_rd_en;
  rd_in_1 <= rd_in;
  rst_1 <= rst;
  wr_en_1 <= wr_en;
  wr_enable <= fifo_protector_0_wr_en;
fifo_generator_0: component design_1_fifo_generator_0_0
     port map (
      din(39 downto 0) => din_1(39 downto 0),
      dout(39 downto 0) => fifo_generator_0_dout(39 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => clk_1,
      rd_en => fifo_protector_0_rd_en,
      rst => fifo_protector_0_fifo_rst,
      wr_clk => clk_1,
      wr_en => fifo_protector_0_wr_en
    );
fifo_protector_0: component design_1_fifo_protector_0_0
     port map (
      clk => clk_1,
      fifo_ready => fifo_protector_0_fifo_ready,
      fifo_rst => fifo_protector_0_fifo_rst,
      global_rst => rst_1,
      rd_en => fifo_protector_0_rd_en,
      rd_in => rd_in_1,
      wr_en => fifo_protector_0_wr_en,
      wr_in => wr_en_1
    );
end STRUCTURE;
