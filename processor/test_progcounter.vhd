--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:44:28 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_progcounter.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: progcounter
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
 
ENTITY test_progcounter IS
END test_progcounter;
 
ARCHITECTURE behavior OF test_progcounter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT progcounter
    PORT(
         pcld : IN  std_logic;
         pcinc : IN  std_logic;
         pcclr : IN  std_logic;
         pcin : IN  std_logic_vector(31 downto 0);
         pcout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pcld : std_logic := '0';
   signal pcinc : std_logic := '0';
   signal pcclr : std_logic := '0';
   signal pcin : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal pcout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: progcounter PORT MAP (
          pcld => pcld,
          pcinc => pcinc,
          pcclr => pcclr,
          pcin => pcin,
          pcout => pcout
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
