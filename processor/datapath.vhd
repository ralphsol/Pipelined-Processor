----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:40 03/11/2016 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is				
port(	
	clock_dp							:	in 	std_logic;
	I0a_dp							: 	in std_logic_vector(3 downto 0);
	I1a_dp							: 	in std_logic_vector(3 downto 0);
	Sel_muxa_dp						:	in std_logic;
	O_muxa_dp						: 	out std_logic_vector(3 downto 0);
	I0b_dp							: 	in std_logic_vector(31 downto 0);
	I1b_dp							: 	in std_logic_vector(31 downto 0);
	Sel_muxb_dp						:	in std_logic;
	O_muxb_dp						: 		out std_logic_vector(31 downto 0);
	I0c_dp							: 	in std_logic_vector(31 downto 0);
	I1c_dp							: 	in std_logic_vector(31 downto 0);
	Sel_muxc_dp						:	in std_logic;
	O_muxc_dp						: 		out std_logic_vector(31 downto 0);
	I0d_dp							: 	in std_logic_vector(31 downto 0);
	I1d_dp							: 	in std_logic_vector(31 downto 0);
	Sel_muxd_dp						:	in std_logic;
	O_muxd_dp						: 		out std_logic_vector(31 downto 0);
	rst_rf_dp						: 	in std_logic;
	RFwe_dp							: 	in std_logic;								-- signal when write occurs
	RFr1e_dp							: 	in std_logic;								-- signal when read1 occurs
	RFr2e_dp							: 	in std_logic;								-- signal when read2 occurs
	RFwa_dp							: 	in std_logic_vector(3 downto 0);			-- wad  
	RFr1a_dp							: 	in std_logic_vector(3 downto 0);			-- rad1
	RFr2a_dp							: 	in std_logic_vector(3 downto 0);			-- rad2
	RFw_dp							: 	in std_logic_vector(31 downto 0);			-- wd
	RFr1_dp							: 	out std_logic_vector(31 downto 0);			-- rd1
	RFr2_dp							:	out std_logic_vector(31 downto 0);			-- rd2
	I_shift_dp						: 	in std_logic_vector(23 downto 0);
	O_shift_dp						: 	out std_logic_vector(31 downto 0);
	I_extend_dp						: 	in std_logic_vector(11 downto 0);
	O_extend_dp						: 	out std_logic_vector(31 downto 0);
	S_alu_dp							: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
	A_alu_dp, B_alu_dp			: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
	F_alu_dp							: OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
	IMin_dp							:	  in std_logic_vector(31 downto 0);
	IMld_dp							:	  in std_logic;
	dir_addr_dp						: out std_logic_vector(31 downto 0);
	IMout_dp							: 	  out std_logic_vector(31 downto 0);
	clock_dm_dp						: 	in std_logic;
	rst_dm_dp						: 	in std_logic;
	Mre_dp							:	in std_logic;
	Mwe_dp							:	in std_logic;
	address_dp						:	in std_logic_vector(3 downto 0);			-- address
	data_in_dp						:	in std_logic_vector(31 downto 0);			-- write data 
	data_out_dp						:	out std_logic_vector(31 downto 0);			-- read data
	clock_pc_dp						:	in std_logic;
	pcld_dp							:	in std_logic;
	pcinc_dp							:	in std_logic;
	pcclr_dp							:	in std_logic;
	pcin_dp							:	in std_logic_vector(31 downto 0);
	pcout_dp							:	out std_logic_vector(31 downto 0);
	I_add4_dp						: 	in std_logic_vector(31 downto 0);
	O_add4_dp						: 	out std_logic_vector(31 downto 0);
	I1_addb_dp						: 	in std_logic_vector(31 downto 0);
	I2_addb_dp						: 	in std_logic_vector(31 downto 0);
	O_addb_dp						: 	out std_logic_vector(31 downto 0)
);
end datapath;

architecture Behavioral of datapath is

component muxa is
port( 	I0a: 	in std_logic_vector(3 downto 0);
		I1a: 	in std_logic_vector(3 downto 0);
		Sel_muxa:	in std_logic;
		O_muxa: 		out std_logic_vector(3 downto 0)
);
end component;
component muxb is
port( 	I0b: 	in std_logic_vector(31 downto 0);
		I1b: 	in std_logic_vector(31 downto 0);
		Sel_muxb:	in std_logic;
		O_muxb: 		out std_logic_vector(31 downto 0)
);
end component;
component muxc is
port( 	I0c: 	in std_logic_vector(31 downto 0);
		I1c: 	in std_logic_vector(31 downto 0);
		Sel_muxc:	in std_logic;
		O_muxc: 		out std_logic_vector(31 downto 0)
);
end component;
component muxd is
port( 	I0d: 	in std_logic_vector(31 downto 0);
		I1d: 	in std_logic_vector(31 downto 0);
		Sel_muxd:	in std_logic;
		O_muxd: 		out std_logic_vector(31 downto 0)
);
end component;

component regfile is
port ( 	clock_rf	: 	in std_logic; 	
	rst_rf	: 	in std_logic;
	RFwe	: 	in std_logic;								-- signal when write occurs
	RFr1e	: 	in std_logic;								-- signal when read1 occurs
	RFr2e	: 	in std_logic;								-- signal when read2 occurs
	RFwa	: 	in std_logic_vector(3 downto 0);			-- wad  
	RFr1a	: 	in std_logic_vector(3 downto 0);			-- rad1
	RFr2a	: 	in std_logic_vector(3 downto 0);			-- rad2
	RFw		: 	in std_logic_vector(31 downto 0);			-- wd
	RFr1	: 	out std_logic_vector(31 downto 0);			-- rd1
	RFr2	:	out std_logic_vector(31 downto 0)			-- rd2
);
end component;

component shift is
port( 	I_shift: 	in std_logic_vector(23 downto 0);
		O_shift: 	out std_logic_vector(31 downto 0)
	);
end component;

component extend is
port( 	I_extend: 	in std_logic_vector(11 downto 0);
		O_extend: 	out std_logic_vector(31 downto 0)
	);
end component;

component alu is
	PORT (	S_alu 		: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			A_alu, B_alu: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			F_alu 		: OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0) ) ;
end component ;

component IM is
port(	IMin:	  in std_logic_vector(31 downto 0);
		IMld:	  in std_logic;
		dir_addr: out std_logic_vector(31 downto 0);
		IMout: 	  out std_logic_vector(31 downto 0)
);
end component;

component datamem is
port ( 	clock_dm	: 	in std_logic;
		rst_dm		: 	in std_logic;
		Mre		:	in std_logic;
		Mwe		:	in std_logic;
		address	:	in std_logic_vector(3 downto 0);			-- address
		data_in	:	in std_logic_vector(31 downto 0);			-- write data 
		data_out:	out std_logic_vector(31 downto 0)			-- read data
);
end component;

component progcounter is
port(	clock_pc:	in std_logic;
		pcld:	in std_logic;
		pcinc:	in std_logic;
		pcclr:	in std_logic;
		pcin:	in std_logic_vector(31 downto 0);
		pcout:	out std_logic_vector(31 downto 0)
);
end component;

component add4 is
port( 	I_add4: 	in std_logic_vector(31 downto 0);
		O_add4: 	out std_logic_vector(31 downto 0)
	);
end component;

component addb is
port( 	I1_addb: 	in std_logic_vector(31 downto 0);
		I2_addb: 	in std_logic_vector(31 downto 0);
		O_addb: 	out std_logic_vector(31 downto 0)
	);
end component;

signal pc2im, im2rf, extend2muxb, shift2addb2 : std_logic_vector(31 downto 0);
signal muxa2rf, muxb2alu2, muxc2rf, muxd2pc : std_logic_vector(31 downto 0);
signal rf2alu1, rf2dm2, alu2dm1, dm2muxc1 : std_logic_vector(31 downto 0);
signal add42muxd0, addb2muxd1, add2pc : std_logic_vector(31 downto 0);

begin

	U1: muxa port map(im2rf(3 downto 0), im2rf(15 downto 12), Sel_muxa_dp, muxa2rf);
	U2: muxb port map(rf2dm2, extend2muxb, Sel_muxb_dp, muxb2alu2);
	U3: muxc port map(alu2dm1, dm2muxc1, Sel_muxc_dp, muxc2rf);
	U4: muxd port map(add42muxd0, addb2muxd1, Sel_muxd_dp, muxd2pc);
	U5: regfile port map(clock_dp, rst_rf_dp, RFwe_dp, RFr1e_dp, RFr2e_dp, im2rf(15 downto 12), im2rf(19 downto 16), muxa2rf, muxc2rf, rf2alu1, rf2dm2);
	U6: shift port map(im2rf(23 downto 0), shift2addb2);
	U7: extend port map(im2rf(11 downto 0), extend2muxb);
	U8: alu port map(S_alu_dp, rf2alu1, muxb2alu2, alu2dm1);
	U9: IM port map(pc2im, IMld_dp, dir_addr_dp, im2rf);
	U10: datamem port map(clock_dp, rst_dm_dp, Mre_dp, Mwe_dp, alu2dm1, rf2dm2, dm2muxc1);
	U11: progcounter port map(clock_dp, pcld_dp, pcinc_dp, pcclr_dp, add42pc, pc2im);
	U12: add4 port map(pc2im, add42pc);
	U13: addb port map(add42pc, shift2addb2, addb2muxd1);

end Behavioral;

