--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:13 04/14/2016
-- Design Name:   
-- Module Name:   D:/processor/test_state_ctrl.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: state_ctrl
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
 
ENTITY test_state_ctrl IS
END test_state_ctrl;
 
ARCHITECTURE behavior OF test_state_ctrl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_ctrl
    PORT(
         curr_state : IN  std_logic_vector(3 downto 0);
         I_ir : IN  std_logic_vector(2 downto 0);
         next_state : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal curr_state : std_logic_vector(3 downto 0) := (others => '0');
   signal I_ir : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal next_state : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: state_ctrl PORT MAP (
          curr_state => curr_state,
          I_ir => I_ir,
          next_state => next_state
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
