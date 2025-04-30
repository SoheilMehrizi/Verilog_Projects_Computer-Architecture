 module moduleName (
    y,
    en,
    a,
    b
 );
 // declare the input and output ports

 input a, b, en;
 output reg [3:0] y;

 // required asssignments
 wire  en, not_a, not_b;

 assign not_a = ~a;

 assign not_b = ~b;
 
 // assign output value referring to logic diagram

 assign y[0] = en&not_a&not_b;
 assign y[1] = en&not_a&b;
 assign y[2] = en&a&b;
 assign y[3] = en&a&not_b;
 endmodule
