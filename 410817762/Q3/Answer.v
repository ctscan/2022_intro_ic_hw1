module main(
    input inp,
    input clock,
    output reg out
);

    initial begin
        out=0;
    end

    always @(posedge clock)begin
        out=(inp%5)!=0;
    end
endmodule
