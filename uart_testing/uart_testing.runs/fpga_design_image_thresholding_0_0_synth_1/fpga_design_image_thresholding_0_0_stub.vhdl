-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Apr 14 15:30:03 2019
-- Host        : BEAST running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_design_image_thresholding_0_0_stub.vhdl
-- Design      : fpga_design_image_thresholding_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "imgData[11:0],layerId,cameraId[1:0],pixClk,rst,vsync,href,mem_threshold[11:0],packet[39:0],wr_en";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "image_thresholding,Vivado 2018.2";
begin
end;
