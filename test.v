module test (
    a,
    s0,
    b
);
input [3:0] a;
input s0;
output [3:0] b;

wire [3:0] x;

assign b = a ^ s0;
    
endmodule
