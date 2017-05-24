library ieee;
use ieee.std_logic_1164.all;

ENTITY or_4 IS
	PORT(a,b,c,d: IN std_logic; output: OUT std_logic);
END or_4;

ARCHITECTURE data_flow OF or_4 IS
BEGIN
	output <= a OR b OR c OR d;
END data_flow;