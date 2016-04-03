--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:38:25 04/03/2016
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
         clock_pc : IN  std_logic;
         pcin : IN  std_logic_vector(31 downto 0);
         pcout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_pc : std_logic := '0';
   signal pcin : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal pcout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clock_pc_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: progcounter PORT MAP (
          clock_pc => clock_pc,
          pcin => pcin,
          pcout => pcout
        );

   -- Clock process definitions
   clock_pc_process :process
   begin
		clock_pc <= '0';
		wait for clock_pc_period/2;
		clock_pc <= '1';
		wait for clock_pc_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_pc_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
