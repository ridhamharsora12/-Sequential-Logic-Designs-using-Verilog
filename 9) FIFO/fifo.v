`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:58 07/20/2023 
// Design Name: 
// Module Name:    fifo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module fifo(
	input 		     clk,
	input            reset,
	input 	  [3:0] data_in,
	input 		     push,
	input 		 	  pop,
	output reg [3:0] data_out,
	output reg	     fifo_full,
	output reg  	  fifo_empty
    );

	wire [3:0] reg1_out;
	wire [3:0] reg2_out;
	wire [3:0] reg3_out;
	wire [3:0] reg4_out;
	wire [2:0] counter_out;
	
	//for register
	register r1(.clk(clk),.reset(reset),.enable(push),.reg_in(data_in),.reg_out(reg1_out));
	register r2(.clk(clk),.reset(reset),.enable(push),.reg_in(reg1_out),.reg_out(reg2_out));
	register r3(.clk(clk),.reset(reset),.enable(push),.reg_in(reg2_out),.reg_out(reg3_out));
	register r4(.clk(clk),.reset(reset),.enable(push),.reg_in(reg3_out),.reg_out(reg4_out));

	//for counter
	counter c1(
	    .increment(push),
	    .decrement(pop),
	    .reset(reset),
	    .clk(clk),
	    .count(counter_out)
    );
	
	//for mux
	always@(*)
		case(counter_out)
			2'b00 : data_out = reg1_out;
			2'b01 : data_out = reg2_out;
			2'b10 : data_out = reg3_out;
			2'b11 : data_out = reg4_out;
		endcase
	
	always@(*)
		begin
			if(counter_out == 0) fifo_empty = 1;
			else if(counter_out == 3'b100) fifo_full = 1;
			else begin
				fifo_empty = 0;
				fifo_full = 0;
			end
		end
endmodule


