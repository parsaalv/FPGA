----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:20 04/30/2026 
-- Design Name: 
-- Module Name:    fa_parametric_method1 - Behavioral 
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

entity fa_parametric_method1 is
	 generic(constant bit_number: integer:=5);
    Port ( A : in  STD_LOGIC_VECTOR (bit_number-1 downto 0);
           B : in  STD_LOGIC_VECTOR (bit_number-1 downto 0);
           S : out  STD_LOGIC_VECTOR (bit_number-1 downto 0);
           C : out  STD_LOGIC);
end fa_parametric_method1;

architecture Behavioral of fa_parametric_method1 is
	signal sig: STD_LOGIC_VECTOR (bit_number downto 0);
	component FA is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
	end component;
begin
	sig(0) <= '0';
	l: for i in 0 to bit_number-1 generate
		u1: FA port map(a => A(i), b=>B(i), cin=>sig(i), cout => sig(i+1), sum => S(i));
	end generate;
	C <= sig(bit_number);

end Behavioral;

