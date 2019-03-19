-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar  9 11:20:31 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/fpga_design_wrapper_func_synth.vhd
-- Design      : fpga_design_wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_central_interface_0_0_central_interface is
  port (
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Tx_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Tx_en : out STD_LOGIC;
    read_enable : out STD_LOGIC;
    clk : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    rst : in STD_LOGIC;
    FIFO_empty : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_central_interface_0_0_central_interface : entity is "central_interface";
end fpga_design_central_interface_0_0_central_interface;

architecture STRUCTURE of fpga_design_central_interface_0_0_central_interface is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \^tx_en\ : STD_LOGIC;
  signal Tx_en_i_1_n_0 : STD_LOGIC;
  signal Tx_en_i_2_n_0 : STD_LOGIC;
  signal Tx_en_i_3_n_0 : STD_LOGIC;
  signal \Tx_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \Tx_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \current_state__0\ : signal is "yes";
  signal \^read_enable\ : STD_LOGIC;
  signal read_enable_i_1_n_0 : STD_LOGIC;
  signal threshold : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \threshold_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg_n_0_[0]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[10]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[11]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[1]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[2]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[3]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[4]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[5]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[6]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[7]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[8]\ : STD_LOGIC;
  signal \threshold_reg_n_0_[9]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
begin
  Tx_en <= \^tx_en\;
  read_enable <= \^read_enable\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => \current_state__0\(1),
      I3 => \Tx_out[1]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000080800"
    )
        port map (
      I0 => \Tx_out[1]_i_2_n_0\,
      I1 => Rx_end,
      I2 => Rx_in(4),
      I3 => Rx_in(5),
      I4 => Rx_in(6),
      I5 => FIFO_empty,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => \current_state__0\(1),
      I3 => \Tx_out[1]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I5 => \current_state__0\(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Rx_in(0),
      I1 => Rx_in(1),
      I2 => Rx_in(2),
      I3 => Rx_in(3),
      I4 => Rx_in(7),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => Rx_end,
      I1 => Rx_in(6),
      I2 => Rx_in(4),
      I3 => Rx_in(5),
      I4 => \current_state__0\(2),
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => threshold(11),
      I1 => Tx_en_i_2_n_0,
      I2 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I4 => \current_state__0\(2),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => Rx_in(6),
      I1 => Rx_in(5),
      I2 => FIFO_empty,
      I3 => Rx_in(4),
      I4 => \current_state__0\(2),
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAAAA"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_5_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I3 => \current_state__0\(1),
      I4 => Rx_end,
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33FF32E6"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(1),
      I2 => Rx_end,
      I3 => \current_state__0\(2),
      I4 => rst,
      O => \FSM_sequential_current_state[2]_i_4_n_0\
    );
\FSM_sequential_current_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => Rx_in(4),
      I1 => FIFO_empty,
      I2 => Rx_in(6),
      I3 => Rx_in(5),
      O => \FSM_sequential_current_state[2]_i_5_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => \current_state__0\(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \current_state__0\(1),
      R => '0'
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => \current_state__0\(2),
      R => '0'
    );
Tx_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF88FF800088FF8"
    )
        port map (
      I0 => Tx_en_i_2_n_0,
      I1 => Tx_en_i_3_n_0,
      I2 => \current_state__0\(1),
      I3 => \current_state__0\(0),
      I4 => \current_state__0\(2),
      I5 => \^tx_en\,
      O => Tx_en_i_1_n_0
    );
Tx_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \current_state__0\(1),
      I2 => Rx_end,
      O => Tx_en_i_2_n_0
    );
Tx_en_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => FIFO_empty,
      I1 => Rx_in(4),
      I2 => Rx_in(5),
      I3 => \current_state__0\(2),
      I4 => Rx_in(6),
      O => Tx_en_i_3_n_0
    );
Tx_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Tx_en_i_1_n_0,
      Q => \^tx_en\,
      R => '0'
    );
\Tx_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      O => \Tx_out[0]_i_1_n_0\
    );
\Tx_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \Tx_out[1]_i_2_n_0\,
      I1 => Rx_in(4),
      I2 => FIFO_empty,
      I3 => Rx_in(5),
      I4 => Rx_in(6),
      I5 => Tx_en_i_2_n_0,
      O => \Tx_out[1]_i_1_n_0\
    );
\Tx_out[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      O => \Tx_out[1]_i_2_n_0\
    );
\Tx_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => FIFO_full,
      O => \Tx_out[2]_i_1_n_0\
    );
\Tx_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => FIFO_ready,
      O => \Tx_out[3]_i_1_n_0\
    );
\Tx_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(2),
      O => \Tx_out[4]_i_1_n_0\
    );
\Tx_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => FIFO_ready,
      O => \Tx_out[4]_i_2_n_0\
    );
\Tx_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[0]_i_1_n_0\,
      Q => Tx_out(0),
      R => '0'
    );
\Tx_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[1]_i_1_n_0\,
      Q => Tx_out(1),
      R => '0'
    );
\Tx_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[2]_i_1_n_0\,
      Q => Tx_out(2),
      R => '0'
    );
\Tx_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[3]_i_1_n_0\,
      Q => Tx_out(3),
      R => '0'
    );
\Tx_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[4]_i_2_n_0\,
      Q => Tx_out(4),
      R => '0'
    );
read_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      I3 => \^read_enable\,
      O => read_enable_i_1_n_0
    );
read_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_enable_i_1_n_0,
      Q => \^read_enable\,
      R => '0'
    );
\threshold[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      I3 => Rx_end,
      O => threshold(11)
    );
\threshold_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(1),
      I3 => Rx_end,
      O => \threshold_out[11]_i_1_n_0\
    );
\threshold_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[0]\,
      Q => threshold_out(0),
      R => '0'
    );
\threshold_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[10]\,
      Q => threshold_out(10),
      R => '0'
    );
\threshold_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[11]\,
      Q => threshold_out(11),
      R => '0'
    );
\threshold_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[1]\,
      Q => threshold_out(1),
      R => '0'
    );
\threshold_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[2]\,
      Q => threshold_out(2),
      R => '0'
    );
\threshold_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[3]\,
      Q => threshold_out(3),
      R => '0'
    );
\threshold_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[4]\,
      Q => threshold_out(4),
      R => '0'
    );
\threshold_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[5]\,
      Q => threshold_out(5),
      R => '0'
    );
\threshold_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[6]\,
      Q => threshold_out(6),
      R => '0'
    );
\threshold_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[7]\,
      Q => threshold_out(7),
      R => '0'
    );
\threshold_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[8]\,
      Q => threshold_out(8),
      R => '0'
    );
\threshold_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[9]\,
      Q => threshold_out(9),
      R => '0'
    );
\threshold_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => Rx_in(2),
      Q => \threshold_reg_n_0_[0]\,
      R => '0'
    );
\threshold_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(5),
      Q => \threshold_reg_n_0_[10]\,
      R => '0'
    );
\threshold_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(6),
      Q => \threshold_reg_n_0_[11]\,
      R => '0'
    );
\threshold_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => Rx_in(3),
      Q => \threshold_reg_n_0_[1]\,
      R => '0'
    );
\threshold_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => Rx_in(4),
      Q => \threshold_reg_n_0_[2]\,
      R => '0'
    );
\threshold_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => Rx_in(5),
      Q => \threshold_reg_n_0_[3]\,
      R => '0'
    );
\threshold_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => Rx_in(6),
      Q => \threshold_reg_n_0_[4]\,
      R => '0'
    );
\threshold_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(0),
      Q => \threshold_reg_n_0_[5]\,
      R => '0'
    );
\threshold_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(1),
      Q => \threshold_reg_n_0_[6]\,
      R => '0'
    );
\threshold_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(2),
      Q => \threshold_reg_n_0_[7]\,
      R => '0'
    );
\threshold_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(3),
      Q => \threshold_reg_n_0_[8]\,
      R => '0'
    );
\threshold_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => threshold(11),
      D => Rx_in(4),
      Q => \threshold_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_uart_rx_0_0_uart_rx is
  port (
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    Rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_uart_rx_0_0_uart_rx : entity is "uart_rx";
end fpga_design_uart_rx_0_0_uart_rx;

architecture STRUCTURE of fpga_design_uart_rx_0_0_uart_rx is
  signal \Rx_shift_registers_reg_n_0_[0]\ : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal current_state : STD_LOGIC;
  signal current_state_i_1_n_0 : STD_LOGIC;
  signal \eqOp__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
begin
\Rx_out[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state,
      O => counter
    );
\Rx_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(0),
      Q => Rx_out(0),
      R => counter
    );
\Rx_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(1),
      Q => Rx_out(1),
      R => counter
    );
\Rx_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(2),
      Q => Rx_out(2),
      R => counter
    );
\Rx_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(3),
      Q => Rx_out(3),
      R => counter
    );
\Rx_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(4),
      Q => Rx_out(4),
      R => counter
    );
\Rx_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(5),
      Q => Rx_out(5),
      R => counter
    );
\Rx_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(6),
      Q => Rx_out(6),
      R => counter
    );
\Rx_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_0_in(7),
      Q => Rx_out(7),
      R => counter
    );
\Rx_shift_registers_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
      CE => '1',
      D => Rx,
      Q => \Rx_shift_registers_reg_n_0_[0]\,
      R => counter
    );
\Rx_shift_registers_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      C => uart_clk,
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
      I0 => rst,
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
      C => uart_clk,
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
      C => Rx,
      CE => '1',
      D => '1',
      Q => current_state,
      R => '0'
    );
eqOp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(1),
      O => \eqOp__0\
    );
end STRUCTURE;
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
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
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
      C => UART_clk,
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
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
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
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[1]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[1]\,
      R => '0'
    );
\Tx_shift_registers_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[2]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[2]\,
      R => '0'
    );
\Tx_shift_registers_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[3]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[3]\,
      R => '0'
    );
\Tx_shift_registers_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[4]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[4]\,
      R => '0'
    );
\Tx_shift_registers_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[5]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[5]\,
      R => '0'
    );
\Tx_shift_registers_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[6]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[6]\,
      R => '0'
    );
\Tx_shift_registers_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[7]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[7]\,
      R => '0'
    );
\Tx_shift_registers_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_shift_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers[8]_i_1_n_0\,
      Q => \Tx_shift_registers_reg_n_0_[8]\,
      R => '0'
    );
\Tx_shift_registers_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
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
      C => UART_clk,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => \current_state_reg_n_0_[1]\,
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(0),
      Q => fifo_data(0),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(10),
      Q => fifo_data(10),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(11),
      Q => fifo_data(11),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(12),
      Q => fifo_data(12),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(13),
      Q => fifo_data(13),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(14),
      Q => fifo_data(14),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(15),
      Q => fifo_data(15),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(16),
      Q => fifo_data(16),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(17),
      Q => fifo_data(17),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(18),
      Q => fifo_data(18),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(19),
      Q => fifo_data(19),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(1),
      Q => fifo_data(1),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(20),
      Q => fifo_data(20),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(21),
      Q => fifo_data(21),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(22),
      Q => fifo_data(22),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(23),
      Q => fifo_data(23),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(24),
      Q => fifo_data(24),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(25),
      Q => fifo_data(25),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(26),
      Q => fifo_data(26),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(27),
      Q => fifo_data(27),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(28),
      Q => fifo_data(28),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(29),
      Q => fifo_data(29),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(2),
      Q => fifo_data(2),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(30),
      Q => fifo_data(30),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(31),
      Q => fifo_data(31),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(32),
      Q => fifo_data(32),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(33),
      Q => fifo_data(33),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(34),
      Q => fifo_data(34),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(35),
      Q => fifo_data(35),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(36),
      Q => fifo_data(36),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(37),
      Q => fifo_data(37),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(38),
      Q => fifo_data(38),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(39),
      Q => fifo_data(39),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(3),
      Q => fifo_data(3),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(4),
      Q => fifo_data(4),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(5),
      Q => fifo_data(5),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(6),
      Q => fifo_data(6),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(7),
      Q => fifo_data(7),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \fifo_data[39]_i_2_n_0\,
      D => fifo_in(8),
      Q => fifo_data(8),
      R => \fifo_data[39]_i_1_n_0\
    );
\fifo_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
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
entity fpga_design_central_interface_0_0 is
  port (
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
    Tx_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_central_interface_0_0 : entity is "fpga_design_central_interface_0_0,central_interface,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_central_interface_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_central_interface_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_central_interface_0_0 : entity is "central_interface,Vivado 2018.2";
end fpga_design_central_interface_0_0;

architecture STRUCTURE of fpga_design_central_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^tx_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
  Tx_out(7) <= \<const0>\;
  Tx_out(6) <= \<const0>\;
  Tx_out(5) <= \<const0>\;
  Tx_out(4 downto 0) <= \^tx_out\(4 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.fpga_design_central_interface_0_0_central_interface
     port map (
      FIFO_empty => FIFO_empty,
      FIFO_full => FIFO_full,
      FIFO_ready => FIFO_ready,
      Rx_end => Rx_end,
      Rx_in(7 downto 0) => Rx_in(7 downto 0),
      Tx_en => Tx_en,
      Tx_out(4 downto 0) => \^tx_out\(4 downto 0),
      clk => clk,
      read_enable => read_enable,
      rst => rst,
      threshold_out(11 downto 0) => threshold_out(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_uart_rx_0_0 is
  port (
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_uart_rx_0_0 : entity is "fpga_design_uart_rx_0_0,uart_rx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_uart_rx_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_uart_rx_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_uart_rx_0_0 : entity is "uart_rx,Vivado 2018.2";
end fpga_design_uart_rx_0_0;

architecture STRUCTURE of fpga_design_uart_rx_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
  attribute x_interface_info of uart_clk : signal is "xilinx.com:signal:clock:1.0 uart_clk CLK";
  attribute x_interface_parameter of uart_clk : signal is "XIL_INTERFACENAME uart_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
begin
  Rx_end <= \<const1>\;
U0: entity work.fpga_design_uart_rx_0_0_uart_rx
     port map (
      Rx => Rx,
      Rx_out(7 downto 0) => Rx_out(7 downto 0),
      rst => rst,
      uart_clk => uart_clk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_out : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_ready : in STD_LOGIC;
    read_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fpga_design : entity is "fpga_design.hwdef";
end fpga_design;

architecture STRUCTURE of fpga_design is
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal uart_rx_0_Rx_end : STD_LOGIC;
  signal uart_rx_0_Rx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of central_interface_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of central_interface_0 : label is "central_interface,Vivado 2018.2";
  attribute syn_black_box of uart_rx_0 : label is "TRUE";
  attribute x_core_info of uart_rx_0 : label is "uart_rx,Vivado 2018.2";
  attribute syn_black_box of uart_tx_0 : label is "TRUE";
  attribute x_core_info of uart_tx_0 : label is "uart_tx,Vivado 2018.2";
begin
central_interface_0: entity work.fpga_design_central_interface_0_0
     port map (
      FIFO_empty => fifo_empty,
      FIFO_full => fifo_full,
      FIFO_ready => fifo_ready,
      Rx_end => uart_rx_0_Rx_end,
      Rx_in(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => clk,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      threshold_out(11 downto 0) => threshold(11 downto 0)
    );
uart_rx_0: entity work.fpga_design_uart_rx_0_0
     port map (
      Rx => uart_rx,
      Rx_end => uart_rx_0_Rx_end,
      Rx_out(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      rst => rst,
      uart_clk => clk
    );
uart_tx_0: entity work.fpga_design_uart_tx_0_0
     port map (
      Tx => Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => Tx_enabled,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => clk,
      fifo_in(39 downto 0) => fifo_out(39 downto 0),
      fifo_ready => fifo_ready,
      rd_en => read_en,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      tx_lock => tx_lock
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_wrapper is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_out : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_ready : in STD_LOGIC;
    read_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_wrapper : entity is true;
end fpga_design_wrapper;

architecture STRUCTURE of fpga_design_wrapper is
  signal Tx_OBUF : STD_LOGIC;
  signal Tx_enabled_OBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal fifo_empty_IBUF : STD_LOGIC;
  signal fifo_full_IBUF : STD_LOGIC;
  signal fifo_out_IBUF : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_ready_IBUF : STD_LOGIC;
  signal read_en_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal threshold_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal tx_lock_OBUF : STD_LOGIC;
  signal uart_rx_IBUF : STD_LOGIC;
  attribute hw_handoff : string;
  attribute hw_handoff of fpga_design_i : label is "fpga_design.hwdef";
begin
Tx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Tx_OBUF,
      O => Tx
    );
Tx_enabled_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Tx_enabled_OBUF,
      O => Tx_enabled
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
fifo_empty_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => fifo_empty,
      O => fifo_empty_IBUF
    );
fifo_full_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => fifo_full,
      O => fifo_full_IBUF
    );
\fifo_out_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(0),
      O => fifo_out_IBUF(0)
    );
\fifo_out_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(10),
      O => fifo_out_IBUF(10)
    );
\fifo_out_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(11),
      O => fifo_out_IBUF(11)
    );
\fifo_out_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(12),
      O => fifo_out_IBUF(12)
    );
\fifo_out_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(13),
      O => fifo_out_IBUF(13)
    );
\fifo_out_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(14),
      O => fifo_out_IBUF(14)
    );
\fifo_out_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(15),
      O => fifo_out_IBUF(15)
    );
\fifo_out_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(16),
      O => fifo_out_IBUF(16)
    );
\fifo_out_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(17),
      O => fifo_out_IBUF(17)
    );
\fifo_out_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(18),
      O => fifo_out_IBUF(18)
    );
\fifo_out_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(19),
      O => fifo_out_IBUF(19)
    );
\fifo_out_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(1),
      O => fifo_out_IBUF(1)
    );
\fifo_out_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(20),
      O => fifo_out_IBUF(20)
    );
\fifo_out_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(21),
      O => fifo_out_IBUF(21)
    );
\fifo_out_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(22),
      O => fifo_out_IBUF(22)
    );
\fifo_out_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(23),
      O => fifo_out_IBUF(23)
    );
\fifo_out_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(24),
      O => fifo_out_IBUF(24)
    );
\fifo_out_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(25),
      O => fifo_out_IBUF(25)
    );
\fifo_out_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(26),
      O => fifo_out_IBUF(26)
    );
\fifo_out_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(27),
      O => fifo_out_IBUF(27)
    );
\fifo_out_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(28),
      O => fifo_out_IBUF(28)
    );
\fifo_out_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(29),
      O => fifo_out_IBUF(29)
    );
\fifo_out_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(2),
      O => fifo_out_IBUF(2)
    );
\fifo_out_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(30),
      O => fifo_out_IBUF(30)
    );
\fifo_out_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(31),
      O => fifo_out_IBUF(31)
    );
\fifo_out_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(32),
      O => fifo_out_IBUF(32)
    );
\fifo_out_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(33),
      O => fifo_out_IBUF(33)
    );
\fifo_out_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(34),
      O => fifo_out_IBUF(34)
    );
\fifo_out_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(35),
      O => fifo_out_IBUF(35)
    );
\fifo_out_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(36),
      O => fifo_out_IBUF(36)
    );
\fifo_out_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(37),
      O => fifo_out_IBUF(37)
    );
\fifo_out_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(38),
      O => fifo_out_IBUF(38)
    );
\fifo_out_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(39),
      O => fifo_out_IBUF(39)
    );
\fifo_out_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(3),
      O => fifo_out_IBUF(3)
    );
\fifo_out_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(4),
      O => fifo_out_IBUF(4)
    );
\fifo_out_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(5),
      O => fifo_out_IBUF(5)
    );
\fifo_out_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(6),
      O => fifo_out_IBUF(6)
    );
\fifo_out_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(7),
      O => fifo_out_IBUF(7)
    );
\fifo_out_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(8),
      O => fifo_out_IBUF(8)
    );
\fifo_out_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => fifo_out(9),
      O => fifo_out_IBUF(9)
    );
fifo_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => fifo_ready,
      O => fifo_ready_IBUF
    );
fpga_design_i: entity work.fpga_design
     port map (
      Tx => Tx_OBUF,
      Tx_enabled => Tx_enabled_OBUF,
      clk => clk_IBUF,
      fifo_empty => fifo_empty_IBUF,
      fifo_full => fifo_full_IBUF,
      fifo_out(39 downto 0) => fifo_out_IBUF(39 downto 0),
      fifo_ready => fifo_ready_IBUF,
      read_en => read_en_OBUF,
      rst => rst_IBUF,
      threshold(11 downto 0) => threshold_OBUF(11 downto 0),
      tx_lock => tx_lock_OBUF,
      uart_rx => uart_rx_IBUF
    );
read_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => read_en_OBUF,
      O => read_en
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\threshold_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(0),
      O => threshold(0)
    );
\threshold_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(10),
      O => threshold(10)
    );
\threshold_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(11),
      O => threshold(11)
    );
\threshold_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(1),
      O => threshold(1)
    );
\threshold_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(2),
      O => threshold(2)
    );
\threshold_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(3),
      O => threshold(3)
    );
\threshold_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(4),
      O => threshold(4)
    );
\threshold_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(5),
      O => threshold(5)
    );
\threshold_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(6),
      O => threshold(6)
    );
\threshold_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(7),
      O => threshold(7)
    );
\threshold_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(8),
      O => threshold(8)
    );
\threshold_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => threshold_OBUF(9),
      O => threshold(9)
    );
tx_lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_lock_OBUF,
      O => tx_lock
    );
uart_rx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => uart_rx,
      O => uart_rx_IBUF
    );
end STRUCTURE;
