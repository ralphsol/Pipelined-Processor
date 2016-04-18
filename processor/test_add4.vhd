--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:46:03 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_add4.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add4
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
 
ENTITY test_add4 IS
END test_add4;
 
ARCHITECTURE behavior OF test_add4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add4
    PORT(
         I_add4 : IN  std_logic_vector(31 downto 0);
         O_add4 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_add4 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_add4 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add4 PORT MAP (
          I_add4 => I_add4,
          O_add4 => O_add4
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
