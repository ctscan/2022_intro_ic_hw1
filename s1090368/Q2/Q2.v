module Q2(d, c, s, address);
	input c, s;
	input [15:0]d;
	output reg [15:0]address;
	always@(*)begin
		if(c==0) address = d;
		else if(c==1)begin
			if(s==0) address = d+16'b1;
			else if(s==1) address = d-16'b1;
		end
	end
endmodule
