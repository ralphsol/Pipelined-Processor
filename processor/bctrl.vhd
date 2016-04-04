----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:07 03/31/2016 
-- Design Name: 
-- Module Name:    bctrl - Behavioral 
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

entity bctrl is
port( I_bctrl: 	in std_logic_vector(3 downto 0);	-- ins[31:28]
		I_zcnv:	 	in std_logic_vector(3 downto 0);	-- ZCNV
		O_bctrl: 	out std_logic							-- p
	);
end bctrl;

architecture Behavioral of bctrl is

-- deal with V
begin
	process(I_bctrl, I_zcnv)
	begin
		O_bctrl <= '0';
		if (I_bctrl="0000") then
			if (I_zcnv(3)='1') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0001") then
			if (I_zcnv(3)='0') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0010") then
			if (I_zcnv(2)='1') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0011") then
			if (I_zcnv(2)='0') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0100") then
			if (I_zcnv(1)='1') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0101") then
			if (I_zcnv(1)='0') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0110") then
			if (I_zcnv(1)='1') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="0111") then
			if (I_zcnv(1)='0') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1000") then
			if (I_zcnv(3)='0' and I_zcnv(2)='1') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1001") then
			if (I_zcnv(3)='1' and I_zcnv(2)='0') then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1010") then
			if (I_zcnv(1)=I_zcnv(0)) then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1011") then
			if (not(I_zcnv(1)=I_zcnv(0))) then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1100") then
			if (I_zcnv(3)='0' and I_zcnv(1)=I_zcnv(0)) then
				O_bctrl <= '1';
			end if;
		elsif (I_bctrl="1101") then
			if (not(I_zcnv(1)=I_zcnv(0))) then
				O_bctrl <= '1';
			elsif (I_zcnv(3)='1') then
				O_bctrl <= '1';
			end if;
		end if;
	end process;
end Behavioral;

