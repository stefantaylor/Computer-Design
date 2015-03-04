`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:57 10/16/2012 
// Design Name: 
// Module Name:    fourbitmultiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// fulladderitional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fourbitmultiplier(
   input [3:0] A,
	input [3:0] B,
	output [7:0] R
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

	assign t1 = {3{A[0]}} & B[3:0];
	assign t2 = {3{A[1]}} & B[3:0];
	assign t3 = {3{A[2]}} & B[3:0];
	assign t4 = {3{A[3]}} & B[3:0];
	
	assign R[0] = t1[0];

endmodule