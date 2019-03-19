--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 28 17:05:33 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target CRP_FPGA_wrapper.bd
--Design      : CRP_FPGA_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CRP_FPGA_wrapper is
  port (
    Camera_data_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    FIFO_IS_READY : out STD_LOGIC;
    Rx_end : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx : out STD_LOGIC;
    Tx_counter : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_enabled : out STD_LOGIC;
    camera_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_is_emtpy : out STD_LOGIC;
    fifo_out : out STD_LOGIC_VECTOR ( 39 downto 0 );
    href : in STD_LOGIC;
    layerId : in STD_LOGIC;
    pixclk : in STD_LOGIC;
    read_enabled : out STD_LOGIC;
    rst : in STD_LOGIC;
    tx_locked : out STD_LOGIC;
    uartclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    write_enabled : out STD_LOGIC
  );
end CRP_FPGA_wrapper;

architecture STRUCTURE of CRP_FPGA_wrapper is
  component CRP_FPGA is
  port (
    Camera_data_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixclk : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    layerId : in STD_LOGIC;
    camera_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    rst : in STD_LOGIC;
    uartclk : in STD_LOGIC;
    fifo_out : out STD_LOGIC_VECTOR ( 39 downto 0 );
    write_enabled : out STD_LOGIC;
    read_enabled : out STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    Tx_counter : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_locked : out STD_LOGIC;
    FIFO_IS_READY : out STD_LOGIC;
    fifo_is_emtpy : out STD_LOGIC
  );
  end component CRP_FPGA;
begin
CRP_FPGA_i: component CRP_FPGA
     port map (
      Camera_data_out(11 downto 0) => Camera_data_out(11 downto 0),
      FIFO_IS_READY => FIFO_IS_READY,
      Rx_end => Rx_end,
      Rx_in(7 downto 0) => Rx_in(7 downto 0),
      Tx => Tx,
      Tx_counter(2 downto 0) => Tx_counter(2 downto 0),
      Tx_enabled => Tx_enabled,
      camera_id(1 downto 0) => camera_id(1 downto 0),
      fifo_is_emtpy => fifo_is_emtpy,
      fifo_out(39 downto 0) => fifo_out(39 downto 0),
      href => href,
      layerId => layerId,
      pixclk => pixclk,
      read_enabled => read_enabled,
      rst => rst,
      tx_locked => tx_locked,
      uartclk => uartclk,
      vsync => vsync,
      write_enabled => write_enabled
    );
end STRUCTURE;
