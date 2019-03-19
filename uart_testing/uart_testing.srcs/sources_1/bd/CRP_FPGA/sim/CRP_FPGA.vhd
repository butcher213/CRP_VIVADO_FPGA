--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Feb 28 17:05:33 2019
--Host        : BEAST running 64-bit major release  (build 9200)
--Command     : generate_target CRP_FPGA.bd
--Design      : CRP_FPGA
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CRP_FPGA is
  port (
    Camera_data_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    FIFO_IS_READY : out STD_LOGIC;
    Rx_end : in STD_LOGIC;
    Rx_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx : out STD_LOGIC;
    Tx_counter : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_enabled : out STD_LOGIC;
    camera_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_is_emtpy : out STD_LOGIC;
    fifo_out : out STD_LOGIC_VECTOR ( 39 downto 0 );
    href : in STD_LOGIC;
    layerId : in STD_LOGIC;
    pixclk : in STD_LOGIC;
    read_enabled : out STD_LOGIC;
    rst : in STD_LOGIC;
    tx_locked : out STD_LOGIC;
    uartclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    write_enabled : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of CRP_FPGA : entity is "CRP_FPGA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CRP_FPGA,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of CRP_FPGA : entity is "CRP_FPGA.hwdef";
end CRP_FPGA;

architecture STRUCTURE of CRP_FPGA is
  component CRP_FPGA_central_interface_0_0 is
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
  end component CRP_FPGA_central_interface_0_0;
  component CRP_FPGA_fifo_generator_0_0 is
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
  end component CRP_FPGA_fifo_generator_0_0;
  component CRP_FPGA_fifo_protector_0_0 is
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
  end component CRP_FPGA_fifo_protector_0_0;
  component CRP_FPGA_threshold_memory_0_0 is
  port (
    threshold_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    threshold_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component CRP_FPGA_threshold_memory_0_0;
  component CRP_FPGA_image_thresholding_0_0 is
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
  end component CRP_FPGA_image_thresholding_0_0;
  component CRP_FPGA_uart_tx_0_0 is
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
  end component CRP_FPGA_uart_tx_0_0;
  signal Camera_data_in_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Rx_end_1 : STD_LOGIC;
  signal Rx_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal camera_id_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal central_interface_0_Tx_en : STD_LOGIC;
  signal central_interface_0_Tx_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal central_interface_0_read_enable : STD_LOGIC;
  signal central_interface_0_threshold_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fifo_protector_0_fifo_ready : STD_LOGIC;
  signal fifo_protector_0_fifo_rst : STD_LOGIC;
  signal fifo_protector_0_rd_en : STD_LOGIC;
  signal fifo_protector_0_wr_en : STD_LOGIC;
  signal href_1 : STD_LOGIC;
  signal image_thresholding_0_packet : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal image_thresholding_0_wr_en : STD_LOGIC;
  signal layerId_1 : STD_LOGIC;
  signal pixclk_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal threshold_memory_0_threshold_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal uart_tx_0_Tx : STD_LOGIC;
  signal uart_tx_0_Tx_enabled : STD_LOGIC;
  signal uart_tx_0_rd_en : STD_LOGIC;
  signal uart_tx_0_tx_lock : STD_LOGIC;
  signal uartclk_1 : STD_LOGIC;
  signal vsync_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of fifo_is_emtpy : signal is "xilinx.com:signal:data:1.0 DATA.FIFO_IS_EMTPY DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of fifo_is_emtpy : signal is "XIL_INTERFACENAME DATA.FIFO_IS_EMTPY, LAYERED_METADATA undef";
begin
  Camera_data_in_1(11 downto 0) <= Camera_data_out(11 downto 0);
  FIFO_IS_READY <= fifo_protector_0_fifo_ready;
  Rx_end_1 <= Rx_end;
  Rx_in_1(7 downto 0) <= Rx_in(7 downto 0);
  Tx <= uart_tx_0_Tx;
  Tx_enabled <= uart_tx_0_Tx_enabled;
  camera_id_1(1 downto 0) <= camera_id(1 downto 0);
  fifo_is_emtpy <= fifo_generator_0_empty;
  fifo_out(39 downto 0) <= fifo_generator_0_dout(39 downto 0);
  href_1 <= href;
  layerId_1 <= layerId;
  pixclk_1 <= pixclk;
  read_enabled <= fifo_protector_0_rd_en;
  rst_1 <= rst;
  tx_locked <= uart_tx_0_tx_lock;
  uartclk_1 <= uartclk;
  vsync_1 <= vsync;
  write_enabled <= fifo_protector_0_wr_en;
  Tx_counter(0) <= 'Z';
  Tx_counter(1) <= 'Z';
  Tx_counter(2) <= 'Z';
central_interface_0: component CRP_FPGA_central_interface_0_0
     port map (
      FIFO_empty => fifo_generator_0_empty,
      FIFO_full => fifo_generator_0_full,
      FIFO_ready => fifo_protector_0_fifo_ready,
      Rx_end => Rx_end_1,
      Rx_in(7 downto 0) => Rx_in_1(7 downto 0),
      Tx_en => central_interface_0_Tx_en,
      Tx_out(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      clk => uartclk_1,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      threshold_out(11 downto 0) => central_interface_0_threshold_out(11 downto 0)
    );
fifo_generator_0: component CRP_FPGA_fifo_generator_0_0
     port map (
      din(39 downto 0) => image_thresholding_0_packet(39 downto 0),
      dout(39 downto 0) => fifo_generator_0_dout(39 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => uartclk_1,
      rd_en => fifo_protector_0_rd_en,
      rst => fifo_protector_0_fifo_rst,
      wr_clk => pixclk_1,
      wr_en => fifo_protector_0_wr_en
    );
fifo_protector_0: component CRP_FPGA_fifo_protector_0_0
     port map (
      clk => pixclk_1,
      fifo_ready => fifo_protector_0_fifo_ready,
      fifo_rst => fifo_protector_0_fifo_rst,
      global_rst => rst_1,
      rd_en => fifo_protector_0_rd_en,
      rd_in => uart_tx_0_rd_en,
      wr_en => fifo_protector_0_wr_en,
      wr_in => image_thresholding_0_wr_en
    );
image_thresholding_0: component CRP_FPGA_image_thresholding_0_0
     port map (
      cameraId(1 downto 0) => camera_id_1(1 downto 0),
      href => href_1,
      imgData(11 downto 0) => Camera_data_in_1(11 downto 0),
      layerId => layerId_1,
      mem_threshold(11 downto 0) => threshold_memory_0_threshold_out(11 downto 0),
      packet(39 downto 0) => image_thresholding_0_packet(39 downto 0),
      pixClk => pixclk_1,
      rst => rst_1,
      vsync => vsync_1,
      wr_en => image_thresholding_0_wr_en
    );
threshold_memory_0: component CRP_FPGA_threshold_memory_0_0
     port map (
      clk => uartclk_1,
      rst => rst_1,
      threshold_in(11 downto 0) => central_interface_0_threshold_out(11 downto 0),
      threshold_out(11 downto 0) => threshold_memory_0_threshold_out(11 downto 0)
    );
uart_tx_0: component CRP_FPGA_uart_tx_0_0
     port map (
      Tx => uart_tx_0_Tx,
      Tx_en => central_interface_0_Tx_en,
      Tx_enabled => uart_tx_0_Tx_enabled,
      Tx_in(7 downto 0) => central_interface_0_Tx_out(7 downto 0),
      UART_clk => uartclk_1,
      fifo_in(39 downto 0) => fifo_generator_0_dout(39 downto 0),
      fifo_ready => fifo_protector_0_fifo_ready,
      rd_en => uart_tx_0_rd_en,
      read_enable => central_interface_0_read_enable,
      rst => rst_1,
      tx_lock => uart_tx_0_tx_lock
    );
end STRUCTURE;
