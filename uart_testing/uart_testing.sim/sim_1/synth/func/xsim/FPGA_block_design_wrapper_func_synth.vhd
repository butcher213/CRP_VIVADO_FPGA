-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 28 12:53:16 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/FPGA_block_design_wrapper_func_synth.vhd
-- Design      : FPGA_Block_Design_wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Block_Design_central_interface_0_0_central_interface is
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
  attribute ORIG_REF_NAME of FPGA_Block_Design_central_interface_0_0_central_interface : entity is "central_interface";
end FPGA_Block_Design_central_interface_0_0_central_interface;

architecture STRUCTURE of FPGA_Block_Design_central_interface_0_0_central_interface is
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
entity FPGA_Block_Design_uart_tx_0_0_uart_tx is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    \data_line_reg[0]_0\ : out STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B1 : inout STD_LOGIC_VECTOR ( 0 to 0 );
    UART_clk : in STD_LOGIC;
    Tx_en : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Block_Design_uart_tx_0_0_uart_tx : entity is "uart_tx";
end FPGA_Block_Design_uart_tx_0_0_uart_tx;

architecture STRUCTURE of FPGA_Block_Design_uart_tx_0_0_uart_tx is
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
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^data_line\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \data_line[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_line[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_line[2]_i_1_n_0\ : STD_LOGIC;
  signal fifo_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \fifo_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[39]_i_2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \Tx_shift_registers[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of transmit_lock_i_1 : label is "soft_lutpair1";
begin
  Tx <= \^tx\;
  Tx_enabled <= \^tx_enabled\;
  data_line(1 downto 0) <= \^data_line\(1 downto 0);
  tx_lock <= \^tx_lock\;
\FSM_sequential_Tx_line_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F373737300404040"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_line_index__0\(1),
      I5 => \Tx_line_index__0\(0),
      O => \FSM_sequential_Tx_line_index[0]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F373B3B300408080"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_line_index__0\(1),
      I5 => \Tx_line_index__0\(1),
      O => \FSM_sequential_Tx_line_index[1]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3B3F3330080C000"
    )
        port map (
      I0 => \Tx_line_index__0\(0),
      I1 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_line_index__0\(1),
      I5 => \Tx_line_index__0\(2),
      O => \FSM_sequential_Tx_line_index[2]_i_1_n_0\
    );
\FSM_sequential_Tx_line_index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
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
      INIT => X"55E0"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \Tx_shift_registers_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \Tx_shift_registers[2]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => fifo_data(35),
      I3 => \Tx_line_index__0\(0),
      I4 => fifo_data(28),
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \Tx_shift_registers[3]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => fifo_data(36),
      I3 => \Tx_line_index__0\(0),
      I4 => fifo_data(29),
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \Tx_shift_registers[4]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => fifo_data(37),
      I3 => \Tx_line_index__0\(0),
      I4 => fifo_data(30),
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \Tx_shift_registers[5]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => fifo_data(38),
      I3 => \Tx_line_index__0\(0),
      I4 => fifo_data(31),
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \Tx_shift_registers[6]_i_3_n_0\,
      I1 => \Tx_line_index__0\(2),
      I2 => fifo_data(39),
      I3 => \Tx_line_index__0\(0),
      I4 => fifo_data(32),
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
      INIT => X"0040444000400040"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \Tx_shift_registers[7]_i_3_n_0\,
      I3 => \Tx_line_index__0\(2),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(33),
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
      INIT => X"FFCCD5C0C0CCD5C0"
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
      INIT => X"00000000FFFF57F7"
    )
        port map (
      I0 => \Tx_line_index__0\(1),
      I1 => fifo_data(20),
      I2 => \Tx_line_index__0\(0),
      I3 => fifo_data(27),
      I4 => \Tx_line_index__0\(2),
      I5 => \Tx_shift_registers[8]_i_3_n_0\,
      O => \Tx_shift_registers[8]_i_2_n_0\
    );
\Tx_shift_registers[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03008B8B03008888"
    )
        port map (
      I0 => fifo_data(34),
      I1 => \Tx_line_index__0\(2),
      I2 => \Tx_line_index__0\(1),
      I3 => fifo_data(13),
      I4 => \Tx_line_index__0\(0),
      I5 => fifo_data(6),
      O => \Tx_shift_registers[8]_i_3_n_0\
    );
\Tx_shift_registers[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5507555755575557"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => Tx_i_2_n_0,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \Tx_line_index__0\(2),
      I5 => \Tx_line_index__0\(1),
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
      INIT => X"000000000000F0E0"
    )
        port map (
      I0 => Tx_en,
      I1 => read_enable,
      I2 => \current_state[1]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => \current_state_reg_n_0_[0]\,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state[1]_i_3_n_0\,
      I4 => \current_state[2]_i_2_n_0\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => Tx_i_3_n_0,
      I1 => \Tx_shift_registers_reg_n_0_[1]\,
      I2 => \Tx_shift_registers_reg_n_0_[0]\,
      I3 => \Tx_shift_registers_reg_n_0_[9]\,
      I4 => \Tx_shift_registers_reg_n_0_[3]\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700070F070007000"
    )
        port map (
      I0 => \Tx_line_index__0\(1),
      I1 => \Tx_line_index__0\(2),
      I2 => \FSM_sequential_Tx_line_index[2]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => read_enable,
      I5 => Tx_en,
      O => \current_state[1]_i_3_n_0\
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
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => Tx_en,
      I4 => read_enable,
      I5 => rst,
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
\data_line[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Tx_line_index__0\(1),
      I1 => \Tx_line_index__0\(0),
      O => \data_line_reg[0]_0\
    );
\data_line[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => B1(0),
      O => \data_line[0]_i_1_n_0\
    );
\data_line[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Tx_line_index__0\(2),
      I1 => \Tx_line_index__0\(1),
      O => \^data_line\(0)
    );
\data_line[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \^data_line\(0),
      O => \data_line[1]_i_1_n_0\
    );
\data_line[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \Tx_line_index__0\(1),
      I1 => \Tx_line_index__0\(0),
      I2 => \Tx_line_index__0\(2),
      O => \^data_line\(1)
    );
\data_line[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \^data_line\(1),
      O => \data_line[2]_i_1_n_0\
    );
\data_line_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => '1',
      D => \data_line[0]_i_1_n_0\,
      Q => B1(0),
      R => '0'
    );
\data_line_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => '1',
      D => \data_line[1]_i_1_n_0\,
      Q => \^data_line\(0),
      R => '0'
    );
\data_line_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => '1',
      D => \data_line[2]_i_1_n_0\,
      Q => \^data_line\(1),
      R => '0'
    );
\fifo_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[0]\,
      O => \fifo_data[39]_i_1_n_0\
    );
\fifo_data[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000111111111"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \Tx_line_index__0\(0),
      I3 => \Tx_line_index__0\(1),
      I4 => \Tx_line_index__0\(2),
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
transmit_lock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
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
entity FPGA_Block_Design_central_interface_0_0 is
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
  attribute CHECK_LICENSE_TYPE of FPGA_Block_Design_central_interface_0_0 : entity is "FPGA_Block_Design_central_interface_0_0,central_interface,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Block_Design_central_interface_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Block_Design_central_interface_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Block_Design_central_interface_0_0 : entity is "central_interface,Vivado 2018.2";
end FPGA_Block_Design_central_interface_0_0;

architecture STRUCTURE of FPGA_Block_Design_central_interface_0_0 is
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
U0: entity work.FPGA_Block_Design_central_interface_0_0_central_interface
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
entity FPGA_Block_Design_uart_tx_0_0 is
  port (
    UART_clk : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_en : in STD_LOGIC;
    fifo_ready : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Block_Design_uart_tx_0_0 : entity is "FPGA_Block_Design_uart_tx_0_0,uart_tx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Block_Design_uart_tx_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Block_Design_uart_tx_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Block_Design_uart_tx_0_0 : entity is "uart_tx,Vivado 2018.2";
end FPGA_Block_Design_uart_tx_0_0;

architecture STRUCTURE of FPGA_Block_Design_uart_tx_0_0 is
  signal U0_n_3 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_line[0]_INST_0\ : label is "BUF";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_line[0]_INST_0\ : label is "I:I0";
  attribute x_interface_info : string;
  attribute x_interface_info of UART_clk : signal is "xilinx.com:signal:clock:1.0 UART_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of UART_clk : signal is "XIL_INTERFACENAME UART_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.FPGA_Block_Design_uart_tx_0_0_uart_tx
     port map (
      B1(0) => data_line(0),
      Tx => Tx,
      Tx_en => Tx_en,
      Tx_enabled => Tx_enabled,
      Tx_in(7 downto 0) => Tx_in(7 downto 0),
      UART_clk => UART_clk,
      data_line(1 downto 0) => data_line(2 downto 1),
      \data_line_reg[0]_0\ => U0_n_3,
      fifo_in(39 downto 0) => fifo_in(39 downto 0),
      read_enable => read_enable,
      rst => rst,
      tx_lock => tx_lock
    );
\data_line[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => U0_n_3,
      O => data_line(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Block_Design is
  port (
    FIFO_empty : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    FIFO_ready : in STD_LOGIC;
    Rx_end : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FPGA_Block_Design : entity is "FPGA_Block_Design.hwdef";
end FPGA_Block_Design;

architecture STRUCTURE of FPGA_Block_Design is
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal NLW_central_interface_0_threshold_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of central_interface_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of central_interface_0 : label is "central_interface,Vivado 2018.2";
  attribute syn_black_box of uart_tx_0 : label is "TRUE";
  attribute x_core_info of uart_tx_0 : label is "uart_tx,Vivado 2018.2";
begin
central_interface_0: entity work.FPGA_Block_Design_central_interface_0_0
     port map (
      FIFO_empty => FIFO_empty,
      FIFO_full => FIFO_full,
      FIFO_ready => FIFO_ready,
      Rx_end => Rx_end,
      Rx_in(7 downto 0) => Rx_in(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => clk,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      threshold_out(11 downto 0) => NLW_central_interface_0_threshold_out_UNCONNECTED(11 downto 0)
    );
uart_tx_0: entity work.FPGA_Block_Design_uart_tx_0_0
     port map (
      Tx => Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => Tx_enabled,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => clk,
      data_line(2 downto 0) => data_line(2 downto 0),
      fifo_in(39 downto 0) => FIFO_in(39 downto 0),
      fifo_ready => FIFO_ready,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      tx_lock => tx_lock
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Block_Design_wrapper is
  port (
    FIFO_empty : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    FIFO_ready : in STD_LOGIC;
    Rx_end : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    data_line : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Block_Design_wrapper : entity is true;
end FPGA_Block_Design_wrapper;

architecture STRUCTURE of FPGA_Block_Design_wrapper is
  signal FIFO_empty_IBUF : STD_LOGIC;
  signal FIFO_full_IBUF : STD_LOGIC;
  signal FIFO_in_IBUF : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal FIFO_ready_IBUF : STD_LOGIC;
  signal Rx_end_IBUF : STD_LOGIC;
  signal Rx_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tx_OBUF : STD_LOGIC;
  signal Tx_enabled_OBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal data_line_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  signal tx_lock_OBUF : STD_LOGIC;
  attribute hw_handoff : string;
  attribute hw_handoff of FPGA_Block_Design_i : label is "FPGA_Block_Design.hwdef";
begin
FIFO_empty_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => FIFO_empty,
      O => FIFO_empty_IBUF
    );
FIFO_full_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => FIFO_full,
      O => FIFO_full_IBUF
    );
\FIFO_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(0),
      O => FIFO_in_IBUF(0)
    );
\FIFO_in_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(10),
      O => FIFO_in_IBUF(10)
    );
\FIFO_in_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(11),
      O => FIFO_in_IBUF(11)
    );
\FIFO_in_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(12),
      O => FIFO_in_IBUF(12)
    );
\FIFO_in_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(13),
      O => FIFO_in_IBUF(13)
    );
\FIFO_in_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(14),
      O => FIFO_in_IBUF(14)
    );
\FIFO_in_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(15),
      O => FIFO_in_IBUF(15)
    );
\FIFO_in_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(16),
      O => FIFO_in_IBUF(16)
    );
\FIFO_in_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(17),
      O => FIFO_in_IBUF(17)
    );
\FIFO_in_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(18),
      O => FIFO_in_IBUF(18)
    );
\FIFO_in_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(19),
      O => FIFO_in_IBUF(19)
    );
\FIFO_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(1),
      O => FIFO_in_IBUF(1)
    );
\FIFO_in_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(20),
      O => FIFO_in_IBUF(20)
    );
\FIFO_in_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(21),
      O => FIFO_in_IBUF(21)
    );
\FIFO_in_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(22),
      O => FIFO_in_IBUF(22)
    );
\FIFO_in_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(23),
      O => FIFO_in_IBUF(23)
    );
\FIFO_in_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(24),
      O => FIFO_in_IBUF(24)
    );
\FIFO_in_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(25),
      O => FIFO_in_IBUF(25)
    );
\FIFO_in_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(26),
      O => FIFO_in_IBUF(26)
    );
\FIFO_in_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(27),
      O => FIFO_in_IBUF(27)
    );
\FIFO_in_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(28),
      O => FIFO_in_IBUF(28)
    );
\FIFO_in_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(29),
      O => FIFO_in_IBUF(29)
    );
\FIFO_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(2),
      O => FIFO_in_IBUF(2)
    );
\FIFO_in_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(30),
      O => FIFO_in_IBUF(30)
    );
\FIFO_in_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(31),
      O => FIFO_in_IBUF(31)
    );
\FIFO_in_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(32),
      O => FIFO_in_IBUF(32)
    );
\FIFO_in_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(33),
      O => FIFO_in_IBUF(33)
    );
\FIFO_in_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(34),
      O => FIFO_in_IBUF(34)
    );
\FIFO_in_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(35),
      O => FIFO_in_IBUF(35)
    );
\FIFO_in_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(36),
      O => FIFO_in_IBUF(36)
    );
\FIFO_in_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(37),
      O => FIFO_in_IBUF(37)
    );
\FIFO_in_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(38),
      O => FIFO_in_IBUF(38)
    );
\FIFO_in_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(39),
      O => FIFO_in_IBUF(39)
    );
\FIFO_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(3),
      O => FIFO_in_IBUF(3)
    );
\FIFO_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(4),
      O => FIFO_in_IBUF(4)
    );
\FIFO_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(5),
      O => FIFO_in_IBUF(5)
    );
\FIFO_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(6),
      O => FIFO_in_IBUF(6)
    );
\FIFO_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(7),
      O => FIFO_in_IBUF(7)
    );
\FIFO_in_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(8),
      O => FIFO_in_IBUF(8)
    );
\FIFO_in_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => FIFO_in(9),
      O => FIFO_in_IBUF(9)
    );
FIFO_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => FIFO_ready,
      O => FIFO_ready_IBUF
    );
FPGA_Block_Design_i: entity work.FPGA_Block_Design
     port map (
      FIFO_empty => FIFO_empty_IBUF,
      FIFO_full => FIFO_full_IBUF,
      FIFO_in(39 downto 0) => FIFO_in_IBUF(39 downto 0),
      FIFO_ready => FIFO_ready_IBUF,
      Rx_end => Rx_end_IBUF,
      Rx_in(7 downto 0) => Rx_in_IBUF(7 downto 0),
      Tx => Tx_OBUF,
      Tx_enabled => Tx_enabled_OBUF,
      clk => clk_IBUF,
      data_line(2 downto 0) => data_line_OBUF(2 downto 0),
      rst => rst_IBUF,
      tx_lock => tx_lock_OBUF
    );
Rx_end_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rx_end,
      O => Rx_end_IBUF
    );
\Rx_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(0),
      O => Rx_in_IBUF(0)
    );
\Rx_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(1),
      O => Rx_in_IBUF(1)
    );
\Rx_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(2),
      O => Rx_in_IBUF(2)
    );
\Rx_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(3),
      O => Rx_in_IBUF(3)
    );
\Rx_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(4),
      O => Rx_in_IBUF(4)
    );
\Rx_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(5),
      O => Rx_in_IBUF(5)
    );
\Rx_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(6),
      O => Rx_in_IBUF(6)
    );
\Rx_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rx_in(7),
      O => Rx_in_IBUF(7)
    );
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
\data_line_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(0),
      O => data_line(0)
    );
\data_line_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(1),
      O => data_line(1)
    );
\data_line_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_line_OBUF(2),
      O => data_line(2)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
tx_lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_lock_OBUF,
      O => tx_lock
    );
end STRUCTURE;
