LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity counter is
	port(	clk: in std_logic;
			nRst: in std_logic;
			counterout: out std_logic_vector(3 downto 0));
end counter;
architecture structural of counter is

component flipFlopD is
	port (clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
end component;
signal s_Q1, s_Q2, s_Q3, s_Q4 : STD_LOGIC;
begin
	ffD1: flipFlopD port map (clk,s_Q1,'1',nRst,counterout(0),s_Q1);
	ffD2: flipFlopD port map (s_Q1,s_Q2,'1',nRst,counterout(1),s_Q2);
	ffD3: flipFlopD port map (s_Q2,s_Q3,'1',nRst,counterout(2),s_Q3);
	ffD4: flipFlopD port map (s_Q3,s_Q4,'1',nRst,counterout(3),s_Q4);
end structural;