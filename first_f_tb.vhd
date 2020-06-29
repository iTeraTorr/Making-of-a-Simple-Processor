-- Vhdl test bench created from schematic C:\Users\HP\Desktop\VHDL Tutorial\SimpleProcessorProject\first_f.sch - Sat Jun 06 10:13:53 2020
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
ENTITY first_f_first_f_sch_tb IS
END first_f_first_f_sch_tb;
ARCHITECTURE behavioral OF first_f_first_f_sch_tb IS 

   COMPONENT first_f
   PORT( Clk	:	IN	STD_LOGIC; 
          T	:	IN	STD_LOGIC; 
          R	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Q0	:	INOUT	STD_LOGIC; 
          Q1	:	INOUT	STD_LOGIC; 
          Q2	:	INOUT	STD_LOGIC; 
          A	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          B	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          NANDOutput	:	INOUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          OROutput	:	INOUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL T	:	STD_LOGIC;
   SIGNAL R	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Q0	:	STD_LOGIC;
   SIGNAL Q1	:	STD_LOGIC;
   SIGNAL Q2	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL B	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL NANDOutput	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL OROutput	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	constant Clk_period:time:=10 ns;
BEGIN

   UUT: first_f PORT MAP(
		Clk => Clk, 
		T => T, 
		R => R, 
		Q0 => Q0, 
		Q1 => Q1, 
		Q2 => Q2, 
		A => A, 
		B => B, 
		NANDOutput => NANDOutput, 
		OROutput => OROutput
   );
	
	Clk_process:process
	begin
	Clk<='1';
	wait for Clk_period/2;
	Clk<='0';
	wait for Clk_period/2;
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	A<="10101100";
	B<="11100110";
	T<='1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
