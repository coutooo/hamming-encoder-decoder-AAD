LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity flipFlop4 is
	port(	clk: in std_logic;
			nSet, nRst: std_logic;
			input1, input2, input3, input4: in std_logic;
			output1, output2, output3, output4: out std_logic);
end flipFlop4;

architecture Structural of flipFlop4 is
component flipFlopD is
	port (clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
end component;
signal s_nQ : std_logic;
begin
	ffD1: flipFlopD port map (clk,input1,nSet,nRst,output1,s_nQ);
	ffD2: flipFlopD port map (clk,input2,nSet,nRst,output2,s_nQ);
	ffD3: flipFlopD port map (clk,input3,nSet,nRst,output3,s_nQ);
	ffD4: flipFlopD port map (clk,input4,nSet,nRst,output4,s_nQ);
end structural;