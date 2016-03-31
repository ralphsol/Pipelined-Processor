--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:12:10 03/31/2016
-- Design Name:   
-- Module Name:   D:/processor/test_datamem.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: datamem
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
 
ENTITY test_datamem IS
END test_datamem;
 
ARCHITECTURE behavior OF test_datamem IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datamem
    PORT(
         clock_dm : IN  std_logic;
         rst_dm : IN  std_logic;
         Mre : IN  std_logic;
         Mwe : IN  std_logic;
         address : IN  std_logic_vector(3 downto 0);
         data_in : IN  std_logic_vector(3 downto 0);
         data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_dm : std_logic := '0';
   signal rst_dm : std_logic := '0';
   signal Mre : std_logic := '0';
   signal Mwe : std_logic := '0';
   signal address : std_logic_vector(3 downto 0) := (others => '0');
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_dm_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datamem PORT MAP (
          clock_dm => clock_dm,
          rst_dm => rst_dm,
          Mre => Mre,
          Mwe => Mwe,
          address => address,
          data_in => data_in,
          data_out => data_out
        );

   -- Clock process definitions
   clock_dm_process :process
   begin
		clock_dm <= '0';
		wait for clock_dm_period/2;
		clock_dm <= '1';
		wait for clock_dm_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_dm_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
