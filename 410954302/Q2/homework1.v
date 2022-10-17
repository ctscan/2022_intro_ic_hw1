`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/15 21:42:49
// Design Name: 
// Module Name: homework1
// Project Name:�\��2(�q���]�p) 
// Target Devices: �ھ�hw1_1
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
    input [15:0]d,           //��J16bit��d(16�줸4byte)
    input c,                //��Jc
    input s,               //��Js
    output reg [15:0]address  //��X �Ȧs��reg ��16bit��address(16�줸4byte)      **�Ȧs���ت������K��ʼƭ�
);

always @(*)              //�`�O����
begin                   //�}�l
    if (c==0)          
        address = d;   
    else
    begin
        if (s==1)
            address = d + 16'b1;   //16'b1 = 16�줸 2�i��(b) 1�I
        else
            address = d - 16'b1;
    end
end
endmodule
