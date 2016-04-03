----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:55 03/11/2016 
-- Design Name: 
-- Module Name:    regfile - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regfile is
port ( 	
	clock_rf	: 	in std_logic; 	
	RFwe	: 	in std_logic;										-- signal when write occurs
	RFr1e	: 	in std_logic;										-- signal when read1 occurs
	RFr2e	: 	in std_logic;										-- signal when read2 occurs
	RFwa	: 	in std_logic_vector(3 downto 0);				-- wad  
	RFr1a	: 	in std_logic_vector(3 downto 0);				-- rad1
	RFr2a	: 	in std_logic_vector(3 downto 0);				-- rad2
	RFw	: 	in std_logic_vector(31 downto 0);			-- wd
	RFr1	: 	out std_logic_vector(31 downto 0);			-- rd1
	RFr2	:	out std_logic_vector(31 downto 0)			-- rd2
);
end regfile;

architecture Behavioral of regfile is
	type rf_type is array (0 to 15) of std_logic_vector(31 downto 0);
	signal tmp_rf: rf_type := ("00000000000000000000000000001000", "00000000000000000000000000001001", "00000000000000000000000000001010", "00000000000000000000000000001011", "00000000000000000000000000001000", "00000000000000000000000000001001", "00000000000000000000000000001010", "00000000000000000000000000001011", "00000000000000000000000000001000", "00000000000000000000000000001001", "00000000000000000000000000001010", "00000000000000000000000000001011", "00000000000000000000000000001000", "00000000000000000000000000001001", "00000000000000000000000000001010", "00000000000000000000000000001011");
begin
	write: process(clock_rf, RFwa, RFwe, RFw)
	begin
		if RFwe='1' then
			tmp_rf(to_integer(unsigned( RFwa ))) <= RFw;
		end if;
	end process;
	
	read1: process(clock_rf, RFr1e, RFr1a)
	begin
		if (clock_rf'event and clock_rf='1') then
			if RFr1e='1'  then
				RFr1 <= tmp_rf(to_integer(unsigned( RFr1a )));
			end if;
		end if;
	end process;
	
	read2: process(clock_rf, RFr2e, RFr2a)
	begin
		if (clock_rf'event and clock_rf='1') then
			if RFr2e='1'  then
				RFr2 <= tmp_rf(to_integer(unsigned( RFr2a )));
			end if;
		end if;
	end process;


end Behavioral;

