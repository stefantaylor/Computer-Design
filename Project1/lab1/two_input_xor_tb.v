`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:29 10/02/2012
// Design Name:   two_input_xor
// Module Name:   /afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/lab1/two_input_xor_tb.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_input_xor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_input_xor_tb;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out1;
	wire out2;
	wire xorout;

	// Instantiate the Unit Under Test (UUT)
	two_input_xor uut (
		.in1(in1), 
		.in2(in2), 
		.out1(out1), 
		.out2(out2), 
		.xorout(xorout)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		#10
		in1 = 1;
		
		#10
		in2 = 1;
		
		#10
		in1 = 0;
		
		#10
		in2 = 0;
		

	end
      
endmodule

