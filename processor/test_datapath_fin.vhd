--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:17:32 04/11/2016
-- Design Name:   
-- Module Name:   D:/Assignment3/test_datapath_fin.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: datapath_fin
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
 
ENTITY test_datapath_fin IS
END test_datapath_fin;
 
ARCHITECTURE behavior OF test_datapath_fin IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath_fin
    PORT(
         clock_dp : IN  std_logic;
         pcin_dp : IN  std_logic_vector(31 downto 0);
         RFwe_dp : IN  std_logic;
         RFr1e_dp : IN  std_logic;
         RFr2e_dp : IN  std_logic;
         Sel_muxa_dp : IN  std_logic;
         Sel_muxb_dp : IN  std_logic;
         Mre_dp : IN  std_logic;
         Mwe_dp : IN  std_logic;
         Sel_muxc_dp : IN  std_logic;
         flag_dp : OUT  std_logic_vector(1 downto 0);
         Sel_muxd_dp : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock_dp : std_logic := '0';
   signal pcin_dp : std_logic_vector(31 downto 0) := (others => '0');
   signal RFwe_dp : std_logic := '0';
   signal RFr1e_dp : std_logic := '0';
   signal RFr2e_dp : std_logic := '0';
   signal Sel_muxa_dp : std_logic := '0';
   signal Sel_muxb_dp : std_logic := '0';
   signal Mre_dp : std_logic := '0';
   signal Mwe_dp : std_logic := '0';
   signal Sel_muxc_dp : std_logic := '0';
   signal Sel_muxd_dp : std_logic := '0';

 	--Outputs
   signal flag_dp : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clock_dp_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath_fin PORT MAP (
          clock_dp => clock_dp,
          pcin_dp => pcin_dp,
          RFwe_dp => RFwe_dp,
          RFr1e_dp => RFr1e_dp,
          RFr2e_dp => RFr2e_dp,
          Sel_muxa_dp => Sel_muxa_dp,
          Sel_muxb_dp => Sel_muxb_dp,
          Mre_dp => Mre_dp,
          Mwe_dp => Mwe_dp,
          Sel_muxc_dp => Sel_muxc_dp,
          flag_dp => flag_dp,
          Sel_muxd_dp => Sel_muxd_dp
        );

   -- Clock process definitions
   clock_dp_process :process
   begin
		clock_dp <= '0';
		wait for clock_dp_period/2;
		clock_dp <= '1';
		wait for clock_dp_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_dp_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
