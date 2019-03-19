----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2019 12:56:43 PM
-- Design Name: 
-- Module Name: threshold_memory - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity threshold_memory is
  Port (threshold_in: IN STD_LOGIC_VECTOR(11 downto 0);
        rst : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        threshold_out : OUT STD_LOGIC_VECTOR(11 downto 0)
        
  );
end threshold_memory;

architecture Behavioral of threshold_memory is
signal internal_memory : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";
type state_type is (INIT, CHANGE_THRESHOLD);
begin
process(rst, clk) is
begin
    if(rst = '1') then
        internal_memory <= (others => '0');
    end if;
    if(rising_edge(clk)) then
        if(not(threshold_in = "000000000000")) then
            internal_memory <= threshold_in;
        end if;
    end if;
end process;
 threshold_out <= internal_memory;
end Behavioral;
