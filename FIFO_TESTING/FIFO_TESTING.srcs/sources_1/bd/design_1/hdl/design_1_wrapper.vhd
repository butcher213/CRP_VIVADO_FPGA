--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 14 17:25:26 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    fifo_reset : out STD_LOGIC;
    rd_enable : out STD_LOGIC;
    wr_enable : out STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_in : in STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk => clk,
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      fifo_ready => fifo_ready,
      fifo_reset => fifo_reset,
      full => full,
      rd_enable => rd_enable,
      rd_in => rd_in,
      rst => rst,
      wr_en => wr_en,
      wr_enable => wr_enable
    );
end STRUCTURE;
