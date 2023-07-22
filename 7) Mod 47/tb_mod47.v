`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:54 05/30/2023
// Design Name:   mod47
// Module Name:   /home/ise/VLSI/PRAC29/mod47/tb_mod47.v
// Project Name:  mod47
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod47
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mod47;

	// Inputs
	reg rst;
	reg clk;
	reg load;
	reg [5:0] in;

	// Outputs
	wire [5:0] count;

	// Instantiate the Unit Under Test (UUT)
	mod47 uut (
		.rst(rst), 
		.clk(clk), 
		.load(load), 
		.in(in), 
		.count(count)
	);

	initial begin
	#0 clk = 0;
	repeat(100) #5 clk = ~clk;
	end
	
	initial begin
		#0 rst = 1;
		#0 load = 0;
		#0 in = 6'b000100;
		#3 rst = 0;
		#100;
		
		#0 load = 1;
		#0 in = 6'b000100;
		#3 load = 0;
		#100;
		
	end
      
endmodule

