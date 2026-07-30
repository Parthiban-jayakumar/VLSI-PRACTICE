`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2026 10:41:19 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg [3:0]d;
wire[1:0]y;

encoder dud(.d(d),.y(y));
initial begin
d[3]=0; d[2]=0; d[1]=0; d[0]=0;
#2 d[3]=0; d[2]=0; d[1]=0; d[0]=1;
#2 d[3]=0; d[2]=0; d[1]=1; d[0]=0;
#2 d[3]=0; d[2]=1; d[1]=0; d[0]=0;
#2 d[3]=1; d[2]=0; d[1]=0; d[0]=0; 

#20 $finish ;
end

always@(d)
$display("$time=%0t,d=%b,y=%b",$time,d,y);
endmodule
