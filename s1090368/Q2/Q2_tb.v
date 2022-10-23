module Q2_tb();
	reg c;
	reg s;
	reg [15:0]d;
	wire [15:0]address;
	Q2 Q2_test (
		.c(c),
		.s(s),
		.d(d),
		.address(address)
	);
	initial begin
		
		d = 16'b1;
		c = 0;
		s = 0;
		
		#50
		d = 16'b10;
		c = 1;
		s = 0;
		
		#50
		d = 16'b100;
		c = 0;
		s = 1;
		
		#50
		d = 16'b1000;
		c = 1;
		s = 1;
	end
endmodule
