module Q2_tb();

reg [15:0] d;
reg c,s;

wire [15:0] address;
integer  i=0;
Q2 q2(.d(d),.c(c),.s(s),.address(address));

initial
begin
    $dumpfile("Q2.vcd");
    $dumpvars;

    for (i=0; i < 65536; i= i+1)
    begin
        d=16'h0000+i;
        c=0;
        s=0;
        #1
         if(d!=address)
         begin
             $display("output address error,when c=%d ,s=%d ",c,s);
         end
     end

     for (i=0; i < 65536; i= i+1)
     begin
         d=16'h0000+i;
         c=0;
         s=1;
         #1
          if(d!=address)
          begin
              $display("output address error,when c=%d ,s=%d ",c,s);
          end
      end

      for (i=0; i < 65536; i= i+1)
      begin
          d=16'h0000+i;
          c=1;
          s=0;
          #1
           if(d+1'b1!=address)
           begin
               $display("output address error,when c=%d ,s=%d ",c,s);
           end
       end

       for (i=0; i < 65536; i= i+1)
       begin
           d=16'h0000+i;
           c=1;
           s=1;
           #1
            if(d-1'b1!=address)
            begin
                $display("output address error,when c=%d ,s=%d ",c,s);
            end
        end


        $finish;
end

endmodule
