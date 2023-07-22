`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:24 05/25/2023 
// Design Name: 
// Module Name:    d_latch_al 
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
module d_latch_al(
    input d,en,reset,
    output q,qb
    );
	 reg q;
	 wire qb;
	 //the always block triggered whenever d/en/reset changes
	 always@(d,en,reset)
	 begin
		//if reset high then the output will be 0
		//else as long as enable is high, output q follow input d
		if(!reset) q<=0;
		else 
			begin 
				if(en) q<=d;
				else q<=q;
			end
	 end
	 assign qb = ~q;
endmodule