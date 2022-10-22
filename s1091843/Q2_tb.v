module Q2_tb();
	
	reg c,s;
	reg [15:0]d;
	
	wire[15:0]address;
	
	Q2 q2(.c(c),.s(s),.d(d),.address(address));
	
	initial begin
	
		d = 16'b0;
		c = 1'b0;
		s = 1'b0;
		#10;

		$display("\t Output address=%h,when c=%d ,s=%d ",address,c,s);

		
		d = 16'b0;
		c = 1'b0;
		s = 1'b1;
		#10;
 
		$display("\t Output address=%h,when c=%d ,s=%d ",address,c,s);
		
		d = 16'b0;
		c = 1'b1;
		s = 1'b0;
		#10;
		 
		$display("\t Output address=%h,when c=%d ,s=%d ",address,c,s);
		
		d = 16'b0;
		c = 1'b1;
		s = 1'b1;
		#10;
		
		$display("\t Output address=%h,when c=%d ,s=%d ",address,c,s);

		

		 
		

	
	end
	
endmodule
