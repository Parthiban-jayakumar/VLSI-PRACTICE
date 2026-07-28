`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2026 09:51:05 PM
// Design Name: 
// Module Name: tb_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_sub;
reg a,b,bin;
wire dif,bor;

full_sub dut (.a(a),.b(b),.bin(bin),.dif(dif),.bor(bor));

initial begin
 a=0;  b=0;  bin=0;

#2a=0; b=0;  bin=1; 
#2a=0; b=1;  bin=0; 
#2a=0; b=1;  bin=1; 
#2a=1; b=0;  bin=0; 
#2a=1; b=0;  bin=1; 
#2a=1; b=1;  bin=0; 
#2a=1; b=1;  bin=1; 

#50 $finish ;
end 
initial
$monitor("$time=o%t,a=%b,b=%b,bin=%b,dif=%b,bor=%b",$time,a,b,bin,dif,bor);

 
 

endmodule
