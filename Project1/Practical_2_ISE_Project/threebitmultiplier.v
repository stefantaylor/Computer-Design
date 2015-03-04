`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:57 10/16/2012 
// Design Name: 
// Module Name:    threebitmultiplier 
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
module threebitmultiplier(
   input [2:0] A,
	input [2:0] B,
	output [5:0] R
	);

	wire C1;
	wire C2;
	wire C3;
	wire C4;
	wire C5;
	wire P1;
	wire P2;
	wire [2:0] t1;
	wire [2:0] t2;
	wire [2:0] t3;

	assign t1 = {3{A[0]}} & B[2:0];
	assign t2 = {3{A[1]}} & B[2:0];
	assign t3 = {A[2],A[2],A[2]} & B[2:0];
	
	assign R[0] = t1[0];
	add c2_add(t1[1],t2[0],1'b0,R[1],C1);
	add c30_add(t1[2],t2[1],C1,P1,C2);
	add c31_add(t3[0],P1,1'b0,R[2],C3);
	add c40_add(t2[2],t3[1],C2,P2,C4);
	add c41_add(P2,C3,1'b0,R[3],C5);
	add c5_add(t3[2],C4,C5,R[4], R[5]);

endmodule
