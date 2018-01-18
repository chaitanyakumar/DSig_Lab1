library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fullAdder is
	port( in1, in2, c_in: in std_logic;
	sum, c_out: out std_logic);
end entity fullAdder;

architecture behavior of fullAdder is 

--declare internal signals
signal S1, S2, S3 : std_logic;

begin	
	
-- specify value of each signal as a function of other signals

	S1 <= in1 xor in2;
	S2 <= in1 and in2;
	S3 <= c_in and S1;
	Sum <= S1 xor c_in;
	c_out <= S2 or S3;

end architecture behavior;

