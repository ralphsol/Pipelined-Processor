--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:59:04 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_muxc.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxc
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
 
ENTITY test_muxc IS
END test_muxc;
 
ARCHITECTURE behavior OF test_muxc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxc
    PORT(
         I0c : IN  std_logic_vector(31 downto 0);
         I1c : IN  std_logic_vector(31 downto 0);
         Sel_muxc : IN  std_logic;
         O_muxc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0c : std_logic_vector(31 downto 0) := (others => '0');
   signal I1c : std_logic_vector(31 downto 0) := (others => '0');
   signal Sel_muxc : std_logic := '0';

 	--Outputs
   signal O_muxc : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxc PORT MAP (
          I0c => I0c,
          I1c => I1c,
          Sel_muxc => Sel_muxc,
          O_muxc => O_muxc
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
