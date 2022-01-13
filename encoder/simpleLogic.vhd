LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN
  y <= x0 AND x1;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOr2;

ARCHITECTURE logicFunction OF gateOr2 IS
BEGIN
  y <= x0 OR x1;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNot IS
  PORT (x0: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateNot;

ARCHITECTURE logicFunction OF gateNot IS
BEGIN
  y <= not x0;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOr2;

ARCHITECTURE logicFunction OF gateXOr2 IS
BEGIN
  y <= x0 XOR x1;
END logicFunction;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXnor IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXnor;

ARCHITECTURE logicFunction OF gateXnor IS
BEGIN
  y <= not(x0 XOR x1);
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity gateAnd4 is
	port(	x1: in std_logic;
			x2: in std_logic;
			x3: in std_logic;
			x4: in std_logic;
			y: out std_logic);
end gateAnd4;

architecture logicFunction of gateAnd4 is

component gateAnd2 is
	port(	x0: in 	std_logic;
			x1: in 	std_logic;
			y:	out	std_logic);
end component;

signal s_and1, s_and2: std_logic;

begin

and1: gateAnd2 port map (x1, x2, s_and1); 
and2: gateAnd2 port map (x3, x4, s_and2); 
and3: gateAnd2 port map (s_and1, s_and2, y);
	
end logicFunction;