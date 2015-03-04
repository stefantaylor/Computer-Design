`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:02 10/02/2012 
// Design Name: 
// Module Name:    three_input_adder 
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
module three_input_adder(
    input A,
    input B,
    input C,
 	 output outadd,
	 output outcarry
    );
	 

	assign outadd = (A ^ B) ^ C;
	assign outcarry = (A&C) | (A&B) | (B&C);

endmodule
