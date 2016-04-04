----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:42 03/11/2016 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu_test is
	PORT (S_alu : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			A, B	: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0) ;
			F 		: OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0) ) ;
end alu_test;

architecture Behavioral of alu_test is

begin
	PROCESS ( S_alu, A, B )
	BEGIN
		IF (S_alu(27 downto 22)="000000") and(S_alu(7 downto 4)="1001") THEN	-- MULT
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) * to_integer(unsigned( B )), 32));
		ElSIF (S_alu(27 downto 22)="000000") THEN	-- AND
			F <= A and B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0001")) THEN	-- EOR
			F <= A xor B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0010")) THEN	-- SUB
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - to_integer(unsigned( B )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0011")) THEN	-- RSB
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( B )) - to_integer(unsigned( A )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0100")) THEN	-- ADD
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + to_integer(unsigned( B )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0101")) THEN	-- ADC
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + to_integer(unsigned( B )) + to_integer(unsigned( S_alu(29 downto 29) )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0110")) THEN	-- SBC
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - to_integer(unsigned( B )) - to_integer(unsigned( S_alu(29 downto 29) )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="0111")) THEN	-- RSC
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( B )) - to_integer(unsigned( A )) - to_integer(unsigned( S_alu(29 downto 29) )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1000")) THEN	-- TST
			F <= A and B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1001")) THEN	-- TEQ
			F <= A xor B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1010")) THEN	-- CMP
			--F <= A - B;
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - to_integer(unsigned( B )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1011")) THEN	-- CMN
			F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + to_integer(unsigned( B )), 32));
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1100")) THEN	-- ORR
			F <= A or B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1101")) THEN	-- MOV
			F <= B;
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1110")) THEN	-- BIC
			F <= A and (not B);
		ElSIF ((S_alu(27 downto 26)="00")and(S_alu(25 downto 22)="1111")) THEN	-- MVN
			F <= not B;
	    ElSIF ((S_alu(27 downto 26)="01")and(S_alu(20)='1')) THEN	-- ldr

 			if(S_alu(23)='0') then        --checking up or down
				F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + to_integer(unsigned( B )), 32));
          	else
          		F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - to_integer(unsigned( B )), 32));
          		end if;

		ElSIF ((S_alu(27 downto 26)="01")and(S_alu(20)='0')) THEN	--str
			
 			if(S_alu(23)='0') then        --checking up or down
				F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + to_integer(unsigned( B )), 32));
          	else
          		F <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - to_integer(unsigned( B )), 32));
          		end if;
		
		END IF;
	END PROCESS ;

end Behavioral;