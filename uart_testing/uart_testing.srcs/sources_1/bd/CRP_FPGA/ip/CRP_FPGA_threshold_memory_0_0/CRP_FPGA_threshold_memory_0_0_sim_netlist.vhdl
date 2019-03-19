-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 28 15:29:25 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/CRP_FPGA/ip/CRP_FPGA_threshold_memory_0_0/CRP_FPGA_threshold_memory_0_0_sim_netlist.vhdl
-- Design      : CRP_FPGA_threshold_memory_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CRP_FPGA_threshold_memory_0_0_threshold_memory is
  port (
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CRP_FPGA_threshold_memory_0_0_threshold_memory : entity is "threshold_memory";
end CRP_FPGA_threshold_memory_0_0_threshold_memory;

architecture STRUCTURE of CRP_FPGA_threshold_memory_0_0_threshold_memory is
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
entity CRP_FPGA_threshold_memory_0_0 is
  port (
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CRP_FPGA_threshold_memory_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CRP_FPGA_threshold_memory_0_0 : entity is "CRP_FPGA_threshold_memory_0_0,threshold_memory,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of CRP_FPGA_threshold_memory_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of CRP_FPGA_threshold_memory_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of CRP_FPGA_threshold_memory_0_0 : entity is "threshold_memory,Vivado 2018.2";
end CRP_FPGA_threshold_memory_0_0;

architecture STRUCTURE of CRP_FPGA_threshold_memory_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.CRP_FPGA_threshold_memory_0_0_threshold_memory
     port map (
      clk => clk,
      rst => rst,
      threshold_in(11 downto 0) => threshold_in(11 downto 0),
      threshold_out(11 downto 0) => threshold_out(11 downto 0)
    );
end STRUCTURE;
