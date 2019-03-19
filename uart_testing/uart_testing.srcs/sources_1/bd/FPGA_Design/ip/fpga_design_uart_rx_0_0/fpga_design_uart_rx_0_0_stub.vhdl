-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar  9 11:08:08 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_uart_rx_0_0/fpga_design_uart_rx_0_0_stub.vhdl
-- Design      : fpga_design_uart_rx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fpga_design_uart_rx_0_0 is
  Port ( 
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC
  );

end fpga_design_uart_rx_0_0;

architecture stub of fpga_design_uart_rx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Rx,uart_clk,rst,Rx_out[7:0],Rx_end";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "uart_rx,Vivado 2018.2";
begin
end;
