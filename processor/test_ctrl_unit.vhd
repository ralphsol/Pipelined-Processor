--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:58:31 04/14/2016
-- Design Name:   
-- Module Name:   D:/processor/test_ctrl_unit.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ctrl_unit
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
 
ENTITY test_ctrl_unit IS
END test_ctrl_unit;
 
ARCHITECTURE behavior OF test_ctrl_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ctrl_unit
    PORT(
         I_ctrl : IN  std_logic_vector(4 downto 0);
         I_p : IN  std_logic;
         cu_curr : IN  std_logic_vector(3 downto 0);
         O_ctrl : OUT  std_logic_vector(13 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ctrl : std_logic_vector(4 downto 0) := (others => '0');
   signal I_p : std_logic := '0';
   signal cu_curr : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O_ctrl : std_logic_vector(13 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ctrl_unit PORT MAP (
          I_ctrl => I_ctrl,
          I_p => I_p,
          cu_curr => cu_curr,
          O_ctrl => O_ctrl
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
