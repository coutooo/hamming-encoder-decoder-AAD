library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
	port ( a :  	in std_logic_vector(3 downto 0);
			 output: out std_logic_vector(6 downto 0)
	);
end rom;

architecture Behavioral of rom is

subtype r_value is STD_LOGIC_VECTOR (6 downto 0);

type ROM_TABLE is array (15 downto 0) of r_value;

signal i : integer;
signal arr : ROM_TABLE;

begin

	process (i, arr)
	begin
	i <= to_integer(unsigned(a));
	-- "ABCD SELMUX1 SELMUX2 SELMUX2"
	
	-- 4 primeiros matrix A 3 selects a 0
	
	arr <= (	"0000000",	
						"0000111", 
						"0000110",
						"0000101",
						"0000100",
						"1111000",
						"0111000", 
						"1011000",
						"1101000",
						"1110000",
						"0011000", 
						"0101000", 
						"0110000",
						"1001000", 
						"1010000", 
						"1100000");
	output <= arr(i);
	
	end process;

end Behavioral;