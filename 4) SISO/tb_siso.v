`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:12:42 05/30/2023
// Design Name:   siso
// Module Name:   /home/ise/VLSI/PRAC27/siso/tb_siso.v
// Project Name:  siso
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: siso
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_siso;

	// Inputs
	reg si;
	reg clk;

	// Outputs
	wire so;
	wire [4:0]q;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.si(si), 
		.so(so), 
		.clk(clk),
		.q(q)
	);
	
	initial begin
		#0 clk = 0;
		forever #5 clk = ~clk;
	end
	
	initial begin
		#0 si= 1;
		#10 si= 0;
		#10 si= 0;
		#10 si= 1;
		#10 si= 1;
		#50 $finish;
	end
      
endmodule

