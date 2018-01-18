library IEEE;
use IEEE.Std_logic_1164.all;

entity fullAdder_TB is
end fullAdder_TB;

architecture BENCH of fullAdder_TB is	 

--stimulus signals - to connect testbench to UUT input ports
signal in1, in2, c_in : std_logic;

--observed signals - to connect testbench to UUT output ports
signal sum, c_out : std_logic;	   

begin
	
	process
	
	begin 
		-- test 000
		in1 <= '0'; in2 <= '0'; c_in <= '0';
		wait for 10ns;
		assert(sum = '0' and c_out = '0')
		Report "Test failed for input 0 0 0" severity error;
		-- test 001	
		in1 <= '0'; in2 <= '0'; c_in <= '1';
		wait for 10ns;
		assert(sum = '1' and c_out = '0')
		Report "Test failed for input 0 0 1" severity error;
		-- test 011
		in1 <= '0'; in2 <= '1'; c_in <= '1';
		wait for 10ns;
		assert(sum = '0' and c_out = '1')
		Report "Test failed for input 0 1 1" severity error;
		-- test 100
		in1 <= '1'; in2 <= '0'; c_in <= '0';
		wait for 10ns;
		assert(sum = '1' and c_out = '0')
		Report "Test failed for input 1 0 0" severity error;
		-- test 101
		in1 <= '1'; in2 <= '0'; c_in <= '1';
		wait for 10ns;
		assert(sum = '0' and c_out = '1')
		Report "Test failed for input 1 0 1" severity error;
		-- test 110
		in1 <= '1'; in2 <= '1'; c_in <= '0';
		wait for 10ns;
		assert(sum = '0' and c_out = '1')
		Report "Test failed for input 1 1 0" severity error;
		-- test 111
		in1 <= '1'; in2 <= '1'; c_in <= '1';
		wait for 10ns;
		assert(sum = '1' and c_out = '1')
		Report "Test failed for input 1 1 1" severity error;
		
wait;	--ensures testbench termiantes

end process;

-- unit under test port map
UUT: entity work.fullAdder(behavior)
	port map (
	in1 => in1,
	in2 => in2,
	c_in  => c_in,
	sum => sum,
	c_out => c_out
	);
	
end BENCH;	