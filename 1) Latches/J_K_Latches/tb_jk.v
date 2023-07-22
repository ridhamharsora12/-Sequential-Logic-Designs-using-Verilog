`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:51 05/25/2023
// Design Name:   J_k_latch_bh
// Module Name:   /home/ise/VLSI/PRAC21/J_k_bh/tb_jk.v
// Project Name:  J_k_bh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: J_k_latch_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_jk;

	// Inputs
	reg j;
	reg k;
	reg en;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	J_k_latch_bh uut (
		.j(j), 
		.k(k), 
		.en(en), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		#0 en = 1'b0;
		forever #10 en = ~en;
	end
	
	initial begin
		#0 {j,k} = 2'b00;
		#3 {j,k} = 2'b01;
		#3 {j,k} = 2'b10;
		#3 {j,k} = 2'b11;
		
		#5 {j,k} = 2'b00;
		#5 {j,k} = 2'b01;
		#5 {j,k} = 2'b10;
		#5 {j,k} = 2'b11;
		#5 $finish;
	end
      
endmodule

