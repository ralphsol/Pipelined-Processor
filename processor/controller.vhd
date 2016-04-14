library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controller is
port(	clock_dp	:	in std_logic
--		pcin_dp	:	in std_logic_vector(31 downto 0);
);
end controller;

architecture Behavioral of controller is

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
			FLAGS	: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			F 		: INOUT 	STD_LOGIC_VECTOR(31 DOWNTO 0) ) ;
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

component bctrl is
port( I_bctrl: 	in std_logic_vector(3 downto 0);	-- ins[31:28]
		I_zcnv:	 	in std_logic_vector(3 downto 0);	-- ZCNV
		O_bctrl: 	out std_logic							-- p
	);
end component;

component ctrl_unit is
port( I_ctrl: 	in std_logic_vector(4 downto 0);	-- ins[27, 26, 24, 23, 20]
		I_p:	 	in std_logic;							-- p
		O_ctrl: 	out std_logic_vector(5 downto 0)	-- Rsrc  RW  MW  MR  Psrc Fset
	);
end component;

signal pc2im, im2rf : std_logic_vector(31 downto 0);
signal rd1_alu, rd2_alu, alu_rf : std_logic_vector(31 downto 0);
signal add4_pc : std_logic_vector(31 downto 0);
signal muxa_rf : std_logic_vector(3 downto 0);
signal ex_muxb, muxb_alu : std_logic_vector(31 downto 0);
signal dm_muxc, muxc_rf : std_logic_vector(31 downto 0);
signal shift_addb, addb_muxd, muxd_pc : std_logic_vector(31 downto 0);
signal p_sig : std_logic;
signal ctrl_sig : std_logic_vector(5 downto 0);	-- Rsrc  RW  MW  MR  Psrc Fset
signal I_ctrl_dp : std_logic_vector(4 downto 0);

begin

--U1: progcounter port map(clock_dp, pcin_dp, pc2im);
U1: progcounter port map(clock_dp, muxd_pc, pc2im);
U2: IM port map(pc2im, im2rf);
U3: regfile port map(clock_dp, ctrl_sig(4), '1', '1', im2rf(15 downto 12), im2rf(19 downto 16), muxa_rf, muxc_rf, rd1_alu, rd2_alu);
U4: alu port map(im2rf, rd1_alu, muxb_alu, alu_rf(26 downto 25), alu_rf);
U5: add4 port map(pc2im, add4_pc);
U6: muxa port map(im2rf(3 downto 0), im2rf(15 downto 12), ctrl_sig(5), muxa_rf);
U7: extend port map(im2rf(11 downto 0), ex_muxb);
U8: muxb port map(rd2_alu, ex_muxb, ctrl_sig(5), muxb_alu);
U9: datamem port map(clock_dp, ctrl_sig(2), ctrl_sig(3), alu_rf, rd2_alu, dm_muxc);
U10: muxc port map(dm_muxc, alu_rf, ctrl_sig(5), muxc_rf);
U11: shift port map(im2rf(23 downto 0), shift_addb);
U12: addb port map(add4_pc, shift_addb, addb_muxd);
U13: muxd port map(add4_pc, addb_muxd, ctrl_sig(1), muxd_pc);
U14: bctrl port map(im2rf(31 downto 28), im2rf(27 downto 24), p_sig);
I_ctrl_dp <= im2rf(27)&im2rf(26)&im2rf(24)&im2rf(23)&im2rf(20);
--U15: ctrl_unit port map(im2rf(27)&im2rf(26)&im2rf(24)&im2rf(23)&im2rf(20), p_sig, ctrl_sig);
U15: ctrl_unit port map(I_ctrl_dp, p_sig, ctrl_sig);

end Behavioral;
