-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Mar 21 18:52:00 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_uart_rx_0_0/fpga_design_uart_rx_0_0_sim_netlist.vhdl
-- Design      : fpga_design_uart_rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
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
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
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
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(0),
      Q => Rx_out(0),
      R => counter
    );
\Rx_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(1),
      Q => Rx_out(1),
      R => counter
    );
\Rx_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(2),
      Q => Rx_out(2),
      R => counter
    );
\Rx_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(3),
      Q => Rx_out(3),
      R => counter
    );
\Rx_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(4),
      Q => Rx_out(4),
      R => counter
    );
\Rx_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(5),
      Q => Rx_out(5),
      R => counter
    );
\Rx_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(6),
      Q => Rx_out(6),
      R => counter
    );
\Rx_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => \eqOp__0\,
      D => p_1_in(7),
      Q => Rx_out(7),
      R => counter
    );
\Rx_shift_registers_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => Rx,
      Q => \Rx_shift_registers_reg_n_0_[0]\,
      R => counter
    );
\Rx_shift_registers_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => \Rx_shift_registers_reg_n_0_[0]\,
      Q => p_1_in(0),
      R => counter
    );
\Rx_shift_registers_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(0),
      Q => p_1_in(1),
      R => counter
    );
\Rx_shift_registers_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(1),
      Q => p_1_in(2),
      R => counter
    );
\Rx_shift_registers_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(2),
      Q => p_1_in(3),
      R => counter
    );
\Rx_shift_registers_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(3),
      Q => p_1_in(4),
      R => counter
    );
\Rx_shift_registers_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(4),
      Q => p_1_in(5),
      R => counter
    );
\Rx_shift_registers_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(5),
      Q => p_1_in(6),
      R => counter
    );
\Rx_shift_registers_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => p_1_in(6),
      Q => p_1_in(7),
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
     port map (
      C => uart_clk,
      CE => '1',
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_clk,
      CE => '1',
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
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
     port map (
      C => uart_clk,
      CE => '1',
      D => current_state_i_1_n_0,
      Q => current_state,
      R => '0'
    );
\current_state_reg__0\: unisim.vcomponents.FDRE
    generic map(
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
entity fpga_design_uart_rx_0_0 is
  port (
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_uart_rx_0_0 : entity is true;
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
