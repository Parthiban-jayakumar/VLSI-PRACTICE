module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output c
);

assign s = a ^ b ^ cin;
assign c = (a & b) | (b & cin) | (cin & a);

endmodule


module ripple_adder #(parameter SIZE = 4)
(
    input  [SIZE-1:0] a,
    input  [SIZE-1:0] b,
    input  cin,
    output [SIZE-1:0] s,
    output [SIZE-1:0] c
);

full_adder fa0(
    a[0],
    b[0],
    cin,
    s[0],
    c[0]
);

genvar i;

generate
    for(i=1; i<SIZE; i=i+1)
    begin
        full_adder fa(
            a[i],
            b[i],
            c[i-1],
            s[i],
            c[i]
        );
    end
endgenerate

endmodule
