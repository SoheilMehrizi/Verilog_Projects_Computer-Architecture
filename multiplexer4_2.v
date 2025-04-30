module moduleName (
    out1,
    out2,
    a,
    b,
    s
);
    input a, b, s;
    output out1, out2;
    wire na = ~a, nb = ~b;

    multiplexer2_1(out1, a, na, s);
    multiplexer2_1(out2, b, nb, s);
endmodule