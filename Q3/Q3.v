module Q3 (
           input clk,
           input num,
           output ans
       );


parameter a=3'b000,b=3'b001,c=3'b010,d=3'b011,e=3'b100;

reg [2:0] curr_state;
reg [2:0] next_state;
reg ans;

initial
begin
    curr_state = 0;
    ans = 0;
end

// output logic
always@(posedge clk)
begin
    case (curr_state)
        a:
            ans = 1'b1;
        default:
            ans = 1'b0;
    endcase
end

// next state logic
always@(posedge clk)
begin
    case (curr_state)
        a:
            if(num)
                next_state = b;
            else
                next_state = a;
        b:
            if(num)
                next_state = d;
            else
                next_state = e;
        c:
            if(num)
                next_state = c;
            else
                next_state = b;
        d:
            if(num)
                next_state = e;
            else
                next_state = c;
        e:
            if(num)
                next_state = a;
            else
                next_state = d;
        default :
            next_state = a;

    endcase
    curr_state = next_state;
end
endmodule
