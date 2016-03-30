--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:02:41 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_extend.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: extend
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
 
ENTITY test_extend IS
END test_extend;
 
ARCHITECTURE behavior OF test_extend IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT extend
    PORT(
         I_extend : IN  std_logic_vector(11 downto 0);
         O_extend : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_extend : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal O_extend : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: extend PORT MAP (
          I_extend => I_extend,
          O_extend => O_extend
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
