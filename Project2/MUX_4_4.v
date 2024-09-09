`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2024 11:09:36 PM
// Design Name: 
// Module Name: MUX_4_4
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


module Mux_4_4( input [1:0]S,input [27:0]K0,K1,K2,K3, output reg [27:0]Y);
always@(*)
begin
case(S)
2'D0: Y = K0;
2'D1: Y = K1;
2'D2: Y = K2;
2'D3: Y = K3;
default:
Y = 28'D0;
endcase
end
endmodule