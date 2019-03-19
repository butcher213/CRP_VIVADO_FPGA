--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 28 12:48:50 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Block_Design.bd
--Design      : FPGA_Block_Design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FPGA_Block_Design : entity is "FPGA_Block_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Block_Design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FPGA_Block_Design : entity is "FPGA_Block_Design.hwdef";
end FPGA_Block_Design;

architecture STRUCTURE of FPGA_Block_Design is
  component FPGA_Block_Design_central_interface_0_0 is
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
  end component FPGA_Block_Design_central_interface_0_0;
  component FPGA_Block_Design_uart_tx_0_0 is
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
  end component FPGA_Block_Design_uart_tx_0_0;
  signal FIFO_empty_1 : STD_LOGIC;
  signal FIFO_full_1 : STD_LOGIC;
  signal FIFO_in_1 : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal FIFO_ready_1 : STD_LOGIC;
  signal Rx_end_1 : STD_LOGIC;
  signal Rx_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal uart_tx_0_Tx : STD_LOGIC;
  signal uart_tx_0_Tx_enabled : STD_LOGIC;
  signal uart_tx_0_data_line : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal uart_tx_0_tx_lock : STD_LOGIC;
  signal NLW_central_interface_0_threshold_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  FIFO_empty_1 <= FIFO_empty;
  FIFO_full_1 <= FIFO_full;
  FIFO_in_1(39 downto 0) <= FIFO_in(39 downto 0);
  FIFO_ready_1 <= FIFO_ready;
  Rx_end_1 <= Rx_end;
  Rx_in_1(7 downto 0) <= Rx_in(7 downto 0);
  Tx <= uart_tx_0_Tx;
  Tx_enabled <= uart_tx_0_Tx_enabled;
  clk_1 <= clk;
  data_line(2 downto 0) <= uart_tx_0_data_line(2 downto 0);
  rst_1 <= rst;
  tx_lock <= uart_tx_0_tx_lock;
central_interface_0: component FPGA_Block_Design_central_interface_0_0
     port map (
      FIFO_empty => FIFO_empty_1,
      FIFO_full => FIFO_full_1,
      FIFO_ready => FIFO_ready_1,
      Rx_end => Rx_end_1,
      Rx_in(7 downto 0) => Rx_in_1(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => clk_1,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      threshold_out(11 downto 0) => NLW_central_interface_0_threshold_out_UNCONNECTED(11 downto 0)
    );
uart_tx_0: component FPGA_Block_Design_uart_tx_0_0
     port map (
      Tx => uart_tx_0_Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => uart_tx_0_Tx_enabled,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => clk_1,
      data_line(2 downto 0) => uart_tx_0_data_line(2 downto 0),
      fifo_in(39 downto 0) => FIFO_in_1(39 downto 0),
      fifo_ready => FIFO_ready_1,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      tx_lock => uart_tx_0_tx_lock
    );
end STRUCTURE;
