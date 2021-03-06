library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_tx is
Port (UART_clk : IN STD_LOGIC;
        read_enable : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        fifo_in : IN STD_LOGIC_VECTOR(39 downto 0);
        Tx_in : IN STD_LOGIC_VECTOR(7 downto 0);
        Tx_en: IN STD_LOGIC;
    --  fifo_ready : IN STD_LOGIC;
        Tx : OUT STD_LOGIC;
        rd_en : OUT STD_LOGIC);
        
end uart_tx;

architecture Behavioral of uart_tx is
signal data_index : STD_LOGIC_VECTOR(6 downto 0);
signal Tx_line_index : STD_LOGIC_VECTOR(2 downto 0);
signal Tx_shift_registers : STD_LOGIC_VECTOR(9 downto 0);
signal fifo_data : STD_LOGIC_VECTOR(39 downto 0);
type state_type is (INIT, LOAD_REGISTERS, TRANSMIT, NORMAL_LOAD_REGISTERS, NORMAL_TRANSMIT);
signal current_state : state_type;
signal transmit_lock : STD_LOGIC;
signal tx_counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Tx_data_in : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(UART_clk, rst) is
    begin
        if(rst = '1') then
            current_state <= INIT;
        end if;
        if(rising_edge(UART_clk)) then
        case current_state is
            when INIT =>
                transmit_lock <= '0';
                Tx <= '1';
                Tx_line_index <= "000";
                Tx_shift_registers <= (others => '0');
                data_index <= (others => '0');
                fifo_data <= (others => '0');
              --  data_line <= (others => '0');
                rd_en <= '1';
                if(Read_enable = '1') then
                    current_state <= LOAD_REGISTERS;
                    rd_en <= '1';
                elsif(Tx_en = '1') then
                    current_state <= NORMAL_LOAD_REGISTERS;
                    Tx_data_in <= Tx_in;
                end if;
            when LOAD_REGISTERS =>
                Tx <= '1';
                transmit_lock <= '1';
                tx_counter <= "0000";
                case Tx_line_index is
                    when "000" => 
                        fifo_data <= fifo_in;
                        Tx_shift_registers(0) <= '0';
                        Tx_shift_registers(8 downto 1) <= fifo_data(7 downto 0);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "001";
                        current_state <= TRANSMIT;
                        rd_en <= '0';
                    when "001" =>
                        Tx_shift_registers(0) <= '0';
                        Tx_shift_registers(8 downto 1) <= fifo_data(15 downto 8);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "011";
                        current_state <= TRANSMIT;
                    when "011" =>
                        Tx_shift_registers(0) <= '0';
                        Tx_shift_registers(8 downto 1) <= fifo_data(23 downto 16);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "010";
                        current_state <= TRANSMIT;
                    when "010" =>
                        Tx_shift_registers(0) <= '0';
                        Tx_shift_registers(8 downto 1) <= fifo_data(31 downto 24);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "110";
                        current_state <= TRANSMIT;
                   when "110" =>
                        Tx_shift_registers(0) <= '0';
                        Tx_shift_registers(8 downto 1) <= fifo_data(39 downto 32);
                        Tx_shift_registers(9) <= '1';
                        Tx_line_index <= "111";
                        current_state <= TRANSMIT;
               --    when "111" =>
                    --    Tx_shift_registers(1 downto 0) <= "01";
                --       Tx_shift_registers(6 downto 2) <= fifo_data(39 downto 35);
              --          Tx_shift_registers(9 downto 7) <= "100";
              --          Tx_line_index <= "101";
              --          current_state <= TRANSMIT;
                   when others => 
                        current_state <= INIT;
                end case;
            when TRANSMIT =>
                tx_counter <= tx_counter + 1;
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
               if(tx_counter = "1001") then
               -- if(Tx_shift_registers(9 downto 0) = "0000000001") then
             --       current_state <= LOAD_REGISTERS;
                    current_state <= LOAD_REGISTERS;
                 
                end if;
            when NORMAL_LOAD_REGISTERS =>
                transmit_lock <= '1';
                Tx_shift_registers(0) <= '0';
                Tx_shift_registers(9) <= '1';
                Tx_shift_registers(8 downto 1) <= Tx_data_in;
                current_state <= NORMAL_TRANSMIT;
            when NORMAL_TRANSMIT =>
            if(Tx_shift_registers(9 downto 0) = "0000000000") then
                current_state <= INIT;
            else
                current_state <= NORMAL_TRANSMIT;
                
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
                
            end if;
            when others =>
                current_state <= INIT;
        end case;
        end if;
    end process;
end Behavioral;
