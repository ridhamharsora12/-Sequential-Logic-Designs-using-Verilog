`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//Implementation of D-latch using synchronous active high reset.
module d_latch_ah(
    input d,en,reset,
    output reg q,qb
    );
	 
	 //the always block triggered whenever d/en/reset changes
	 always@(d,en,reset)
	 begin
		//if reset high then the output will be 0
		//else as long as enable is high, output q follow input d
		if(reset) q<=0;
		else 
			begin 
				if(en) q<=d;
			end
		qb<=~q;
	 end
endmodule
