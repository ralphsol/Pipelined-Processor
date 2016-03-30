----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:28 03/11/2016 
-- Design Name: 
-- Module Name:    IM - Behavioral 
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

entity IM is
port(	IMin:	  in std_logic_vector(31 downto 0);
		IMld:	  in std_logic;
		dir_addr: out std_logic_vector(31 downto 0);
		IMout: 	  out std_logic_vector(31 downto 0)
);
end IM;

architecture Behavioral of IM is

begin
	process(IMld, IMin)
	begin
		if IMld='1' then
			IMout <= IMin;
			-- dir_addr <= "0000000000000000" & IRin(15 downto 0); don't know if needed
		end if;
	end process;


end Behavioral;

