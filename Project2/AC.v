`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 10:38:07 PM
// Design Name: 
// Module Name: AC
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


module AC(Y,A,clk);
input [27:0]A;
input clk;
output  [27:0]Y;
reg [27:0]M = 28'd0;
reg [2:0]T = 3'D0;
reg [27:0]in;
always@(posedge clk)
begin
in = (A);
M = (M+in);
T = (T>3'D2)?(3'D0):(T+3'D1);


end
assign Y = M;
endmodule
