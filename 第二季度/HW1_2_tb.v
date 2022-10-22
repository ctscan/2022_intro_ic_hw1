module HW1_2_tb();
reg d;
reg s;
reg c;

wire adress;

adder uut(
	.d(d),
	.s(s),
	.c(c),
	.adress(adress)
);

initial begin
	c=0;
	s=0;
	d=11;
	#10;
	c=1;
	s=1;
	d=123;
	#10;
	c=1;
	s=0;
	d=1234;
	
end

endmodule