----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:59 04/30/2026 
-- Design Name: 
-- Module Name:    Basic_gates - Behavioral 
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

entity Basic_gates is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (6 downto 0));
end Basic_gates;

architecture Behavioral of Basic_gates is
	signal m: std_logic;
begin
	q(0) <= a and b and c;
	q(1) <= a or b or c;
	q(2) <= not(a or b or c);
	q(3) <= not(a and b and c);
	q(4) <= a xor b xor c;
	q(5) <= a xnor b xnor c;
	m <= a and b and c;
	q(6) <= not m;
end Behavioral;

