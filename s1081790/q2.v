module Q2 (address, d, c, s);

	output reg [15:0] address;
	input  c, s;	
	input  [15:0]  d;

	always @(*) begin
		if(c == 0) address = d;
		else if(c == 1 && s == 1) address = d - 1;
		else if(c == 1 && s == 0) address = d + 1;
		else;
	end

endmodule