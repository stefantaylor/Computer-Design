`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:37 10/30/2012 
// Design Name: 
// Module Name:    fsm1 
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
module fsm1(
    input clk,
    input reset,
    output reg out
    );

	reg [23:0] count;
	
	always @(posedge clk or posedge reset)
		begin
			if (reset)
				begin
					out <= 0;
					count <= 0;
				end
			else
				begin
					if (count == 12499999)
						begin
							out <= 1;
							count <= 0;
						end
					else
						begin
							out <= 0;
							count <= (count+1);
						end
				end
		end
	
	
endmodule
