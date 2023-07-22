`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:46 07/20/2023 
// Design Name: 
// Module Name:    register 
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
module register(
   input 			 clk,
	input 			 reset,
	input 			 enable,
	input      [3:0] reg_in,
	output reg [3:0] reg_out
	);
	
	always@(posedge clk)
	begin
		if (reset) 		 reg_out = 0;
		else if (enable) reg_out = reg_in;
	end

endmodule
