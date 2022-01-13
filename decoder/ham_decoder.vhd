LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ham_decoder is
	port(	y: 		  in  std_logic_vector(14 downto 0);
			msgOut:    out std_logic_vector(10 downto 0)
	);
end ham_decoder;

architecture structural of ham_decoder is

component gateXOr2 is
	port(	x0: in 	std_logic;
			x1: in 	std_logic;
			y:	out	std_logic);
end component;

component gateAnd4 is
	port(	x1: in std_logic;
			x2: in std_logic;
			x3: in std_logic;
			x4: in std_logic;
			y: out std_logic);
end component;

-- parity check

signal s_xor_a: std_logic_vector(5 downto 0);
signal r_xor_a: std_logic;

signal s_xor_b: std_logic_vector(5 downto 0);
signal r_xor_b: std_logic;

signal s_xor_c: std_logic_vector(5 downto 0);
signal r_xor_c: std_logic;

signal s_xor_d: std_logic_vector(5 downto 0);
signal r_xor_d: std_logic;

signal s_and: std_logic_vector(10 downto 0);

signal m: std_logic;
signal k: std_logic;

begin

m <= y(14) XOR y(8) XOR y(7) XOR y(4);
k <= y(9) XOR y(6) XOR y(5) XOR y(4);

-- y1,    y2,    y3,    y4,    y5,    y6,   y7,   y8,   y9,   y10,  y11,  y12,  y13,  y14,  y15
-- y(14), y(13), y(12), y(11), y(10), y(9), y(8), y(7), y(6), y(5), y(4), y(3), y(2), y(1), y(0)

-- parity equation 1: y2 XOR y3 XOR y9 XOR y12 XOR m
xor1_a: gateXOr2 	port map (y(13), y(12), s_xor_a(0)); 			
xor2_a: gateXOr2 	port map (s_xor_a(0), y(6), s_xor_a(1)); 	
xor3_a: gateXOr2	port map (s_xor_a(1), y(3), s_xor_a(2)); 
xor4_a: gateXOr2 	port map (s_xor_a(2), m, r_xor_a);  
	
-- parity equation 2: y4 XOR y5 XOR y10 XOR y13 XOR m
xor1_b: gateXOr2 	port map (y(11), y(10), s_xor_b(0)); 			
xor2_b: gateXOr2 	port map (s_xor_b(0), y(5), s_xor_b(1)); 	
xor3_b: gateXOr2 	port map (s_xor_b(1), y(2), s_xor_b(2)); 
xor4_b: gateXOr2 	port map (s_xor_b(2), m, r_xor_b); 

-- parity equation 3: y2 XOR y4 XOR y7 XOR y14 XOR k
xor1_c: gateXOr2 	port map (y(13), y(11), s_xor_c(0)); 			
xor2_c: gateXOr2 	port map (s_xor_c(0), y(8), s_xor_c(1)); 	
xor3_c: gateXOr2 	port map (s_xor_c(1), y(1), s_xor_c(2)); 
xor4_c: gateXOr2 	port map (s_xor_c(2), k, r_xor_c);

-- parity equation 4: y3 XOR y5 XOR y8 XOR y15 XOR k
xor1_d: gateXOr2 	port map (y(12), y(10), s_xor_d(0)); 			
xor2_d: gateXOr2 	port map (s_xor_d(0), y(7), s_xor_d(1)); 	
xor3_d: gateXOr2 	port map (s_xor_d(1), y(0), s_xor_d(2)); 
xor4_d: gateXOr2 	port map (s_xor_d(2), k, r_xor_d);
	
-- H matrix
-- 1st column
and1: 	gateAnd4 port map (r_xor_a, r_xor_b,not r_xor_c,not r_xor_d, s_and(0)); 	
-- 2nd column
and2: 	gateAnd4 port map (r_xor_a, not r_xor_b,r_xor_c,not r_xor_d, s_and(1)); 	
-- 3rd column
and3: 	gateAnd4 port map (r_xor_a,not r_xor_b,not r_xor_c, r_xor_d, s_and(2));
-- 4th column	
and4: 	gateAnd4 port map (not r_xor_a, r_xor_b, r_xor_c,not r_xor_d, s_and(3)); 	
-- 5th column	
and5: 	gateAnd4 port map (not r_xor_a, r_xor_b,not r_xor_c, r_xor_d, s_and(4));
-- 6th column	 	
and6: 	gateAnd4 port map (not r_xor_a,not  r_xor_b, r_xor_c, r_xor_d, s_and(5)); 	
-- 7th column	 	
and7: 	gateAnd4 port map (r_xor_a, r_xor_b, r_xor_c,not r_xor_d, s_and(6)); 	
-- 8th column	
and8: 	gateAnd4 port map ( r_xor_a, r_xor_b,not r_xor_c, r_xor_d, s_and(7)); 	
-- 9th column	
and9:		gateAnd4 port map (r_xor_a,not r_xor_b, r_xor_c, r_xor_d, s_and(8));
-- 10th column	 		
and10: 	gateAnd4 port map (not r_xor_a, r_xor_b, r_xor_c, r_xor_d, s_and(9));
-- 11th column	 	
and11: 	gateAnd4 port map (r_xor_a, r_xor_b, r_xor_c, r_xor_d, s_and(10)); 				

-- 1-bit error correction
xor_last1: 	gateXOr2 port map (y(14), s_and(0), msgOut(10));
xor_last2: 	gateXOr2 port map (y(13), s_and(1), msgOut(9));
xor_last3: 	gateXOr2 port map (y(12), s_and(2), msgOut(8));
xor_last4: 	gateXOr2 port map (y(11), s_and(3), msgOut(7));
xor_last5: 	gateXOr2 port map (y(10), s_and(4), msgOut(6));
xor_last6: 	gateXOr2 port map (y(9), s_and(5), msgOut(5));
xor_last7: 	gateXOr2 port map (y(8), s_and(6), msgOut(4));
xor_last8: 	gateXOr2 port map (y(7), s_and(7), msgOut(3));
xor_last9: 	gateXOr2 port map (y(6), s_and(8), msgOut(2));
xor_last10: gateXOr2 port map (y(5), s_and(9), msgOut(1));
xor_last11: gateXOr2 port map (y(4), s_and(10), msgOut(0));
	
end structural;