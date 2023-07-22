`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module fby4(input fin,rst,output finby4,q0);

	//internal wire 
	wire q0,q0_bar,q1,q1_bar;
	
	
	dff d0(fin,rst,q0_bar,q0,q0_bar);
	dff d1(q0,rst,q1_bar,q1,q1_bar);
	
	assign finby4 = q1;
	
endmodule

//d flip flop module
module dff(clk,rst,d,q,q_bar);
	input clk,rst,d;
	output reg q;
	output q_bar;
	
	always@(posedge clk)
	begin
		if(rst) q<=0;
		else q<=d;
	end
	assign q_bar = ~q;
endmodule