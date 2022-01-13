library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4 is
	port ( a: 	in  std_logic;
			 b: 	in  std_logic;
			 c: 	in  std_logic;
			 d: 	in  std_logic;
			 s:	in  std_logic_vector(1 downto 0);
			 q: 	out std_logic
	);
end Mux4;

architecture Structural of Mux4 is

component Mux2 is
	port ( a: 	in  std_logic;
			 b: 	in  std_logic;
			 s:	in  std_logic;
			 q: 	out std_logic
	);
end component;

signal sig1, sig2: std_logic;

begin

mux_1: Mux2 port map (a, b, s(0), sig1); 				-- mux2_1(a, b, s0)
mux_2: Mux2 port map (c, d, s(0), sig2); 				-- mux2_1(c, d, s0)
mux_3: Mux2 port map (sig1, sig2, s(1), q);				-- mux2_1(mux1, mux2, s1)

end Structural;