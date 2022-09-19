module main/*(
    input [15:0]d,
    input c,
    input s,
    output reg[15:0]ans
    )*/;
    reg BUTTEN;
    reg [15:0] d;
    reg c,s;
    reg [15:0]ans;
    reg [100:0]XNOR_reg;
    reg [100:0]XOR_reg;
    integer i;
    initial begin
        d=16'h1310;
        s=1'b1;
        c=1'b1;
        for(i=0;i<=14;i=i+1)begin
            XNOR_reg[i]=~(d[i]^s);
        end
        XOR_reg[0]=c;
        for(i=0;i<=6;i=i+1)begin
            XOR_reg[0]=XOR_reg[0]|XNOR_reg[i];
        end
        XOR_reg[1]=XOR_reg[0];
        XOR_reg[0]=~XOR_reg[0];
        for(i=7;i<=11;i=i+1)begin
            XOR_reg[1]=XOR_reg[1]|XNOR_reg[i];
        end
        XOR_reg[2]=XOR_reg[1];
        XOR_reg[1]=~XOR_reg[1];
        for(i=12;i<=14;i=i+1)begin
            XOR_reg[2]=XOR_reg[2]|XNOR_reg[i];
        end
        XOR_reg[2]=~XOR_reg[2];
        BUTTEN=c;
        for(i=0;i<6;i=i+2) begin
            ans[i+:2]=block(d[i+:2],XNOR_reg[i+:2],BUTTEN);
            BUTTEN=next(XNOR_reg[i+:2],BUTTEN);
        end
        ans[6]=BUTTEN^d[6];
        BUTTEN=XOR_reg[0];
        
        for(i=7;i<10;i=i+2) begin
            ans[i+:2]=block(d[i+:2],XNOR_reg[i+:2],BUTTEN);
            BUTTEN=next(XNOR_reg[i+:2],BUTTEN);
        end
        ans[11]=BUTTEN^d[11];
        BUTTEN=XOR_reg[1];
        for(i=12;i<13;i=i+2) begin
            ans[i+:2]=block(d[i+:2],XNOR_reg[i+:2],BUTTEN);
            BUTTEN=next(XNOR_reg[i+:2],BUTTEN);
        end
        ans[14]=BUTTEN^d[14];
        ans[15]=XOR_reg[2]^d[15];
        $display("%h",ans[15:0]);
        
        $finish ;
    end
    
    function [1:0]block;
        input [1:0]Ninput;
        input [1:0]XNOR_input;
        input butten;
        begin
            block[0]=butten^Ninput[0];
            block[1]=((~((~butten)|XNOR_input[0]))^Ninput[1]);
        end
    endfunction
    function next;
        input [1:0]XNOR_input;
        input butten;
        begin
            next=~(XNOR_input[0]|XNOR_input[1]|(~butten));
        end
    endfunction
endmodule
