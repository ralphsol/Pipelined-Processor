--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:10:05 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_shift.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift
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
 
ENTITY test_shift IS
END test_shift;
 
ARCHITECTURE behavior OF test_shift IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift
    PORT(
         I_Shift : IN  std_logic_vector(23 downto 0);
         O_Shift : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_Shift : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal O_Shift : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift PORT MAP (
          I_Shift => I_Shift,
          O_Shift => O_Shift
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
