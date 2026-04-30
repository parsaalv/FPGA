----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:33 04/24/2026 
-- Design Name: 
-- Module Name:    FA - Behavioral 
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

entity FA is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is
	signal s1,s2,s3: STD_LOGIC;
	component HA is
		 Port ( a : in  STD_LOGIC;
				  b : in  STD_LOGIC;
				  s : out  STD_LOGIC;
				  c : out  STD_LOGIC);
	end component;


begin

	u1: HA port map(a => a, b => b, s => s1, c => s2);
	u2: HA port map(a => cin, b => s1, s => sum, c => s3);
	cout <= s2 or s3;
	
end Behavioral;

