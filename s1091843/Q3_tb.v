module Q3_tb();
	reg inp;
	wire out;

	Q3 q3(.inp(inp),.out(out));

	initial begin
		
		#100 inp=1'b1; 
		#100 inp=1'b0; 
		#100 inp=1'b1; 
		#100 inp=1'b0; 
		#100 inp=1'b1;

	end
	
	initial begin
      $monitor("Input=%b,Output=%b,when %t.",inp,out,$time);
   end

endmodule
