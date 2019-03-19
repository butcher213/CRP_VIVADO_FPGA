-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 28 15:29:24 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/CRP_FPGA/ip/CRP_FPGA_threshold_memory_0_0/CRP_FPGA_threshold_memory_0_0_stub.vhdl
-- Design      : CRP_FPGA_threshold_memory_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CRP_FPGA_threshold_memory_0_0 is
  Port ( 
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end CRP_FPGA_threshold_memory_0_0;

architecture stub of CRP_FPGA_threshold_memory_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "threshold_in[11:0],rst,clk,threshold_out[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "threshold_memory,Vivado 2018.2";
begin
end;
