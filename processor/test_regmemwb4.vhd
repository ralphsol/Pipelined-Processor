--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:37:28 04/18/2016
-- Design Name:   
-- Module Name:   D:/processor/test_regmemwb4.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regmemwb3
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
 
ENTITY test_regmemwb4 IS
END test_regmemwb4;
 
ARCHITECTURE behavior OF test_regmemwb4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regmemwb3
    PORT(
         clock_regmemwb3 : IN  std_logic;
         regmemwb3_we : IN  std_logic;
         regmemwb3_data_in : IN  std_logic_vector(3 downto 0);
         regmemwb3_data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_regmemwb3 : std_logic := '0';
   signal regmemwb3_we : std_logic := '0';
   signal regmemwb3_data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal regmemwb3_data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_regmemwb3_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regmemwb3 PORT MAP (
          clock_regmemwb3 => clock_regmemwb3,
          regmemwb3_we => regmemwb3_we,
          regmemwb3_data_in => regmemwb3_data_in,
          regmemwb3_data_out => regmemwb3_data_out
        );

   -- Clock process definitions
   clock_regmemwb3_process :process
   begin
		clock_regmemwb3 <= '0';
		wait for clock_regmemwb3_period/2;
		clock_regmemwb3 <= '1';
		wait for clock_regmemwb3_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_regmemwb3_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
