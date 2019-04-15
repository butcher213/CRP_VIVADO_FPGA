--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sun Apr 14 18:47:16 2019
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
    Rx : in STD_LOGIC;
    Tx : out STD_LOGIC;
    cameraid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_ready : out STD_LOGIC;
    layerid : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_out : out STD_LOGIC;
    sim_enable : in STD_LOGIC
  );
end fpga_design_wrapper;

architecture STRUCTURE of fpga_design_wrapper is
  component fpga_design is
  port (
    Tx : out STD_LOGIC;
    layerid : in STD_LOGIC;
    cameraid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pixClk : in STD_LOGIC;
    Rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    sim_enable : in STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    rx_out : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fpga_design;
begin
fpga_design_i: component fpga_design
     port map (
      Rx => Rx,
      Tx => Tx,
      cameraid(1 downto 0) => cameraid(1 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      fifo_ready => fifo_ready,
      layerid => layerid,
      pixClk => pixClk,
      rst => rst,
      rx_out => rx_out,
      sim_enable => sim_enable
    );
end STRUCTURE;
