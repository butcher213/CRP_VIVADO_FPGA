-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Apr 14 15:31:05 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_UART_clk_gen_0_0/fpga_design_UART_clk_gen_0_0_stub.vhdl
-- Design      : fpga_design_UART_clk_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fpga_design_UART_clk_gen_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    baudclk : out STD_LOGIC
  );

end fpga_design_UART_clk_gen_0_0;

architecture stub of fpga_design_UART_clk_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,baudclk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "UART_clk_gen,Vivado 2018.2";
begin
end;
