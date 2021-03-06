--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:22:21 04/04/2016
-- Design Name:   
-- Module Name:   D:/processor/test_datapth_fin.vhd
-- Project Name:  processor
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
 
ENTITY test_datapth_fin IS
END test_datapth_fin;
 
ARCHITECTURE behavior OF test_datapth_fin IS 
 
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
         Sel_muxd_dp : IN  std_logic;
         actrlout_dp : OUT  std_logic_vector(5 downto 0);
         I_zcnv_dp : IN  std_logic_vector(3 downto 0);
         O_ctrl_dp : OUT  std_logic_vector(5 downto 0);
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
         regmemwb3_we_dp : IN  std_logic
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
   signal I_zcnv_dp : std_logic_vector(3 downto 0) := (others => '0');
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

 	--Outputs
   signal actrlout_dp : std_logic_vector(5 downto 0);
   signal O_ctrl_dp : std_logic_vector(5 downto 0);

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
          Sel_muxd_dp => Sel_muxd_dp,
          actrlout_dp => actrlout_dp,
          I_zcnv_dp => I_zcnv_dp,
          O_ctrl_dp => O_ctrl_dp,
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
          regmemwb3_we_dp => regmemwb3_we_dp
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
