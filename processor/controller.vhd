----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:45:26 03/17/2016 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is
port(	clock:		in std_logic;
		rst:		in std_logic;
		IR_word:	in std_logic_vector(31 downto 0);
		Asrc: out std_logic;
		Rsrc: out std_logic;
		M2R: out std_logic;
		RW: out std_logic;
		RFwa_ctrl	: 	out std_logic_vector(3 downto 0);			-- wad  
		MW: out std_logic;
		MR: out std_logic;
		Fset: out std_logic;
		pcclr_ctrl:	out std_logic;
		pcinc_ctrl:	out std_logic;
		Psrc: out std_logic
);
end controller;

architecture Behavioral of controller is

  type state_type is (S0,S1,S2,S3,S4,S5,S6,S7);
  signal state: state_type;

begin
	process(clock, rst, IR_word)
	
	variable OPCODE: std_logic_vector(4 downto 0);
	
	begin
	
		if (clock'event and clock='1') then
			case state is
			
				when S0 => 	pcclr_ctrl <= '0';					-- fetch
								pcinc_ctrl <= '0';
								Ms_ctrl <= "10";
								IMld_ctrl <= '1';
								Mwe_ctrl <= '0';
								Mre_ctrl <= '1';
								state <= S1;

				when S1 =>	--pcinc_ctrl <= '0';					-- read A_B.
								--RFwe_ctrl <= '0';
								OPCODE := IR_word(27)&IR_word(26)&IR_word(24)&IR_word(23)&IR_word(20); 
								  case OPCODE(4 downto 3) is
									 when "00" => 	state <= S2;			-- arith
									 when "01" => 	state <= S4;			-- ldr/str
									 when "10" => 	state <= S8;			-- b
								  end case; 

				when S2 => 	case IR_WORD(24)&IR_WORD(20) is			-- arith.
									when "00" => 
										Rsrc <= '0';
										-- RW <= p;
										MW <= '0';
										MR <= '0';
										Psrc <= '0';
										Fset <= '0';
										state <= S3;
									when "01" => 
										Rsrc <= '0';
										-- RW <= p;
										MW <= '0';
										MR <= '0';
										Psrc <= '0';
										-- Fset <= p;
										state <= S3;
								end case;
								case IR_WORD(23)&IR_WORD(20) is
									when "10" =>
										Rsrc <= '0';
										-- RW <= p;
										MW <= '0';
										MR <= '0';
										Psrc <= '0';
										Fset <= '0';
										state <= S3;
									when "11" => 
										Rsrc <= '0';
										-- RW <= p;
										MW <= '0';
										MR <= '0';
										Psrc <= '0';
										Fset <= '0';
										state <= S3;
								end case;

				when S3 => 												-- res2rf
								state <= S0;

				when S4 => 	case OPCODE(0) is						-- m_addr.
									when '0' => S6;		-- str
									when '1' => S5;		-- ldr
								end case;
								
				when S5 => 	Rsrc <= '1';				-- ldr / m_wr.
								RFwa_ctrl <= IR_word(19 downto 16);
								-- RW <= p;
								Asrc <= '1';
								MW <= '0';
								MR <= '1';
								M2R <= '1';
								Psrc <= '0';
								Fset <= '0';
								state <= S0;

				when S6 => 	Rsrc <= '1';				-- str / m_rd.
								RW <= '0';
								Asrc <= '1';
								-- MW <= p;
								MR <= '0';
								Psrc <= '0';
								Fset <= '0';
								state <= S7;

				when S7 => 									-- mem2rf
								state <= S0;

				when S8 => 	RW <= '0';					-- branch.
								MW <= '0';
								MR <= '0';
								-- Psrc <= p;
								Fset <= '0';
								state <= S0;
			end case;
		end if;
	end process;
end Behavioral;

