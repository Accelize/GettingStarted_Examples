-- ============================================================================
-- Copyright (c) 2017-2019 by Xiphera Oy
-- All rights reserved
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

package online_test_package is

 
    constant min_entropy : real := 0.997;
    constant exponent : integer := 40; -- false positive error rate exponent
    -- 30 .. 50 in real life

	function count_limit(min_entropy : real; exponent: integer) return integer;

	constant window_size : integer := 1024; -- for adaptive proportion test
	constant cutoff : integer := 700; -- this needs to be defined based on 
	--constant cutoff : integer := 600;
	                                  -- acceptable false positive rate and
	                                  -- (estimated) min-entropy of the noise source
	                                  -- Note that the cutoff value is set to the highest
	                                  -- still allowed number of same bits as the
	                                  -- first bit value in the window


end online_test_package;

package body online_test_package is

	function count_limit(min_entropy : real; exponent: integer) return integer is
  	begin
    	return integer(1.0 + ceil(-log2(2.0**(-exponent)) / min_entropy));
    	-- This is the formula in NIST SP 800-90B in Chapter 4.4.1

	end function;

end online_test_package;
