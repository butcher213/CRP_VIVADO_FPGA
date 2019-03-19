----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2019 04:24:21 PM
-- Design Name: 
-- Module Name: pixel_thresholding - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pixel_thresholding is
  Port (clk: IN STD_LOGIC;
        d_in : IN STD_LOGIC_VECTOR(11 downto 0);
        href : IN STD_LOGIC;
        vsync : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        camera_index : IN STD_LOGIC_VECTOR(2 downto 0);
        dout : OUT STD_LOGIC_VECTOR(40 downto 0);
        rd_en : OUT STD_LOGIC
  
  );
end pixel_thresholding;

architecture Behavioral of pixel_thresholding is
signal index : STD_LOGIC_VECTOR(24 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            index <= "0000000000000000000000000";
        elsif(rising_edge(clk)) then 
            index <= index + 1;
            
        end if;
    end process;

end Behavioral;
