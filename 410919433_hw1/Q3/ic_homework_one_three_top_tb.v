`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:39 10/18/2022
// Design Name:   ic_home_top
// Module Name:   C:/xilinx_work/ic_homework_one_three/ic_homework_one_three_top_tb.v
// Project Name:  ic_homework_one_three
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ic_home_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ic_homework_one_three_top_tb;

	// Inputs
	reg  num;

	// Outputs
	wire val;

	// Instantiate the Unit Under Test (UUT)
	ic_home_top uut (
		.num(num), 
		.val(val)
	);

	initial begin
		
      num = 1'b1; 
      #200
         num = 1'b0; 
      #200
         num = 1'b1; 
      #200
         num = 1'b0; 
      #200
         num = 1'b1;
         
end
      
endmodule

