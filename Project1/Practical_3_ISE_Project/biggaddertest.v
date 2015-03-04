`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:00 11/28/2012
// Design Name:   bigadder
// Module Name:   /afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/Practical_3_ISE_Project/biggaddertest.v
// Project Name:  Practical3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bigadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module biggaddertest;

	// Inputs
	reg clock;
	reg reset;
	reg [15:0] in1;
	reg [7:0] in2;

	// Outputs
	wire [16:0] out;

	// Instantiate the Unit Under Test (UUT)
	bigadder uut (
		.clock(clock), 
		.reset(reset), 
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 in1 = 16'b1111111111111111;
		#10 in2 = 8'b00000001;
		#10 in1 = 0;
		#10 in2 = 0;

	end
      
	always
			#5 clock = ~clock;
		
endmodule

