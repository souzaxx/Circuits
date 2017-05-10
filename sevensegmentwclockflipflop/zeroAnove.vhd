library ieee;
use ieee.std_logic_1164.all;

ENTITY zeroAnove IS
	PORT(	ABCD:			IN 	std_logic_vector(3 downto 0);
			reset:		INOUT	std_logic);
END zeroAnove;

ARCHITECTURE structural OF zeroAnove IS
	BEGIN
		PROCESS(ABCD) BEGIN
			IF (ABCD(0) = '1' AND ABCD(3) = '1') THEN
				reset <= '1';
			ELSE
				reset <= '0';
		END IF;
	END PROCESS;
	
	--C1: reset <= reset_buf;
	
END structural;