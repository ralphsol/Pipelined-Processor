--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:29:33 04/04/2016
-- Design Name:   
-- Module Name:   D:/processor/test_regifid.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regifid
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
 
ENTITY test_regifid IS
END test_regifid;
 
ARCHITECTURE behavior OF test_regifid IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regifid
    PORT(
         clock_regifid : IN  std_logic;
         regifid_we : IN  std_logic;
         regifid_data_in : IN  std_logic_vector(31 downto 0);
         regifid_data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_regifid : std_logic := '0';
   signal regifid_we : std_logic := '0';
   signal regifid_data_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal regifid_data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clock_regifid_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regifid PORT MAP (
          clock_regifid => clock_regifid,
          regifid_we => regifid_we,
          regifid_data_in => regifid_data_in,
          regifid_data_out => regifid_data_out
        );

   -- Clock process definitions
   clock_regifid_process :process
   begin
		clock_regifid <= '0';
		wait for clock_regifid_period/2;
		clock_regifid <= '1';
		wait for clock_regifid_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_regifid_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
