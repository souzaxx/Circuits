library ieee;
use ieee.std_logic_1164.all;

ENTITY and_2 IS
	PORT (a,b: IN std_logic; output: OUT std_logic);	
END and_2;

ARCHITECTURE data_flow OF and_2 IS
BEGIN
	output <= a and b;
END data_flow;
		