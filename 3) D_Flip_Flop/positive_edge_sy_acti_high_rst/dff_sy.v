`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:38 05/27/2023 
// Design Name: 
// Module Name:    dff_sy 
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
//Implementation of synchronous positive edge-triggered D-FlipFlop with active high reset and active low preset.


module dff_sy(
    input d,clk,rst,pst,
	 output reg q,
	 output qb
	 );
	 always@(posedge clk)
	 begin
		if(rst) q<=0;       //active high reset
		else if(!pst) q<=1; //active low preset
		else q<=d;
	 end
	 assign qb = ~q;

endmodule
