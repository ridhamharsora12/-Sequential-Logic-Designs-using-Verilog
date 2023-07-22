`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:51 05/25/2023 
// Design Name: 
// Module Name:    dff_paahr 
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
//Implementation of positive edge-triggered D-FlipFlop with asynchronous active high reset

module dff_paahr(
    input d,rst,clk,
    output reg q,
	 output qb
    );
	 always@(posedge clk, posedge rst)
		begin 
			if(rst) q<=0;
			else 
				begin 
					if(d) q<=1;
					else q<=0;
				end
		end
		
		assign qb=~q;

endmodule
