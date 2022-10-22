`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:37 10/18/2022 
// Design Name: 
// Module Name:    ic_home_top 
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
module ic_home_top(
       input num,
       output reg val
    );
    
	 integer i = 1'd0;  

    always @(*)
    begin  
       if (num == 1)
           i = i+i+1;
       else
           i = i+i;
       if (i%5 == 0)
           val = 1'b1;
       else
           val = 1'b0;
       end
endmodule
