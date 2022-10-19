`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: yang
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
    input num,                  //輸入 一個二進位數0or1
    output reg answer           //判斷目前i是否能夠整除5 y=1 n=0
    ); 
 
integer i = 1'd0;               //宣告1整數 並指定為10進位的0  (功能為轉換成10進位的二進位串)

always @(*)                    //觸發
begin  
    if (num == 1)              //輸入==1
        i = i+i+1;             //公式換算  在二進位上左移(i*2) 輸入為1(+1)
    else
        i = i+i;
        
    if (i%5 == 0)             //判斷i是否整除5 並丟結果給answer
        answer = 1'b1;
    else
        answer = 1'b0;
end

endmodule
