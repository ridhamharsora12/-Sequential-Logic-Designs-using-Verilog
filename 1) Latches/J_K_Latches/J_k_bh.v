`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:36 05/25/2023 
// Design Name: 
// Module Name:    J_k_latch_bh 
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
module J_k_latch_bh(
    input j,k,en,
    output reg q,qb
    );
	 always@(*)
		begin
			if(en)
			begin
				case({j,k})
					2'b00 : q = q;
					2'b01 : q = 0;
					2'b10 : q = 1;
					2'b11 : q = ~q;
				endcase
			end
			else q = q;
			qb = ~q;
		end 

endmodule
