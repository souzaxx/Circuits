library ieee;
use ieee.std_logic_1164.all;

ENTITY or_5 IS
	PORT(a,b,c,d,e: IN std_logic; output: OUT std_logic);
END or_5;

ARCHITECTURE data_flow OF or_5 IS
BEGIN
	output <= a OR b OR c OR d OR e;
END data_flow;