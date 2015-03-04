`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:05 11/06/2012 
// Design Name: 
// Module Name:    add 
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
module fulladder(
    input A,
    input B,
    input C,
 	 output outadd,
	 output outcarry
    );
	 

	assign outadd = (A ^ B) ^ C;
	assign outcarry = (A&C) | (A&B) | (B&C);

endmodule
