module Sign_extend_tb;
	logic[15:0] input1;
	wire[31:0] output1;
	
Sign_extend L1(
	.input1(input1)
	,.output1(output1)
	);
	
initial begin
	input1 = 16'b1010101010101010; /*-21,846*/
	#100;
	input1 = 16'b0101010101010101; /*21,845*/
	#100;
	input1 = 16'b0000000000000001; /*1*/
	#100;
	input1 = 16'b1000000000000000; /*-32,768*/
	#100;
	input1 = 16'b0000000000000000; /*0*/
	#100;
	input1 = 16'b1111111111111111; /*-1*/
	#100;

end
endmodule