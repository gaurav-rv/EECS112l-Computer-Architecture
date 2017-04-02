module imem_tb;
	logic [31:0] addr;
	wire [31:0] instruction;
	
imem L1(
	.addr(addr),
	.instruction(instruction)
	);
	
initial begin

	addr = 32'b 00000000000000000000000000000000;
	#100;
	
	addr = 32'b 00000000000000000000000000000001;
	#100;
	
	addr = 32'b 00000000000000000000000000000010;
	#100;
	
	addr = 32'b 00000000000000000000000000000011;
	#100;

	addr = 32'b 00000000000000000000000000000100;
	#100;
	
	addr = 32'b 00000000000000000000000000001000;
	#100;
	
	addr = 32'b 00000000000000000000000000001100;
	#100;
	
	addr = 32'b 00000000000000000000000000010000;
	#100;
	
	addr = 32'b 00000000000000000000000000010100;
	#100;

	addr = 32'b 00000000000000000000000000011000;
	#100;
end
endmodule