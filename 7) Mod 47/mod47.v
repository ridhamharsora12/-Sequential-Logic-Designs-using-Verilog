`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Aim : Implementation of modulo-47 up counter with load and active high reset facilities. 
//////////////////////////////////////////////////////////////////////////////////
module mod47(rst,clk,load,in,count);
	input rst,clk,load;
	input [5:0]in;
	output reg [5:0] count;
	
	always@(posedge clk,posedge load,posedge rst)
	begin
		if(rst) count<= 0;
		else
			begin
				if(load) count<= in;
				else begin 
					count<= count+1;
					if(count == 6'b101111) count<=0;
				end
			end
	end

endmodule
