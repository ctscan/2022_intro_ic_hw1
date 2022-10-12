module Q3 (
           input clk,
           input num,
           output d5_s
       );


parameter IDLE = 3'b000;
parameter s_1   = 3'b001;
parameter s_2   = 3'b010;
parameter s_3   = 3'b011;
parameter s_4   = 3'b100;

reg [2:0] curr_state;
reg [2:0] next_state;
reg d5_s;

initial
begin
    curr_state = 0;
    d5_s = 0;
end

// output logic
always@(posedge clk)
begin
    case (curr_state)
        IDLE:
            d5_s = 1'b1;
        default:
            d5_s = 1'b0;
    endcase
end

// next state logic
always@(posedge clk)
begin
    case (curr_state)
        IDLE:
            if(num)
                next_state = s_1;
            else
                next_state = IDLE;
        s_1:
            if(num)
                next_state = s_3;
            else
                next_state = s_4;
        s_2:
            if(num)
                next_state = s_2;
            else
                next_state = s_1;
        s_3:
            if(num)
                next_state = s_4;
            else
                next_state = s_2;
        s_4:
            if(num)
                next_state = IDLE;
            else
                next_state = s_3;
        default :
            next_state = IDLE;

    endcase
    curr_state = next_state;
end
endmodule
