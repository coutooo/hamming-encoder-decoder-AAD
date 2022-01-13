library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2 is
	port ( a: 	in  std_logic;
			 b: 	in std_logic;
			 s:	in  std_logic;
			 q: 	out std_logic
	);
end Mux2;

architecture Structural of Mux2 is

component gateAnd2 is
	port ( x0: in std_logic;
			 x1: in std_logic;
			 y: out std_logic
	);
end component;

component gateOr2 is
	port ( x0: in std_logic;
			 x1: in std_logic;
			 y: out std_logic 
	);
end component;

component gateNot is
	port ( x0: in std_logic;
			 y: out std_logic
	);
end component;

signal sig1, sig2, sig3: std_logic;

begin

not1: gateNot port map (s, sig1); 				-- not s
and1: gateAnd2 port map (a, sig1, sig2);  	-- a.(not s)
and2: gateAnd2 port map (b, s, sig3); 			-- b.s
or1: gateOr2 	port map (sig2, sig3, q);		-- (a. (not s)) + (b.s)

end Structural;