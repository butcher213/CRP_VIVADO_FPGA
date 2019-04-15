----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2019 04:37:33 PM
-- Design Name: 
-- Module Name: camera_simulator - Behavioral
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
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity camera_simulator is
  Port (enable : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        vsync: OUT STD_LOGIC;
        href: OUT STD_LOGIC;
        pix_out: OUT STD_LOGIC_VECTOR(11 downto 0)
   );
end camera_simulator;

architecture Behavioral of camera_simulator is
signal counter : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";
begin
process(enable, clk) 
begin
    if(enable = '0') then
       -- pix_out <= (others => '0');
        vsync <= '0';
        href <= '0';
        counter <= (others => '0');
    end if;
    if(falling_edge(clk)) then
        vsync <= '1';
        href <= '1';
        counter <= counter + 1;
        if(counter = "111111111111") then
            counter <= (others => '0');
        end if;
    end if;
end process;
pix_out <= counter;
end Behavioral;
