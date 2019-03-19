--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 28 12:48:50 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Block_Design_wrapper.bd
--Design      : FPGA_Block_Design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Block_Design_wrapper is
  port (
    FIFO_empty : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    FIFO_ready : in STD_LOGIC;
    Rx_end : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
end FPGA_Block_Design_wrapper;

architecture STRUCTURE of FPGA_Block_Design_wrapper is
  component FPGA_Block_Design is
  port (
    FIFO_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    Tx : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_ready : in STD_LOGIC;
    FIFO_empty : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component FPGA_Block_Design;
begin
FPGA_Block_Design_i: component FPGA_Block_Design
     port map (
      FIFO_empty => FIFO_empty,
      FIFO_full => FIFO_full,
      FIFO_in(39 downto 0) => FIFO_in(39 downto 0),
      FIFO_ready => FIFO_ready,
      Rx_end => Rx_end,
      Rx_in(7 downto 0) => Rx_in(7 downto 0),
      Tx => Tx,
      Tx_enabled => Tx_enabled,
      clk => clk,
      data_line(2 downto 0) => data_line(2 downto 0),
      rst => rst,
      tx_lock => tx_lock
    );
end STRUCTURE;
