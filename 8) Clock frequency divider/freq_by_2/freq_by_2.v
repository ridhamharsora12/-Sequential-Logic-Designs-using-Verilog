`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:52 06/04/2023 
// Design Name: 
// Module Name:    freq_by_2 
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
module freq_by_2(input fin,rst,output fin_by_2);
	wire qbar;
	dff d1(rst,fin,qbar,fin_by_2,qbar);
endmodule

//d flip-flop
module dff(rst,clk,d,q,q_bar);
	input clk,d,rst;
	output reg q;
	output q_bar;
	
	always@(posedge clk)
	begin
		  if(rst) q<=0;
		  else q<=d;
	end
	assign q_bar = ~q;
endmodule