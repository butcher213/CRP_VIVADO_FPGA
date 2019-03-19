-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar  9 10:49:19 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/uart_rx_func_synth.vhd
-- Design      : uart_rx
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_rx is
  port (
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_rx : entity is true;
end uart_rx;

architecture STRUCTURE of uart_rx is
  signal Rx_IBUF : STD_LOGIC;
  signal Rx_IBUF_BUFG : STD_LOGIC;
  signal Rx_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Rx_shift_registers_reg_n_0_[0]\ : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal current_state : STD_LOGIC;
  signal current_state_i_1_n_0 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  signal uart_clk_IBUF : STD_LOGIC;
  signal uart_clk_IBUF_BUFG : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
begin
Rx_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Rx_IBUF,
      O => Rx_IBUF_BUFG
    );
Rx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rx,
      O => Rx_IBUF
    );
Rx_end_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Rx_end
    );
\Rx_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(1),
      O => eqOp
    );
\Rx_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(0),
      O => Rx_out(0)
    );
\Rx_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(1),
      O => Rx_out(1)
    );
\Rx_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(2),
      O => Rx_out(2)
    );
\Rx_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(3),
      O => Rx_out(3)
    );
\Rx_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(4),
      O => Rx_out(4)
    );
\Rx_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(5),
      O => Rx_out(5)
    );
\Rx_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(6),
      O => Rx_out(6)
    );
\Rx_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rx_out_OBUF(7),
      O => Rx_out(7)
    );
\Rx_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(0),
      Q => Rx_out_OBUF(0),
      R => counter
    );
\Rx_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(1),
      Q => Rx_out_OBUF(1),
      R => counter
    );
\Rx_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(2),
      Q => Rx_out_OBUF(2),
      R => counter
    );
\Rx_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(3),
      Q => Rx_out_OBUF(3),
      R => counter
    );
\Rx_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(4),
      Q => Rx_out_OBUF(4),
      R => counter
    );
\Rx_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(5),
      Q => Rx_out_OBUF(5),
      R => counter
    );
\Rx_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(6),
      Q => Rx_out_OBUF(6),
      R => counter
    );
\Rx_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => eqOp,
      D => p_0_in(7),
      Q => Rx_out_OBUF(7),
      R => counter
    );
\Rx_shift_registers[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state,
      O => counter
    );
\Rx_shift_registers_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => Rx_IBUF_BUFG,
      Q => \Rx_shift_registers_reg_n_0_[0]\,
      R => counter
    );
\Rx_shift_registers_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => \Rx_shift_registers_reg_n_0_[0]\,
      Q => p_0_in(0),
      R => counter
    );
\Rx_shift_registers_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(0),
      Q => p_0_in(1),
      R => counter
    );
\Rx_shift_registers_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(1),
      Q => p_0_in(2),
      R => counter
    );
\Rx_shift_registers_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(2),
      Q => p_0_in(3),
      R => counter
    );
\Rx_shift_registers_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(3),
      Q => p_0_in(4),
      R => counter
    );
\Rx_shift_registers_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(4),
      Q => p_0_in(5),
      R => counter
    );
\Rx_shift_registers_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(5),
      Q => p_0_in(6),
      R => counter
    );
\Rx_shift_registers_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(6),
      Q => p_0_in(7),
      R => counter
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => counter
    );
current_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444444444444"
    )
        port map (
      I0 => rst_IBUF,
      I1 => current_state,
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(3),
      I5 => \counter_reg__0\(1),
      O => current_state_i_1_n_0
    );
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk_IBUF_BUFG,
      CE => '1',
      D => current_state_i_1_n_0,
      Q => current_state,
      R => '0'
    );
\current_state_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Rx_IBUF_BUFG,
      CE => '1',
      D => '1',
      Q => current_state,
      R => '0'
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
uart_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => uart_clk_IBUF,
      O => uart_clk_IBUF_BUFG
    );
uart_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => uart_clk,
      O => uart_clk_IBUF
    );
end STRUCTURE;
