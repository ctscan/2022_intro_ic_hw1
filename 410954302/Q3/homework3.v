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
    input num,                  //��J �@�ӤG�i���0or1
    output reg answer           //�P�_�ثei�O�_����㰣5 y=1 n=0
    ); 
 
integer i = 1'd0;               //�ŧi1��� �ë��w��10�i�쪺0  (�\�ର�ഫ��10�i�쪺�G�i���)

always @(*)                    //Ĳ�o
begin  
    if (num == 1)              //��J==1
        i = i+i+1;             //��������  �b�G�i��W����(i*2) ��J��1(+1)
    else
        i = i+i;
        
    if (i%5 == 0)             //�P�_i�O�_�㰣5 �åᵲ�G��answer
        answer = 1'b1;
    else
        answer = 1'b0;
end

endmodule
