----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2019 04:55:27 PM
-- Design Name: 
-- Module Name: uart_rx - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_rx is
  Port ( Rx : IN STD_LOGIC;
         uart_clk : IN STD_LOGIC;
         rst : IN STD_LOGIC;
         Rx_out : OUT STD_LOGIC_VECTOR(7 downto 0);
         Rx_end : OUT STD_LOGIC;
         transition : OUT STD_LOGIC);
end uart_rx;

architecture Behavioral of uart_rx is
type state_type is (INIT, READ);
signal current_state : state_type;
signal Rx_shift_registers : STD_LOGIC_VECTOR(9 downto 0);
signal Rx_lock : STD_LOGIC;
signal counter : STD_LOGIC_VECTOR(3 downto 0);
begin
--current_state <= READ when (falling_edge(Rx) and current_state = INIT);
process(uart_clk, rst)
begin
    if(rst = '1') then
        current_state <= INIT;
        
    end if;
    if(rising_edge(uart_clk)) then
        case current_state is
            when INIT =>
                Rx_shift_registers <= (others => '0');
                Rx_out <= (others => '0');
                counter <= (others => '0');
                Rx_lock <= '0';
                transition <= '0';
                if(Rx = '0') then
                    current_state <= READ;
                end if;
            when READ =>
            transition <= '1';
                counter <= counter + 1;
                Rx_shift_registers(9) <= Rx;
                Rx_shift_registers(8) <= Rx_shift_registers(9);
                Rx_shift_registers(7) <= Rx_shift_registers(8);
                Rx_shift_registers(6) <= Rx_shift_registers(7);
                Rx_shift_registers(5) <= Rx_shift_registers(6);
                Rx_shift_registers(4) <= Rx_shift_registers(5);
                Rx_shift_registers(3) <= Rx_shift_registers(4);
                Rx_shift_registers(2) <= Rx_shift_registers(3);
                Rx_shift_registers(1) <= Rx_shift_registers(2);
                Rx_shift_registers(0) <= Rx_shift_registers(1);
                
                if(counter = "1001") then
                    current_state <= INIT;
                    Rx_out(7  downto 0) <= Rx_shift_registers(8 downto 1);
                    Rx_end <= '1';
                end if;
            when others =>
                current_state <= INIT;
        end case;
    end if;
end process;

end Behavioral;
