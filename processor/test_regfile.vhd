--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:27:40 03/28/2016
-- Design Name:   
-- Module Name:   D:/processor/test_regfile.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regfile
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
 
ENTITY test_regfile IS
END test_regfile;
 
ARCHITECTURE behavior OF test_regfile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regfile
    PORT(
         clock_rf : IN  std_logic;
         rst_rf : IN  std_logic;
         RFwe : IN  std_logic;
         RFr1e : IN  std_logic;
         RFr2e : IN  std_logic;
         RFwa : IN  std_logic_vector(3 downto 0);
         RFr1a : IN  std_logic_vector(3 downto 0);
         RFr2a : IN  std_logic_vector(3 downto 0);
         RFw : IN  std_logic_vector(31 downto 0);
         RFr1 : OUT  std_logic_vector(31 downto 0);
         RFr2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_rf : std_logic := '0';
   signal rst_rf : std_logic := '0';
   signal RFwe : std_logic := '0';
   signal RFr1e : std_logic := '0';
   signal RFr2e : std_logic := '0';
   signal RFwa : std_logic_vector(3 downto 0) := (others => '0');
   signal RFr1a : std_logic_vector(3 downto 0) := (others => '0');
   signal RFr2a : std_logic_vector(3 downto 0) := (others => '0');
   signal RFw : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal RFr1 : std_logic_vector(31 downto 0);
   signal RFr2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clock_rf_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regfile PORT MAP (
          clock_rf => clock_rf,
          rst_rf => rst_rf,
          RFwe => RFwe,
          RFr1e => RFr1e,
          RFr2e => RFr2e,
          RFwa => RFwa,
          RFr1a => RFr1a,
          RFr2a => RFr2a,
          RFw => RFw,
          RFr1 => RFr1,
          RFr2 => RFr2
        );

   -- Clock process definitions
   clock_rf_process :process
   begin
		clock_rf <= '0';
		wait for clock_rf_period/2;
		clock_rf <= '1';
		wait for clock_rf_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_rf_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
