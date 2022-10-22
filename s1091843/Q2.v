module Q2(c,s,d,address);


	input c,s;
	input [15:0]d;
	output reg [15:0]address;
	
	always@(*)begin
	
		if(c==0)
			address=d;
		else	begin
			
			if(s==0)begin
				
				if(d==16'b1111_1111_1111_1111)
					address=16'b0;
				else
					address=d+16'b1;
			end
			
			else begin
	
				if(d==16'b0)
				
					address=16'b1111_1111_1111_1111;

				else
					address=d-16'b1;	

			end		
		end
		
	end
	
endmodule