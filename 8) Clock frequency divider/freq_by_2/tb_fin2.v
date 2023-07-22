`timescale 1ns / 1ps

module tb_fin2;

	// Inputs
	reg fin;
	reg rst;

	// Outputs
	wire fin_by_2;

	// Instantiate the Unit Under Test (UUT)
	freq_by_2 uut (
		.fin(fin), 
		.rst(rst), 
		.fin_by_2(fin_by_2)
	);

	initial begin
		fin = 0;
		forever #10 fin =~fin;
	end
	initial begin
		rst = 0;
		#3 rst = 1;
		#8 rst = 0;
   end
      
endmodule

