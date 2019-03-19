-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Feb 27 13:26:11 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/threshold_memory_func_synth.vhd
-- Design      : threshold_memory
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity threshold_memory is
  port (
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of threshold_memory : entity is true;
end threshold_memory;

architecture STRUCTURE of threshold_memory is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \internal_memory[11]_i_1_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_2_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_3_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_4_n_0\ : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal threshold_in_IBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal threshold_out_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\internal_memory[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \internal_memory[11]_i_3_n_0\,
      I1 => \internal_memory[11]_i_4_n_0\,
      I2 => rst_IBUF,
      O => \internal_memory[11]_i_1_n_0\
    );
\internal_memory[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => rst_IBUF,
      I1 => \internal_memory[11]_i_4_n_0\,
      I2 => \internal_memory[11]_i_3_n_0\,
      O => \internal_memory[11]_i_2_n_0\
    );
\internal_memory[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => threshold_in_IBUF(10),
      I1 => threshold_in_IBUF(9),
      I2 => threshold_in_IBUF(11),
      I3 => threshold_in_IBUF(6),
      I4 => threshold_in_IBUF(7),
      I5 => threshold_in_IBUF(8),
      O => \internal_memory[11]_i_3_n_0\
    );
\internal_memory[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => threshold_in_IBUF(2),
      I1 => threshold_in_IBUF(0),
      I2 => threshold_in_IBUF(1),
      I3 => threshold_in_IBUF(5),
      I4 => threshold_in_IBUF(3),
      I5 => threshold_in_IBUF(4),
      O => \internal_memory[11]_i_4_n_0\
    );
\internal_memory_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(0),
      Q => threshold_out_OBUF(0),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(10),
      Q => threshold_out_OBUF(10),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(11),
      Q => threshold_out_OBUF(11),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(1),
      Q => threshold_out_OBUF(1),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(2),
      Q => threshold_out_OBUF(2),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(3),
      Q => threshold_out_OBUF(3),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(4),
      Q => threshold_out_OBUF(4),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(5),
      Q => threshold_out_OBUF(5),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(6),
      Q => threshold_out_OBUF(6),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(7),
      Q => threshold_out_OBUF(7),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(8),
      Q => threshold_out_OBUF(8),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in_IBUF(9),
      Q => threshold_out_OBUF(9),
      R => \internal_memory[11]_i_1_n_0\
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\threshold_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(0),
      O => threshold_in_IBUF(0)
    );
\threshold_in_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(10),
      O => threshold_in_IBUF(10)
    );
\threshold_in_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(11),
      O => threshold_in_IBUF(11)
    );
\threshold_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(1),
      O => threshold_in_IBUF(1)
    );
\threshold_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(2),
      O => threshold_in_IBUF(2)
    );
\threshold_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(3),
      O => threshold_in_IBUF(3)
    );
\threshold_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(4),
      O => threshold_in_IBUF(4)
    );
\threshold_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(5),
      O => threshold_in_IBUF(5)
    );
\threshold_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(6),
      O => threshold_in_IBUF(6)
    );
\threshold_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(7),
      O => threshold_in_IBUF(7)
    );
\threshold_in_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(8),
      O => threshold_in_IBUF(8)
    );
\threshold_in_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => threshold_in(9),
      O => threshold_in_IBUF(9)
    );
\threshold_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(0),
      O => threshold_out(0)
    );
\threshold_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(10),
      O => threshold_out(10)
    );
\threshold_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(11),
      O => threshold_out(11)
    );
\threshold_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(1),
      O => threshold_out(1)
    );
\threshold_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(2),
      O => threshold_out(2)
    );
\threshold_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(3),
      O => threshold_out(3)
    );
\threshold_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(4),
      O => threshold_out(4)
    );
\threshold_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(5),
      O => threshold_out(5)
    );
\threshold_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(6),
      O => threshold_out(6)
    );
\threshold_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(7),
      O => threshold_out(7)
    );
\threshold_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(8),
      O => threshold_out(8)
    );
\threshold_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_out_OBUF(9),
      O => threshold_out(9)
    );
end STRUCTURE;
