-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 28 10:21:46 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_block_design/ip/FPGA_block_design_central_interface_0_0/FPGA_block_design_central_interface_0_0_sim_netlist.vhdl
-- Design      : FPGA_block_design_central_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_block_design_central_interface_0_0_central_interface is
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
  attribute ORIG_REF_NAME of FPGA_block_design_central_interface_0_0_central_interface : entity is "central_interface";
end FPGA_block_design_central_interface_0_0_central_interface;

architecture STRUCTURE of FPGA_block_design_central_interface_0_0_central_interface is
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
     port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[0]_i_1_n_0\,
      Q => Tx_out(0),
      R => '0'
    );
\Tx_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[1]_i_1_n_0\,
      Q => Tx_out(1),
      R => '0'
    );
\Tx_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[2]_i_1_n_0\,
      Q => Tx_out(2),
      R => '0'
    );
\Tx_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[3]_i_1_n_0\,
      Q => Tx_out(3),
      R => '0'
    );
\Tx_out_reg[4]\: unisim.vcomponents.FDRE
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
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[0]\,
      Q => threshold_out(0),
      R => '0'
    );
\threshold_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[10]\,
      Q => threshold_out(10),
      R => '0'
    );
\threshold_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[11]\,
      Q => threshold_out(11),
      R => '0'
    );
\threshold_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[1]\,
      Q => threshold_out(1),
      R => '0'
    );
\threshold_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[2]\,
      Q => threshold_out(2),
      R => '0'
    );
\threshold_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[3]\,
      Q => threshold_out(3),
      R => '0'
    );
\threshold_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[4]\,
      Q => threshold_out(4),
      R => '0'
    );
\threshold_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[5]\,
      Q => threshold_out(5),
      R => '0'
    );
\threshold_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[6]\,
      Q => threshold_out(6),
      R => '0'
    );
\threshold_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[7]\,
      Q => threshold_out(7),
      R => '0'
    );
\threshold_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \threshold_out[11]_i_1_n_0\,
      D => \threshold_reg_n_0_[8]\,
      Q => threshold_out(8),
      R => '0'
    );
\threshold_out_reg[9]\: unisim.vcomponents.FDRE
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
entity FPGA_block_design_central_interface_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_block_design_central_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_block_design_central_interface_0_0 : entity is "FPGA_block_design_central_interface_0_0,central_interface,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_block_design_central_interface_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_block_design_central_interface_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_block_design_central_interface_0_0 : entity is "central_interface,Vivado 2018.2";
end FPGA_block_design_central_interface_0_0;

architecture STRUCTURE of FPGA_block_design_central_interface_0_0 is
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
U0: entity work.FPGA_block_design_central_interface_0_0_central_interface
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
