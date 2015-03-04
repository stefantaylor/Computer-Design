`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:44 11/06/2012 
// Design Name: 
// Module Name:    seventeenbitadder 
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
module bigadder(
	 input clock,
	 input reset,
    input [15:0] in1,
    input [7:0] in2,
    output [16:0] out
	 );
	 
	 reg [7:0] sum;
	 reg [7:0] top;	 
	 reg carry;
	 
	 wire [7:0] sumwire;

	 
	 wire c1;
	 wire c2;
	 wire c3;
	 wire c4;
	 wire c5;
	 wire c6;
	 wire c7;
	 wire c8;
	 wire c9;
	 wire c10;
	 wire c11;
	 wire c12;
	 wire c13;
	 wire c14;
	 wire c15;
	 
	 halfadder a_halfadder(.A(in1[0]),.B(in2[0]),.outadd(sumwire[0]),.outcarry(c1));
	 fulladder a_fulladder(.A(in1[1]),.B(in2[1]),.C(c1),.outadd(sumwire[1]),.outcarry(c2));
	 fulladder b_fulladder(.A(in1[2]),.B(in2[2]),.C(c2),.outadd(sumwire[2]),.outcarry(c3));
	 fulladder c_fulladder(.A(in1[3]),.B(in2[3]),.C(c3),.outadd(sumwire[3]),.outcarry(c4));
	 fulladder d_fulladder(.A(in1[4]),.B(in2[4]),.C(c4),.outadd(sumwire[4]),.outcarry(c5));
	 fulladder e_fulladder(.A(in1[5]),.B(in2[5]),.C(c5),.outadd(sumwire[5]),.outcarry(c6));
	 fulladder f_fulladder(.A(in1[6]),.B(in2[6]),.C(c6),.outadd(sumwire[6]),.outcarry(c7));
	 fulladder g_fulladder(.A(in1[7]),.B(in2[7]),.C(c7),.outadd(sumwire[7]),.outcarry(c8));
	 
	 
	 
	 halfadder b_halfadder(.A(top[0]),.B(carry),.outadd(out[8]),.outcarry(c9));
	 halfadder c_halfadder(.A(top[1]),.B(c9),.outadd(out[9]),.outcarry(c10));
	 halfadder d_halfadder(.A(top[2]),.B(c10),.outadd(out[10]),.outcarry(c11));
	 halfadder e_halfadder(.A(top[3]),.B(c11),.outadd(out[11]),.outcarry(c12));
	 halfadder f_halfadder(.A(top[4]),.B(c12),.outadd(out[12]),.outcarry(c13));
	 halfadder g_halfadder(.A(top[5]),.B(c13),.outadd(out[13]),.outcarry(c14));
	 halfadder h_halfadder(.A(top[6]),.B(c14),.outadd(out[14]),.outcarry(c15));
	 halfadder i_halfadder(.A(top[7]),.B(c15),.outadd(out[15]),.outcarry(out[16]));
	 
	 assign out[7:0] = sum;
	 
	 always @(posedge clock or posedge reset)
	 begin
		if (reset)
			begin
				sum <= 0;
				top <= 0;
				carry <= 0;				
			end
		else 
			begin
				sum <= sumwire;
				top <= in1[15:8];
				carry <= c8;
			end
	 end
	 
	 


endmodule
