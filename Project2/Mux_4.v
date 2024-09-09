`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 09:56:58 PM
// Design Name: 
// Module Name: Mux_4
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


module Mux_4( input [1:0]S,input K0,K1,K2,K3, output reg  Y);
always@(*)
begin
case(S)
2'D0: Y = K0;
2'D1: Y = K1;
2'D2: Y = K2;
2'D3: Y = K3;
default:
Y = 1'D0;
endcase
end
endmodule
