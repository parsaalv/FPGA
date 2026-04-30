----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:23 04/30/2026 
-- Design Name: 
-- Module Name:    fa_parametric_method2 - Behavioral 
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
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa_parametric_method2 is
	generic(constant n: integer:=5);
	port(
		a: in std_logic_vector(n-1 downto 0);
		b: in std_logic_vector(n-1 downto 0);
		sum: out std_logic_vector(n-1 downto 0);
		cout: out std_logic
	);
end fa_parametric_method2;

architecture Behavioral of fa_parametric_method2 is
	component HAs_Parametric is
	generic(constant ni: integer := 3);
	Port(
		a: in std_logic_vector (ni-1 downto 0);
		sum: out std_logic_vector (integer(ceil(log2(real(ni+1))))-1 downto 0)
	);
	end component;
	signal c: std_logic_vector(n downto 0);
begin
	c(0) <= '0';
	l:for i in 0 to n-1 generate
		u: HAs_Parametric port map(a(2)=>a(i), a(1)=>b(i),a(0)=>c(i), sum(0)=>sum(i), sum(1)=>c(i+1));
	end generate l;
	cout <= c(n);
end Behavioral;
