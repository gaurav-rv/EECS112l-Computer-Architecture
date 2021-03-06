module control_tb;
	logic clk;
	logic [5:0] instruction;
	wire MemToReg;
	wire MemWrite;
	wire Branch;
	wire ALUOP1;
	wire ALUOP2;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire MemRead;
	
control L1(
	.clk(clk),
	.instruction(instruction),
	.MemToReg(MemToReg),
	.MemWrite(MemWrite),
	.Branch(Branch),
	.ALUOP1(ALUOP1),
	.ALUOP2(ALUOP2),
	.ALUSrc(ALUSrc),
	.RegDst(RegDst),
	.RegWrite(RegWrite),
	.MemRead(MemRead)
	);
	
initial begin

	/* R-type*/
	instruction = 6'b 000000;
	#100;
	
	/* Load*/
	instruction = 6'b 100011;
	#100;
	
	/* Store*/
	instruction = 6'b 101011;
	#100;
	
	/* Branch*/
	instruction = 6'b 000100;
	#100;
	
	/*OTHER*/
	instruction = 6'b 010101;
	#100;

end
endmodule