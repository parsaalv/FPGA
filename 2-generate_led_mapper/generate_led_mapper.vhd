----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:06 04/30/2026 
-- Design Name: 
-- Module Name:    generate_led_mapper - Behavioral 
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

entity generate_led_mapper is
	port(
	led: out std_logic_vector(5 downto 0);
	sw: in std_logic_vector(5 downto 0)
	);
end generate_led_mapper;

architecture Behavioral of generate_led_mapper is

begin
	l1: for i in 0 to 5 generate
		led(i) <= '1' when sw(i) = '1' else '0';
	end generate l1;

end Behavioral;

