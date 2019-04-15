-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Mar 28 16:54:29 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_camera_simulator_0_0/fpga_design_camera_simulator_0_0_sim_netlist.vhdl
-- Design      : fpga_design_camera_simulator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_camera_simulator_0_0_camera_simulator is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fpga_design_camera_simulator_0_0_camera_simulator : entity is "camera_simulator";
end fpga_design_camera_simulator_0_0_camera_simulator;

architecture STRUCTURE of fpga_design_camera_simulator_0_0_camera_simulator is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pix_out_reg[9]\ : label is "LD";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter[11]_i_4_n_0\,
      I1 => \counter[11]_i_5_n_0\,
      O => eqOp
    );
\counter[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => \^q\(8),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \counter[11]_i_4_n_0\
    );
\counter[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \counter[11]_i_5_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \counter[3]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => eqOp
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_2_n_5\,
      Q => \^q\(10),
      R => eqOp
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_2_n_4\,
      Q => \^q\(11),
      R => eqOp
    );
\counter_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[7]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[11]_i_2_n_1\,
      CO(1) => \counter_reg[11]_i_2_n_2\,
      CO(0) => \counter_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[11]_i_2_n_4\,
      O(2) => \counter_reg[11]_i_2_n_5\,
      O(1) => \counter_reg[11]_i_2_n_6\,
      O(0) => \counter_reg[11]_i_2_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => eqOp
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => eqOp
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => eqOp
    );
\counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[3]_i_1_n_0\,
      CO(2) => \counter_reg[3]_i_1_n_1\,
      CO(1) => \counter_reg[3]_i_1_n_2\,
      CO(0) => \counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[3]_i_1_n_4\,
      O(2) => \counter_reg[3]_i_1_n_5\,
      O(1) => \counter_reg[3]_i_1_n_6\,
      O(0) => \counter_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \counter[3]_i_2_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => eqOp
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => eqOp
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => eqOp
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => eqOp
    );
\counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[3]_i_1_n_0\,
      CO(3) => \counter_reg[7]_i_1_n_0\,
      CO(2) => \counter_reg[7]_i_1_n_1\,
      CO(1) => \counter_reg[7]_i_1_n_2\,
      CO(0) => \counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[7]_i_1_n_4\,
      O(2) => \counter_reg[7]_i_1_n_5\,
      O(1) => \counter_reg[7]_i_1_n_6\,
      O(0) => \counter_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_2_n_7\,
      Q => \^q\(8),
      R => eqOp
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_2_n_6\,
      Q => \^q\(9),
      R => eqOp
    );
\pix_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(0)
    );
\pix_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(10)
    );
\pix_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(11)
    );
\pix_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(1)
    );
\pix_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(2)
    );
\pix_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(3)
    );
\pix_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(4)
    );
\pix_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(5)
    );
\pix_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(6)
    );
\pix_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(7)
    );
\pix_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(8)
    );
\pix_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => enable,
      G => enable,
      GE => '1',
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design_camera_simulator_0_0 is
  port (
    enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    vsync : out STD_LOGIC;
    href : out STD_LOGIC;
    pix_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_camera_simulator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpga_design_camera_simulator_0_0 : entity is "fpga_design_camera_simulator_0_0,camera_simulator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fpga_design_camera_simulator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fpga_design_camera_simulator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of fpga_design_camera_simulator_0_0 : entity is "camera_simulator,Vivado 2018.2";
end fpga_design_camera_simulator_0_0;

architecture STRUCTURE of fpga_design_camera_simulator_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \counter_reg[11]_i_3_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
begin
  href <= \<const1>\;
  vsync <= \<const1>\;
U0: entity work.fpga_design_camera_simulator_0_0_camera_simulator
     port map (
      Q(11 downto 0) => pix_out(11 downto 0),
      clk => \counter_reg[11]_i_3_n_0\,
      enable => enable
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\counter_reg[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk,
      O => \counter_reg[11]_i_3_n_0\
    );
end STRUCTURE;
