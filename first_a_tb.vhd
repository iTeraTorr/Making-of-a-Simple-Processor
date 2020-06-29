-- Vhdl test bench created from schematic C:\Users\HP\Desktop\VHDL Tutorial\SimpleProcessorProject\first_a.sch - Fri Jun 05 14:26:10 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY first_a_first_a_sch_tb IS
END first_a_first_a_sch_tb;
ARCHITECTURE behavioral OF first_a_first_a_sch_tb IS 

   COMPONENT first_a
   PORT( Clk	:	IN	STD_LOGIC; 
          A	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          B	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Bsel	:	IN	STD_LOGIC; 
          Asel	:	IN	STD_LOGIC; 
          S	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Cout	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL B	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Bsel	:	STD_LOGIC;
   SIGNAL Asel	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Cout	:	STD_LOGIC;
	constant Clk_period:time:=10 ns;
BEGIN

   UUT: first_a PORT MAP(
		Clk => Clk, 
		A => A, 
		B => B, 
		Bsel => Bsel, 
		Asel => Asel, 
		S => S, 
		Cout => Cout
   );

-- *** Test Bench - User Defined Section ***
   Clk_process:process
begin
Clk<='0';
wait for Clk_period/2;
Clk<='1';
wait for Clk_period/2;
end process;
-- *** Test Bench - User Defined Section ***
tb : PROCESS
BEGIN
Asel<='1';
Bsel<='1';
A<="11101001";
B<="00001001";
	WAIT; -- will wait forever
END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
