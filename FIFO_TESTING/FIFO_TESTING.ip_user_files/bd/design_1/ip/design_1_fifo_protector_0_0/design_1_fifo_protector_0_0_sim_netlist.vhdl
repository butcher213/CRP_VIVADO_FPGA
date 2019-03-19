-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 14 16:21:58 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/butchertd/Documents/eaglesat/FIFO_TESTING/FIFO_TESTING.srcs/sources_1/bd/design_1/ip/design_1_fifo_protector_0_0/design_1_fifo_protector_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_protector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12tcpg238-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_protector_0_0_fifo_protector is
  port (
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    clk : in STD_LOGIC;
    rd_in : in STD_LOGIC;
    wr_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_protector_0_0_fifo_protector : entity is "fifo_protector";
end design_1_fifo_protector_0_0_fifo_protector;

architecture STRUCTURE of design_1_fifo_protector_0_0_fifo_protector is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal \^fifo_rst\ : STD_LOGIC;
  signal fifo_rst_i_1_n_0 : STD_LOGIC;
  signal \^rd_en\ : STD_LOGIC;
  signal \rd_en__0_i_1_n_0\ : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC;
  signal \wr_en__0_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "c:011,d:100,b:010,a:001,reset:000,fin:1001,g:111,f:110,h:1000,e:101";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of rd_en_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of wr_en_reg : label is "LD";
begin
  fifo_rst <= \^fifo_rst\;
  rd_en <= \^rd_en\;
  wr_en <= \^wr_en\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => '0'
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => current_state(2),
      R => '0'
    );
fifo_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E02"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => \^fifo_rst\,
      O => fifo_rst_i_1_n_0
    );
fifo_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_rst_i_1_n_0,
      Q => \^fifo_rst\,
      R => '0'
    );
\rd_en__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => \^rd_en\,
      O => \rd_en__0_i_1_n_0\
    );
rd_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rd_in,
      G => '0',
      GE => '1',
      Q => \^rd_en\
    );
\rd_en_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd_en__0_i_1_n_0\,
      Q => \^rd_en\,
      R => '0'
    );
\wr_en__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => \^wr_en\,
      O => \wr_en__0_i_1_n_0\
    );
wr_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wr_in,
      G => '0',
      GE => '1',
      Q => \^wr_en\
    );
\wr_en_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wr_en__0_i_1_n_0\,
      Q => \^wr_en\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_protector_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo_protector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_protector_0_0 : entity is "design_1_fifo_protector_0_0,fifo_protector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_fifo_protector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_fifo_protector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_fifo_protector_0_0 : entity is "fifo_protector,Vivado 2018.2";
end design_1_fifo_protector_0_0;

architecture STRUCTURE of design_1_fifo_protector_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute x_interface_parameter of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW";
  attribute x_interface_info of global_rst : signal is "xilinx.com:signal:reset:1.0 global_rst RST";
  attribute x_interface_parameter of global_rst : signal is "XIL_INTERFACENAME global_rst, POLARITY ACTIVE_LOW";
begin
  fifo_ready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_fifo_protector_0_0_fifo_protector
     port map (
      clk => clk,
      fifo_rst => fifo_rst,
      rd_en => rd_en,
      rd_in => rd_in,
      wr_en => wr_en,
      wr_in => wr_in
    );
end STRUCTURE;
