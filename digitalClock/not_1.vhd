library ieee;
use ieee.std_logic_1164.all;

ENTITY not_1 IS
	PORT(a: IN std_logic; output: OUT std_logic);
END not_1;

ARCHITECTURE data_flow OF not_1 IS
BEGIN
	output <= NOT(a);
END data_flow;