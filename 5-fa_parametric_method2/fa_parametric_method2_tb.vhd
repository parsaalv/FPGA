--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:37:50 04/30/2026
-- Design Name:   
-- Module Name:   C:/Users/admin/Desktop/FPGA_Github/5-fa_parametric_method2/fa_parametric_method2_tb.vhd
-- Project Name:  fa_parametric_method2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa_parametric_method2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fa_parametric_method2_tb IS
END fa_parametric_method2_tb;
 
ARCHITECTURE behavior OF fa_parametric_method2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_parametric_method2
    PORT(
         a : IN  std_logic_vector(4 downto 0);
         b : IN  std_logic_vector(4 downto 0);
         sum : OUT  std_logic_vector(4 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(4 downto 0) := (others => '0');
   signal b : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(4 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_parametric_method2 PORT MAP (
          a => a,
          b => b,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "01010"; --10
		B <= "11010"; --26
      wait for 100 ns;	
		
		A <= "01110"; --14
		B <= "01010"; --26
      wait for 100 ns;	
		
		A <= "11111"; --31
		B <= "01010"; --26
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
