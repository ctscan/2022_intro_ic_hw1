module Q2 ( d, c, s, address );
  input [15:0] d;
  input c, s;
  output reg [15:0] address;
  
  always@(c or s) begin
    if (c == 1 && s == 0 )begin
      address = d + 1;
    end
    else if (c == 1 && s == 1 )begin
      address = d - 1;
    end
    else
      address = d;
  end
endmodule
