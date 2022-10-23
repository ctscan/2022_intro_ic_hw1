include "q3.v"
timescale 1ns/1ns

 module q3_();
    reg i,c;
    wire out;

    q3 test(i,c,out);
    
    always #10 c = ~c;

    initial begin
      $dumpfile("q3.vcd");
      $dumpvars;

      i=0;
      c=0;
         
      #10 i=1;
      #10 i=0;
      #10 i=1;  
      #10 i=0;
      #10 i=1;
      #10 i=0;
      #10 i=1;  
      #100 $finish;
         
    end

 endmodule
