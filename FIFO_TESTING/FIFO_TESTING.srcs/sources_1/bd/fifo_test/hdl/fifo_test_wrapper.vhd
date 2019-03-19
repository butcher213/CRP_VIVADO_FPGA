--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Tue Feb  5 16:15:52 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target fifo_test_wrapper.bd
--Design      : fifo_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_test_wrapper is
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
end fifo_test_wrapper;

architecture STRUCTURE of fifo_test_wrapper is
  component fifo_test is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 41 downto 0 );
    rd_en : in STD_LOGIC;
    wr_enm : in STD_LOGIC;
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  end component fifo_test;
begin
fifo_test_i: component fifo_test
     port map (
      clk => clk,
      din(41 downto 0) => din(41 downto 0),
      dout(41 downto 0) => dout(41 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_enm => wr_enm
    );
end STRUCTURE;
