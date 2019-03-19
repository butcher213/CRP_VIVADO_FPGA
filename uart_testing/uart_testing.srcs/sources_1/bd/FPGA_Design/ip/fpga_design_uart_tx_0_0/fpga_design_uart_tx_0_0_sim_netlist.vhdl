-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar  9 11:08:08 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_uart_tx_0_0/fpga_design_uart_tx_0_0_sim_netlist.vhdl
-- Design      : fpga_design_uart_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_uart_tx_0_0_uart_tx is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    Tx_en : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    UART_clk : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rst : in STD_LOGIC;
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_uart_tx_0_0_uart_tx : entity is "uart_tx";
end fpga_design_uart_tx_0_0_uart_tx;

architecture STRUCTURE of fpga_design_uart_tx_0_0_uart_tx is
  signal \FSM_sequential_Tx_line_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Tx_line_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Tx_line_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Tx_line_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal \^tx_enabled\ : STD_LOGIC;
  signal Tx_enabled_i_1_n_0 : STD_LOGIC;
  signal Tx_i_1_n_0 : STD_LOGIC;
  signal Tx_i_2_n_0 : STD_LOGIC;
  signal Tx_i_3_n_0 : STD_LOGIC;
  signal \Tx_line_index__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \Tx_line_index__0\ : signal is "yes";
  signal \Tx_shift_registers[0]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[1]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[2]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[2]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[2]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[3]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[3]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[3]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[4]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[4]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[4]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[5]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[5]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[5]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[6]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[6]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[6]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[7]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[7]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[7]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[8]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[8]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[8]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers[9]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[0]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[1]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[2]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[3]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[4]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[5]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[6]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[7]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[8]\ : STD_LOGIC;
  signal \Tx_shift_registers_reg_n_0_[9]\ : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal fifo_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \fifo_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[39]_i_2_n_0\ : STD_LOGIC;
  signal \^rd_en\ : STD_LOGIC;
  signal rd_en_i_1_n_0 : STD_LOGIC;
  signal transmit_lock_i_1_n_0 : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_Tx_line_index[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[0]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[1]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[2]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of Tx_enabled_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of transmit_lock_i_1 : label is "soft_lutpair1";
begin
  Tx <= \^tx\;
  Tx_enabled <= \^tx_enabled\;
  rd_en <= \^rd_en\;
  tx_lock <= \^tx_lock\;
\FSM_sequential_Tx_line_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC44400000444"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(2),
      I3 => \Tx_line_index__0\(1),
      I4 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I5 => \Tx_line_index__0\(0),
      O => \FSM_sequential_Tx_line_index[0]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC48800000488"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(2),
      I3 => \Tx_line_index__0\(1),
      I4 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I5 => \Tx_line_index__0\(1),
      O => \FSM_sequential_Tx_line_index[1]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC8C0000008C0"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(2),
      I3 => \Tx_line_index__0\(1),
      I4 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I5 => \Tx_line_index__0\(2),
      O => \FSM_sequential_Tx_line_index[2]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      O => \FSM_sequential_Tx_line_index[2]_i_2_n_0\
    );
\FSM_sequential_Tx_line_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[0]_i_1_n_0\,
      Q => \Tx_line_index__0\(0),
      R => '0'
    );
\FSM_sequential_Tx_line_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[1]_i_1_n_0\,
      Q => \Tx_line_index__0\(1),
      R => '0'
    );
\FSM_sequential_Tx_line_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[2]_i_1_n_0\,
      Q => \Tx_line_index__0\(2),
      R => '0'
    );
Tx_enabled_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC04"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \^tx_enabled\,
      O => Tx_enabled_i_1_n_0
    );
Tx_enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => Tx_enabled_i_1_n_0,
      Q => \^tx_enabled\,
      R => '0'
    );
Tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAEF000F0A2F"
    )
        port map (
      I0 => \Tx_shift_registers_reg_n_0_[0]\,
      I1 => Tx_i_2_n_0,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \^tx\,
      O => Tx_i_1_n_0
    );
Tx_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \Tx_shift_registers_reg_n_0_[3]\,
      I1 => \Tx_shift_registers_reg_n_0_[9]\,
      I2 => \Tx_shift_registers_reg_n_0_[0]\,
      I3 => \Tx_shift_registers_reg_n_0_[1]\,
      I4 => Tx_i_3_n_0,
      O => Tx_i_2_n_0
    );
Tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Tx_shift_registers_reg_n_0_[7]\,
      I1 => \Tx_shift_registers_reg_n_0_[2]\,
      I2 => \Tx_shift_registers_reg_n_0_[6]\,
      I3 => \Tx_shift_registers_reg_n_0_[8]\,
      I4 => \Tx_shift_registers_reg_n_0_[4]\,
      I5 => \Tx_shift_registers_reg_n_0_[5]\,
      O => Tx_i_3_n_0
    );
Tx_reg: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => Tx_i_1_n_0,
      Q => \^tx\,
      R => '0'
    );
\Tx_shift_registers[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5E50"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \Tx_shift_registers_reg_n_0_[1]\,
      O => \Tx_shift_registers[0]_i_1_n_0\
    );
\Tx_shift_registers[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8C8080"
    )
        port map (
      I0 => Tx_in(0),
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => \Tx_shift_registers_reg_n_0_[2]\,
      O => \Tx_shift_registers[1]_i_1_n_0\
    );
\Tx_shift_registers[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCEAC0C0CCEAC0"
    )
        port map (
      I0 => \Tx_shift_registers[2]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(1),
      O => \Tx_shift_registers[2]_i_1_n_0\
    );
\Tx_shift_registers[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => fifo_data(35),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(28),
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_shift_registers[2]_i_3_n_0\,
      O => \Tx_shift_registers[2]_i_2_n_0\
    );
\Tx_shift_registers[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(21),
      I1 => fifo_data(14),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(7),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(0),
      O => \Tx_shift_registers[2]_i_3_n_0\
    );
\Tx_shift_registers[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCEAC0C0CCEAC0"
    )
        port map (
      I0 => \Tx_shift_registers[3]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[4]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(2),
      O => \Tx_shift_registers[3]_i_1_n_0\
    );
\Tx_shift_registers[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => fifo_data(36),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(29),
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_shift_registers[3]_i_3_n_0\,
      O => \Tx_shift_registers[3]_i_2_n_0\
    );
\Tx_shift_registers[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(22),
      I1 => fifo_data(15),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(8),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(1),
      O => \Tx_shift_registers[3]_i_3_n_0\
    );
\Tx_shift_registers[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCEAC0C0CCEAC0"
    )
        port map (
      I0 => \Tx_shift_registers[4]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[5]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(3),
      O => \Tx_shift_registers[4]_i_1_n_0\
    );
\Tx_shift_registers[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => fifo_data(37),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(30),
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_shift_registers[4]_i_3_n_0\,
      O => \Tx_shift_registers[4]_i_2_n_0\
    );
\Tx_shift_registers[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(23),
      I1 => fifo_data(16),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(9),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(2),
      O => \Tx_shift_registers[4]_i_3_n_0\
    );
\Tx_shift_registers[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCEAC0C0CCEAC0"
    )
        port map (
      I0 => \Tx_shift_registers[5]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[6]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(4),
      O => \Tx_shift_registers[5]_i_1_n_0\
    );
\Tx_shift_registers[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => fifo_data(38),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(31),
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_shift_registers[5]_i_3_n_0\,
      O => \Tx_shift_registers[5]_i_2_n_0\
    );
\Tx_shift_registers[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(24),
      I1 => fifo_data(17),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(10),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(3),
      O => \Tx_shift_registers[5]_i_3_n_0\
    );
\Tx_shift_registers[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCEAC0C0CCEAC0"
    )
        port map (
      I0 => \Tx_shift_registers[6]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[7]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(5),
      O => \Tx_shift_registers[6]_i_1_n_0\
    );
\Tx_shift_registers[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => fifo_data(39),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(32),
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_shift_registers[6]_i_3_n_0\,
      O => \Tx_shift_registers[6]_i_2_n_0\
    );
\Tx_shift_registers[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(25),
      I1 => fifo_data(18),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(11),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(4),
      O => \Tx_shift_registers[6]_i_3_n_0\
    );
\Tx_shift_registers[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEAEEEAEA"
    )
        port map (
      I0 => \Tx_shift_registers[7]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[8]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(6),
      O => \Tx_shift_registers[7]_i_1_n_0\
    );
\Tx_shift_registers[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
        port map (
      I0 => \Tx_shift_registers[7]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_line_index__0\(0),
      I3 => fifo_data(33),
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[7]_i_2_n_0\
    );
\Tx_shift_registers[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(26),
      I1 => fifo_data(19),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(12),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(5),
      O => \Tx_shift_registers[7]_i_3_n_0\
    );
\Tx_shift_registers[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEAEEEAEA"
    )
        port map (
      I0 => \Tx_shift_registers[8]_i_2_n_0\,
      I1 => \Tx_shift_registers_reg_n_0_[9]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => Tx_in(7),
      O => \Tx_shift_registers[8]_i_1_n_0\
    );
\Tx_shift_registers[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
        port map (
      I0 => \Tx_shift_registers[8]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_line_index__0\(0),
      I3 => fifo_data(34),
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[8]_i_2_n_0\
    );
\Tx_shift_registers[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => fifo_data(27),
      I1 => fifo_data(20),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(13),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(6),
      O => \Tx_shift_registers[8]_i_3_n_0\
    );
\Tx_shift_registers[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555505557777"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => Tx_i_2_n_0,
      I2 => \Tx_line_index__0\(1),
      I3 => \Tx_line_index__0\(2),
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[9]_i_1_n_0\
    );
\Tx_shift_registers_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[0]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[0]\,
      R => '0'
    );
\Tx_shift_registers_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[1]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[1]\,
      R => '0'
    );
\Tx_shift_registers_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[2]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[2]\,
      R => '0'
    );
\Tx_shift_registers_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[3]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[3]\,
      R => '0'
    );
\Tx_shift_registers_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[4]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[4]\,
      R => '0'
    );
\Tx_shift_registers_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[5]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[5]\,
      R => '0'
    );
\Tx_shift_registers_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[6]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[6]\,
      R => '0'
    );
\Tx_shift_registers_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[7]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[7]\,
      R => '0'
    );
\Tx_shift_registers_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[8]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[8]\,
      R => '0'
    );
\Tx_shift_registers_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \current_state_reg_n_0_[0]\,
      Q => \Tx_shift_registers_reg_n_0_[9]\,
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F000EE"
    )
        port map (
      I0 => Tx_en,
      I1 => read_enable,
      I2 => Tx_i_2_n_0,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \current_state_reg_n_0_[0]\,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445FFFF44440000"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state[1]_i_2_n_0\,
      I2 => Tx_i_2_n_0,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state[2]_i_2_n_0\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777700000F00"
    )
        port map (
      I0 => \Tx_line_index__0\(2),
      I1 => \Tx_line_index__0\(1),
      I2 => read_enable,
      I3 => Tx_en,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \current_state_reg_n_0_[0]\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFC000"
    )
        port map (
      I0 => Tx_i_2_n_0,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state[2]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[2]\,
      O => \current_state[2]_i_1_n_0\
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => Tx_en,
      I5 => read_enable,
      O => \current_state[2]_i_2_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \current_state[0]_i_1_n_0\,
      Q => \current_state_reg_n_0_[0]\,
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => \current_state_reg_n_0_[1]\,
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => \current_state[2]_i_1_n_0\,
      Q => \current_state_reg_n_0_[2]\,
      R => '0'
    );
\fifo_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      O => \fifo_data[39]_i_1_n_0\
    );
\fifo_data[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000103030303"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_line_index__0\(1),
      I5 => \current_state_reg_n_0_[0]\,
      O => \fifo_data[39]_i_2_n_0\
    );
\fifo_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(0),
      Q => fifo_data(0),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(10),
      Q => fifo_data(10),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(11),
      Q => fifo_data(11),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(12),
      Q => fifo_data(12),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(13),
      Q => fifo_data(13),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(14),
      Q => fifo_data(14),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(15),
      Q => fifo_data(15),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(16),
      Q => fifo_data(16),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(17),
      Q => fifo_data(17),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(18),
      Q => fifo_data(18),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(19),
      Q => fifo_data(19),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(1),
      Q => fifo_data(1),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(20),
      Q => fifo_data(20),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(21),
      Q => fifo_data(21),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(22),
      Q => fifo_data(22),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(23),
      Q => fifo_data(23),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(24),
      Q => fifo_data(24),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(25),
      Q => fifo_data(25),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(26),
      Q => fifo_data(26),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(27),
      Q => fifo_data(27),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(28),
      Q => fifo_data(28),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(29),
      Q => fifo_data(29),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(2),
      Q => fifo_data(2),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(30),
      Q => fifo_data(30),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(31),
      Q => fifo_data(31),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(32),
      Q => fifo_data(32),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(33),
      Q => fifo_data(33),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(34),
      Q => fifo_data(34),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(35),
      Q => fifo_data(35),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(36),
      Q => fifo_data(36),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(37),
      Q => fifo_data(37),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(38),
      Q => fifo_data(38),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(39),
      Q => fifo_data(39),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(3),
      Q => fifo_data(3),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(4),
      Q => fifo_data(4),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(5),
      Q => fifo_data(5),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(6),
      Q => fifo_data(6),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(7),
      Q => fifo_data(7),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(8),
      Q => fifo_data(8),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(9),
      Q => fifo_data(9),
      R => \fifo_data[39]_i_1_n_0\
    );
rd_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \fifo_data[39]_i_2_n_0\,
      I2 => \^rd_en\,
      O => rd_en_i_1_n_0
    );
rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => rd_en_i_1_n_0,
      Q => \^rd_en\,
      R => '0'
    );
transmit_lock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0C"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \^tx_lock\,
      O => transmit_lock_i_1_n_0
    );
transmit_lock_reg: unisim.vcomponents.FDRE
     port map (
      C => UART_clk,
      CE => '1',
      D => transmit_lock_i_1_n_0,
      Q => \^tx_lock\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_uart_tx_0_0 is
  port (
    UART_clk : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_en : in STD_LOGIC;
    fifo_ready : in STD_LOGIC;
    Tx : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_uart_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_uart_tx_0_0 : entity is "fpga_design_uart_tx_0_0,uart_tx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_uart_tx_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_uart_tx_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_uart_tx_0_0 : entity is "uart_tx,Vivado 2018.2";
end fpga_design_uart_tx_0_0;

architecture STRUCTURE of fpga_design_uart_tx_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of UART_clk : signal is "xilinx.com:signal:clock:1.0 UART_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of UART_clk : signal is "XIL_INTERFACENAME UART_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.fpga_design_uart_tx_0_0_uart_tx
     port map (
      Tx => Tx,
      Tx_en => Tx_en,
      Tx_enabled => Tx_enabled,
      Tx_in(7 downto 0) => Tx_in(7 downto 0),
      UART_clk => UART_clk,
      fifo_in(39 downto 0) => fifo_in(39 downto 0),
      rd_en => rd_en,
      read_enable => read_enable,
      rst => rst,
      tx_lock => tx_lock
    );
end STRUCTURE;
