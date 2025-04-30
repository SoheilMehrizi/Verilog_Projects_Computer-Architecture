module multiplexer2_1 (
    y,
    d1,
    d0,
    s
);

    input d1, d0, s;
    output y; 
    assign y= s? d1: d0;
endmodule
