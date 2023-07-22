`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:52:44 05/30/2023
// Design Name:   USR
// Module Name:   /home/ise/VLSI/PRAC28/USR/tb.v
// Project Name:  USR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: USR
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
	reg clr;
	reg clk;
	reg si;
	reg [3:0] pi;
	reg [1:0] sel;

	// Outputs
	wire [3:0] po;

	// Instantiate the Unit Under Test (UUT)
	USR uut (
		.clr(clr), 
		.clk(clk), 
		.si(si), 
		.pi(pi), 
		.po(po), 
		.sel(sel)
	);

	initial begin
		clk = 0;
		repeat(100) #5 clk = ~clk;		
	end
	
	initial begin
		#0 pi = 4'b1101;
		#0 sel = 2'b01;  // shift right
		#0 si = 1;
		#10 si = 1;
		#10 si = 0;
		#10 si = 1;
		#40;
		
		#0 pi = 4'b1101;
		#0 sel = 2'b10;  // shift right
		#0 si = 1;
		#10 si = 1;
		#10 si = 0;
		#10 si = 1;
		#40;;
		
		pi = 4'b1101;
		si = 4'b1101;
		sel = 2'b11;   //shift left
		#40;
	end
      
endmodule

