`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:32 05/25/2023
// Design Name:   d_latch_ah
// Module Name:   /home/ise/VLSI/PRAC22/d_latch_ah/tb_d_latch.v
// Project Name:  d_latch_ah
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_latch_ah
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_d_latch;

	// Inputs
	reg d;
	reg en;
	reg reset;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	d_latch_ah uut (
		.d(d), 
		.en(en), 
		.reset(reset), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		#0 en = 1'b0;
		forever #7 en = ~en;
	end
	
	initial begin
		#0 reset = 1;
		#3 reset = 0;
		#15 reset = 1;
	end
	
	initial begin
		#0 d = 0;
		#5 d = 1;
		#5 d = 0;
		#5 d = 1;
		#5 d = 1;
		#5 d = 0;
		#5 $finish;
	end
      
      
endmodule

