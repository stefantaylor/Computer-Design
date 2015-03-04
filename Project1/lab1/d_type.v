`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:05 10/09/2012 
// Design Name: 
// Module Name:    d_type 
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
module d_type(
input clock,
input reset,
input D,
output reg Q
);

always @(posedge clock or posedge reset)
begin
	if(reset)
		begin
			Q <= 0;
		end
	else
		begin
			Q <= D;
		end
end
endmodule