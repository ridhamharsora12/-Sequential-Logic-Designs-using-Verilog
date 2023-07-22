`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:48 05/25/2023 
// Design Name: 
// Module Name:    d_latchbh 
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
module d_latchbh(
    input d,en,
    output reg q,qb
    );
	
	 always@(*)
	 begin
		if(en)
			begin
				if(d) q=1;
				else  q=0;
			end
		else q=q;
		qb=~q;
	 end

endmodule
