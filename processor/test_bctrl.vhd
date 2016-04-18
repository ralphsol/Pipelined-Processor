--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:32:45 04/03/2016
-- Design Name:   
-- Module Name:   D:/processor/test_bctrl.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bctrl
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
 
ENTITY test_bctrl IS
END test_bctrl;
 
ARCHITECTURE behavior OF test_bctrl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bctrl
    PORT(
         I_bctrl : IN  std_logic_vector(3 downto 0);
         I_zcnv : IN  std_logic_vector(3 downto 0);
         O_bctrl : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_bctrl : std_logic_vector(3 downto 0) := (others => '0');
   signal I_zcnv : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O_bctrl : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bctrl PORT MAP (
          I_bctrl => I_bctrl,
          I_zcnv => I_zcnv,
          O_bctrl => O_bctrl
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
