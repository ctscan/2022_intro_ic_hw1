`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/15 21:44:36
// Design Name: 測試電路
// Module Name: homeworktest
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


module homeworktest();

reg [15:0]d;       //對應電路設計圖 input = reg   output = wire
reg c;
reg s;

integer i;

wire [15:0]address;

homework1 test_out (                //呼叫電路圖 並帶入對應函數
    .d(d),
    .c(c),
    .s(s),
    .address(address)
);

initial                        //一開始就執行 但只執行一次
begin
    d = 16'b1111111111111110;   //初始化16bit為二進位(粉色)
    c = 1'b0;                   //初始化二位元0
    s = 1'b0;
    
    #200                        //經過200ns後執行
        c = 1'b1;
    #200
        c = 1'b0;
        s = 1'b1;
    #200
        c = 1'b1;
        s = 1'b1;
                
end
    
        
endmodule
