`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:49:40 05/25/2023
// Design Name:   S_Rbh
// Module Name:   /home/ise/VLSI/PRAC21/S_Rbh/tb.v
// Project Name:  S_Rbh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S_Rbh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire q;
	wire qn;

	// Instantiate the Unit Under Test (UUT)
	S_Rbh uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.q(q), 
		.qn(qn)
	);

	initial begin
		// Initialize Inputs
		#0 clk=1'b0;
		#5 clk=1'b1;
		#0 {s,r} = 2'b10;
		
		#5 clk=1'b0;
		#5 clk=1'b1;
		#5 {s,r} = 2'b01;

		#5 clk=1'b0;
		#5 clk=1'b1;		
		#5 {s,r} = 2'b00; 
		
		#5 clk=1'b0;
		#5 clk=1'b1;
		#5 {s,r} = 2'b10;
		#5 $finish;
	end
      
endmodule

