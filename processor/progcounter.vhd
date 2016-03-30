----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:12 03/11/2016 
-- Design Name: 
-- Module Name:    progcounter - Behavioral 
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

entity progcounter is
port(	--clock_pc:	in std_logic;
		pcld:	in std_logic;
		pcinc:	in std_logic;
		pcclr:	in std_logic;
		pcin:	in std_logic_vector(31 downto 0);
		pcout:	out std_logic_vector(31 downto 0)
);
end progcounter;

architecture Behavioral of progcounter is
signal tmp_pc: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
begin
	process(pcclr, pcinc, pcld, pcin)
	begin
		if pcclr='1' then
			tmp_pc <= "00000000000000000000000000000000";
		elsif (pcld'event and pcld = '1') then
			tmp_pc <= pcin;
		elsif (pcinc'event and pcinc = '1') then
			--tmp_pc <= tmp_pc + 1;
			tmp_pc <= std_logic_vector(to_unsigned(to_integer(unsigned( tmp_pc )) + 1, 32));
		end if;
	end process;
	pcout <= tmp_pc;

end Behavioral;

