`timescale 1ns/1ps

module full_adder_tb;

reg[3:0] a,b;
reg [3:0] cin;
wire [15:0]s,c;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .c(c)
);

initial begin
    $monitor("time=%0t a=%b b=%b cin=%b s=%b c=%b",
              $time,a,b,cin,s,c);

    a=0; b=0; cin=0;
    #20; a=0; b=0; cin=1;
    #20; a=0; b=1; cin=0;
    #20; a=0; b=1; cin=1;
    #20; a=1; b=0; cin=0;
    #20; a=1; b=0; cin=1;
    #20; a=1; b=1; cin=0;
    #20; a=1; b=1; cin=1;

    #20; 
    $finish;
end

endmodule
