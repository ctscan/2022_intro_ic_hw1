module Q3 (out, in, clk);
  output reg out;
  input in, clk;
  parameter p0 = 3'b000,  t1 = 3'b001, t2 = 3'b010, t3 = 3'b011 , t4 = 3'b100;
  reg [2:0] state;
  
  initial begin
    state = p0;
    out = 0;
  end
  
  always@(posedge clk)begin
    case(state)
            t0: 
                state=in == 1 ? p1:p0;
            t1: 
                state=in == 1 ? p3:p2;
            t2: 
                state=in == 1 ? p0:p4;
            t3: 
                state=in == 1 ? p2:p1;
            t4: 
                state=in == 1 ? p4:p3;
    endcase
    if(state == p0)
      out = 1;
    else
      out = 0;
  end
  endmodule
