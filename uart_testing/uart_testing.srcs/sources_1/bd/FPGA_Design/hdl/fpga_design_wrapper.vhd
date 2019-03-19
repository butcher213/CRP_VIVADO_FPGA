--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat Mar  9 10:58:20 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target fpga_design_wrapper.bd
--Design      : fpga_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_wrapper is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_out : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_ready : in STD_LOGIC;
    read_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
end fpga_design_wrapper;

architecture STRUCTURE of fpga_design_wrapper is
  component fpga_design is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_out : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_ready : in STD_LOGIC;
    uart_rx : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Tx : out STD_LOGIC;
    read_en : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  end component fpga_design;
begin
fpga_design_i: component fpga_design
     port map (
      Tx => Tx,
      Tx_enabled => Tx_enabled,
      clk => clk,
      fifo_empty => fifo_empty,
      fifo_full => fifo_full,
      fifo_out(39 downto 0) => fifo_out(39 downto 0),
      fifo_ready => fifo_ready,
      read_en => read_en,
      rst => rst,
      threshold(11 downto 0) => threshold(11 downto 0),
      tx_lock => tx_lock,
      uart_rx => uart_rx
    );
end STRUCTURE;
