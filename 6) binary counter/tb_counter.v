`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:28 05/30/2023
// Design Name:   counter8bit
// Module Name:   /home/ise/VLSI/PRAC29/counter8bit/tb_counter.v
// Project Name:  counter8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg load;
	reg reset;
	reg clk;
	reg [7:0] in;
	reg up_down;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter8bit uut (
		.load(load), 
		.reset(reset), 
		.clk(clk), 
		.in(in), 
		.count(count), 
		.up_down(up_down)
	);

	initial begin
	#0 clk = 1;
	repeat(300) #5 clk = ~clk;
	end
	
	initial begin
	#0 reset = 1;   //counter wil srart from 0 
	#0 up_down = 0; //up counter
	#0 load = 0;
	#0 in = 8'h01;
	#3 reset = 0;   //this is necessary to turn off reset otherwise our counter will stuck to 0
	#100;
	
	#0 reset = 0;
	#0 up_down = 1; //down counter
	#0 load = 1;     // to load data 
	#0 in = 8'h39; 
	#3 load = 0;      // this is necessary to turn off if not then our counter will stuck to input value
	#100;
	
	
	
	
	end
      
endmodule

