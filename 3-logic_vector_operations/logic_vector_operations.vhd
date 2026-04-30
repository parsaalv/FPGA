----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:35 04/30/2026 
-- Design Name: 
-- Module Name:    logic_vector_operations - Behavioral 
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

entity logic_vector_operations is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           q : out  STD_LOGIC_VECTOR (2 downto 0));
end logic_vector_operations;

architecture Behavioral of logic_vector_operations is
	signal m1: STD_LOGIC_VECTOR (3 downto 0); -- and vector
	signal m2: STD_LOGIC_VECTOR (3 downto 0); -- or vector
	signal m3: STD_LOGIC_VECTOR (3 downto 0); -- xor vector
begin
	l1: for i in 0 to 3 generate
		m1(i) <= A(i) and B(i);
		m2(i) <= A(i) or B(i);
		m3(i) <= A(i) xor B(i);
	end generate l1;
	
	q(0) <= m1(0) or m1(1) or m1(2) or m1(3);
	q(1) <= m2(0) or m2(1) or m2(2) or m2(3);
	q(2) <= m3(0) or m3(1) or m3(2) or m3(3);
	 
--	q <= (m1(0) or m1(1) or m1(2) or m1(3)) &  (m2(0) or m2(1) or m2(2) or m2(3)) & (m3(0) or m3(1) or m3(2) or m3(3))

end Behavioral;

