`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Edinburgh University Informatics
// Engineer: Stefan Taylor
// 
// Create Date:    14:29:23 10/02/2012 
// Design Name: 
// Module Name:    two_input_xor 
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
module two_input_xor(
    input in1,
    input in2,
    output out1,
    output out2,
    output xorout
    );

	assign out1 = in1;
	assign out2 = in2;
	assign xorout = in1 ^ in2;
	
endmodule
