--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:20:55 04/14/2016
-- Design Name:   
-- Module Name:   D:/processor/test_reg_curr_state.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_curr_state
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
 
ENTITY test_reg_curr_state IS
END test_reg_curr_state;
 
ARCHITECTURE behavior OF test_reg_curr_state IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_curr_state
    PORT(
         clock_reg_curr_state : IN  std_logic;
         reg_curr_state_we : IN  std_logic;
         reg_curr_state_data_in : IN  std_logic_vector(23 downto 0);
         reg_curr_state_data_out : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_reg_curr_state : std_logic := '0';
   signal reg_curr_state_we : std_logic := '0';
   signal reg_curr_state_data_in : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal reg_curr_state_data_out : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant clock_reg_curr_state_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_curr_state PORT MAP (
          clock_reg_curr_state => clock_reg_curr_state,
          reg_curr_state_we => reg_curr_state_we,
          reg_curr_state_data_in => reg_curr_state_data_in,
          reg_curr_state_data_out => reg_curr_state_data_out
        );

   -- Clock process definitions
   clock_reg_curr_state_process :process
   begin
		clock_reg_curr_state <= '0';
		wait for clock_reg_curr_state_period/2;
		clock_reg_curr_state <= '1';
		wait for clock_reg_curr_state_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_reg_curr_state_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
