library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity branchpredictor is
port(	ins:	in std_logic_vector(31 downto 0);
	prediction:	out std_logic 
);
end branchpredictor;

architecture Behavioral of branchpredictor is

begin
	process(ins)
	begin
		if (ins(23)='1') then 
			prediction <= 1;
		else
			prediction <= 0;
		end if;
	end process;
end Behavioral;
