`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:02 07/28/2010 
// Design Name: 
// Module Name:    top 
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
module top(
    input clk,
    input reset,
    input [3:0] switches,
    output [7:0] LED,
    output [7:0] LCD
    );

// use these wires as your inputs

wire [2:0] in1;
wire [2:0] in2;


// register for the result and wire for temporary result

reg result;
wire [7:0] temp;

always @(posedge clk or posedge reset)

	begin
	end

// button memory module, driving the inputs from dtypes.

BTN_memory u_BTN_memory(
.clk(clk),
.reset(reset),
.buttons(switches),
.in1(in1),
.in2(in2)
);

// add your own code here

//	threebitadder u_threebitadder(in1,in2,temp);
	fsm1 u_fsm1(clk,reset,gen);
	fsm2 u_fsm2(clk,reset,gen,out1,out2,out3,out4);

// debug logic: drives the input values to the on-board LEDs. 
// you can replace this if you need to. 
assign LED = {out1,out2,out3,out4};



// LCD driver instantiation. 
// not currently used; use this only if you attach the LCD board. 

LCD_driver u_LCD(
.value(result),
.LCD(LCD)
);


endmodule
