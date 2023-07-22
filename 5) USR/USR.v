`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//s0 s1 Register operation
//0  0  No change
//0  1  right shift
//1  0  left shift
//1  1  parallel load
//////////////////////////////////////////////////////////////////////////////////
//AIM : mplementation of 5-bit universal shift register with serial-in-serial-out (SISO), serial-in-parallel-out (SIPO), parallel-in-parallel-out 
//(PIPO), parallel-in-serial-out (PISO) options

module mux(i0,i1,i2,i3,sel,f);
	input i0,i1,i2,i3;
	input [1:0]sel;
	output reg f;
	
	always@(*)
	begin
		case(sel)
			2'b00 : f = i0;
			2'b01 : f = i1;
			2'b10 : f = i2;
			2'b11 : f = i3;
		endcase
	end
endmodule

module dff(clk,clr,d,q);
	input clk,clr,d;
	output reg q;
	
	always@(posedge clk)
		begin
			if(clr) q<=0;
			else q<=d;
		end
endmodule

module USR(clr,clk,si,pi,po,sel);
	input clk,clr;
	input si;
	input [3:0]pi;
	input [1:0]sel;
	output [3:0]po;
	
	wire f1,f2,f3,f4;
	mux m1(po[3],si,po[2],pi[3],sel,f1);
	mux m2(po[2],po[3],po[1],pi[2],sel,f2);
	mux m3(po[1],po[2],po[0],pi[1],sel,f3);
	mux m4(po[0],po[1],si,pi[0],sel,f4);
	
	dff d1(clk,clr,f1,po[3]);
	dff d2(clk,clr,f2,po[2]);
	dff d3(clk,clr,f3,po[1]);
	dff d4(clk,clr,f4,po[0]);
	
	
endmodule
