--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:53 04/11/2016
-- Design Name:   
-- Module Name:   D:/Assignment3/test_controller.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controller
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_controller IS
END test_controller;
 
ARCHITECTURE behavior OF test_controller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controller
    PORT(
         clock_dp : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock_dp : std_logic := '0';

   -- Clock period definitions
   constant clock_dp_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clock_dp => clock_dp
        );

   -- Clock process definitions
   clock_dp_process :process
   begin
		clock_dp <= '0';
		wait for clock_dp_period/2;
		clock_dp <= '1';
		wait for clock_dp_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_dp_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
