`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:14:42 05/27/2023 
// Design Name: 
// Module Name:    dff_neg 
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
//Implementation of negative edge-triggered D-FlipFlop with asynchronous active low reset and active high preset.

module dff_neg(
    input d,clk,rst,pst,
	 output reg q,
	 output qb
	 );
	 always@(negedge clk,negedge rst,posedge pst)
		begin 
			if(!rst) q<=1'b0;
			else if(pst) q<=1'b1;
			else q<=d;
		end
	 assign qb = ~q;
endmodule
