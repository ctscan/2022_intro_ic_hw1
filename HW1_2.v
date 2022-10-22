module HW1_2(adress,d,c,s);

input [15:0]d;
input c,s;
output reg [15:0]adress;


always@(c or s)
if(c==1)
	if(s==0) adress=d+1;
	else adress=d-1;
else
	adress=d;
endmodule