--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:58:49 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_muxb.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxb
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
 
ENTITY test_muxb IS
END test_muxb;
 
ARCHITECTURE behavior OF test_muxb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxb
    PORT(
         I0b : IN  std_logic_vector(31 downto 0);
         I1b : IN  std_logic_vector(31 downto 0);
         Sel_muxb : IN  std_logic;
         O_muxb : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0b : std_logic_vector(31 downto 0) := (others => '0');
   signal I1b : std_logic_vector(31 downto 0) := (others => '0');
   signal Sel_muxb : std_logic := '0';

 	--Outputs
   signal O_muxb : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxb PORT MAP (
          I0b => I0b,
          I1b => I1b,
          Sel_muxb => Sel_muxb,
          O_muxb => O_muxb
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
