`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/15 21:44:36
// Design Name: ���չq��
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

reg [15:0]d;       //�����q���]�p�� input = reg   output = wire
reg c;
reg s;

integer i;

wire [15:0]address;

homework1 test_out (                //�I�s�q���� �ña�J�������
    .d(d),
    .c(c),
    .s(s),
    .address(address)
);

initial                        //�@�}�l�N���� ���u����@��
begin
    d = 16'b1111111111111110;   //��l��16bit���G�i��(����)
    c = 1'b0;                   //��l�ƤG�줸0
    s = 1'b0;
    
    #200                        //�g�L200ns�����
        c = 1'b1;
    #200
        c = 1'b0;
        s = 1'b1;
    #200
        c = 1'b1;
        s = 1'b1;
                
end
    
        
endmodule
