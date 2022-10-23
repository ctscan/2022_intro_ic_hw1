module Q3_tb();
  reg inp,clock;
  wire out;
  Q3 Q3_test(
	  .inp(inp),
    .clock(clock),
    .out(out)
  );	
	always #5 clock=~clock;
	
  initial begin     
    $dumpfile("Q3.vcd");
    $dumpvars;

    inp=1;
		clock=0;

    #10 
		inp=0;
    #10 
		inp=1;
    #10 
		inp=0;
    #10 
		inp=1;
    #10
		inp=0;
		#10 
		inp=1;
    #10
		inp=0;
		#10 
		inp=1;
    #10
		inp=0;
    #10 		
		$finish;
    end

endmodule
