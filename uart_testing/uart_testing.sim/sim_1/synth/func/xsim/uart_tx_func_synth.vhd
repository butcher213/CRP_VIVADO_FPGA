-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Feb 19 16:18:30 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/uart_tx_func_synth.vhd
-- Design      : uart_tx
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_tx is
  port (
    UART_clk : in STD_LOGIC;
    Tx_begin : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_ready : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_tx : entity is true;
end uart_tx;

architecture STRUCTURE of uart_tx is
  signal \FSM_sequential_Tx_line_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Tx_line_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Tx_line_index[2]_i_1_n_0\ : STD_LOGIC;
  signal Tx_OBUF : STD_LOGIC;
  signal Tx_begin_IBUF : STD_LOGIC;
  signal Tx_enabled_OBUF : STD_LOGIC;
  signal Tx_i_1_n_0 : STD_LOGIC;
  signal Tx_i_2_n_0 : STD_LOGIC;
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
  signal UART_clk_IBUF : STD_LOGIC;
  signal UART_clk_IBUF_BUFG : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_line[2]_i_1_n_0\ : STD_LOGIC;
  signal data_line_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fifo_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \fifo_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[39]_i_2_n_0\ : STD_LOGIC;
  signal fifo_in_IBUF : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal transmit_lock_i_1_n_0 : STD_LOGIC;
  signal tx_lock_OBUF : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[0]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[1]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Tx_line_index_reg[2]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011,iSTATE4:100,iSTATE5:101,";
  attribute KEEP of \FSM_sequential_Tx_line_index_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Tx_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Tx_shift_registers[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Tx_shift_registers[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Tx_shift_registers[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Tx_shift_registers[8]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[1]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[1]_i_6\ : label is "soft_lutpair1";
begin
\FSM_sequential_Tx_line_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC44400000444"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(1),
      I3 => \Tx_line_index__0\(2),
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \Tx_line_index__0\(0),
      O => \FSM_sequential_Tx_line_index[0]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC84800000848"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(1),
      I3 => \Tx_line_index__0\(2),
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \Tx_line_index__0\(1),
      O => \FSM_sequential_Tx_line_index[1]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCC8000000C80"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_line_index__0\(1),
      I3 => \Tx_line_index__0\(2),
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \Tx_line_index__0\(2),
      O => \FSM_sequential_Tx_line_index[2]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[0]_i_1_n_0\,
      Q => \Tx_line_index__0\(0),
      R => '0'
    );
\FSM_sequential_Tx_line_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[1]_i_1_n_0\,
      Q => \Tx_line_index__0\(1),
      R => '0'
    );
\FSM_sequential_Tx_line_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_Tx_line_index[2]_i_1_n_0\,
      Q => \Tx_line_index__0\(2),
      R => '0'
    );
Tx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Tx_OBUF,
      O => Tx
    );
Tx_begin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Tx_begin,
      O => Tx_begin_IBUF
    );
Tx_enabled_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Tx_enabled_OBUF,
      O => Tx_enabled
    );
Tx_enabled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => Tx_i_1_n_0,
      D => \current_state_reg_n_0_[1]\,
      Q => Tx_enabled_OBUF,
      R => '0'
    );
Tx_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      O => Tx_i_1_n_0
    );
Tx_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Tx_shift_registers_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      O => Tx_i_2_n_0
    );
Tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => Tx_i_1_n_0,
      D => Tx_i_2_n_0,
      Q => Tx_OBUF,
      R => '0'
    );
\Tx_shift_registers[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => sel0(1),
      I2 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[0]_i_1_n_0\
    );
\Tx_shift_registers[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => sel0(2),
      O => \Tx_shift_registers[1]_i_1_n_0\
    );
\Tx_shift_registers[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \Tx_shift_registers[2]_i_2_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_shift_registers[2]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => sel0(3),
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[2]_i_1_n_0\
    );
\Tx_shift_registers[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_data(35),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(28),
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
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \Tx_shift_registers[3]_i_2_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_shift_registers[3]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => sel0(4),
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[3]_i_1_n_0\
    );
\Tx_shift_registers[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_data(36),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(29),
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
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \Tx_shift_registers[4]_i_2_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_shift_registers[4]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => sel0(5),
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[4]_i_1_n_0\
    );
\Tx_shift_registers[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_data(37),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(30),
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
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \Tx_shift_registers[5]_i_2_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_shift_registers[5]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => sel0(6),
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[5]_i_1_n_0\
    );
\Tx_shift_registers[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_data(38),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(31),
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
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \Tx_shift_registers[6]_i_2_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_shift_registers[6]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => sel0(7),
      I5 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[6]_i_1_n_0\
    );
\Tx_shift_registers[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_data(39),
      I1 => \Tx_line_index__0\(0),
      I2 => fifo_data(32),
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
      INIT => X"FFFFFFFF2F200000"
    )
        port map (
      I0 => fifo_data(33),
      I1 => \Tx_line_index__0\(0),
      I2 => \Tx_line_index__0\(2),
      I3 => \Tx_shift_registers[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \Tx_shift_registers[7]_i_3_n_0\,
      O => \Tx_shift_registers[7]_i_1_n_0\
    );
\Tx_shift_registers[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \Tx_shift_registers[7]_i_2_n_0\
    );
\Tx_shift_registers[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => sel0(8),
      O => \Tx_shift_registers[7]_i_3_n_0\
    );
\Tx_shift_registers[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F200000"
    )
        port map (
      I0 => fifo_data(34),
      I1 => \Tx_line_index__0\(0),
      I2 => \Tx_line_index__0\(2),
      I3 => \Tx_shift_registers[8]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \Tx_shift_registers[8]_i_3_n_0\,
      O => \Tx_shift_registers[8]_i_1_n_0\
    );
\Tx_shift_registers[8]_i_2\: unisim.vcomponents.LUT6
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
      O => \Tx_shift_registers[8]_i_2_n_0\
    );
\Tx_shift_registers[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => sel0(9),
      O => \Tx_shift_registers[8]_i_3_n_0\
    );
\Tx_shift_registers[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"557F"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_line_index__0\(1),
      I3 => \current_state_reg_n_0_[1]\,
      O => \Tx_shift_registers[9]_i_1_n_0\
    );
\Tx_shift_registers_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[0]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[0]\,
      R => '0'
    );
\Tx_shift_registers_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[1]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\Tx_shift_registers_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[2]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
\Tx_shift_registers_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[3]_i_1_n_0\,
      Q => sel0(3),
      R => '0'
    );
\Tx_shift_registers_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[4]_i_1_n_0\,
      Q => sel0(4),
      R => '0'
    );
\Tx_shift_registers_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[5]_i_1_n_0\,
      Q => sel0(5),
      R => '0'
    );
\Tx_shift_registers_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[6]_i_1_n_0\,
      Q => sel0(6),
      R => '0'
    );
\Tx_shift_registers_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[7]_i_1_n_0\,
      Q => sel0(7),
      R => '0'
    );
\Tx_shift_registers_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[8]_i_1_n_0\,
      Q => sel0(8),
      R => '0'
    );
\Tx_shift_registers_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \current_state_reg_n_0_[0]\,
      Q => sel0(9),
      R => '0'
    );
UART_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => UART_clk_IBUF,
      O => UART_clk_IBUF_BUFG
    );
UART_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => UART_clk,
      O => UART_clk_IBUF
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FF00000100"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(9),
      I2 => \current_state[1]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => Tx_begin_IBUF,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EFFFFE0000000"
    )
        port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => \current_state[1]_i_3_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state[1]_i_4_n_0\,
      I4 => \current_state[1]_i_5_n_0\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(7),
      I3 => sel0(6),
      I4 => \current_state[1]_i_6_n_0\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(8),
      I2 => \current_state_reg_n_0_[0]\,
      O => \current_state[1]_i_3_n_0\
    );
\current_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \Tx_line_index__0\(2),
      I1 => \Tx_line_index__0\(1),
      I2 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_4_n_0\
    );
\current_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => Tx_begin_IBUF,
      I3 => rst_IBUF,
      O => \current_state[1]_i_5_n_0\
    );
\current_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \Tx_shift_registers_reg_n_0_[0]\,
      I3 => sel0(1),
      O => \current_state[1]_i_6_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => '1',
      D => \current_state[0]_i_1_n_0\,
      Q => \current_state_reg_n_0_[0]\,
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => \current_state_reg_n_0_[1]\,
      R => '0'
    );
\data_line[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      O => \data_line[2]_i_1_n_0\
    );
\data_line_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(0),
      O => data_line(0)
    );
\data_line_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \Tx_line_index__0\(1),
      O => data_line_OBUF(0)
    );
\data_line_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(1),
      O => data_line(1)
    );
\data_line_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Tx_line_index__0\(1),
      I1 => \Tx_line_index__0\(2),
      O => data_line_OBUF(1)
    );
\data_line_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(2),
      O => data_line(2)
    );
\data_line_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \Tx_line_index__0\(1),
      I2 => \Tx_line_index__0\(2),
      O => data_line_OBUF(2)
    );
\data_line_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \data_line[2]_i_1_n_0\,
      D => '0',
      Q => data_line_OBUF(0),
      R => '0'
    );
\data_line_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \data_line[2]_i_1_n_0\,
      D => '0',
      Q => data_line_OBUF(1),
      R => '0'
    );
\data_line_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \data_line[2]_i_1_n_0\,
      D => '0',
      Q => data_line_OBUF(2),
      R => '0'
    );
\fifo_data[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      O => \fifo_data[39]_i_1_n_0\
    );
\fifo_data[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \Tx_line_index__0\(1),
      I2 => \Tx_line_index__0\(0),
      I3 => \Tx_line_index__0\(2),
      I4 => \current_state_reg_n_0_[1]\,
      O => \fifo_data[39]_i_2_n_0\
    );
\fifo_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(0),
      Q => fifo_data(0),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(10),
      Q => fifo_data(10),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(11),
      Q => fifo_data(11),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(12),
      Q => fifo_data(12),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(13),
      Q => fifo_data(13),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(14),
      Q => fifo_data(14),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(15),
      Q => fifo_data(15),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(16),
      Q => fifo_data(16),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(17),
      Q => fifo_data(17),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(18),
      Q => fifo_data(18),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(19),
      Q => fifo_data(19),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(1),
      Q => fifo_data(1),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(20),
      Q => fifo_data(20),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(21),
      Q => fifo_data(21),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(22),
      Q => fifo_data(22),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(23),
      Q => fifo_data(23),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(24),
      Q => fifo_data(24),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(25),
      Q => fifo_data(25),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(26),
      Q => fifo_data(26),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(27),
      Q => fifo_data(27),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(28),
      Q => fifo_data(28),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(29),
      Q => fifo_data(29),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(2),
      Q => fifo_data(2),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(30),
      Q => fifo_data(30),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(31),
      Q => fifo_data(31),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(32),
      Q => fifo_data(32),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(33),
      Q => fifo_data(33),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(34),
      Q => fifo_data(34),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(35),
      Q => fifo_data(35),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(36),
      Q => fifo_data(36),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(37),
      Q => fifo_data(37),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(38),
      Q => fifo_data(38),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(39),
      Q => fifo_data(39),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(3),
      Q => fifo_data(3),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(4),
      Q => fifo_data(4),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(5),
      Q => fifo_data(5),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(6),
      Q => fifo_data(6),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(7),
      Q => fifo_data(7),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(8),
      Q => fifo_data(8),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in_IBUF(9),
      Q => fifo_data(9),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(0),
      O => fifo_in_IBUF(0)
    );
\fifo_in_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(10),
      O => fifo_in_IBUF(10)
    );
\fifo_in_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(11),
      O => fifo_in_IBUF(11)
    );
\fifo_in_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(12),
      O => fifo_in_IBUF(12)
    );
\fifo_in_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(13),
      O => fifo_in_IBUF(13)
    );
\fifo_in_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(14),
      O => fifo_in_IBUF(14)
    );
\fifo_in_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(15),
      O => fifo_in_IBUF(15)
    );
\fifo_in_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(16),
      O => fifo_in_IBUF(16)
    );
\fifo_in_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(17),
      O => fifo_in_IBUF(17)
    );
\fifo_in_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(18),
      O => fifo_in_IBUF(18)
    );
\fifo_in_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(19),
      O => fifo_in_IBUF(19)
    );
\fifo_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(1),
      O => fifo_in_IBUF(1)
    );
\fifo_in_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(20),
      O => fifo_in_IBUF(20)
    );
\fifo_in_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(21),
      O => fifo_in_IBUF(21)
    );
\fifo_in_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(22),
      O => fifo_in_IBUF(22)
    );
\fifo_in_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(23),
      O => fifo_in_IBUF(23)
    );
\fifo_in_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(24),
      O => fifo_in_IBUF(24)
    );
\fifo_in_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(25),
      O => fifo_in_IBUF(25)
    );
\fifo_in_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(26),
      O => fifo_in_IBUF(26)
    );
\fifo_in_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(27),
      O => fifo_in_IBUF(27)
    );
\fifo_in_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(28),
      O => fifo_in_IBUF(28)
    );
\fifo_in_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(29),
      O => fifo_in_IBUF(29)
    );
\fifo_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(2),
      O => fifo_in_IBUF(2)
    );
\fifo_in_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(30),
      O => fifo_in_IBUF(30)
    );
\fifo_in_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(31),
      O => fifo_in_IBUF(31)
    );
\fifo_in_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(32),
      O => fifo_in_IBUF(32)
    );
\fifo_in_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(33),
      O => fifo_in_IBUF(33)
    );
\fifo_in_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(34),
      O => fifo_in_IBUF(34)
    );
\fifo_in_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(35),
      O => fifo_in_IBUF(35)
    );
\fifo_in_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(36),
      O => fifo_in_IBUF(36)
    );
\fifo_in_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(37),
      O => fifo_in_IBUF(37)
    );
\fifo_in_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(38),
      O => fifo_in_IBUF(38)
    );
\fifo_in_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(39),
      O => fifo_in_IBUF(39)
    );
\fifo_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(3),
      O => fifo_in_IBUF(3)
    );
\fifo_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(4),
      O => fifo_in_IBUF(4)
    );
\fifo_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(5),
      O => fifo_in_IBUF(5)
    );
\fifo_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(6),
      O => fifo_in_IBUF(6)
    );
\fifo_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(7),
      O => fifo_in_IBUF(7)
    );
\fifo_in_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(8),
      O => fifo_in_IBUF(8)
    );
\fifo_in_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_in(9),
      O => fifo_in_IBUF(9)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
transmit_lock_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      O => transmit_lock_i_1_n_0
    );
transmit_lock_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk_IBUF_BUFG,
      CE => transmit_lock_i_1_n_0,
      D => \current_state_reg_n_0_[0]\,
      Q => tx_lock_OBUF,
      R => '0'
    );
tx_lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_lock_OBUF,
      O => tx_lock
    );
end STRUCTURE;
