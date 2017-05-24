library ieee;
use ieee.std_logic_1164.all;

ENTITY resetador IS
	PORT(	ABCD, Value_set:	IN 	std_logic_vector(3 downto 0);
			reset,Cout:			INOUT	std_logic);
END resetador;

ARCHITECTURE structural OF resetador IS
	BEGIN
		PROCESS(ABCD) BEGIN
			IF (ABCD = Value_set) THEN
				reset <= '0';
			ELSE
				reset <= '1';
		END IF;
	END PROCESS;
END structural;