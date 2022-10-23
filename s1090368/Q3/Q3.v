module Q3(inp,out,clock);
	input inp,clock;
	output reg out=0;
	reg[7:0] temp=8'b0;
  	always @(posedge clock)begin
      		if(inp==1) temp = temp+temp+1;
		else if(inp==0)temp = temp<<1;
		if(temp%5==0) out = 1;
		else out = 0;
  	end
endmodule
