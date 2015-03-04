`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:25 10/30/2012 
// Design Name: 
// Module Name:    fsm2 
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
module fsm2(
    input clk,
    input reset,
    input in1,
    output reg out1,
    output reg out2,
    output reg out3,
    output reg out4
    );

	always @(posedge clk or posedge reset)
		
		begin
			if (reset)
				begin
					out1 <= 1;
					out2 <= 0;
					out3 <= 0;
					out4 <= 0;
				end
			else
				begin
					case ({out1,out2,out3,out4,in1})
						5'b10001 : begin out1<=0; out2<=1; end
						5'b01001 : begin out2<=0; out3<=1; end
						5'b00101 : begin out3<=0; out4<=1; end
						5'b00011 : begin out4<=0; out1<=1; end
					endcase
				end
		
		end
	
	
	
endmodule
