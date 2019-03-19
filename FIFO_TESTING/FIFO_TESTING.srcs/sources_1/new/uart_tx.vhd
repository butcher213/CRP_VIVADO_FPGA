----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2019 01:56:02 PM
-- Design Name: 
-- Module Name: uart_tx - Behavioral
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

entity uart_tx is
Port (UART_clk : IN STD_LOGIC;
        Tx_begin : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        fifo_in : IN STD_LOGIC_VECTOR(39 downto 0);
        fifo_ready : IN STD_LOGIC;
        Tx : OUT STD_LOGIC);
end uart_tx;

architecture Behavioral of uart_tx is
signal data_index : STD_LOGIC_VECTOR(6 downto 0);
signal Tx_line_index : STD_LOGIC_VECTOR(2 downto 0);
signal Tx_shift_registers : STD_LOGIC_VECTOR(9 downto 0);
signal fifo_data : STD_LOGIC_VECTOR(39 downto 0);
type state_type is (INIT, LOAD_REGISTERS, TRANSMIT);
signal current_state : state_type;
signal transmit_lock : STD_LOGIC;
begin
    current_state <= INIT when rst <= '1';
    current_state <= LOAD_REGISTERS when Tx_begin <= '1' and transmit_lock <= '0';
    process(UART_clk) is
    begin
        case current_state is
            when INIT =>
                transmit_lock <= '0';
                Tx <= '0';
                Tx_line_index <= "000";
                Tx_shift_registers <= (others => '0');
                data_index <= (others => '0');
                fifo_data <= (others => '0');
            when LOAD_REGISTERS =>
                transmit_lock <= '1';
                case Tx_line_index is
                    when "000" => 
                        fifo_data <= fifo_in;
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(8 downto 2) <= fifo_data(6 downto 0);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "001";
                        current_state <= TRANSMIT;
                    when "001" =>
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(8 downto 2) <= fifo_data(13 downto 7);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "011";
                        current_state <= TRANSMIT;
                    when "011" =>
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(8 downto 2) <= fifo_data(20 downto 14);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "010";
                        current_state <= TRANSMIT;
                    when "011" =>
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(8 downto 2) <= fifo_data(27 downto 21);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "110";
                        current_state <= TRANSMIT;
                   when "110" =>
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(8 downto 2) <= fifo_data(34 downto 28);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "111";
                        current_state <= TRANSMIT;
                   when "111" =>
                        Tx_shift_registers(1 downto 0) <= "01";
                        Tx_shift_registers(6 downto 2) <= fifo_data(39 downto 35);
                        Tx_shift_registers(9 downto 7) <= "100";
                        Tx_line_index <= "101";
                        current_state <= TRANSMIT;
                   when others => 
                        current_state <= INIT;
                end case;
            when TRANSMIT =>
                Tx <= Tx_shift_registers(0);
                Tx_shift_registers(0) <= Tx_shift_registers(1);
                Tx_shift_registers(1) <= Tx_shift_registers(2);
                Tx_shift_registers(2) <= Tx_shift_registers(3);
                Tx_shift_registers(3) <= Tx_shift_registers(4);
                Tx_shift_registers(4) <= Tx_shift_registers(5);
                Tx_shift_registers(5) <= Tx_shift_registers(6);
                Tx_shift_registers(6) <= Tx_shift_registers(7);
                Tx_shift_registers(7) <= Tx_shift_registers(8);
                Tx_shift_registers(8) <= Tx_shift_registers(9);
                Tx_shift_registers(9) <= '0';
                if(Tx_shift_registers(9 downto 0) = "0000000000") then
                    current_state <= LOAD_REGISTERS;
                end if;
            when others =>
                current_state <= INIT;
        end case;
    end process;
end Behavioral;
