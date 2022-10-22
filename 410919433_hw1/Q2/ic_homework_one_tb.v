`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:50:19 10/15/2022
// Design Name:   ic_homework
// Module Name:   C:/xilinx_work/IC_homework1/ic_homework_one_tb.v
// Project Name:  IC_homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ic_homework
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ic_homework_one_tb;

	// Inputs
	reg [15:0] d;
	reg c;
	reg s;

	// Outputs
	wire [15:0] address;

	// Instantiate the Unit Under Test (UUT)
	ic_homework uut (
		.d(d[15:0]), 
		.c(c), 
		.s(s), 
		.address(address[15:0])
	);

	initial begin
		// Initialize Inputs
		d[15:0] = 16'h1;
		c = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100
        c=1;
		  s=0;
		// Add stimulus here
      #100
		  c=0;
		  s=1;
		#100
		  c=1;
		  s=1;
	end
      
endmodule

