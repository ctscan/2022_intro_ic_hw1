`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 20:00:23
// Design Name: 
// Module Name: homework3_test
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


module homework3_test();
reg num;
wire answer;

homework3 uui(
    .num(num),
    .answer(answer)
);

initial
begin
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
