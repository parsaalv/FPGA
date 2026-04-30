----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:47:05 04/29/2026 
-- Design Name: 
-- Module Name:    HAs_Parametric - Behavioral 
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

entity HAs_Parametric is
	generic(constant ni: integer := 3);
	Port(
		a: in std_logic_vector (ni-1 downto 0);
		sum: out std_logic_vector (integer(ceil(log2(real(ni+1))))-1 downto 0)
	);
end HAs_Parametric;

architecture Behavioral of HAs_Parametric is
	constant no : integer := integer(ceil(log2(real(ni+1))));
	signal s: std_logic_vector(ni*no-1 downto 0);
	signal c: std_logic_vector(((ni-1)*(no))-1 downto 0);
	component HA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
	end component;
begin
   
	s(0) <= a(0);
	initalize: for i in 1 to no-1 generate
		s(i) <= '0';
	end generate initalize;
	
	l1: for i in 0 to ni-2 generate
		u1: HA port map (A =>a(i+1), B =>S(no*i), S=>S(no*(i+1)), C=>C(no*i));
		l2: for j in 1 to no-1 generate
			u2: HA port map (A => S(no*i+j), B => C(no*i+j-1), S=>S(no*(i+1)+j), C=>C(no*i+j));
		end generate l2;
	end generate l1;
	
	output: for i in 0 to no-1 generate
		sum(i) <= s(no*(ni-1)+i);
	end generate output;
	
	
end Behavioral;

