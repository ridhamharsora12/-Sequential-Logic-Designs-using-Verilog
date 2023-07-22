`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  Aim : mplementation of 8-bit binary up/down counter with load and active high reset facilities. 
//////////////////////////////////////////////////////////////////////////////////
module counter8bit(load,reset,clk,in,count,up_down);
	input load,reset,clk;
	input [7:0]in;
	input up_down;      // 0 : up counter , 1 : down counter
	output reg [7:0]count;
	
	always @(posedge clk,posedge reset,posedge up_down)
	begin
		if(reset) count <= 0;
		else 
			begin
				if(load) count<=in;
				else begin
					if(up_down) count <= count-1;
					else count<= count+1;
				end
			end
	end


endmodule
