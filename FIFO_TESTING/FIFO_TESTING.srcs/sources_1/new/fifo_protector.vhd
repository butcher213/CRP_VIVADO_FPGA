----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2019 03:34:08 PM
-- Design Name: 
-- Module Name: fifo_protector - Behavioral
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

entity fifo_protector is
  Port (clk          : IN STD_LOGIC;
        wr_in        : IN STD_LOGIC;
        rd_in        : IN STD_LOGIC;
        global_rst   : IN STD_LOGIC;
        fifo_rst     : OUT STD_LOGIC;
        fifo_ready   : OUT STD_LOGIC;
        rd_en        : OUT STD_LOGIC;
        wr_en        : OUT STD_LOGIC
        
        );
end fifo_protector;

architecture Behavioral of fifo_protector is
-- wr_end is reset off, write off.
-- A,B,C,D,E are reset on. F and G are reset off, but still initializing.
-- FIN is normal operation.
TYPE state_type IS (reset, A, B, C, D, E, F, G, H, I, FIN);
signal current_state : state_type;
signal rd_wr_lock : STD_LOGIC;
begin
    
    
    
    process(clk, global_rst)
    begin
        -- Asynchronous reset
        if (global_rst = '1') then
            current_state <= reset;
        end if; 
        if(rising_edge(clk)) then
            case current_state is
                when reset =>
                    fifo_rst <= '0';
                    rd_en <= '0';
                    wr_en <= '0';
                    fifo_ready <= '0';
                    rd_wr_lock <= '1';
                    current_state <=  A;
                when A =>
                    fifo_rst <= '1';
                    current_state <= D;
                when B =>
                    --fifo_rst <= '1';
                    current_state <= C;
                when C =>
                    current_state <= D;
                when D => 
                    current_state <= E;
                when E =>
                    current_state <= F;
                when F =>
                    current_state <= G;
                when G =>
                    -- End reset enabled, wait two clock cycles.
                    fifo_rst <= '0';
                    current_state <= H;
                when H =>
                    current_state <= I;
                when I =>
                    current_state <= FIN;
                when FIN =>
                    -- Normal operation, disable read/write lock.
                    rd_wr_lock <= '0';
                    fifo_ready <= '1';
                    rd_en <= rd_in;
                    wr_en <= wr_in;
                when others => 
                current_state <= reset;
            end case;
        end if;
        
    end process;
   -- rd_en <= rd_in when rd_wr_lock = '0';
   -- wr_en <= wr_in when rd_wr_lock = '0';
end Behavioral;
