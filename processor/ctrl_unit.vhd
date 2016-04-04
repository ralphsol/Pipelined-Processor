----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:27 03/17/2016 
-- Design Name: 
-- Module Name:    ctrl_unit - Behavioral 
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

entity ctrl_unit is
port( I_ctrl: 	in std_logic_vector(4 downto 0);	-- ins[27, 26, 24, 23, 20]
		I_p:	 	in std_logic;							-- p
		O_ctrl: 	out std_logic_vector(5 downto 0)	-- Rsrc  RW  MW  MR  Psrc Fset
	);
end ctrl_unit;

architecture Behavioral of ctrl_unit is

-- x's replaced by zero's

begin
	process(I_ctrl, I_p)
	begin
		O_ctrl <= "000000";
		if (I_ctrl="00000" or I_ctrl="00010") then
			O_ctrl <= "0" & I_p & "0000";
		elsif (I_ctrl="00001" or I_ctrl="00011") then
			O_ctrl <= "0" & I_p & "000" & I_p;
		elsif (I_ctrl="00010" or I_ctrl="00110") then
			O_ctrl <= "0" & I_p & "0000";
		elsif (I_ctrl="00011" or I_ctrl="00111") then
			O_ctrl <= "0" & I_p & "000" & I_p;
		elsif (I_ctrl="00100" or I_ctrl="00101") then
			O_ctrl <= "00000" & I_p;
		elsif (I_ctrl(4)='0' and I_ctrl(3)='1' and I_ctrl(0)='0') then
			O_ctrl <= "10" & I_p & "000";
		elsif (I_ctrl(4)='0' and I_ctrl(3)='1' and I_ctrl(0)='1') then
			O_ctrl <= "1" & I_p & "0100";
		elsif (I_ctrl(4)='1' and I_ctrl(3)='0') then
			O_ctrl(4 downto 0) <= "000" & I_p & "0";
		end if;
	end process;

end Behavioral;

