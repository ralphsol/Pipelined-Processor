--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:59:18 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_muxd.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxd
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
 
ENTITY test_muxd IS
END test_muxd;
 
ARCHITECTURE behavior OF test_muxd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxd
    PORT(
         I0d : IN  std_logic_vector(31 downto 0);
         I1d : IN  std_logic_vector(31 downto 0);
         Sel_muxd : IN  std_logic;
         O_muxd : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0d : std_logic_vector(31 downto 0) := (others => '0');
   signal I1d : std_logic_vector(31 downto 0) := (others => '0');
   signal Sel_muxd : std_logic := '0';

 	--Outputs
   signal O_muxd : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxd PORT MAP (
          I0d => I0d,
          I1d => I1d,
          Sel_muxd => Sel_muxd,
          O_muxd => O_muxd
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
