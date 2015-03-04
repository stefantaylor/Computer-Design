`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:07 11/28/2012 
// Design Name: 
// Module Name:    bigmultiplier 
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
module bigmultiplier(
	 input clock,
	 input reset,
	 input [7:0] in1,
    input [7:0] in2,
    output[15:0] result
    );
	 
	 wire r11;
	 wire r12;
	 wire r13;
	 wire r21;
	 wire r22;
	 wire r23;
	 wire r31;
	 wire r32;
	 wire r33;
	 
	 
	 
	 threebitmultiplier i_threebitmultiplier({0,in1[7:5]}, {0,in2[7:5]}, r33);

	 
	 
endmodule
