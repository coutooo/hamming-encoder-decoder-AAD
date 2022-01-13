LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ham_encoder is
	port(	clk: in std_logic;
			nRst: in std_logic;
			m: in std_logic;
			x: out std_logic;
			controlbits: out std_logic_vector(6 downto 0));
end ham_encoder;
architecture Structural of ham_encoder is

signal s_m, s_x, s_clk : std_logic;
signal s_axor1, s_axor2, s_axor3, s_axor4, s_bxor1, s_bxor2, s_bxor3, s_bxor4, s_cxor1, s_cxor2, s_cxor3, s_cxor4 : std_logic;
signal s_qff1, s_qff2, s_qff3, s_qff4 : std_logic;
signal s_counterout : std_logic_vector(3 downto 0);
signal s_rom : std_logic_vector(6 downto 0);
signal s_amux2,s_bmux2,s_cmux2: std_logic;
signal s_ffout: std_logic;

component gateAnd2 is
	port(	x0: in std_logic;
			x1: in std_logic;
			y: out std_logic);
end component;

component gateXOr2 is
	port(	x0: in std_logic;
			x1: in std_logic;
			y: out std_logic);
end component;

component flipFlop4 is
	port(	clk: in std_logic;
			nSet, nRst: std_logic;
			input1, input2, input3, input4: in std_logic;
			output1, output2, output3, output4: out std_logic);
end component;

component counter is 
	port(	clk: in std_logic;
			nRst: in std_logic;
			counterout: out std_logic_vector(3 downto 0));
end component;

component rom is
	port ( a :  	in std_logic_vector(3 downto 0);
			 output: out std_logic_vector(6 downto 0)
	);
end component;

component control_unit is 
	port(	clk: 		in std_logic;
			rst:   in std_logic;
			mem_out:	out  std_logic_vector(6 downto 0)
	);
end component;

component Mux4 is
	port ( a: 	in  std_logic;
			 b: 	in  std_logic;
			 c: 	in  std_logic;
			 d: 	in  std_logic;
			 s:	in  std_logic_vector(1 downto 0);
			 q: 	out std_logic);
end component;

component Mux2 is
	port ( a: 	in  std_logic;
			 b: 	in std_logic;
			 s:	in  std_logic;
			 q: 	out std_logic);
end component;

component flipFlopD is
	port(clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
end component;

begin
	CU: control_unit port map (s_clk, nRst, s_rom);
		
	and1: gateAnd2 port map (s_m,s_rom(6),s_axor1);
	and2: gateAnd2 port map (s_m,s_rom(5),s_axor2);
	and3: gateAnd2 port map (s_m,s_rom(4),s_axor3);
	and4: gateAnd2 port map (s_m,s_rom(3),s_axor4);
	
	xor1: gateXOr2 port map (s_axor1,s_bxor1,s_cxor1);
	xor2: gateXOr2 port map (s_axor2,s_bxor2,s_cxor2);
	xor3: gateXOr2 port map (s_axor3,s_bxor3,s_cxor3);
	xor4: gateXOr2 port map (s_axor4,s_bxor4,s_cxor4);

	ff1: flipFlop4 port map (s_clk,'1',nRst,s_cxor1,s_cxor2,s_cxor3,s_cxor4,s_bxor1,s_bxor2,s_bxor3,s_bxor4);
	
	mux_1: Mux4 port map (s_cxor1,s_cxor2,s_cxor3,s_cxor4,s_rom(1) & s_rom(0),s_bmux2);
	
	mux_2: Mux2 port map (s_m,s_bmux2,s_rom(2),s_x);
	
	ff2: flipFlopD port map (s_clk,s_x,'1',nRst,s_ffout);
	
	s_clk <= clk;
	s_m <= m;
	x <= s_ffout;
	controlbits <= s_rom(6) & s_rom(5) & s_rom(4) & s_rom(3) & s_rom(2) & s_rom(1) & s_rom(0);
	
end Structural;