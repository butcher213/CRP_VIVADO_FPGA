----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2019 01:21:36 PM
-- Design Name: 
-- Module Name: UART_clk_gen - Behavioral
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

entity UART_clk_gen is
  Port (clk: IN STD_LOGIC;
        baudclk: OUT STD_LOGIC 
  );
end UART_clk_gen;

architecture Behavioral of UART_clk_gen is
signal counter : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal baudclk_state : STD_LOGIC := '0';
begin
process(clk)
begin
    if(rising_edge(clk)) then
        counter <= counter + '1';
        if(counter = "00111000") then
            if(baudclk_state = '1') then 
                baudclk_state <= '0';
            else
                baudclk_state <= '1';
            end if;
            counter <= "00000000";
        end if;
    end if;
end process;
baudclk <= baudclk_state;
end Behavioral;
