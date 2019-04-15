library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity axl_interface is
	port( axl_in	: in std_logic_vector (9 downto 0);
			degrees	: out std_logic_vector (9 downto 0) );
end entity;

architecture axl_interface_arch of axl_interface is
signal temp			 : std_logic_vector (9 downto 0);
signal degree_temp : integer;
begin
	with axl_in(9) select
		temp <= 		-- Positive case
						("011111111" - ('0' & axl_in(8 downto 0))) when '0',
						-- Negative case
						("011111111" + ('0' & (not axl_in(8 downto 0) + 1))) when '1',
						(others => 'X') when others;
						
	degree_temp <= conv_integer(temp) * 180 / 511;
	degrees <= conv_std_logic_vector(degree_temp, 10);
end architecture;