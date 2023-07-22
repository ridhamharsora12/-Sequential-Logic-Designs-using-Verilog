`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:03:11 05/25/2023 
// Design Name: 
// Module Name:    S_Rbh 
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
module S_Rbh(
    input s,r,clk,
    output reg q,qn
    );

	 always@(*)
		begin
			if(clk)
				begin
					if({s,r} == 2'b00) q <= q;
					else if({s,r} == 2'b10) q <= 1'b1;
					else if({s,r} == 2'b01) q <= 1'b0;
					else q <= 1'bx;
				end
			else q <= q;
			qn <= ~q;	
		end
endmodule
