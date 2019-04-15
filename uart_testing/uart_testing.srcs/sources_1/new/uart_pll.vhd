----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 12:34:26 PM
-- Design Name: 
-- Module Name: uart_pll - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_pll is
  Port (clk_16mhz : IN STD_LOGIC ;
        clk_out : OUT STD_LOGIC);
  
end uart_pll;

architecture Behavioral of uart_pll is
signal counter : integer := 0;
begin
process(clk_16mhz) 
begin
if(rising_edge(clk_16mhz)) then
    counter <= counter + 1;
    if(counter < 16000) then
        clk_out <= '1';
    elsif(counter > 16000 and counter < 32000) then
        clk_out <= '0';
    else
        counter <= 0;
    end if;
    
end if;
end process;    

end Behavioral;
