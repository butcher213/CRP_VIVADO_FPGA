--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat Mar  9 10:58:20 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target fpga_design.bd
--Design      : fpga_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpga_design is
  port (
    Tx : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_out : in STD_LOGIC_VECTOR ( 39 downto 0 );
    fifo_ready : in STD_LOGIC;
    read_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    threshold : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_lock : out STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fpga_design : entity is "fpga_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fpga_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fpga_design : entity is "fpga_design.hwdef";
end fpga_design;

architecture STRUCTURE of fpga_design is
  component fpga_design_central_interface_0_0 is
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
  end component fpga_design_central_interface_0_0;
  component fpga_design_uart_tx_0_0 is
  port (
    UART_clk : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_en : in STD_LOGIC;
    fifo_ready : in STD_LOGIC;
    Tx : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    Tx_enabled : out STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  end component fpga_design_uart_tx_0_0;
  component fpga_design_uart_rx_0_0 is
  port (
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC
  );
  end component fpga_design_uart_rx_0_0;
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal central_interface_0_threshold_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal fifo_empty_1 : STD_LOGIC;
  signal fifo_full_1 : STD_LOGIC;
  signal fifo_out_1 : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_ready_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal uart_rx_0_Rx_end : STD_LOGIC;
  signal uart_rx_0_Rx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_1 : STD_LOGIC;
  signal uart_tx_0_Tx : STD_LOGIC;
  signal uart_tx_0_Tx_enabled : STD_LOGIC;
  signal uart_tx_0_rd_en : STD_LOGIC;
  signal uart_tx_0_tx_lock : STD_LOGIC;
begin
  Tx <= uart_tx_0_Tx;
  Tx_enabled <= uart_tx_0_Tx_enabled;
  clk_1 <= clk;
  fifo_empty_1 <= fifo_empty;
  fifo_full_1 <= fifo_full;
  fifo_out_1(39 downto 0) <= fifo_out(39 downto 0);
  fifo_ready_1 <= fifo_ready;
  read_en <= uart_tx_0_rd_en;
  rst_1 <= rst;
  threshold(11 downto 0) <= central_interface_0_threshold_out(11 downto 0);
  tx_lock <= uart_tx_0_tx_lock;
  uart_rx_1 <= uart_rx;
central_interface_0: component fpga_design_central_interface_0_0
     port map (
      FIFO_empty => fifo_empty_1,
      FIFO_full => fifo_full_1,
      FIFO_ready => fifo_ready_1,
      Rx_end => uart_rx_0_Rx_end,
      Rx_in(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => clk_1,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      threshold_out(11 downto 0) => central_interface_0_threshold_out(11 downto 0)
    );
uart_rx_0: component fpga_design_uart_rx_0_0
     port map (
      Rx => uart_rx_1,
      Rx_end => uart_rx_0_Rx_end,
      Rx_out(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      rst => rst_1,
      uart_clk => clk_1
    );
uart_tx_0: component fpga_design_uart_tx_0_0
     port map (
      Tx => uart_tx_0_Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => uart_tx_0_Tx_enabled,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => clk_1,
      fifo_in(39 downto 0) => fifo_out_1(39 downto 0),
      fifo_ready => fifo_ready_1,
      rd_en => uart_tx_0_rd_en,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      tx_lock => uart_tx_0_tx_lock
    );
end STRUCTURE;
