--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:15:53 04/04/2016
-- Design Name:   
-- Module Name:   D:/processor/test_rega.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rega
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
 
ENTITY test_rega IS
END test_rega;
 
ARCHITECTURE behavior OF test_rega IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rega
    PORT(
         clock_rega : IN  std_logic;
         rega_we : IN  std_logic;
         rega_data_in : IN  std_logic_vector(31 downto 0);
         rega_data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_rega : std_logic := '0';
   signal rega_we : std_logic := '0';
   signal rega_data_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal rega_data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clock_rega_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rega PORT MAP (
          clock_rega => clock_rega,
          rega_we => rega_we,
          rega_data_in => rega_data_in,
          rega_data_out => rega_data_out
        );

   -- Clock process definitions
   clock_rega_process :process
   begin
		clock_rega <= '0';
		wait for clock_rega_period/2;
		clock_rega <= '1';
		wait for clock_rega_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_rega_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
