library ieee;
use ieee.std_logic_1164.all;

ENTITY or_2 IS
	PORT(a,b: IN std_logic; output: OUT std_logic);
END or_2;

ARCHITECTURE data_flow OF or_2 IS
BEGIN
	output <= a OR b;
END data_flow;