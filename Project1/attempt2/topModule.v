`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:55 10/09/2012 
// Design Name: 
// Module Name:    topModule 
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
module topModule(
    input A,
    input B,
    input C,
    input clock,
    input reset,
    output outadd,
    output outcarry
    );

	wire X;
	wire Y;
	three_input_adder u_adder(A,B,C,X,Y);
	Dtype	u_dtype(clock,reset,X,outadd);
	Dtype	v_dtype(clock,reset,Y,outcarry);

endmodule
