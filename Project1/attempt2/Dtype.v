`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:03 10/09/2012 
// Design Name: 
// Module Name:    Dtype 
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
module Dtype(
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
