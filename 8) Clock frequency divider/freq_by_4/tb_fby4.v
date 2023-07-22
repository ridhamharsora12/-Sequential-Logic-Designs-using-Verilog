`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////


module tb_fby4;

	// Inputs
	reg fin;
	reg rst;

	// Outputs
	wire finby4;
	wire q0;

	// Instantiate the Unit Under Test (UUT)
	fby4 uut (
		.fin(fin), 
		.rst(rst), 
		.finby4(finby4),
		.q0(q0)
	);

	initial begin
		fin = 0;
		forever #10 fin=~fin;
	end
	
	initial begin
		rst = 0;
		#10 rst = 1;
		#20 rst = 0;
	end
      
endmodule

