library ieee;
use ieee.std_logic_1164.all;

ENTITY zeroAnove IS
	PORT(	ABCD:			IN 	std_logic_vector(3 downto 0);
			reset:		OUT	std_logic);
END zeroAnove;

ARCHITECTURE structural OF zeroAnove IS
	BEGIN
		PROCESS(ABCD) BEGIN
			IF (ABCD(0) = '1' AND ABCD(1) = '0' AND ABCD(2) = '1' AND ABCD(3) = '0') THEN
				reset <= '0';
			ELSE
				reset <= '1';
		END IF;
	END PROCESS;
END structural;