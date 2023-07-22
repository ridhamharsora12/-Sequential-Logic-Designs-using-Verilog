`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:57:40 05/27/2023
// Design Name:   dff_paahr
// Module Name:   /home/ise/VLSI/PRAC24/dff_paahr/tb_dff.v
// Project Name:  dff_paahr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff_paahr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dff;

	// Inputs
	reg d;
	reg rst;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dff_paahr uut (
		.d(d), 
		.rst(rst), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		#0 clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	initial begin 
		#0 rst = 0;
		#1 rst = 1;
		#3 rst = 0;
	end
   
	initial begin
		#0 d = 1;
		#10 d = 0;
		#10 d = 1;
		#10 d = 0;
		#10 d = 1;
		#10 d = 0;
		#10 d = 1;
		#10 $finish;
	end
		
		
endmodule

