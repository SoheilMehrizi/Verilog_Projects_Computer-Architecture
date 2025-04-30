module moduleName (
    clk,
    A,
    B,
    Q,
    R
);
input clk, A, B;
output Q, R;
reg [3:0] Q;
reg [1:0] R;
reg [3:0] preQ;
reg [1:0] preR;
always @(*) begin
    preQ = A / B;
    preR = A - preQ * 8;
end
always @(posedge clk ) begin
    Q <= preQ;
    R <= preR;
    
end
endmodule