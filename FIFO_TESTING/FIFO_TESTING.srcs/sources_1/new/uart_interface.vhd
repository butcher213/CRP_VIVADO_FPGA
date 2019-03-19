----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2019 01:12:51 PM
-- Design Name: 
-- Module Name: uart_interface - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_interface is
  Port (UART_clk : IN STD_LOGIC;
        Tx_begin : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        fifo_in : IN STD_LOGIC_VECTOR(39 downto 0);
        fifo_ready : IN STD_LOGIC;
        Rx : IN STD_LOGIC;
        Tx : OUT STD_LOGIC;
        UART_out : OUT STD_LOGIC_VECTOR(7 downto 0);
        Rx_end: OUT STD_LOGIC);
end uart_interface;

architecture Behavioral of uart_interface is
signal Rx_data_shift_registers : STD_LOGIC_VECTOR(7 downto 0);
signal data_index : STD_LOGIC_VECTOR(6 downto 0);
signal Tx_data_shift_registers : STD_LOGIC_VECTOR(39 downto 0);
type state_type is (INIT, RECIEVE, TRANSMIT);
signal current_state : state_type;
begin
current_state <= 
-- Transmit
--process(UART_clk, Tx_begin)
--
--begin
--    if(Tx_begin = '1') then
        
--    end if;
--    if(rising_edge(UART_clk)) then
        
        
        
--    end if;
--end process;

end Behavioral;
