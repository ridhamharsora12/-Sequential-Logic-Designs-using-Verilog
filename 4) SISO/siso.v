`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:15 05/30/2023 
// Design Name: 
// Module Name:    siso 
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
// aim : Implementation of 5-bit bidirectional serial-in-serial-out (SISO) shift  register

module siso(si,so,clk,q);
	input si,clk;
	output reg so;
	
	output reg [4:0]q;
	
	always@(posedge clk)
	begin
		
		q[4]<=si;
		q[3]<=q[4];
		q[2]<=q[3];
		q[1]<=q[2];
		q[0]<=q[1];
		so<=q[0];
	end
endmodule
