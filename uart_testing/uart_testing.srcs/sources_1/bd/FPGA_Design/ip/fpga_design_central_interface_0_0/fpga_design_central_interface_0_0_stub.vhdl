-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Apr 14 16:17:34 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_central_interface_0_0/fpga_design_central_interface_0_0_stub.vhdl
-- Design      : fpga_design_central_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fpga_design_central_interface_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    FIFO_ready : in STD_LOGIC;
    FIFO_empty : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    Tx_en : out STD_LOGIC;
    read_enable : out STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Tx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    works : out STD_LOGIC
  );

end fpga_design_central_interface_0_0;

architecture stub of fpga_design_central_interface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,Rx_in[7:0],Rx_end,FIFO_ready,FIFO_empty,FIFO_full,Tx_en,read_enable,threshold_out[11:0],Tx_out[7:0],works";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "central_interface,Vivado 2018.2";
begin
end;
