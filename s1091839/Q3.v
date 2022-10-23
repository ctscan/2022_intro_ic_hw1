module Q3 (O, I, C);
  output reg O;
  input wire I;
  input wire C;
  parameter a0 = 3'b000,  a1 = 3'b001, a2 = 3'b010, a3 = 3'b011 , a4 = 3'b100;
  reg [2:0] state;

  initial begin
    state=a0;
    O=0;
  end

  always @(posedge C)begin
        case(state)
            a0: 
                state=I==0 ? a0:a1;
            a1: 
                state=I==0 ? a2:a3;
            a2: 
                state=I==0 ? a4:a0;
            a3: 
               state=I==0 ? a1:a2;
            a4: 
                state=I==0 ? a3:a4;
        endcase

        O = state == a0;
    end
endmodule
