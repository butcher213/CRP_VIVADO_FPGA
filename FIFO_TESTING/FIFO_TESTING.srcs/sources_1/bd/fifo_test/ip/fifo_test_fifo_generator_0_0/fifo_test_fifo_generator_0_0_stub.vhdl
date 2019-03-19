-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Feb  5 16:17:02 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/butchertd/Documents/eaglesat/FIFO_TESTING/FIFO_TESTING.srcs/sources_1/bd/fifo_test/ip/fifo_test_fifo_generator_0_0/fifo_test_fifo_generator_0_0_stub.vhdl
-- Design      : fifo_test_fifo_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12tcpg238-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_test_fifo_generator_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 41 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 41 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end fifo_test_fifo_generator_0_0;

architecture stub of fifo_test_fifo_generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[41:0],wr_en,rd_en,dout[41:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_2,Vivado 2018.2";
begin
end;