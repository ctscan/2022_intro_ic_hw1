module main(
    input inp,
    input clock,
    output reg out
);
    initial begin
        assign tamp1=inp%5;
        state=n0;
        out=0;
    end
    always @(posedge clock)begin
        out=tamp1==0;
    end
endmodule
