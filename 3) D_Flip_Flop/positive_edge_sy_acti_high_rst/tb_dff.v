`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:38:15 05/27/2023
// Design Name:   dff_sy
// Module Name:   /home/ise/VLSI/PRAC26/dff_sy/tb_dff.v
// Project Name:  dff_sy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff_sy
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
	reg clk;
	reg rst;
	reg pst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dff_sy uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.pst(pst), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		#0 clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	//active high reset 
	initial begin
		#0 rst = 0;
		#5 rst = 1;
		#2 rst = 0;
	end
	
	//active low preset
	initial begin
		#0 pst=1;
		#20 pst = 0;
		#3 pst  = 1;
	end
	
	initial begin
		#0 d =0;
		#5 d =1;
		#5 d= 0;
		#5 d =1;
		#5 d= 0;
		#5 d =1;
		#5 d= 0;
		#5 $finish;
	end
      
endmodule

