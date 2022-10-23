module Q3(inp,out);
	
	input inp;
	output reg out;
	
	integer i=1'd0;
	
	always @(*)begin
		
		if (inp==1)              
			i=2*i+1;             
		else
			i=2*i;
			
		if (i%5 == 0)    
			out=1'b1;
		else
			out=1'b0;

	end
endmodule