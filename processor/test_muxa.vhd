--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:55:32 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_muxa.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxa
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
 
ENTITY test_muxa IS
END test_muxa;
 
ARCHITECTURE behavior OF test_muxa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxa
    PORT(
         I0a : IN  std_logic_vector(3 downto 0);
         I1a : IN  std_logic_vector(3 downto 0);
         Sel_muxa : IN  std_logic;
         O_muxa : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0a : std_logic_vector(3 downto 0) := (others => '0');
   signal I1a : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel_muxa : std_logic := '0';

 	--Outputs
   signal O_muxa : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxa PORT MAP (
          I0a => I0a,
          I1a => I1a,
          Sel_muxa => Sel_muxa,
          O_muxa => O_muxa
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
