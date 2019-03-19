-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 28 17:19:00 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.sim/sim_1/impl/func/xsim/central_interface_func_impl.vhd
-- Design      : central_interface
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity central_interface is
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
  attribute NotValidForBitStream of central_interface : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of central_interface : entity is "47751e70";
end central_interface;

architecture STRUCTURE of central_interface is
  signal FIFO_empty_IBUF : STD_LOGIC;
  signal FIFO_full_IBUF : STD_LOGIC;
  signal FIFO_ready_IBUF : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal Rx_end_IBUF : STD_LOGIC;
  signal Rx_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tx_en_OBUF : STD_LOGIC;
  signal Tx_en_i_1_n_0 : STD_LOGIC;
  signal Tx_en_i_2_n_0 : STD_LOGIC;
  signal Tx_en_i_3_n_0 : STD_LOGIC;
  signal \Tx_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[4]_i_2_n_0\ : STD_LOGIC;
  signal Tx_out_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \current_state__0\ : signal is "yes";
  signal read_enable_OBUF : STD_LOGIC;
  signal read_enable_i_1_n_0 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal threshold : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \threshold[4]_i_1_n_0\ : STD_LOGIC;
  signal threshold_out_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
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
FIFO_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => FIFO_ready,
      O => FIFO_ready_IBUF
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => \current_state__0\(1),
      I3 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000080800"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I1 => Rx_end_IBUF,
      I2 => Rx_in_IBUF(4),
      I3 => Rx_in_IBUF(5),
      I4 => Rx_in_IBUF(6),
      I5 => FIFO_empty_IBUF,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888F0F0"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => \current_state__0\(1),
      I3 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_current_state[2]_i_4_n_0\,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Rx_in_IBUF(0),
      I1 => Rx_in_IBUF(1),
      I2 => Rx_in_IBUF(2),
      I3 => Rx_in_IBUF(3),
      I4 => Rx_in_IBUF(7),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => Rx_end_IBUF,
      I1 => Rx_in_IBUF(6),
      I2 => Rx_in_IBUF(4),
      I3 => Rx_in_IBUF(5),
      I4 => \current_state__0\(2),
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      O => \FSM_sequential_current_state[1]_i_4_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => threshold(11),
      I1 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I4 => \current_state__0\(2),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \current_state__0\(1),
      I2 => Rx_end_IBUF,
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => Rx_in_IBUF(6),
      I1 => Rx_in_IBUF(5),
      I2 => FIFO_empty_IBUF,
      I3 => Rx_in_IBUF(4),
      I4 => \current_state__0\(2),
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_5_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_6_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_7_n_0\,
      I4 => \FSM_sequential_current_state[2]_i_8_n_0\,
      I5 => \FSM_sequential_current_state[2]_i_9_n_0\,
      O => \FSM_sequential_current_state[2]_i_4_n_0\
    );
\FSM_sequential_current_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(1),
      I2 => Rx_end_IBUF,
      O => \FSM_sequential_current_state[2]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => Rx_in_IBUF(4),
      I1 => FIFO_empty_IBUF,
      I2 => Rx_in_IBUF(6),
      I3 => Rx_in_IBUF(5),
      O => \FSM_sequential_current_state[2]_i_6_n_0\
    );
\FSM_sequential_current_state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Rx_end_IBUF,
      I1 => \current_state__0\(1),
      O => \FSM_sequential_current_state[2]_i_7_n_0\
    );
\FSM_sequential_current_state[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(1),
      I2 => rst_IBUF,
      O => \FSM_sequential_current_state[2]_i_8_n_0\
    );
\FSM_sequential_current_state[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"46"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      O => \FSM_sequential_current_state[2]_i_9_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => \current_state__0\(2),
      R => '0'
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
Tx_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Tx_en_OBUF,
      O => Tx_en
    );
Tx_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      O => Tx_en_i_1_n_0
    );
Tx_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F2112211221122"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I3 => \current_state__0\(1),
      I4 => Rx_end_IBUF,
      I5 => Tx_en_i_3_n_0,
      O => Tx_en_i_2_n_0
    );
Tx_en_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => FIFO_empty_IBUF,
      I1 => Rx_in_IBUF(4),
      I2 => Rx_in_IBUF(5),
      I3 => \current_state__0\(2),
      I4 => Rx_in_IBUF(6),
      O => Tx_en_i_3_n_0
    );
Tx_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Tx_en_i_1_n_0,
      D => Tx_en_i_2_n_0,
      Q => Tx_en_OBUF,
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
      I0 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I1 => Rx_in_IBUF(4),
      I2 => FIFO_empty_IBUF,
      I3 => Rx_in_IBUF(5),
      I4 => Rx_in_IBUF(6),
      I5 => \FSM_sequential_current_state[2]_i_2_n_0\,
      O => \Tx_out[1]_i_1_n_0\
    );
\Tx_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => FIFO_full_IBUF,
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
      I3 => FIFO_ready_IBUF,
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
      I3 => FIFO_ready_IBUF,
      O => \Tx_out[4]_i_2_n_0\
    );
\Tx_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Tx_out_OBUF(0),
      O => Tx_out(0)
    );
\Tx_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Tx_out_OBUF(1),
      O => Tx_out(1)
    );
\Tx_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Tx_out_OBUF(2),
      O => Tx_out(2)
    );
\Tx_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Tx_out_OBUF(3),
      O => Tx_out(3)
    );
\Tx_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Tx_out_OBUF(4),
      O => Tx_out(4)
    );
\Tx_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Tx_out(5)
    );
\Tx_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Tx_out(6)
    );
\Tx_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Tx_out(7)
    );
\Tx_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[0]_i_1_n_0\,
      Q => Tx_out_OBUF(0),
      R => '0'
    );
\Tx_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[1]_i_1_n_0\,
      Q => Tx_out_OBUF(1),
      R => '0'
    );
\Tx_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[2]_i_1_n_0\,
      Q => Tx_out_OBUF(2),
      R => '0'
    );
\Tx_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[3]_i_1_n_0\,
      Q => Tx_out_OBUF(3),
      R => '0'
    );
\Tx_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Tx_out[4]_i_1_n_0\,
      D => \Tx_out[4]_i_2_n_0\,
      Q => Tx_out_OBUF(4),
      R => '0'
    );
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
read_enable_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => read_enable_OBUF,
      O => read_enable
    );
read_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      O => read_enable_i_1_n_0
    );
read_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_enable_i_1_n_0,
      D => \current_state__0\(2),
      Q => read_enable_OBUF,
      R => '0'
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\threshold[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(2),
      I3 => Rx_end_IBUF,
      O => threshold(11)
    );
\threshold[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(1),
      I3 => Rx_end_IBUF,
      O => \threshold[4]_i_1_n_0\
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
\threshold_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[0]\,
      Q => threshold_out_OBUF(0),
      R => '0'
    );
\threshold_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[10]\,
      Q => threshold_out_OBUF(10),
      R => '0'
    );
\threshold_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[11]\,
      Q => threshold_out_OBUF(11),
      R => '0'
    );
\threshold_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[1]\,
      Q => threshold_out_OBUF(1),
      R => '0'
    );
\threshold_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[2]\,
      Q => threshold_out_OBUF(2),
      R => '0'
    );
\threshold_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[3]\,
      Q => threshold_out_OBUF(3),
      R => '0'
    );
\threshold_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[4]\,
      Q => threshold_out_OBUF(4),
      R => '0'
    );
\threshold_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[5]\,
      Q => threshold_out_OBUF(5),
      R => '0'
    );
\threshold_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[6]\,
      Q => threshold_out_OBUF(6),
      R => '0'
    );
\threshold_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[7]\,
      Q => threshold_out_OBUF(7),
      R => '0'
    );
\threshold_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[8]\,
      Q => threshold_out_OBUF(8),
      R => '0'
    );
\threshold_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => \threshold_reg_n_0_[9]\,
      Q => threshold_out_OBUF(9),
      R => '0'
    );
\threshold_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => Rx_in_IBUF(2),
      Q => \threshold_reg_n_0_[0]\,
      R => '0'
    );
\threshold_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(5),
      Q => \threshold_reg_n_0_[10]\,
      R => '0'
    );
\threshold_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(6),
      Q => \threshold_reg_n_0_[11]\,
      R => '0'
    );
\threshold_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => Rx_in_IBUF(3),
      Q => \threshold_reg_n_0_[1]\,
      R => '0'
    );
\threshold_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => Rx_in_IBUF(4),
      Q => \threshold_reg_n_0_[2]\,
      R => '0'
    );
\threshold_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => Rx_in_IBUF(5),
      Q => \threshold_reg_n_0_[3]\,
      R => '0'
    );
\threshold_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \threshold[4]_i_1_n_0\,
      D => Rx_in_IBUF(6),
      Q => \threshold_reg_n_0_[4]\,
      R => '0'
    );
\threshold_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(0),
      Q => \threshold_reg_n_0_[5]\,
      R => '0'
    );
\threshold_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(1),
      Q => \threshold_reg_n_0_[6]\,
      R => '0'
    );
\threshold_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(2),
      Q => \threshold_reg_n_0_[7]\,
      R => '0'
    );
\threshold_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(3),
      Q => \threshold_reg_n_0_[8]\,
      R => '0'
    );
\threshold_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => threshold(11),
      D => Rx_in_IBUF(4),
      Q => \threshold_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
