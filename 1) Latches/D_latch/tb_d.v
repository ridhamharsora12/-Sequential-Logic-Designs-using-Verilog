`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:30 05/25/2023
// Design Name:   d_latchbh
// Module Name:   /home/ise/VLSI/PRAC21/d_latchbh/tb_d.v
// Project Name:  d_latchbh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_latchbh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_d;

	// Inputs
	reg d;
	reg en;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	d_latchbh uut (
		.d(d), 
		.en(en), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		#0 en = 1'b0;
		forever #5 en=~en;
	end
	
	initial begin
		#0 d =0;
		#3 d=1;
		#3 d =0;
		#3 d=1;
		#3 d =0;
		#3 d=1;
		#3 d =0;
		#3 d=1;
		#3 $finish;
	end 
      
endmodule

