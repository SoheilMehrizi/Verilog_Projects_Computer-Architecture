module four_bit_adder (
    a,
    b,
    c0,
    select,
    sum,
    cout
);
input [3:0] a, b;
input select, c0;
output [3:0] sum;
output cout;
// define the P and G wire for implementing CLA Method
// and tmp for applying the operator selection on b 
// and prop will use in sumation process

wire [3:0] P, G, tmp, prop;

// [3:0] C is a temporary wire for implementing carry look A Head for 4 bit adder/subtractor
// c[0] is c1 and c[3] is cout
wire [3:0] C;

// check if the operator is adder assign tmp = b else assign tmp = (b ^ 1) + 1
assign tmp = select ? b : (b ^ 1) & 1;

// initializing P = A ^ tmp and G = A & tmp
assign P = a ^ tmp;

assign G = a & tmp;

// Implementing The CLA : Carry Look A Head Method
assign C[0] = c0;
assign C[1] = G[0] | P[0] &  c0;
assign C[2] = G[1] | P[1] & G[0] | P[1] & P[0] &  c0;
assign C[3] = G[2] | P[2] & G[1] | P[2] & P[1] & G[0] | P[2] & P[1] & P[0] & c0;
assign cout = G[3] | P[3] & G[2] | P[3] & P[2] & G[1] | P[3] & P[2] & P[1] & G[0] | P[3] & P[2] & P[1] & P[0] & c0;

// Computing the sumation of two 4bit binary nubmer
// Computing a XOR temp(inverted_version  or original version of b ; depends on operator selector, select)
assign prop = a ^ tmp;

// adding carries to each bit (c = (0, 1))
assign sum = prop ^ C;


endmodule
