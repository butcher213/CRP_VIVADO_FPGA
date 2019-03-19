----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2018 03:43:21 PM
-- Design Name: 
-- Module Name: image_thresholding - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity image_thresholding is
  Port (imgData : IN STD_LOGIC_VECTOR(11 downto 0);
        layerId : IN STD_LOGIC;
        cameraId : IN STD_LOGIC_VECTOR(1 downto 0);
        pixClk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        vsync : IN STD_LOGIC;
        href : IN STD_LOGIC;
        mem_threshold : IN STD_LOGIC_VECTOR(11 downto 0);
        packet : OUT STD_LOGIC_VECTOR(39 downto 0);
        wr_en : OUT STD_LOGIC
  );
end image_thresholding;

architecture Behavioral of image_thresholding is
signal counter : STD_LOGIC_VECTOR(24 downto 0);
signal valid_packet : STD_LOGIC;
signal rst_counter : STD_LOGIC_VECTOR(3 downto 0);
signal threshold : STD_LOGIC_VECTOR(11 downto 0) := "000000000001";
begin
threshold <= mem_threshold when not(mem_threshold = "000000000000");
process(pixClk, rst)
begin
    if(rst = '1') then
        counter <= (others => '0');
        packet <= (others => '0');
        wr_en <= '0';
    elsif(rising_edge(pixClk) and vsync = '1') then
        counter <= counter + 1;
        if(unsigned(imgData) > unsigned(threshold)) then
             packet(24 downto 0) <= counter;
             packet(36 downto 25) <= imgData;
             packet(38 downto 37) <= cameraId;
             packet(39) <= layerId;
             wr_en <= '1';
            
        else
            packet <= (others => '0');
            wr_en <= '0';
        end if;
    end if;
end process;
end Behavioral;
