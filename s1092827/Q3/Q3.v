module Q3 (out, inp, clk);
  output reg out;
  input wire inp;
  input wire clk;
  parameter t0 = 3'b000,  t1 = 3'b001, t2 = 3'b010, t3 = 3'b011 , t4 = 3'b100;
  reg [2:0] state;
  
  initial begin
    state=t0;
    out=0;
  end
  
  always @(posedge clk)begin
        case(state)
            t0: 
                state=inp==0 ? t0:t1;
            t1: 
                state=inp==0 ? t2:t3;
            t2: 
                state=inp==0 ? t4:t0;
            t3: 
                state=inp==0 ? t1:t2;
            t4: 
                state=inp==0 ? t3:t4;
        endcase

        out = state == t0;
    end
endmodule
