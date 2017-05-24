library ieee;
use ieee.std_logic_1164.all;

ENTITY and_3 IS
	PORT (a,b,c: IN std_logic; output: OUT std_logic);	
END and_3;

ARCHITECTURE data_flow OF and_3 IS
BEGIN
	output <= a and b AND c;
END data_flow;
		