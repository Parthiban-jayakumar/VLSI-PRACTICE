`timescale 1ns/1ps

module eb_8_3_tb;

reg [7:0] d;
wire [2:0] y;

// Change the module name if necessary
endoer_8_3 dut (
    .d(d),
    .y(y)
);

initial begin
    d = 8'b0000_0000;
    #2 d = 8'b0000_0001;
    #2 d = 8'b0000_001x;
    #2 d = 8'b0000_01xx;
    #2 d = 8'b0000_1xxx;
    #2 d = 8'b0001_xxxx;
    #2 d = 8'b001x_xxxx;
    #2 d = 8'b01xx_xxxx;
    #2 d = 8'b1xxx_xxxx;
    #20 $finish;
end

always @(d)
begin
    $display("time=%0t d=%b y=%b", $time, d, y);
end

endmodule
