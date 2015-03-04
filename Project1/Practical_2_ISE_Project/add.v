`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:16 10/09/2012 
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
module add(
    input A,
    input B,
    input C,
 	 output outadd,
	 output outcarry
    );
	 

	assign outadd = (A ^ B) ^ C;
	assign outcarry = (A&C) | (A&B) | (B&C);

endmodule
