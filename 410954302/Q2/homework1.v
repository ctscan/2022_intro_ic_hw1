`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/15 21:42:49
// Design Name: 
// Module Name: homework1
// Project Name:功課2(電路設計) 
// Target Devices: 根據hw1_1
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


module homework1(
    input [15:0]d,           //輸入16bit的d(16位元4byte)
    input c,                //輸入c
    input s,               //輸入s
    output reg [15:0]address  //輸出 暫存器reg 的16bit的address(16位元4byte)      **暫存器目的為更方便更動數值
);

always @(*)              //總是執行
begin                   //開始
    if (c==0)          
        address = d;   
    else
    begin
        if (s==1)
            address = d + 16'b1;   //16'b1 = 16位元 2進位(b) 1點
        else
            address = d - 16'b1;
    end
end
endmodule
