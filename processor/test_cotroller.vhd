--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:38:59 04/18/2016
-- Design Name:   
-- Module Name:   D:/processor/test_cotroller.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controller
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
 
ENTITY test_cotroller IS
END test_cotroller;
 
ARCHITECTURE behavior OF test_cotroller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controller
    PORT(
         clock_dp : IN  std_logic;
         pcin_dp : IN  std_logic_vector(31 downto 0);
         regifid_we_dp : IN  std_logic;
         regidex1_we_dp : IN  std_logic;
         regidex2_we_dp : IN  std_logic;
         regidex3_we_dp : IN  std_logic;
         regidex4_we_dp : IN  std_logic;
         regidex5_we_dp : IN  std_logic;
         regexmem1_we_dp : IN  std_logic;
         regexmem2_we_dp : IN  std_logic;
         regexmem3_we_dp : IN  std_logic;
         regmemwb1_we_dp : IN  std_logic;
         regmemwb2_we_dp : IN  std_logic;
         regmemwb3_we_dp : IN  std_logic;
         regmemwb4_we_dp : IN  std_logic;
         Sel_muxn2_dp : IN  std_logic_vector(1 downto 0);
         Sel_muxn3_dp : IN  std_logic_vector(1 downto 0);
         Sel_muxn4_dp : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock_dp : std_logic := '0';
   signal pcin_dp : std_logic_vector(31 downto 0) := (others => '0');
   signal regifid_we_dp : std_logic := '0';
   signal regidex1_we_dp : std_logic := '0';
   signal regidex2_we_dp : std_logic := '0';
   signal regidex3_we_dp : std_logic := '0';
   signal regidex4_we_dp : std_logic := '0';
   signal regidex5_we_dp : std_logic := '0';
   signal regexmem1_we_dp : std_logic := '0';
   signal regexmem2_we_dp : std_logic := '0';
   signal regexmem3_we_dp : std_logic := '0';
   signal regmemwb1_we_dp : std_logic := '0';
   signal regmemwb2_we_dp : std_logic := '0';
   signal regmemwb3_we_dp : std_logic := '0';
   signal regmemwb4_we_dp : std_logic := '0';
   signal Sel_muxn2_dp : std_logic_vector(1 downto 0) := (others => '0');
   signal Sel_muxn3_dp : std_logic_vector(1 downto 0) := (others => '0');
   signal Sel_muxn4_dp : std_logic := '0';

   -- Clock period definitions
   constant clock_dp_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clock_dp => clock_dp,
          pcin_dp => pcin_dp,
          regifid_we_dp => regifid_we_dp,
          regidex1_we_dp => regidex1_we_dp,
          regidex2_we_dp => regidex2_we_dp,
          regidex3_we_dp => regidex3_we_dp,
          regidex4_we_dp => regidex4_we_dp,
          regidex5_we_dp => regidex5_we_dp,
          regexmem1_we_dp => regexmem1_we_dp,
          regexmem2_we_dp => regexmem2_we_dp,
          regexmem3_we_dp => regexmem3_we_dp,
          regmemwb1_we_dp => regmemwb1_we_dp,
          regmemwb2_we_dp => regmemwb2_we_dp,
          regmemwb3_we_dp => regmemwb3_we_dp,
          regmemwb4_we_dp => regmemwb4_we_dp,
          Sel_muxn2_dp => Sel_muxn2_dp,
          Sel_muxn3_dp => Sel_muxn3_dp,
          Sel_muxn4_dp => Sel_muxn4_dp
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
