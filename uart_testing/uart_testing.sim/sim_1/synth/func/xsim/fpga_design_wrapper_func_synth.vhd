-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Mar 21 17:47:52 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.sim/sim_1/synth/func/xsim/fpga_design_wrapper_func_synth.vhd
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
    FIFO_ready : in STD_LOGIC;
    FIFO_full : in STD_LOGIC;
    FIFO_empty : in STD_LOGIC;
    Rx_end : in STD_LOGIC;
    rst : in STD_LOGIC
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
  signal \FSM_sequential_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \^tx_en\ : STD_LOGIC;
  signal Tx_en_i_1_n_0 : STD_LOGIC;
  signal Tx_en_i_2_n_0 : STD_LOGIC;
  signal Tx_en_i_3_n_0 : STD_LOGIC;
  signal \^tx_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Tx_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \Tx_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \Tx_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \current_state__0\ : signal is "yes";
  signal \^read_enable\ : STD_LOGIC;
  signal read_enable_i_1_n_0 : STD_LOGIC;
  signal threshold : STD_LOGIC_VECTOR ( 11 to 11 );
  signal threshold0_in : STD_LOGIC_VECTOR ( 4 to 4 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_6\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "threshold_rx_1:011,fifo_status:001,change_threshold:010,fifo_read:101,init:000,threshold_rx_2:100";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \Tx_out[1]_i_3\ : label is "soft_lutpair1";
begin
  Tx_en <= \^tx_en\;
  Tx_out(4 downto 0) <= \^tx_out\(4 downto 0);
  read_enable <= \^read_enable\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \Tx_out[1]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I4 => \current_state__0\(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0026"
    )
        port map (
      I0 => Rx_in(5),
      I1 => Rx_in(6),
      I2 => FIFO_empty,
      I3 => Rx_in(4),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \Tx_out[1]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I4 => \current_state__0\(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Rx_in(6),
      I1 => Rx_in(5),
      I2 => Rx_in(4),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => threshold(11),
      I1 => \Tx_out[1]_i_4_n_0\,
      I2 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I4 => \current_state__0\(2),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => FIFO_empty,
      I1 => Rx_in(4),
      I2 => Rx_in(5),
      I3 => \current_state__0\(1),
      I4 => Rx_in(6),
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEFEFE"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_5_n_0\,
      I2 => rst,
      I3 => \FSM_sequential_current_state[2]_i_6_n_0\,
      I4 => Tx_en_i_2_n_0,
      I5 => \current_state__0\(1),
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F28"
    )
        port map (
      I0 => Rx_end,
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(1),
      I3 => \current_state__0\(0),
      O => \FSM_sequential_current_state[2]_i_4_n_0\
    );
\FSM_sequential_current_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => rst,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(0),
      I3 => \current_state__0\(2),
      O => \FSM_sequential_current_state[2]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => Rx_in(4),
      I1 => FIFO_empty,
      I2 => Rx_in(6),
      I3 => Rx_in(5),
      O => \FSM_sequential_current_state[2]_i_6_n_0\
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
Tx_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Rx_in(2),
      I1 => Rx_in(3),
      I2 => Rx_end,
      I3 => Rx_in(7),
      I4 => Rx_in(1),
      I5 => Rx_in(0),
      O => Tx_en_i_2_n_0
    );
Tx_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => Rx_in(4),
      I1 => Rx_in(5),
      I2 => FIFO_empty,
      I3 => \current_state__0\(2),
      I4 => \current_state__0\(1),
      I5 => Rx_in(6),
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
\Tx_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D210"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(1),
      I3 => \^tx_out\(0),
      O => \Tx_out[0]_i_1_n_0\
    );
\Tx_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => threshold0_in(4),
      I1 => \Tx_out[1]_i_3_n_0\,
      I2 => FIFO_empty,
      I3 => \Tx_out[1]_i_4_n_0\,
      I4 => \Tx_out[1]_i_5_n_0\,
      I5 => \^tx_out\(1),
      O => \Tx_out[1]_i_1_n_0\
    );
\Tx_out[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Rx_in(6),
      I1 => \current_state__0\(1),
      O => threshold0_in(4)
    );
\Tx_out[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rx_in(4),
      I1 => Rx_in(5),
      O => \Tx_out[1]_i_3_n_0\
    );
\Tx_out[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Tx_en_i_2_n_0,
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(0),
      O => \Tx_out[1]_i_4_n_0\
    );
\Tx_out[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3D"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \current_state__0\(2),
      I2 => \current_state__0\(1),
      O => \Tx_out[1]_i_5_n_0\
    );
\Tx_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C00200"
    )
        port map (
      I0 => FIFO_full,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(2),
      I3 => \current_state__0\(0),
      I4 => \^tx_out\(2),
      O => \Tx_out[2]_i_1_n_0\
    );
\Tx_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C00200"
    )
        port map (
      I0 => FIFO_ready,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(2),
      I3 => \current_state__0\(0),
      I4 => \^tx_out\(3),
      O => \Tx_out[3]_i_1_n_0\
    );
\Tx_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C00100"
    )
        port map (
      I0 => FIFO_ready,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(2),
      I3 => \current_state__0\(0),
      I4 => \^tx_out\(4),
      O => \Tx_out[4]_i_1_n_0\
    );
\Tx_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Tx_out[0]_i_1_n_0\,
      Q => \^tx_out\(0),
      R => '0'
    );
\Tx_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Tx_out[1]_i_1_n_0\,
      Q => \^tx_out\(1),
      R => '0'
    );
\Tx_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Tx_out[2]_i_1_n_0\,
      Q => \^tx_out\(2),
      R => '0'
    );
\Tx_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Tx_out[3]_i_1_n_0\,
      Q => \^tx_out\(3),
      R => '0'
    );
\Tx_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Tx_out[4]_i_1_n_0\,
      Q => \^tx_out\(4),
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
      INIT => X"1000"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => Rx_end,
      I3 => \current_state__0\(2),
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
entity fpga_design_fifo_protector_0_0_fifo_protector is
  port (
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    clk : in STD_LOGIC;
    global_rst : in STD_LOGIC;
    rd_in : in STD_LOGIC;
    wr_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_protector_0_0_fifo_protector : entity is "fifo_protector";
end fpga_design_fifo_protector_0_0_fifo_protector;

architecture STRUCTURE of fpga_design_fifo_protector_0_0_fifo_protector is
  signal \FSM_onehot_current_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[8]\ : signal is "yes";
  signal \^fifo_ready\ : STD_LOGIC;
  signal fifo_ready_i_1_n_0 : STD_LOGIC;
  signal \^fifo_rst\ : STD_LOGIC;
  signal fifo_rst_i_1_n_0 : STD_LOGIC;
  signal \^rd_en\ : STD_LOGIC;
  signal rd_en_i_1_n_0 : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC;
  signal wr_en_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "c:0011,d:000000100,b:0010,fin:100000000,a:000000010,reset:000000001,i:010000000,g:000100000,h:001000000,f:000010000,e:000001000";
  attribute KEEP of \FSM_onehot_current_state_reg[8]\ : label is "yes";
begin
  fifo_ready <= \^fifo_ready\;
  fifo_rst <= \^fifo_rst\;
  rd_en <= \^rd_en\;
  wr_en <= \^wr_en\;
\FSM_onehot_current_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state[8]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => \FSM_onehot_current_state[8]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => global_rst,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[8]_i_2_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[8]\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[4]\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[5]\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[6]\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[8]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[7]\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\,
      R => '0'
    );
fifo_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => \^fifo_ready\,
      O => fifo_ready_i_1_n_0
    );
fifo_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_ready_i_1_n_0,
      Q => \^fifo_ready\,
      R => '0'
    );
fifo_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I3 => \^fifo_rst\,
      O => fifo_rst_i_1_n_0
    );
fifo_rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_rst_i_1_n_0,
      Q => \^fifo_rst\,
      R => '0'
    );
rd_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => rd_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => \^rd_en\,
      O => rd_en_i_1_n_0
    );
rd_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_en_i_1_n_0,
      Q => \^rd_en\,
      R => '0'
    );
wr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => wr_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => \^wr_en\,
      O => wr_en_i_1_n_0
    );
wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_en_i_1_n_0,
      Q => \^wr_en\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_image_thresholding_0_0_image_thresholding is
  port (
    packet : out STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : out STD_LOGIC;
    mem_threshold : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vsync : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    cameraId : in STD_LOGIC_VECTOR ( 1 downto 0 );
    layerId : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_image_thresholding_0_0_image_thresholding : entity is "image_thresholding";
end fpga_design_image_thresholding_0_0_image_thresholding;

architecture STRUCTURE of fpga_design_image_thresholding_0_0_image_thresholding is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \packet[0]_i_1_n_0\ : STD_LOGIC;
  signal \packet[10]_i_1_n_0\ : STD_LOGIC;
  signal \packet[11]_i_1_n_0\ : STD_LOGIC;
  signal \packet[12]_i_1_n_0\ : STD_LOGIC;
  signal \packet[13]_i_1_n_0\ : STD_LOGIC;
  signal \packet[14]_i_1_n_0\ : STD_LOGIC;
  signal \packet[15]_i_1_n_0\ : STD_LOGIC;
  signal \packet[16]_i_1_n_0\ : STD_LOGIC;
  signal \packet[17]_i_1_n_0\ : STD_LOGIC;
  signal \packet[18]_i_1_n_0\ : STD_LOGIC;
  signal \packet[19]_i_1_n_0\ : STD_LOGIC;
  signal \packet[1]_i_1_n_0\ : STD_LOGIC;
  signal \packet[20]_i_1_n_0\ : STD_LOGIC;
  signal \packet[21]_i_1_n_0\ : STD_LOGIC;
  signal \packet[22]_i_1_n_0\ : STD_LOGIC;
  signal \packet[23]_i_1_n_0\ : STD_LOGIC;
  signal \packet[24]_i_1_n_0\ : STD_LOGIC;
  signal \packet[25]_i_1_n_0\ : STD_LOGIC;
  signal \packet[26]_i_1_n_0\ : STD_LOGIC;
  signal \packet[27]_i_1_n_0\ : STD_LOGIC;
  signal \packet[28]_i_1_n_0\ : STD_LOGIC;
  signal \packet[29]_i_1_n_0\ : STD_LOGIC;
  signal \packet[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet[30]_i_1_n_0\ : STD_LOGIC;
  signal \packet[31]_i_1_n_0\ : STD_LOGIC;
  signal \packet[32]_i_1_n_0\ : STD_LOGIC;
  signal \packet[33]_i_1_n_0\ : STD_LOGIC;
  signal \packet[34]_i_1_n_0\ : STD_LOGIC;
  signal \packet[35]_i_1_n_0\ : STD_LOGIC;
  signal \packet[36]_i_1_n_0\ : STD_LOGIC;
  signal \packet[37]_i_1_n_0\ : STD_LOGIC;
  signal \packet[38]_i_1_n_0\ : STD_LOGIC;
  signal \packet[39]_i_1_n_0\ : STD_LOGIC;
  signal \packet[3]_i_1_n_0\ : STD_LOGIC;
  signal \packet[4]_i_1_n_0\ : STD_LOGIC;
  signal \packet[5]_i_1_n_0\ : STD_LOGIC;
  signal \packet[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet[7]_i_1_n_0\ : STD_LOGIC;
  signal \packet[8]_i_1_n_0\ : STD_LOGIC;
  signal \packet[9]_i_1_n_0\ : STD_LOGIC;
  signal threshold : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \threshold_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \threshold_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \packet[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packet[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packet[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packet[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packet[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packet[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packet[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packet[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packet[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \packet[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \packet[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packet[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packet[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packet[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packet[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packet[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packet[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packet[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packet[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packet[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packet[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packet[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packet[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packet[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \packet[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \packet[34]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \packet[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \packet[36]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[37]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[38]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packet[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packet[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packet[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packet[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packet[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packet[9]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \threshold_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \threshold_reg[9]\ : label is "LD";
begin
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(24)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 2) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => gtOp,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \gtOp_carry__0_i_1_n_0\,
      DI(0) => \gtOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \gtOp_carry__0_i_3_n_0\,
      S(0) => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(10),
      I1 => threshold(10),
      I2 => threshold(11),
      I3 => imgData(11),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(8),
      I1 => threshold(8),
      I2 => threshold(9),
      I3 => imgData(9),
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(10),
      I1 => threshold(10),
      I2 => imgData(11),
      I3 => threshold(11),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(8),
      I1 => threshold(8),
      I2 => imgData(9),
      I3 => threshold(9),
      O => \gtOp_carry__0_i_4_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(6),
      I1 => threshold(6),
      I2 => threshold(7),
      I3 => imgData(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(4),
      I1 => threshold(4),
      I2 => threshold(5),
      I3 => imgData(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(2),
      I1 => threshold(2),
      I2 => threshold(3),
      I3 => imgData(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => imgData(0),
      I1 => threshold(0),
      I2 => threshold(1),
      I3 => imgData(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(6),
      I1 => threshold(6),
      I2 => imgData(7),
      I3 => threshold(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(4),
      I1 => threshold(4),
      I2 => imgData(5),
      I3 => threshold(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(2),
      I1 => threshold(2),
      I2 => imgData(3),
      I3 => threshold(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => imgData(0),
      I1 => threshold(0),
      I2 => imgData(1),
      I3 => threshold(1),
      O => gtOp_carry_i_8_n_0
    );
\packet[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(0),
      O => \packet[0]_i_1_n_0\
    );
\packet[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(10),
      O => \packet[10]_i_1_n_0\
    );
\packet[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(11),
      O => \packet[11]_i_1_n_0\
    );
\packet[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(12),
      O => \packet[12]_i_1_n_0\
    );
\packet[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(13),
      O => \packet[13]_i_1_n_0\
    );
\packet[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(14),
      O => \packet[14]_i_1_n_0\
    );
\packet[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(15),
      O => \packet[15]_i_1_n_0\
    );
\packet[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(16),
      O => \packet[16]_i_1_n_0\
    );
\packet[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(17),
      O => \packet[17]_i_1_n_0\
    );
\packet[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(18),
      O => \packet[18]_i_1_n_0\
    );
\packet[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(19),
      O => \packet[19]_i_1_n_0\
    );
\packet[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(1),
      O => \packet[1]_i_1_n_0\
    );
\packet[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(20),
      O => \packet[20]_i_1_n_0\
    );
\packet[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(21),
      O => \packet[21]_i_1_n_0\
    );
\packet[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(22),
      O => \packet[22]_i_1_n_0\
    );
\packet[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(23),
      O => \packet[23]_i_1_n_0\
    );
\packet[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(24),
      O => \packet[24]_i_1_n_0\
    );
\packet[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(0),
      O => \packet[25]_i_1_n_0\
    );
\packet[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(1),
      O => \packet[26]_i_1_n_0\
    );
\packet[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(2),
      O => \packet[27]_i_1_n_0\
    );
\packet[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(3),
      O => \packet[28]_i_1_n_0\
    );
\packet[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(4),
      O => \packet[29]_i_1_n_0\
    );
\packet[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(2),
      O => \packet[2]_i_1_n_0\
    );
\packet[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(5),
      O => \packet[30]_i_1_n_0\
    );
\packet[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(6),
      O => \packet[31]_i_1_n_0\
    );
\packet[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(7),
      O => \packet[32]_i_1_n_0\
    );
\packet[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(8),
      O => \packet[33]_i_1_n_0\
    );
\packet[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(9),
      O => \packet[34]_i_1_n_0\
    );
\packet[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(10),
      O => \packet[35]_i_1_n_0\
    );
\packet[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => imgData(11),
      O => \packet[36]_i_1_n_0\
    );
\packet[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId(0),
      O => \packet[37]_i_1_n_0\
    );
\packet[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => cameraId(1),
      O => \packet[38]_i_1_n_0\
    );
\packet[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => layerId,
      O => \packet[39]_i_1_n_0\
    );
\packet[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(3),
      O => \packet[3]_i_1_n_0\
    );
\packet[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(4),
      O => \packet[4]_i_1_n_0\
    );
\packet[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(5),
      O => \packet[5]_i_1_n_0\
    );
\packet[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(6),
      O => \packet[6]_i_1_n_0\
    );
\packet[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(7),
      O => \packet[7]_i_1_n_0\
    );
\packet[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(8),
      O => \packet[8]_i_1_n_0\
    );
\packet[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp,
      I1 => counter_reg(9),
      O => \packet[9]_i_1_n_0\
    );
\packet_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[0]_i_1_n_0\,
      Q => packet(0)
    );
\packet_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[10]_i_1_n_0\,
      Q => packet(10)
    );
\packet_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[11]_i_1_n_0\,
      Q => packet(11)
    );
\packet_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[12]_i_1_n_0\,
      Q => packet(12)
    );
\packet_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[13]_i_1_n_0\,
      Q => packet(13)
    );
\packet_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[14]_i_1_n_0\,
      Q => packet(14)
    );
\packet_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[15]_i_1_n_0\,
      Q => packet(15)
    );
\packet_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[16]_i_1_n_0\,
      Q => packet(16)
    );
\packet_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[17]_i_1_n_0\,
      Q => packet(17)
    );
\packet_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[18]_i_1_n_0\,
      Q => packet(18)
    );
\packet_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[19]_i_1_n_0\,
      Q => packet(19)
    );
\packet_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[1]_i_1_n_0\,
      Q => packet(1)
    );
\packet_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[20]_i_1_n_0\,
      Q => packet(20)
    );
\packet_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[21]_i_1_n_0\,
      Q => packet(21)
    );
\packet_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[22]_i_1_n_0\,
      Q => packet(22)
    );
\packet_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[23]_i_1_n_0\,
      Q => packet(23)
    );
\packet_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[24]_i_1_n_0\,
      Q => packet(24)
    );
\packet_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[25]_i_1_n_0\,
      Q => packet(25)
    );
\packet_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[26]_i_1_n_0\,
      Q => packet(26)
    );
\packet_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[27]_i_1_n_0\,
      Q => packet(27)
    );
\packet_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[28]_i_1_n_0\,
      Q => packet(28)
    );
\packet_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[29]_i_1_n_0\,
      Q => packet(29)
    );
\packet_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[2]_i_1_n_0\,
      Q => packet(2)
    );
\packet_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[30]_i_1_n_0\,
      Q => packet(30)
    );
\packet_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[31]_i_1_n_0\,
      Q => packet(31)
    );
\packet_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[32]_i_1_n_0\,
      Q => packet(32)
    );
\packet_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[33]_i_1_n_0\,
      Q => packet(33)
    );
\packet_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[34]_i_1_n_0\,
      Q => packet(34)
    );
\packet_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[35]_i_1_n_0\,
      Q => packet(35)
    );
\packet_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[36]_i_1_n_0\,
      Q => packet(36)
    );
\packet_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[37]_i_1_n_0\,
      Q => packet(37)
    );
\packet_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[38]_i_1_n_0\,
      Q => packet(38)
    );
\packet_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[39]_i_1_n_0\,
      Q => packet(39)
    );
\packet_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[3]_i_1_n_0\,
      Q => packet(3)
    );
\packet_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[4]_i_1_n_0\,
      Q => packet(4)
    );
\packet_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[5]_i_1_n_0\,
      Q => packet(5)
    );
\packet_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[6]_i_1_n_0\,
      Q => packet(6)
    );
\packet_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[7]_i_1_n_0\,
      Q => packet(7)
    );
\packet_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[8]_i_1_n_0\,
      Q => packet(8)
    );
\packet_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => \packet[9]_i_1_n_0\,
      Q => packet(9)
    );
\threshold_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => mem_threshold(0),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(0)
    );
\threshold_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(10),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(10)
    );
\threshold_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(11),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(11)
    );
\threshold_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => mem_threshold(9),
      I1 => mem_threshold(8),
      I2 => mem_threshold(10),
      I3 => mem_threshold(11),
      I4 => \threshold_reg[11]_i_2_n_0\,
      I5 => \threshold_reg[11]_i_3_n_0\,
      O => \threshold_reg[11]_i_1_n_0\
    );
\threshold_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mem_threshold(2),
      I1 => mem_threshold(3),
      I2 => mem_threshold(0),
      I3 => mem_threshold(1),
      O => \threshold_reg[11]_i_2_n_0\
    );
\threshold_reg[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mem_threshold(6),
      I1 => mem_threshold(7),
      I2 => mem_threshold(4),
      I3 => mem_threshold(5),
      O => \threshold_reg[11]_i_3_n_0\
    );
\threshold_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(1),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(1)
    );
\threshold_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(2),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(2)
    );
\threshold_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(3),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(3)
    );
\threshold_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(4),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(4)
    );
\threshold_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(5),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(5)
    );
\threshold_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(6),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(6)
    );
\threshold_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(7),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(7)
    );
\threshold_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(8),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(8)
    );
\threshold_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mem_threshold(9),
      G => \threshold_reg[11]_i_1_n_0\,
      GE => '1',
      Q => threshold(9)
    );
wr_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixClk,
      CE => vsync,
      CLR => rst,
      D => gtOp,
      Q => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_threshold_memory_0_0_threshold_memory is
  port (
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_threshold_memory_0_0_threshold_memory : entity is "threshold_memory";
end fpga_design_threshold_memory_0_0_threshold_memory;

architecture STRUCTURE of fpga_design_threshold_memory_0_0_threshold_memory is
  signal \internal_memory[11]_i_1_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_2_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_3_n_0\ : STD_LOGIC;
  signal \internal_memory[11]_i_4_n_0\ : STD_LOGIC;
begin
\internal_memory[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \internal_memory[11]_i_3_n_0\,
      I1 => \internal_memory[11]_i_4_n_0\,
      I2 => rst,
      O => \internal_memory[11]_i_1_n_0\
    );
\internal_memory[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => rst,
      I1 => \internal_memory[11]_i_4_n_0\,
      I2 => \internal_memory[11]_i_3_n_0\,
      O => \internal_memory[11]_i_2_n_0\
    );
\internal_memory[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => threshold_in(10),
      I1 => threshold_in(9),
      I2 => threshold_in(11),
      I3 => threshold_in(6),
      I4 => threshold_in(7),
      I5 => threshold_in(8),
      O => \internal_memory[11]_i_3_n_0\
    );
\internal_memory[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => threshold_in(2),
      I1 => threshold_in(0),
      I2 => threshold_in(1),
      I3 => threshold_in(5),
      I4 => threshold_in(3),
      I5 => threshold_in(4),
      O => \internal_memory[11]_i_4_n_0\
    );
\internal_memory_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(0),
      Q => threshold_out(0),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(10),
      Q => threshold_out(10),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(11),
      Q => threshold_out(11),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(1),
      Q => threshold_out(1),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(2),
      Q => threshold_out(2),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(3),
      Q => threshold_out(3),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(4),
      Q => threshold_out(4),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(5),
      Q => threshold_out(5),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(6),
      Q => threshold_out(6),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(7),
      Q => threshold_out(7),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(8),
      Q => threshold_out(8),
      R => \internal_memory[11]_i_1_n_0\
    );
\internal_memory_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \internal_memory[11]_i_2_n_0\,
      D => threshold_in(9),
      Q => threshold_out(9),
      R => \internal_memory[11]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_uart_tx_0_0_uart_tx is
  port (
    tx_registers : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    read_enable : in STD_LOGIC;
    Tx_en : in STD_LOGIC;
    UART_clk : in STD_LOGIC;
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rst : in STD_LOGIC
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
  signal Tx_data_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Tx_data_in[7]_i_1_n_0\ : STD_LOGIC;
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
  signal \tx_registers[9]_i_1_n_0\ : STD_LOGIC;
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
\Tx_data_in[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => read_enable,
      I1 => Tx_en,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[2]\,
      O => \Tx_data_in[7]_i_1_n_0\
    );
\Tx_data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(0),
      Q => Tx_data_in(0),
      R => '0'
    );
\Tx_data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(1),
      Q => Tx_data_in(1),
      R => '0'
    );
\Tx_data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(2),
      Q => Tx_data_in(2),
      R => '0'
    );
\Tx_data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(3),
      Q => Tx_data_in(3),
      R => '0'
    );
\Tx_data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(4),
      Q => Tx_data_in(4),
      R => '0'
    );
\Tx_data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(5),
      Q => Tx_data_in(5),
      R => '0'
    );
\Tx_data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(6),
      Q => Tx_data_in(6),
      R => '0'
    );
\Tx_data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \Tx_data_in[7]_i_1_n_0\,
      D => Tx_in(7),
      Q => Tx_data_in(7),
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
      I0 => Tx_data_in(0),
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
      I5 => Tx_data_in(1),
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
      I5 => Tx_data_in(2),
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
      I5 => Tx_data_in(3),
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
      I5 => Tx_data_in(4),
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
      I5 => Tx_data_in(5),
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
      I5 => Tx_data_in(6),
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
      I5 => Tx_data_in(7),
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
      I0 => read_enable,
      I1 => Tx_en,
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
      INIT => X"00040F040F040F04"
    )
        port map (
      I0 => read_enable,
      I1 => Tx_en,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \Tx_line_index__0\(2),
      I5 => \Tx_line_index__0\(1),
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
      I4 => read_enable,
      I5 => Tx_en,
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
\tx_registers[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
      O => \tx_registers[9]_i_1_n_0\
    );
\tx_registers_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[0]\,
      Q => tx_registers(0),
      R => '0'
    );
\tx_registers_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[1]\,
      Q => tx_registers(1),
      R => '0'
    );
\tx_registers_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[2]\,
      Q => tx_registers(2),
      R => '0'
    );
\tx_registers_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[3]\,
      Q => tx_registers(3),
      R => '0'
    );
\tx_registers_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[4]\,
      Q => tx_registers(4),
      R => '0'
    );
\tx_registers_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[5]\,
      Q => tx_registers(5),
      R => '0'
    );
\tx_registers_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[6]\,
      Q => tx_registers(6),
      R => '0'
    );
\tx_registers_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[7]\,
      Q => tx_registers(7),
      R => '0'
    );
\tx_registers_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[8]\,
      Q => tx_registers(8),
      R => '0'
    );
\tx_registers_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => UART_clk,
      CE => \tx_registers[9]_i_1_n_0\,
      D => \Tx_shift_registers_reg_n_0_[9]\,
      Q => tx_registers(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_prim_v6 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_prim_v6 : entity is "builtin_prim_v6";
end fpga_design_fifo_generator_0_0_builtin_prim_v6;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_prim_v6 is
  signal \gf36e1_inst.sngfifo36e1_n_0\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_10\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_105\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_11\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_12\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_13\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_14\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_15\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_16\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_2\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_29\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_5\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_6\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_7\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_9\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_90\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_91\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_92\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_93\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0005",
      ALMOST_FULL_OFFSET => X"0007",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => \gf36e1_inst.sngfifo36e1_n_0\,
      ALMOSTFULL => p_3_out,
      DBITERR => \gf36e1_inst.sngfifo36e1_n_2\,
      DI(63 downto 4) => B"000000000000000000000000000000000000000000000000000000000000",
      DI(3 downto 0) => din(3 downto 0),
      DIP(7 downto 0) => B"00000000",
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7) => \gf36e1_inst.sngfifo36e1_n_90\,
      DO(6) => \gf36e1_inst.sngfifo36e1_n_91\,
      DO(5) => \gf36e1_inst.sngfifo36e1_n_92\,
      DO(4) => \gf36e1_inst.sngfifo36e1_n_93\,
      DO(3 downto 0) => dout(3 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => \gf36e1_inst.sngfifo36e1_n_105\,
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => EMPTY,
      FULL => FULL,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => rd_clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_9\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_10\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_11\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_12\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_13\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_14\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_15\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_16\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDEN => RD_EN,
      RDERR => \gf36e1_inst.sngfifo36e1_n_5\,
      REGCE => '0',
      RST => RST,
      RSTREG => '0',
      SBITERR => \gf36e1_inst.sngfifo36e1_n_6\,
      WRCLK => wr_clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_22\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_23\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_24\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_25\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_26\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_27\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_28\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_29\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_33\,
      WREN => WR_EN,
      WRERR => \gf36e1_inst.sngfifo36e1_n_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_prim_v6_4 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_prim_v6_4 : entity is "builtin_prim_v6";
end fpga_design_fifo_generator_0_0_builtin_prim_v6_4;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_prim_v6_4 is
  signal \gf36e1_inst.sngfifo36e1_n_10\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_11\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_12\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_13\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_14\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_15\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_16\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_29\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_5\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_7\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_9\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0005",
      ALMOST_FULL_OFFSET => X"0007",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => p_11_out,
      ALMOSTFULL => p_10_out,
      DBITERR => p_13_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 1) => B"0000000",
      DIP(0) => din(8),
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => dout(8),
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => EMPTY,
      FULL => FULL,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => rd_clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_9\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_10\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_11\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_12\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_13\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_14\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_15\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_16\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDEN => RD_EN,
      RDERR => \gf36e1_inst.sngfifo36e1_n_5\,
      REGCE => '0',
      RST => RST,
      RSTREG => '0',
      SBITERR => p_12_out,
      WRCLK => wr_clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_22\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_23\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_24\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_25\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_26\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_27\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_28\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_29\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_33\,
      WREN => WR_EN,
      WRERR => \gf36e1_inst.sngfifo36e1_n_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_prim_v6_5 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    RD_EN : out STD_LOGIC;
    WR_EN : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \^wr_en\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_0\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_1\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_2\ : in STD_LOGIC;
    \^rd_en\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_3\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_4\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_5\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_6\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_prim_v6_5 : entity is "builtin_prim_v6";
end fpga_design_fifo_generator_0_0_builtin_prim_v6_5;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_prim_v6_5 is
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^rd_en_1\ : STD_LOGIC;
  signal \^wr_en_1\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_10\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_11\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_12\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_13\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_14\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_15\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_16\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_29\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_5\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_7\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_9\ : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_18_out : STD_LOGIC;
  signal p_19_out : STD_LOGIC;
  signal p_20_out : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
  EMPTY <= \^empty\;
  FULL <= \^full\;
  RD_EN <= \^rd_en_1\;
  WR_EN <= \^wr_en_1\;
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0005",
      ALMOST_FULL_OFFSET => X"0007",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => p_18_out,
      ALMOSTFULL => p_17_out,
      DBITERR => p_20_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 1) => B"0000000",
      DIP(0) => din(8),
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => dout(8),
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => \^empty\,
      FULL => \^full\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => rd_clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_9\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_10\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_11\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_12\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_13\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_14\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_15\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_16\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDEN => \^rd_en_1\,
      RDERR => \gf36e1_inst.sngfifo36e1_n_5\,
      REGCE => '0',
      RST => RST,
      RSTREG => '0',
      SBITERR => p_19_out,
      WRCLK => wr_clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_22\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_23\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_24\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_25\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_26\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_27\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_28\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_29\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_33\,
      WREN => \^wr_en_1\,
      WRERR => \gf36e1_inst.sngfifo36e1_n_7\
    );
\gf36e1_inst.sngfifo36e1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^rd_en\,
      I1 => \^empty\,
      I2 => \rsync.ric.wr_rst_reg_reg_3\,
      I3 => \rsync.ric.wr_rst_reg_reg_4\,
      I4 => \rsync.ric.wr_rst_reg_reg_5\,
      I5 => \rsync.ric.wr_rst_reg_reg_6\,
      O => \^rd_en_1\
    );
\gf36e1_inst.sngfifo36e1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^wr_en\,
      I1 => \^full\,
      I2 => \rsync.ric.wr_rst_reg_reg\,
      I3 => \rsync.ric.wr_rst_reg_reg_0\,
      I4 => \rsync.ric.wr_rst_reg_reg_1\,
      I5 => \rsync.ric.wr_rst_reg_reg_2\,
      O => \^wr_en_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_prim_v6_6 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_prim_v6_6 : entity is "builtin_prim_v6";
end fpga_design_fifo_generator_0_0_builtin_prim_v6_6;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_prim_v6_6 is
  signal \gf36e1_inst.sngfifo36e1_n_10\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_11\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_12\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_13\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_14\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_15\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_16\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_29\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_5\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_7\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_9\ : STD_LOGIC;
  signal p_24_out : STD_LOGIC;
  signal p_25_out : STD_LOGIC;
  signal p_26_out : STD_LOGIC;
  signal p_27_out : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0005",
      ALMOST_FULL_OFFSET => X"0007",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => p_25_out,
      ALMOSTFULL => p_24_out,
      DBITERR => p_27_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 1) => B"0000000",
      DIP(0) => din(8),
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => dout(8),
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => EMPTY,
      FULL => FULL,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => rd_clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_9\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_10\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_11\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_12\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_13\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_14\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_15\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_16\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDEN => RD_EN,
      RDERR => \gf36e1_inst.sngfifo36e1_n_5\,
      REGCE => '0',
      RST => RST,
      RSTREG => '0',
      SBITERR => p_26_out,
      WRCLK => wr_clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_22\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_23\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_24\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_25\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_26\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_27\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_28\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_29\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_33\,
      WREN => WR_EN,
      WRERR => \gf36e1_inst.sngfifo36e1_n_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_prim_v6_7 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_prim_v6_7 : entity is "builtin_prim_v6";
end fpga_design_fifo_generator_0_0_builtin_prim_v6_7;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_prim_v6_7 is
  signal \gf36e1_inst.sngfifo36e1_n_10\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_11\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_12\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_13\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_14\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_15\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_16\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_29\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_5\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_7\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_9\ : STD_LOGIC;
  signal p_31_out : STD_LOGIC;
  signal p_32_out : STD_LOGIC;
  signal p_33_out : STD_LOGIC;
  signal p_34_out : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0005",
      ALMOST_FULL_OFFSET => X"0007",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => p_32_out,
      ALMOSTFULL => p_31_out,
      DBITERR => p_34_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 1) => B"0000000",
      DIP(0) => din(8),
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => dout(8),
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => EMPTY,
      FULL => FULL,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => rd_clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_9\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_10\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_11\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_12\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_13\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_14\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_15\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_16\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDEN => RD_EN,
      RDERR => \gf36e1_inst.sngfifo36e1_n_5\,
      REGCE => '0',
      RST => RST,
      RSTREG => '0',
      SBITERR => p_33_out,
      WRCLK => wr_clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_22\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_23\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_24\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_25\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_26\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_27\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_28\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_29\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_33\,
      WREN => WR_EN,
      WRERR => \gf36e1_inst.sngfifo36e1_n_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_reset_builtin is
  port (
    RST : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \^rst\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_reset_builtin : entity is "reset_builtin";
end fpga_design_fifo_generator_0_0_reset_builtin;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_reset_builtin is
  signal power_on_rd_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of power_on_rd_rst : signal is "true";
  attribute msgon : string;
  attribute msgon of power_on_rd_rst : signal is "true";
  signal power_on_wr_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg of power_on_wr_rst : signal is "true";
  attribute msgon of power_on_wr_rst : signal is "true";
  signal rd_rst_reg1 : STD_LOGIC;
  attribute async_reg of rd_rst_reg1 : signal is "true";
  attribute msgon of rd_rst_reg1 : signal is "true";
  signal rd_rst_reg2 : STD_LOGIC;
  attribute async_reg of rd_rst_reg2 : signal is "true";
  attribute msgon of rd_rst_reg2 : signal is "true";
  signal \rsync.ric.wr_rst_fb_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \rsync.ric.wr_rst_fb_reg_n_0_[0]\ : STD_LOGIC;
  signal \rsync.ric.wr_rst_reg_i_1_n_0\ : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC;
  signal wr_rst_reg1 : STD_LOGIC;
  attribute async_reg of wr_rst_reg1 : signal is "true";
  attribute msgon of wr_rst_reg1 : signal is "true";
  signal wr_rst_reg2 : STD_LOGIC;
  attribute async_reg of wr_rst_reg2 : signal is "true";
  attribute msgon of wr_rst_reg2 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[0]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[1]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[2]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[2]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[3]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[3]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[4]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[4]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_rd_rst_reg[5]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_rd_rst_reg[5]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_rd_rst_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[0]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[0]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[1]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[2]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[2]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[3]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[3]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[4]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[4]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.power_on_wr_rst_reg[5]\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.power_on_wr_rst_reg[5]\ : label is "yes";
  attribute msgon of \rsync.ric.power_on_wr_rst_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.rd_rst_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.rd_rst_reg1_reg\ : label is "yes";
  attribute msgon of \rsync.ric.rd_rst_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.rd_rst_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.rd_rst_reg2_reg\ : label is "yes";
  attribute msgon of \rsync.ric.rd_rst_reg2_reg\ : label is "true";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rsync.ric.wr_rst_fb_reg[1]_srl4\ : label is "U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.ric.wr_rst_fb_reg ";
  attribute srl_name : string;
  attribute srl_name of \rsync.ric.wr_rst_fb_reg[1]_srl4\ : label is "U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.ric.wr_rst_fb_reg[1]_srl4 ";
  attribute ASYNC_REG_boolean of \rsync.ric.wr_rst_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.wr_rst_reg1_reg\ : label is "yes";
  attribute msgon of \rsync.ric.wr_rst_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.ric.wr_rst_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.ric.wr_rst_reg2_reg\ : label is "yes";
  attribute msgon of \rsync.ric.wr_rst_reg2_reg\ : label is "true";
begin
\gf36e1_inst.sngfifo36e1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wr_rst_reg,
      I1 => power_on_wr_rst(0),
      O => RST
    );
\rsync.ric.power_on_rd_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => power_on_rd_rst(1),
      Q => power_on_rd_rst(0),
      R => '0'
    );
\rsync.ric.power_on_rd_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => power_on_rd_rst(2),
      Q => power_on_rd_rst(1),
      R => '0'
    );
\rsync.ric.power_on_rd_rst_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => power_on_rd_rst(3),
      Q => power_on_rd_rst(2),
      R => '0'
    );
\rsync.ric.power_on_rd_rst_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => power_on_rd_rst(4),
      Q => power_on_rd_rst(3),
      R => '0'
    );
\rsync.ric.power_on_rd_rst_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => power_on_rd_rst(5),
      Q => power_on_rd_rst(4),
      R => '0'
    );
\rsync.ric.power_on_rd_rst_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      Q => power_on_rd_rst(5),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => power_on_wr_rst(1),
      Q => power_on_wr_rst(0),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => power_on_wr_rst(2),
      Q => power_on_wr_rst(1),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => power_on_wr_rst(3),
      Q => power_on_wr_rst(2),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => power_on_wr_rst(4),
      Q => power_on_wr_rst(3),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => power_on_wr_rst(5),
      Q => power_on_wr_rst(4),
      R => '0'
    );
\rsync.ric.power_on_wr_rst_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => power_on_wr_rst(5),
      R => '0'
    );
\rsync.ric.rd_rst_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \^rst\,
      Q => rd_rst_reg1
    );
\rsync.ric.rd_rst_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => rd_rst_reg1,
      PRE => \^rst\,
      Q => rd_rst_reg2
    );
\rsync.ric.wr_rst_fb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \rsync.ric.wr_rst_fb_reg[1]_srl4_n_0\,
      Q => \rsync.ric.wr_rst_fb_reg_n_0_[0]\,
      R => '0'
    );
\rsync.ric.wr_rst_fb_reg[1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => wr_clk,
      D => wr_rst_reg,
      Q => \rsync.ric.wr_rst_fb_reg[1]_srl4_n_0\
    );
\rsync.ric.wr_rst_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \^rst\,
      Q => wr_rst_reg1
    );
\rsync.ric.wr_rst_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wr_rst_reg1,
      PRE => \^rst\,
      Q => wr_rst_reg2
    );
\rsync.ric.wr_rst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_reg,
      I1 => \rsync.ric.wr_rst_fb_reg_n_0_[0]\,
      O => \rsync.ric.wr_rst_reg_i_1_n_0\
    );
\rsync.ric.wr_rst_reg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \rsync.ric.wr_rst_reg_i_1_n_0\,
      PRE => wr_rst_reg2,
      Q => wr_rst_reg
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
entity fpga_design_fifo_protector_0_0 is
  port (
    clk : in STD_LOGIC;
    wr_in : in STD_LOGIC;
    rd_in : in STD_LOGIC;
    global_rst : in STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    fifo_ready : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_fifo_protector_0_0 : entity is "fpga_design_fifo_protector_0_0,fifo_protector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_fifo_protector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_fifo_protector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_fifo_protector_0_0 : entity is "fifo_protector,Vivado 2018.2";
end fpga_design_fifo_protector_0_0;

architecture STRUCTURE of fpga_design_fifo_protector_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute x_interface_parameter of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW";
  attribute x_interface_info of global_rst : signal is "xilinx.com:signal:reset:1.0 global_rst RST";
  attribute x_interface_parameter of global_rst : signal is "XIL_INTERFACENAME global_rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.fpga_design_fifo_protector_0_0_fifo_protector
     port map (
      clk => clk,
      fifo_ready => fifo_ready,
      fifo_rst => fifo_rst,
      global_rst => global_rst,
      rd_en => rd_en,
      rd_in => rd_in,
      wr_en => wr_en,
      wr_in => wr_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_image_thresholding_0_0 is
  port (
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    layerId : in STD_LOGIC;
    cameraId : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    mem_threshold : in STD_LOGIC_VECTOR ( 11 downto 0 );
    packet : out STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_image_thresholding_0_0 : entity is "fpga_design_image_thresholding_0_0,image_thresholding,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_image_thresholding_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_image_thresholding_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_image_thresholding_0_0 : entity is "image_thresholding,Vivado 2018.2";
end fpga_design_image_thresholding_0_0;

architecture STRUCTURE of fpga_design_image_thresholding_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.fpga_design_image_thresholding_0_0_image_thresholding
     port map (
      cameraId(1 downto 0) => cameraId(1 downto 0),
      imgData(11 downto 0) => imgData(11 downto 0),
      layerId => layerId,
      mem_threshold(11 downto 0) => mem_threshold(11 downto 0),
      packet(39 downto 0) => packet(39 downto 0),
      pixClk => pixClk,
      rst => rst,
      vsync => vsync,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_threshold_memory_0_0 is
  port (
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_threshold_memory_0_0 : entity is "fpga_design_threshold_memory_0_0,threshold_memory,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_threshold_memory_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_threshold_memory_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_threshold_memory_0_0 : entity is "threshold_memory,Vivado 2018.2";
end fpga_design_threshold_memory_0_0;

architecture STRUCTURE of fpga_design_threshold_memory_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.fpga_design_threshold_memory_0_0_threshold_memory
     port map (
      clk => clk,
      rst => rst,
      threshold_in(11 downto 0) => threshold_in(11 downto 0),
      threshold_out(11 downto 0) => threshold_out(11 downto 0)
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
    Tx : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    tx_registers : out STD_LOGIC_VECTOR ( 9 downto 0 )
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
      tx_lock => tx_lock,
      tx_registers(9 downto 0) => tx_registers(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_extdepth_v6 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_extdepth_v6 : entity is "builtin_extdepth_v6";
end fpga_design_fifo_generator_0_0_builtin_extdepth_v6;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_extdepth_v6 is
  signal dbr_as_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of dbr_as_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of dbr_as_reg : signal is "true";
  signal dbr_d1 : STD_LOGIC;
  attribute async_reg of dbr_d1 : signal is "true";
  attribute msgon of dbr_d1 : signal is "true";
  signal sbr_as_reg : STD_LOGIC;
  attribute async_reg of sbr_as_reg : signal is "true";
  attribute msgon of sbr_as_reg : signal is "true";
  signal sbr_d1 : STD_LOGIC;
  attribute async_reg of sbr_d1 : signal is "true";
  attribute msgon of sbr_d1 : signal is "true";
begin
\gextw[1].gnll_fifo.inst_extdi_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_d1
    );
\gextw[1].gnll_fifo.inst_extdi_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_d1
    );
\gextw[1].gnll_fifo.inst_extdi_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_as_reg
    );
\gextw[1].gnll_fifo.inst_extdi_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_as_reg
    );
\gonep.inst_prim\: entity work.fpga_design_fifo_generator_0_0_builtin_prim_v6_7
     port map (
      EMPTY => EMPTY,
      FULL => FULL,
      RD_EN => RD_EN,
      RST => RST,
      WR_EN => WR_EN,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_extdepth_v6_0 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_0 : entity is "builtin_extdepth_v6";
end fpga_design_fifo_generator_0_0_builtin_extdepth_v6_0;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_0 is
  signal dbr_as_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of dbr_as_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of dbr_as_reg : signal is "true";
  signal dbr_d1 : STD_LOGIC;
  attribute async_reg of dbr_d1 : signal is "true";
  attribute msgon of dbr_d1 : signal is "true";
  signal sbr_as_reg : STD_LOGIC;
  attribute async_reg of sbr_as_reg : signal is "true";
  attribute msgon of sbr_as_reg : signal is "true";
  signal sbr_d1 : STD_LOGIC;
  attribute async_reg of sbr_d1 : signal is "true";
  attribute msgon of sbr_d1 : signal is "true";
begin
\gextw[2].gnll_fifo.inst_extdi_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_d1
    );
\gextw[2].gnll_fifo.inst_extdi_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_d1
    );
\gextw[2].gnll_fifo.inst_extdi_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_as_reg
    );
\gextw[2].gnll_fifo.inst_extdi_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_as_reg
    );
\gonep.inst_prim\: entity work.fpga_design_fifo_generator_0_0_builtin_prim_v6_6
     port map (
      EMPTY => EMPTY,
      FULL => FULL,
      RD_EN => RD_EN,
      RST => RST,
      WR_EN => WR_EN,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_extdepth_v6_1 is
  port (
    WR_EN : out STD_LOGIC;
    FULL : out STD_LOGIC;
    RD_EN : out STD_LOGIC;
    EMPTY : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \^wr_en\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_0\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_1\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_2\ : in STD_LOGIC;
    \^rd_en\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_3\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_4\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_5\ : in STD_LOGIC;
    \rsync.ric.wr_rst_reg_reg_6\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_1 : entity is "builtin_extdepth_v6";
end fpga_design_fifo_generator_0_0_builtin_extdepth_v6_1;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_1 is
  signal dbr_as_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of dbr_as_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of dbr_as_reg : signal is "true";
  signal dbr_d1 : STD_LOGIC;
  attribute async_reg of dbr_d1 : signal is "true";
  attribute msgon of dbr_d1 : signal is "true";
  signal sbr_as_reg : STD_LOGIC;
  attribute async_reg of sbr_as_reg : signal is "true";
  attribute msgon of sbr_as_reg : signal is "true";
  signal sbr_d1 : STD_LOGIC;
  attribute async_reg of sbr_d1 : signal is "true";
  attribute msgon of sbr_d1 : signal is "true";
begin
\gonep.inst_prim\: entity work.fpga_design_fifo_generator_0_0_builtin_prim_v6_5
     port map (
      EMPTY => EMPTY,
      FULL => FULL,
      RD_EN => RD_EN,
      RST => RST,
      WR_EN => WR_EN,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      rd_clk => rd_clk,
      \^rd_en\ => \^rd_en\,
      \rsync.ric.wr_rst_reg_reg\ => \rsync.ric.wr_rst_reg_reg\,
      \rsync.ric.wr_rst_reg_reg_0\ => \rsync.ric.wr_rst_reg_reg_0\,
      \rsync.ric.wr_rst_reg_reg_1\ => \rsync.ric.wr_rst_reg_reg_1\,
      \rsync.ric.wr_rst_reg_reg_2\ => \rsync.ric.wr_rst_reg_reg_2\,
      \rsync.ric.wr_rst_reg_reg_3\ => \rsync.ric.wr_rst_reg_reg_3\,
      \rsync.ric.wr_rst_reg_reg_4\ => \rsync.ric.wr_rst_reg_reg_4\,
      \rsync.ric.wr_rst_reg_reg_5\ => \rsync.ric.wr_rst_reg_reg_5\,
      \rsync.ric.wr_rst_reg_reg_6\ => \rsync.ric.wr_rst_reg_reg_6\,
      wr_clk => wr_clk,
      \^wr_en\ => \^wr_en\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_d1
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_d1
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_as_reg
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_as_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_extdepth_v6_2 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_2 : entity is "builtin_extdepth_v6";
end fpga_design_fifo_generator_0_0_builtin_extdepth_v6_2;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_2 is
  signal dbr_as_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of dbr_as_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of dbr_as_reg : signal is "true";
  signal dbr_d1 : STD_LOGIC;
  attribute async_reg of dbr_d1 : signal is "true";
  attribute msgon of dbr_d1 : signal is "true";
  signal sbr_as_reg : STD_LOGIC;
  attribute async_reg of sbr_as_reg : signal is "true";
  attribute msgon of sbr_as_reg : signal is "true";
  signal sbr_d1 : STD_LOGIC;
  attribute async_reg of sbr_d1 : signal is "true";
  attribute msgon of sbr_d1 : signal is "true";
begin
\gextw[4].gnll_fifo.inst_extdi_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_d1
    );
\gextw[4].gnll_fifo.inst_extdi_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_d1
    );
\gextw[4].gnll_fifo.inst_extdi_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_as_reg
    );
\gextw[4].gnll_fifo.inst_extdi_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_as_reg
    );
\gonep.inst_prim\: entity work.fpga_design_fifo_generator_0_0_builtin_prim_v6_4
     port map (
      EMPTY => EMPTY,
      FULL => FULL,
      RD_EN => RD_EN,
      RST => RST,
      WR_EN => WR_EN,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_extdepth_v6_3 is
  port (
    EMPTY : out STD_LOGIC;
    FULL : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC;
    RD_EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    WR_EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_3 : entity is "builtin_extdepth_v6";
end fpga_design_fifo_generator_0_0_builtin_extdepth_v6_3;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_extdepth_v6_3 is
  signal dbr_as_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of dbr_as_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of dbr_as_reg : signal is "true";
  signal dbr_d1 : STD_LOGIC;
  attribute async_reg of dbr_d1 : signal is "true";
  attribute msgon of dbr_d1 : signal is "true";
  signal sbr_as_reg : STD_LOGIC;
  attribute async_reg of sbr_as_reg : signal is "true";
  attribute msgon of sbr_as_reg : signal is "true";
  signal sbr_d1 : STD_LOGIC;
  attribute async_reg of sbr_d1 : signal is "true";
  attribute msgon of sbr_d1 : signal is "true";
begin
\gextw[5].gnll_fifo.inst_extdi_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_d1
    );
\gextw[5].gnll_fifo.inst_extdi_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_d1
    );
\gextw[5].gnll_fifo.inst_extdi_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sbr_as_reg
    );
\gextw[5].gnll_fifo.inst_extdi_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dbr_as_reg
    );
\gonep.inst_prim\: entity work.fpga_design_fifo_generator_0_0_builtin_prim_v6
     port map (
      EMPTY => EMPTY,
      FULL => FULL,
      RD_EN => RD_EN,
      RST => RST,
      WR_EN => WR_EN,
      din(3 downto 0) => din(3 downto 0),
      dout(3 downto 0) => dout(3 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_builtin_top_v6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_builtin_top_v6 : entity is "builtin_top_v6";
end fpga_design_fifo_generator_0_0_builtin_top_v6;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_builtin_top_v6 is
  signal p_15_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_22_out : STD_LOGIC;
  signal p_23_out : STD_LOGIC;
  signal p_29_out : STD_LOGIC;
  signal p_30_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rd_tmp : STD_LOGIC;
  signal wr_tmp : STD_LOGIC;
begin
empty_i: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_30_out,
      I1 => p_9_out,
      I2 => p_4_out,
      I3 => p_23_out,
      I4 => p_16_out,
      O => empty
    );
full_i: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_29_out,
      I1 => p_8_out,
      I2 => p_5_out,
      I3 => p_22_out,
      I4 => p_15_out,
      O => full
    );
\gextw[1].gnll_fifo.inst_extd\: entity work.fpga_design_fifo_generator_0_0_builtin_extdepth_v6
     port map (
      EMPTY => p_30_out,
      FULL => p_29_out,
      RD_EN => rd_tmp,
      RST => RST,
      WR_EN => wr_tmp,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
\gextw[2].gnll_fifo.inst_extd\: entity work.fpga_design_fifo_generator_0_0_builtin_extdepth_v6_0
     port map (
      EMPTY => p_23_out,
      FULL => p_22_out,
      RD_EN => rd_tmp,
      RST => RST,
      WR_EN => wr_tmp,
      din(8 downto 0) => din(17 downto 9),
      dout(8 downto 0) => dout(17 downto 9),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
\gextw[3].gnll_fifo.inst_extd\: entity work.fpga_design_fifo_generator_0_0_builtin_extdepth_v6_1
     port map (
      EMPTY => p_16_out,
      FULL => p_15_out,
      RD_EN => rd_tmp,
      RST => RST,
      WR_EN => wr_tmp,
      din(8 downto 0) => din(26 downto 18),
      dout(8 downto 0) => dout(26 downto 18),
      rd_clk => rd_clk,
      \^rd_en\ => rd_en,
      \rsync.ric.wr_rst_reg_reg\ => p_22_out,
      \rsync.ric.wr_rst_reg_reg_0\ => p_5_out,
      \rsync.ric.wr_rst_reg_reg_1\ => p_8_out,
      \rsync.ric.wr_rst_reg_reg_2\ => p_29_out,
      \rsync.ric.wr_rst_reg_reg_3\ => p_23_out,
      \rsync.ric.wr_rst_reg_reg_4\ => p_4_out,
      \rsync.ric.wr_rst_reg_reg_5\ => p_9_out,
      \rsync.ric.wr_rst_reg_reg_6\ => p_30_out,
      wr_clk => wr_clk,
      \^wr_en\ => wr_en
    );
\gextw[4].gnll_fifo.inst_extd\: entity work.fpga_design_fifo_generator_0_0_builtin_extdepth_v6_2
     port map (
      EMPTY => p_9_out,
      FULL => p_8_out,
      RD_EN => rd_tmp,
      RST => RST,
      WR_EN => wr_tmp,
      din(8 downto 0) => din(35 downto 27),
      dout(8 downto 0) => dout(35 downto 27),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
\gextw[5].gnll_fifo.inst_extd\: entity work.fpga_design_fifo_generator_0_0_builtin_extdepth_v6_3
     port map (
      EMPTY => p_4_out,
      FULL => p_5_out,
      RD_EN => rd_tmp,
      RST => RST,
      WR_EN => wr_tmp,
      din(3 downto 0) => din(39 downto 36),
      dout(3 downto 0) => dout(39 downto 36),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_builtin is
  port (
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_builtin : entity is "fifo_generator_v13_2_2_builtin";
end fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_builtin;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_builtin is
  signal wr_rst_i : STD_LOGIC;
begin
\g7ser_birst.rstbt\: entity work.fpga_design_fifo_generator_0_0_reset_builtin
     port map (
      RST => wr_rst_i,
      rd_clk => rd_clk,
      \^rst\ => rst,
      wr_clk => wr_clk
    );
\v7_bi_fifo.fblk\: entity work.fpga_design_fifo_generator_0_0_builtin_top_v6
     port map (
      RST => wr_rst_i,
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_fifo_generator_top is
  port (
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_fifo_generator_top : entity is "fifo_generator_top";
end fpga_design_fifo_generator_0_0_fifo_generator_top;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_fifo_generator_top is
begin
\gbi.bi\: entity work.fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_builtin
     port map (
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_synth is
  port (
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_synth : entity is "fifo_generator_v13_2_2_synth";
end fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_synth;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_synth is
begin
\gconvfifo.rf\: entity work.fpga_design_fifo_generator_0_0_fifo_generator_top
     port map (
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 40;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 40;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 6;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4089;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4088;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 : entity is "fifo_generator_v13_2_2";
end fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2;

architecture STRUCTURE of fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(11) <= \<const0>\;
  data_count(10) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const1>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2_synth
     port map (
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_fifo_generator_0_0 : entity is "fpga_design_fifo_generator_0_0,fifo_generator_v13_2_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_fifo_generator_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_fifo_generator_0_0 : entity is "fifo_generator_v13_2_2,Vivado 2018.2";
end fpga_design_fifo_generator_0_0;

architecture STRUCTURE of fpga_design_fifo_generator_0_0 is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 40;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 40;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 6;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 4089;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 4088;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.fpga_design_fifo_generator_0_0_fifo_generator_v13_2_2
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(11 downto 0) => NLW_U0_data_count_UNCONNECTED(11 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => dout(39 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(11 downto 0) => B"000000000000",
      prog_empty_thresh_assert(11 downto 0) => B"000000000000",
      prog_empty_thresh_negate(11 downto 0) => B"000000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(11 downto 0) => B"000000000000",
      prog_full_thresh_assert(11 downto 0) => B"000000000000",
      prog_full_thresh_negate(11 downto 0) => B"000000000000",
      rd_clk => rd_clk,
      rd_data_count(11 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(11 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(11 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(11 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design is
  port (
    FIFO_ready : out STD_LOGIC;
    RX_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    cameraid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    href : in STD_LOGIC;
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    layerid : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    tx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_shift_registers : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vsync : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fpga_design : entity is "fpga_design.hwdef";
end fpga_design;

architecture STRUCTURE of fpga_design is
  signal \<const0>\ : STD_LOGIC;
  signal FIFO_empty : STD_LOGIC;
  signal FIFO_full : STD_LOGIC;
  signal \^fifo_ready\ : STD_LOGIC;
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_read_enable : STD_LOGIC;
  signal din : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_in : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_protector_0_fifo_rst : STD_LOGIC;
  signal mem_threshold : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_en : STD_LOGIC;
  signal rd_in : STD_LOGIC;
  signal threshold_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^tx_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_en : STD_LOGIC;
  signal wr_in : STD_LOGIC;
  attribute syn_black_box : string;
  attribute syn_black_box of central_interface_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of central_interface_0 : label is "central_interface,Vivado 2018.2";
  attribute syn_black_box of fifo_generator_0 : label is "TRUE";
  attribute x_core_info of fifo_generator_0 : label is "fifo_generator_v13_2_2,Vivado 2018.2";
  attribute syn_black_box of fifo_protector_0 : label is "TRUE";
  attribute x_core_info of fifo_protector_0 : label is "fifo_protector,Vivado 2018.2";
  attribute syn_black_box of image_thresholding_0 : label is "TRUE";
  attribute x_core_info of image_thresholding_0 : label is "image_thresholding,Vivado 2018.2";
  attribute syn_black_box of threshold_memory_0 : label is "TRUE";
  attribute x_core_info of threshold_memory_0 : label is "threshold_memory,Vivado 2018.2";
  attribute syn_black_box of uart_tx_0 : label is "TRUE";
  attribute x_core_info of uart_tx_0 : label is "uart_tx,Vivado 2018.2";
begin
  FIFO_ready <= \^fifo_ready\;
  threshold(11) <= \<const0>\;
  threshold(10) <= \<const0>\;
  threshold(9) <= \<const0>\;
  threshold(8) <= \<const0>\;
  threshold(7) <= \<const0>\;
  threshold(6) <= \<const0>\;
  threshold(5) <= \<const0>\;
  threshold(4) <= \<const0>\;
  threshold(3) <= \<const0>\;
  threshold(2) <= \<const0>\;
  threshold(1) <= \<const0>\;
  threshold(0) <= \<const0>\;
  tx_out(7 downto 0) <= \^tx_out\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
central_interface_0: entity work.fpga_design_central_interface_0_0
     port map (
      FIFO_empty => FIFO_empty,
      FIFO_full => FIFO_full,
      FIFO_ready => \^fifo_ready\,
      Rx_end => Rx_end,
      Rx_in(7 downto 0) => RX_in(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => \^tx_out\(7 downto 0),
      clk => clk,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      threshold_out(11 downto 0) => threshold_in(11 downto 0)
    );
fifo_generator_0: entity work.fpga_design_fifo_generator_0_0
     port map (
      din(39 downto 0) => din(39 downto 0),
      dout(39 downto 0) => fifo_in(39 downto 0),
      empty => FIFO_empty,
      full => FIFO_full,
      rd_clk => clk,
      rd_en => rd_en,
      rst => fifo_protector_0_fifo_rst,
      wr_clk => pixClk,
      wr_en => wr_en
    );
fifo_protector_0: entity work.fpga_design_fifo_protector_0_0
     port map (
      clk => pixClk,
      fifo_ready => \^fifo_ready\,
      fifo_rst => fifo_protector_0_fifo_rst,
      global_rst => rst,
      rd_en => rd_en,
      rd_in => rd_in,
      wr_en => wr_en,
      wr_in => wr_in
    );
image_thresholding_0: entity work.fpga_design_image_thresholding_0_0
     port map (
      cameraId(1 downto 0) => cameraid(1 downto 0),
      href => href,
      imgData(11 downto 0) => imgData(11 downto 0),
      layerId => layerid,
      mem_threshold(11 downto 0) => mem_threshold(11 downto 0),
      packet(39 downto 0) => din(39 downto 0),
      pixClk => pixClk,
      rst => rst,
      vsync => vsync,
      wr_en => wr_in
    );
threshold_memory_0: entity work.fpga_design_threshold_memory_0_0
     port map (
      clk => clk,
      rst => rst,
      threshold_in(11 downto 0) => threshold_in(11 downto 0),
      threshold_out(11 downto 0) => mem_threshold(11 downto 0)
    );
uart_tx_0: entity work.fpga_design_uart_tx_0_0
     port map (
      Tx => Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => Tx_enabled,
      Tx_in(7 downto 0) => \^tx_out\(7 downto 0),
      UART_clk => clk,
      fifo_in(39 downto 0) => fifo_in(39 downto 0),
      rd_en => rd_in,
      read_enable => central_interface_0_read_enable,
      rst => rst,
      tx_lock => tx_lock,
      tx_registers(9 downto 0) => tx_shift_registers(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_wrapper is
  port (
    FIFO_ready : out STD_LOGIC;
    RX_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    cameraid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    href : in STD_LOGIC;
    imgData : in STD_LOGIC_VECTOR ( 11 downto 0 );
    layerid : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    tx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_shift_registers : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vsync : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_wrapper : entity is true;
end fpga_design_wrapper;

architecture STRUCTURE of fpga_design_wrapper is
  signal FIFO_ready_OBUF : STD_LOGIC;
  signal RX_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rx_end_IBUF : STD_LOGIC;
  signal Tx_OBUF : STD_LOGIC;
  signal Tx_enabled_OBUF : STD_LOGIC;
  signal cameraid_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal href_IBUF : STD_LOGIC;
  signal imgData_IBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal layerid_IBUF : STD_LOGIC;
  signal pixClk_IBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal threshold_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal tx_lock_OBUF : STD_LOGIC;
  signal tx_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_shift_registers_OBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vsync_IBUF : STD_LOGIC;
  attribute hw_handoff : string;
  attribute hw_handoff of fpga_design_i : label is "fpga_design.hwdef";
begin
FIFO_ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => FIFO_ready_OBUF,
      O => FIFO_ready
    );
\RX_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(0),
      O => RX_in_IBUF(0)
    );
\RX_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(1),
      O => RX_in_IBUF(1)
    );
\RX_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(2),
      O => RX_in_IBUF(2)
    );
\RX_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(3),
      O => RX_in_IBUF(3)
    );
\RX_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(4),
      O => RX_in_IBUF(4)
    );
\RX_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(5),
      O => RX_in_IBUF(5)
    );
\RX_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(6),
      O => RX_in_IBUF(6)
    );
\RX_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RX_in(7),
      O => RX_in_IBUF(7)
    );
Rx_end_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rx_end,
      O => Rx_end_IBUF
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
\cameraid_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cameraid(0),
      O => cameraid_IBUF(0)
    );
\cameraid_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cameraid(1),
      O => cameraid_IBUF(1)
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
fpga_design_i: entity work.fpga_design
     port map (
      FIFO_ready => FIFO_ready_OBUF,
      RX_in(7 downto 0) => RX_in_IBUF(7 downto 0),
      Rx_end => Rx_end_IBUF,
      Tx => Tx_OBUF,
      Tx_enabled => Tx_enabled_OBUF,
      cameraid(1 downto 0) => cameraid_IBUF(1 downto 0),
      clk => clk_IBUF,
      href => href_IBUF,
      imgData(11 downto 0) => imgData_IBUF(11 downto 0),
      layerid => layerid_IBUF,
      pixClk => pixClk_IBUF,
      rst => rst_IBUF,
      threshold(11 downto 0) => threshold_OBUF(11 downto 0),
      tx_lock => tx_lock_OBUF,
      tx_out(7 downto 0) => tx_out_OBUF(7 downto 0),
      tx_shift_registers(9 downto 0) => tx_shift_registers_OBUF(9 downto 0),
      vsync => vsync_IBUF
    );
href_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => href,
      O => href_IBUF
    );
\imgData_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(0),
      O => imgData_IBUF(0)
    );
\imgData_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(10),
      O => imgData_IBUF(10)
    );
\imgData_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(11),
      O => imgData_IBUF(11)
    );
\imgData_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(1),
      O => imgData_IBUF(1)
    );
\imgData_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(2),
      O => imgData_IBUF(2)
    );
\imgData_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(3),
      O => imgData_IBUF(3)
    );
\imgData_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(4),
      O => imgData_IBUF(4)
    );
\imgData_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(5),
      O => imgData_IBUF(5)
    );
\imgData_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(6),
      O => imgData_IBUF(6)
    );
\imgData_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(7),
      O => imgData_IBUF(7)
    );
\imgData_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(8),
      O => imgData_IBUF(8)
    );
\imgData_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => imgData(9),
      O => imgData_IBUF(9)
    );
layerid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => layerid,
      O => layerid_IBUF
    );
pixClk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => pixClk,
      O => pixClk_IBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\threshold_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(0),
      O => threshold(0),
      T => '1'
    );
\threshold_OBUF[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(10),
      O => threshold(10),
      T => '1'
    );
\threshold_OBUF[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(11),
      O => threshold(11),
      T => '1'
    );
\threshold_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(1),
      O => threshold(1),
      T => '1'
    );
\threshold_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(2),
      O => threshold(2),
      T => '1'
    );
\threshold_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(3),
      O => threshold(3),
      T => '1'
    );
\threshold_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(4),
      O => threshold(4),
      T => '1'
    );
\threshold_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(5),
      O => threshold(5),
      T => '1'
    );
\threshold_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(6),
      O => threshold(6),
      T => '1'
    );
\threshold_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(7),
      O => threshold(7),
      T => '1'
    );
\threshold_OBUF[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(8),
      O => threshold(8),
      T => '1'
    );
\threshold_OBUF[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => threshold_OBUF(9),
      O => threshold(9),
      T => '1'
    );
tx_lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_lock_OBUF,
      O => tx_lock
    );
\tx_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(0),
      O => tx_out(0)
    );
\tx_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(1),
      O => tx_out(1)
    );
\tx_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(2),
      O => tx_out(2)
    );
\tx_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(3),
      O => tx_out(3)
    );
\tx_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(4),
      O => tx_out(4)
    );
\tx_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(5),
      O => tx_out(5)
    );
\tx_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(6),
      O => tx_out(6)
    );
\tx_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_out_OBUF(7),
      O => tx_out(7)
    );
\tx_shift_registers_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(0),
      O => tx_shift_registers(0)
    );
\tx_shift_registers_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(1),
      O => tx_shift_registers(1)
    );
\tx_shift_registers_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(2),
      O => tx_shift_registers(2)
    );
\tx_shift_registers_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(3),
      O => tx_shift_registers(3)
    );
\tx_shift_registers_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(4),
      O => tx_shift_registers(4)
    );
\tx_shift_registers_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(5),
      O => tx_shift_registers(5)
    );
\tx_shift_registers_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(6),
      O => tx_shift_registers(6)
    );
\tx_shift_registers_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(7),
      O => tx_shift_registers(7)
    );
\tx_shift_registers_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(8),
      O => tx_shift_registers(8)
    );
\tx_shift_registers_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => tx_shift_registers_OBUF(9),
      O => tx_shift_registers(9)
    );
vsync_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => vsync,
      O => vsync_IBUF
    );
end STRUCTURE;
