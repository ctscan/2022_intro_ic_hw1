module ITICD_hw(c,s,d,address);


	input c,s;
	input [15:0]d;
	output [15:0]address;
	
	wire c,s;
	wire d;	
	reg address;
	

	
	always@(*)begin
	
		if(c==0)
			address=d;
		else	begin
			
			if(s==0)begin
				
				if(d==4'hf)
					address=4'h0;
				else
					address=d+1;
			end
			
			else begin
			
				if(d==4'h0)
					address=4'hf;
				else
					address=d-1;	

			end		
		end
	end
	
endmodule