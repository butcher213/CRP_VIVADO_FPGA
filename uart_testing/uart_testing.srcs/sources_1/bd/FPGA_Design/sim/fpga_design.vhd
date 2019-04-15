--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sun Apr 14 18:47:16 2019
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
    Rx : in STD_LOGIC;
    Tx : out STD_LOGIC;
    cameraid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_ready : out STD_LOGIC;
    layerid : in STD_LOGIC;
    pixClk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_out : out STD_LOGIC;
    sim_enable : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fpga_design : entity is "fpga_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fpga_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fpga_design : entity is "fpga_design.hwdef";
end fpga_design;

architecture STRUCTURE of fpga_design is
  component fpga_design_threshold_memory_0_0 is
  port (
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component fpga_design_threshold_memory_0_0;
  component fpga_design_image_thresholding_0_0 is
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
  end component fpga_design_image_thresholding_0_0;
  component fpga_design_fifo_protector_0_0 is
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
  end component fpga_design_fifo_protector_0_0;
  component fpga_design_UART_clk_gen_0_0 is
  port (
    clk : in STD_LOGIC;
    baudclk : out STD_LOGIC
  );
  end component fpga_design_UART_clk_gen_0_0;
  component fpga_design_camera_simulator_0_0 is
  port (
    enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    vsync : out STD_LOGIC;
    href : out STD_LOGIC;
    pix_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component fpga_design_camera_simulator_0_0;
  component fpga_design_fifo_generator_1_0 is
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
  end component fpga_design_fifo_generator_1_0;
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
    Tx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    works : out STD_LOGIC
  );
  end component fpga_design_central_interface_0_0;
  component fpga_design_uart_rx_0_0 is
  port (
    Rx : in STD_LOGIC;
    uart_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_end : out STD_LOGIC;
    transition : out STD_LOGIC
  );
  end component fpga_design_uart_rx_0_0;
  component fpga_design_uart_tx_0_0 is
  port (
    UART_clk : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    Tx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_en : in STD_LOGIC;
    Tx : out STD_LOGIC;
    rd_en : out STD_LOGIC
  );
  end component fpga_design_uart_tx_0_0;
  signal Rx_1 : STD_LOGIC;
  signal camera_simulator_0_href : STD_LOGIC;
  signal camera_simulator_0_pix_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal camera_simulator_0_vsync : STD_LOGIC;
  signal cameraid_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal central_interface_0_threshold_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_1_dout : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_generator_1_empty : STD_LOGIC;
  signal fifo_generator_1_full : STD_LOGIC;
  signal fifo_protector_0_fifo_ready : STD_LOGIC;
  signal fifo_protector_0_fifo_rst : STD_LOGIC;
  signal fifo_protector_0_rd_en : STD_LOGIC;
  signal fifo_protector_0_wr_en : STD_LOGIC;
  signal image_thresholding_0_packet : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal image_thresholding_0_wr_en : STD_LOGIC;
  signal layerid_1 : STD_LOGIC;
  signal pixClk_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sim_enable_1 : STD_LOGIC;
  signal threshold_memory_0_threshold_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal uart_pll_0_clk_out : STD_LOGIC;
  signal uart_rx_0_Rx_end : STD_LOGIC;
  signal uart_rx_0_Rx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_0_transition : STD_LOGIC;
  signal uart_tx_0_Tx : STD_LOGIC;
  signal uart_tx_0_rd_en : STD_LOGIC;
  signal NLW_central_interface_0_works_UNCONNECTED : STD_LOGIC;
begin
  Rx_1 <= Rx;
  Tx <= uart_tx_0_Tx;
  cameraid_1(1 downto 0) <= cameraid(1 downto 0);
  dout(7 downto 0) <= central_interface_0_Tx_out(7 downto 0);
  fifo_ready <= fifo_protector_0_fifo_ready;
  layerid_1 <= layerid;
  pixClk_1 <= pixClk;
  rst_1 <= rst;
  rx_out <= uart_rx_0_transition;
  sim_enable_1 <= sim_enable;
UART_clk_gen_0: component fpga_design_UART_clk_gen_0_0
     port map (
      baudclk => uart_pll_0_clk_out,
      clk => pixClk_1
    );
camera_simulator_0: component fpga_design_camera_simulator_0_0
     port map (
      clk => pixClk_1,
      enable => sim_enable_1,
      href => camera_simulator_0_href,
      pix_out(11 downto 0) => camera_simulator_0_pix_out(11 downto 0),
      vsync => camera_simulator_0_vsync
    );
central_interface_0: component fpga_design_central_interface_0_0
     port map (
      FIFO_empty => fifo_generator_1_empty,
      FIFO_full => fifo_generator_1_full,
      FIFO_ready => fifo_protector_0_fifo_ready,
      Rx_end => uart_rx_0_Rx_end,
      Rx_in(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => uart_pll_0_clk_out,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      threshold_out(11 downto 0) => central_interface_0_threshold_out(11 downto 0),
      works => NLW_central_interface_0_works_UNCONNECTED
    );
fifo_generator_1: component fpga_design_fifo_generator_1_0
     port map (
      din(39 downto 0) => image_thresholding_0_packet(39 downto 0),
      dout(39 downto 0) => fifo_generator_1_dout(39 downto 0),
      empty => fifo_generator_1_empty,
      full => fifo_generator_1_full,
      rd_clk => uart_pll_0_clk_out,
      rd_en => fifo_protector_0_rd_en,
      rst => fifo_protector_0_fifo_rst,
      wr_clk => pixClk_1,
      wr_en => fifo_protector_0_wr_en
    );
fifo_protector_0: component fpga_design_fifo_protector_0_0
     port map (
      clk => pixClk_1,
      fifo_ready => fifo_protector_0_fifo_ready,
      fifo_rst => fifo_protector_0_fifo_rst,
      global_rst => rst_1,
      rd_en => fifo_protector_0_rd_en,
      rd_in => uart_tx_0_rd_en,
      wr_en => fifo_protector_0_wr_en,
      wr_in => image_thresholding_0_wr_en
    );
image_thresholding_0: component fpga_design_image_thresholding_0_0
     port map (
      cameraId(1 downto 0) => cameraid_1(1 downto 0),
      href => camera_simulator_0_href,
      imgData(11 downto 0) => camera_simulator_0_pix_out(11 downto 0),
      layerId => layerid_1,
      mem_threshold(11 downto 0) => threshold_memory_0_threshold_out(11 downto 0),
      packet(39 downto 0) => image_thresholding_0_packet(39 downto 0),
      pixClk => pixClk_1,
      rst => rst_1,
      vsync => camera_simulator_0_vsync,
      wr_en => image_thresholding_0_wr_en
    );
threshold_memory_0: component fpga_design_threshold_memory_0_0
     port map (
      clk => uart_pll_0_clk_out,
      rst => rst_1,
      threshold_in(11 downto 0) => central_interface_0_threshold_out(11 downto 0),
      threshold_out(11 downto 0) => threshold_memory_0_threshold_out(11 downto 0)
    );
uart_rx_0: component fpga_design_uart_rx_0_0
     port map (
      Rx => Rx_1,
      Rx_end => uart_rx_0_Rx_end,
      Rx_out(7 downto 0) => uart_rx_0_Rx_out(7 downto 0),
      rst => rst_1,
      transition => uart_rx_0_transition,
      uart_clk => uart_pll_0_clk_out
    );
uart_tx_0: component fpga_design_uart_tx_0_0
     port map (
      Tx => uart_tx_0_Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => uart_pll_0_clk_out,
      fifo_in(39 downto 0) => fifo_generator_1_dout(39 downto 0),
      rd_en => uart_tx_0_rd_en,
      read_enable => central_interface_0_read_enable,
      rst => rst_1
    );
end STRUCTURE;
