library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath_fin is
port(	clock_dp	:	in std_logic;
		pcin_dp	:	in std_logic_vector(31 downto 0);
		RFwe_dp	: 	in std_logic;										-- signal when write occurs << control
		RFr1e_dp	: 	in std_logic;										-- signal when read1 occurs << control
		RFr2e_dp	: 	in std_logic;										-- signal when read2 occurs << control
		Sel_muxa_dp:	in std_logic;
		Sel_muxb_dp:	in std_logic;
		Mre_dp	:	in std_logic;
		Mwe_dp	:	in std_logic;
		Sel_muxc_dp:	in std_logic;
		Sel_muxd_dp:	in std_logic;
		actrlout_dp:	out std_logic_vector(5 downto 0);
		I_zcnv_dp:	 	in std_logic_vector(3 downto 0);			-- ZCNV
		O_ctrl_dp: 	out std_logic_vector(5 downto 0);				-- Rsrc  RW  MW  MR  Psrc Fset
		regifid_we_dp	:	in std_logic;
		regidex1_we_dp	:	in std_logic;
		regidex2_we_dp	:	in std_logic;
		regidex3_we_dp	:	in std_logic;
		regidex4_we_dp	:	in std_logic;
		regidex5_we_dp	:	in std_logic;
		regexmem1_we_dp	:	in std_logic;
		regexmem2_we_dp	:	in std_logic;
		regexmem3_we_dp	:	in std_logic;
		regmemwb1_we_dp	:	in std_logic;
		regmemwb2_we_dp	:	in std_logic;
		regmemwb3_we_dp	:	in std_logic;
		regmemwb4_we_dp	:	in std_logic;
		Sel_muxn2_dp:	in std_logic_vector(1 downto 0);
		Sel_muxn3_dp:	in std_logic_vector(1 downto 0);
		Sel_muxn4_dp:	in std_logic
);
end datapath_fin;

architecture Behavioral of datapath_fin is

component progcounter is
port(	clock_pc:	in std_logic;
		pcin:		in std_logic_vector(31 downto 0);
		pcout:	out std_logic_vector(31 downto 0)
);
end component;

component IM is
port(	IMin:	  in std_logic_vector(31 downto 0);
		IMout: 	  out std_logic_vector(31 downto 0)
);
end component;

component regfile is
port ( 	
	clock_rf	: 	in std_logic; 	
	RFwe	: 	in std_logic;										-- signal when write occurs << control
	RFr1e	: 	in std_logic;										-- signal when read1 occurs << control
	RFr2e	: 	in std_logic;										-- signal when read2 occurs << control
	RFwa	: 	in std_logic_vector(3 downto 0);				-- wad  
	RFr1a	: 	in std_logic_vector(3 downto 0);				-- rad1
	RFr2a	: 	in std_logic_vector(3 downto 0);				-- rad2
	RFw	: 	in std_logic_vector(31 downto 0);			-- wd
	RFr1	: 	out std_logic_vector(31 downto 0);			-- rd1
	RFr2	:	out std_logic_vector(31 downto 0)			-- rd2
);
end component;

component alu is
	PORT (S_alu : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			A, B	: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			F 		: OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0) 
);
end component;

component add4 is
port( I_add4: 	in std_logic_vector(31 downto 0);
		O_add4: 	out std_logic_vector(31 downto 0)
	);
end component;

component muxa is
port( I0a: 	in std_logic_vector(3 downto 0);
		I1a: 	in std_logic_vector(3 downto 0);
		Sel_muxa:	in std_logic;
		O_muxa: 		out std_logic_vector(3 downto 0)
	);
end component;

component muxb is
port( I0b: 	in std_logic_vector(31 downto 0);
		I1b: 	in std_logic_vector(31 downto 0);
		Sel_muxb:	in std_logic;
		O_muxb: 		out std_logic_vector(31 downto 0)
	);
end component;

component extend is
port( I_extend: 	in std_logic_vector(11 downto 0);
		O_extend: 	out std_logic_vector(31 downto 0)
	);
end component;

component datamem is
port (clock_dm	: 	in std_logic;
		Mre		:	in std_logic;
		Mwe		:	in std_logic;
		address	:	in std_logic_vector(31 downto 0);			-- address
		data_in	:	in std_logic_vector(31 downto 0);			-- write data 
		data_out:	out std_logic_vector(31 downto 0)			-- read data
);
end component;

component muxc is
port( I0c: 	in std_logic_vector(31 downto 0);
		I1c: 	in std_logic_vector(31 downto 0);
		Sel_muxc:	in std_logic;
		O_muxc: 		out std_logic_vector(31 downto 0)
	);
end component;

component shift is
port( I_Shift: 	in std_logic_vector(23 downto 0);
		O_Shift: 	out std_logic_vector(31 downto 0)
	);
end component;

component addb is
port( I1_addb: 	in std_logic_vector(31 downto 0);
		I2_addb: 	in std_logic_vector(31 downto 0);
		O_addb: 	out std_logic_vector(31 downto 0)
	);
end component;

component muxd is
port( I0d: 	in std_logic_vector(31 downto 0);
		I1d: 	in std_logic_vector(31 downto 0);
		Sel_muxd:	in std_logic;
		O_muxd: 		out std_logic_vector(31 downto 0)
	);
end component;

component actrl is
port(	actrlin:	in std_logic_vector(5 downto 0);
		actrlout:	out std_logic_vector(5 downto 0)
);
end component;

component bctrl is
port( I_bctrl: 	in std_logic_vector(3 downto 0);	-- ins[31:28]
		I_zcnv:	 	in std_logic_vector(3 downto 0);	-- ZCNV
		O_bctrl: 	out std_logic							-- p
	);
end component;

component ctrl_unit is
port( I_ctrl: 	in std_logic_vector(4 downto 0);	-- ins[31:28]
		I_p:	 	in std_logic;							-- p
		O_ctrl: 	out std_logic_vector(5 downto 0)	-- Rsrc  RW  MW  MR  Psrc Fset
	);
end component;

component regifid is
port (clock_regifid	: 	in std_logic;
		regifid_we	:	in std_logic;
		regifid_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regifid_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regidex1 is
port (clock_regidex1	: 	in std_logic;
		regidex1_we	:	in std_logic;
		regidex1_data_in:	in std_logic_vector(23 downto 0);				-- write data 
		regidex1_data_out:	out std_logic_vector(23 downto 0)				-- read data
);
end component;

component regidex2 is
port (clock_regidex2	: 	in std_logic;
		regidex2_we	:	in std_logic;
		regidex2_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regidex2_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regidex3 is
port (clock_regidex3	: 	in std_logic;
		regidex3_we	:	in std_logic;
		regidex3_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regidex3_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regidex4 is
port (clock_regidex4	: 	in std_logic;
		regidex4_we	:	in std_logic;
		regidex4_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regidex4_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regidex5 is
port (clock_regidex5	: 	in std_logic;
		regidex5_we	:	in std_logic;
		regidex5_data_in:	in std_logic_vector(3 downto 0);				-- write data 
		regidex5_data_out:	out std_logic_vector(3 downto 0)				-- read data
);
end component;

component regexmem1 is
port (clock_regexmem1	: 	in std_logic;
		regexmem1_we	:	in std_logic;
		regexmem1_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regexmem1_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regexmem2 is
port (clock_regexmem2	: 	in std_logic;
		regexmem2_we	:	in std_logic;
		regexmem2_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regexmem2_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regexmem3 is
port (clock_regexmem3	: 	in std_logic;
		regexmem3_we	:	in std_logic;
		regexmem3_data_in:	in std_logic_vector(3 downto 0);				-- write data 
		regexmem3_data_out:	out std_logic_vector(3 downto 0)				-- read data
);
end component;

component regmemwb1 is
port (clock_regmemwb1	: 	in std_logic;
		regmemwb1_we	:	in std_logic;
		regmemwb1_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regmemwb1_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regmemwb2 is
port (clock_regmemwb2	: 	in std_logic;
		regmemwb2_we	:	in std_logic;
		regmemwb2_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regmemwb2_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end component;

component regmemwb3 is
port (clock_regmemwb3	: 	in std_logic;
		regmemwb3_we	:	in std_logic;
		regmemwb3_data_in:	in std_logic_vector(3 downto 0);				-- write data 
		regmemwb3_data_out:	out std_logic_vector(3 downto 0)				-- read data
);
end component;

component regmemwb4 is
port (clock_regmemwb4	: 	in std_logic;
		regmemwb4_we	:	in std_logic;
		regmemwb4_data_in:	in std_logic_vector(3 downto 0);				-- write data 
		regmemwb4_data_out:	out std_logic_vector(3 downto 0)				-- read data
);
end component;

component muxn2 is
port( I0n2: 	in std_logic_vector(31 downto 0);
		I1n2: 	in std_logic_vector(31 downto 0);
		I2n2: 	in std_logic_vector(31 downto 0);
		Sel_muxn2:	in std_logic_vector(1 downto 0);
		O_muxn2: 	out std_logic_vector(31 downto 0)
	);
end component;

component muxn3 is
port( I0n3: 	in std_logic_vector(31 downto 0);
		I1n3: 	in std_logic_vector(31 downto 0);
		I2n3: 	in std_logic_vector(31 downto 0);
		Sel_muxn3:	in std_logic_vector(1 downto 0);
		O_muxn3: 	out std_logic_vector(31 downto 0)
	);
end component;

component muxn4 is
port( I0n4: 	in std_logic_vector(31 downto 0);
		I1n4: 	in std_logic_vector(31 downto 0);
		Sel_muxn4:	in std_logic;
		O_muxn4: 		out std_logic_vector(31 downto 0)
	);
end component;

signal pc2im, im2rf : std_logic_vector(31 downto 0);
signal rd1_alu, rd2_alu, alu_rf : std_logic_vector(31 downto 0);
signal add4_pc : std_logic_vector(31 downto 0);
signal muxa_rf : std_logic_vector(3 downto 0);
signal ex_muxb, muxb_alu : std_logic_vector(31 downto 0);
signal dm_muxc, muxc_rf : std_logic_vector(31 downto 0);
signal shift_addb, addb_muxd, muxd_pc : std_logic_vector(31 downto 0);
signal p_value : std_logic;

signal regifid_rf : std_logic_vector(31 downto 0);
signal regidex1_shift : std_logic_vector(23 downto 0);
signal regidex2_alu, regidex3_muxb, regidex4_muxb : std_logic_vector(31 downto 0);
signal regidex5_regexmem3 : std_logic_vector(3 downto 0);
signal regexmem1_dm, regexmem2_dm : std_logic_vector(31 downto 0);
signal regexmem3_regmemwb3, regmemwb3_rf : std_logic_vector(3 downto 0);
signal regmemwb1_muxc, regmemwb2_muxc : std_logic_vector(31 downto 0);

signal muxn3_alu, muxn2_alu, muxn4_dm : std_logic_vector(31 downto 0);

begin

U1: progcounter port map(clock_dp, pcin_dp, pc2im);
--U1: progcounter port map(clock_dp, muxd_pc, pc2im);
U2: IM port map(pc2im, im2rf);
U3: regfile port map(clock_dp, RFwe_dp, RFr1e_dp, RFr2e_dp, regmemwb3_rf, regifid_rf(19 downto 16), muxa_rf, muxc_rf, rd1_alu, rd2_alu);
U4: alu port map(im2rf, muxn2_alu, muxn3_alu, alu_rf);
U5: add4 port map(pc2im, add4_pc);
U6: muxa port map(regifid_rf(3 downto 0), regifid_rf(15 downto 12), Sel_muxa_dp, muxa_rf);
U7: extend port map(regifid_rf(11 downto 0), ex_muxb);
U8: muxb port map(regidex3_muxb, regidex4_muxb, Sel_muxb_dp, muxb_alu);
U9: datamem port map(clock_dp, Mre_dp, Mwe_dp, muxn4_dm, regidex3_muxb, dm_muxc);
U10: muxc port map(regmemwb1_muxc, regmemwb2_muxc, Sel_muxc_dp, muxc_rf);
U11: shift port map(regidex1_shift, shift_addb);
U12: addb port map(add4_pc, shift_addb, addb_muxd);
U13: muxd port map(add4_pc, addb_muxd, Sel_muxd_dp, muxd_pc);

U17: regifid port map(clock_dp, regifid_we_dp, im2rf, regifid_rf);
U18: regidex1 port map(clock_dp, regidex1_we_dp, regifid_rf(23 downto 0), regidex1_shift);
U19: regidex2 port map(clock_dp, regidex2_we_dp, rd1_alu, regidex2_alu);
U20: regidex3 port map(clock_dp, regidex3_we_dp, rd2_alu, regidex3_muxb);
U21: regidex4 port map(clock_dp, regidex4_we_dp, ex_muxb, regidex4_muxb);
U22: regidex5 port map(clock_dp, regidex5_we_dp, im2rf(15 downto 12), regidex5_regexmem3);
U23: regexmem1 port map(clock_dp, regexmem1_we_dp, alu_rf, regexmem1_dm);
U24: regexmem2 port map(clock_dp, regexmem2_we_dp, rd2_alu, regexmem2_dm);
U25: regexmem3 port map(clock_dp, regexmem3_we_dp, regidex5_regexmem3, regexmem3_regmemwb3);
U26: regmemwb1 port map(clock_dp, regmemwb1_we_dp, dm_muxc, regmemwb1_muxc);
U27: regmemwb2 port map(clock_dp, regmemwb2_we_dp, regexmem1_dm, regmemwb2_muxc);
U28: regmemwb3 port map(clock_dp, regmemwb3_we_dp, regexmem3_regmemwb3, regmemwb3_rf);

U29: muxn2 port map(regidex2_alu, regexmem1_dm, muxc_rf, Sel_muxn2_dp, muxn2_alu);
U30: muxn3 port map(muxb_alu, regexmem1_dm, muxc_rf, Sel_muxn3_dp, muxn3_alu);
U31: muxn4 port map(regexmem2_dm, muxc_rf, Sel_muxn4_dp, muxn4_dm);

end Behavioral;

