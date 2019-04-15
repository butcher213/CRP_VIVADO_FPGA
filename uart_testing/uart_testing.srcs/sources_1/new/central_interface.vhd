----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2019 02:21:09 PM
-- Design Name: 
-- Module Name: central_interface - Behavioral
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

entity central_interface is
  Port (clk: IN STD_LOGIC;
        rst: IN STD_LOGIC;
        Rx_in : IN STD_LOGIC_VECTOR(7 downto 0);
        Rx_end : IN STD_LOGIC;
        FIFO_ready : IN STD_LOGIC;
        FIFO_empty : IN STD_LOGIC;
        FIFO_full : IN STD_LOGIC;
        Tx_en : OUT STD_LOGIC;
        read_enable : OUT STD_LOGIC;
        threshold_out : OUT STD_LOGIC_VECTOR(11 downto 0);
        Tx_out : OUT STD_LOGIC_VECTOR(7 downto 0);
        works: OUT STD_LOGIC);
end central_interface;

architecture Behavioral of central_interface is
type state_type is (INIT, FIFO_STATUS, CHANGE_THRESHOLD, FIFO_READ, EMPTY, THRESHOLD_RX_1, THRESHOLD_RX_2);
signal current_state : state_type := INIT;
signal threshold : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";
begin

process(clk, rst)
begin
    if(rst = '1') then
        current_state <= INIT;
    end if;
    if(rising_edge(clk)) then
        case current_state is
            when INIT =>
                Tx_out <= (others => '0');
                Tx_en <= '0';
                works <= '0';
                read_enable <= '0';
                -- FIFO STATUS
                if(Rx_end = '1' and Rx_in = "00100000") then current_state <= FIFO_STATUS;
                elsif(Rx_end = '1' and Rx_in = "00010000") then current_state <= CHANGE_THRESHOLD;
                elsif(Rx_end = '1' and Rx_in = "01000000") then
                    if(FIFO_empty = '1') then
                        Tx_en <= '1';
                        Tx_out <= "00000010";
                    else
                        current_state <= FIFO_READ;
                    end if;
               
                end if;
            when FIFO_READ =>
                Tx_out <= (others => '0');
                read_enable <= '1';
                
                current_state <= INIT;
            when FIFO_STATUS =>
                works <= '1';
                Tx_en <= '1';
                if(FIFO_ready = '1') then
                    Tx_out(3) <= '1';
                else
                    Tx_out(4) <= '1';
                end if;
                if(FIFO_full = '1') then
                    Tx_out(2) <= '1';
                end if;
                if(FIFO_empty = '1') then
                    Tx_out(5) <= '1';
                end if;
                current_state <= INIT;
            when CHANGE_THRESHOLD =>
                Tx_en <= '1';
                Tx_out <= "00000001";
                current_state <= THRESHOLD_RX_1;
            when THRESHOLD_RX_1 =>
                Tx_en <= '0';
                Tx_out <= (others => '0');
                if(Rx_end = '1') then
                    threshold(11 downto 5) <= Rx_in(6 downto 0);
                    current_state <= THRESHOLD_RX_2;
                end if;
            when THRESHOLD_RX_2 =>
                 Tx_en <= '0';
                 Tx_out <= (others => '0');
                 if(Rx_end = '1') then
                    threshold(4 downto 0) <= Rx_in(6 downto 2);
                    threshold_out(11 downto 0) <= threshold(11 downto 0);
                    current_state <= INIT;
                 end if;
            when others =>
                current_state <= INIT;
        end case;
    end if;
end process;

end Behavioral;
