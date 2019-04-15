-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Apr 14 15:31:06 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/butchertd/Documents/eaglesat/CRP_VIVADO_FPGA/uart_testing/uart_testing.srcs/sources_1/bd/fpga_design/ip/fpga_design_fifo_protector_0_0/fpga_design_fifo_protector_0_0_sim_netlist.vhdl
-- Design      : fpga_design_fifo_protector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpga_design_fifo_protector_0_0 : entity is true;
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
