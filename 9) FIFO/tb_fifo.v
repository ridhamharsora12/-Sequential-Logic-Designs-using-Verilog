`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:51:06 07/20/2023
// Design Name:   fifo
// Module Name:   /home/ise/VLSI_/VLSI/PRAC32/tb_fifo.v
// Project Name:  PRAC32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fifo;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] data_in;
	reg push;
	reg pop;

	// Outputs
	wire [3:0] data_out;
	wire fifo_full;
	wire fifo_empty;

	// Instantiate the Unit Under Test (UUT)
	fifo uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.push(push), 
		.pop(pop), 
		.data_out(data_out), 
		.fifo_full(fifo_full), 
		.fifo_empty(fifo_empty)
	);
	
	//for clock
	initial begin
		clk = 0;
		repeat(100) #5 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		reset = 0;
		data_in = 0;
		push = 0;
		pop = 0;

		@(posedge clk) reset = 1;
		@(posedge clk) reset = 0;
		
		@(posedge clk)
		data_in = 4'd10;
		push = 1;
		#5 push =0;
		
		@(posedge clk)
		data_in = 4'd9;
		push = 1;
		#10 push =0;
		
		@(posedge clk)
		data_in = 4'd2;
		push = 1;
		#10 push =0;
		
		@(posedge clk)
		data_in = 4'd3;
		push = 1;
		#5 push = 0;
		
		@(posedge clk)
		pop = 1;
		
	end
      
endmodule

