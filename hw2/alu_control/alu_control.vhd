library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_control is

port(
			clk: 			in std_logic;
			instruction:	in std_logic_vector(5 downto 0);
			ALUOP0:			in std_logic;
			ALUOP1:			in std_logic;
			Operation:		out std_logic_vector(3 downto 0)
);
end alu_control;

ARCHITECTURE beh OF alu_control IS
BEGIN
	PROCESS (clk, instruction, ALUOP0, ALUOP1) IS 
	BEGIN
		IF(ALUOP0 ='0' and ALUOP1 = '0' ) THEN
			Operation 	<=	"0010";
		ELSIF(ALUOP1 = '1' and instruction(3 downto 0) ="0000") THEN
			Operation	<=	"0010";
		ELSIF(ALUOP1 = '1' and instruction(3 downto 0) ="0010") THEN
			Operation	<=	"0110";
		ELSIF(ALUOP1 = '1' and instruction(3 downto 0) ="0100") THEN
			Operation	<=	"0000";
		ELSIF(ALUOP1 = '1' and instruction(3 downto 0) ="0101") THEN
			Operation	<=	"0001";
		ELSIF(ALUOP1 = '1' and instruction(3 downto 0) ="1010") THEN
			Operation	<=	"0111";
		ELSIF(ALUOP0 ='1') THEN
			Operation	<=  "0110";
		ELSE
			Operation <= "XXXX";
			
		END IF;
	END PROCESS;

END beh;