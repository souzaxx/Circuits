library ieee;
use ieee.std_logic_1164.all;

ENTITY or_3 IS
	PORT(a,b,c: IN std_logic; output: OUT std_logic);
END or_3;

ARCHITECTURE data_flow OF or_3 IS
BEGIN
	output <= a OR b OR c;
END data_flow;