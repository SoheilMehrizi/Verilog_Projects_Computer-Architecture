// Counter module , two state : Up and down
// when direction is 1 , it will counts upward
// when direction is 0 , it will counts downward 
// enable is like turn of/on switch
// reset will turn all bit to zero
module moduleName (
    enable,
    reset,
    clk,
    direction,
    result,
);
input enable, reset, clk, direction;
output result;
reg [7:0] result;
assign result = 8'b0;

always @(posedge clk ) begin
    if (reset) begin
        result <= 8'b0;
    end    
    else if(enable) begin
        if (direction) begin
            // Upward counting
        
            /* each time in posedge clock 
            increase the result
            */
            result <= result + 1;
        
        end
        else begin
        
            /*
            each time in posedge clock
            decrease the result
            */
            result <= result - 1;
        
        end
    end     
end

    
endmodule
