`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:26 10/09/2012 
// Design Name: 
// Module Name:    threebitadder 
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
module threebitadder(
		input [2:0] A,
		input [2:0] B,
		output [3:0] R
		);
		
		wire C1;
		wire C2;
		
	add a_add(A[0],B[0],1'b0,R[0],C1);
	add b_add(A[1],B[1],C1,R[1],C2);
	add c_add(A[2],B[2],C2,R[2],R[3]);
	
	
endmodule
