`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 19:49:25
// Design Name: 
// Module Name: homework3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module homework3(
    input num,
    output reg answer
    ); 
 
integer i = 1'd0;  

always @(*)
begin  
    if (num == 1)
        i = i+i+1;
    else
        i = i+i;
        
    if (i%5 == 0)
        answer = 1'b1;
    else
        answer = 1'b0;
end

endmodule
