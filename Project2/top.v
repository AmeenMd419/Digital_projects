`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2024 04:29:44 PM
// Design Name: 
// Module Name: top
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


module top(Add,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
input [27:0]Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
output [27:0]Add;

wire [27:0]Add_dum[8:0];

assign Add_dum[7] = ~Y7+1 ;
assign Add_dum[6] = $signed(Y6)>>>1;
assign Add_dum[5] = $signed(Y5)>>>2;
assign Add_dum[4] = $signed(Y4)>>>3;
assign Add_dum[3] = $signed(Y3)>>>4;
assign Add_dum[2] = $signed(Y2)>>>5;
assign Add_dum[1] = $signed(Y1)>>>6;
assign Add_dum[0] = $signed(Y0)>>>7;
assign Add_dum[8] = Add_dum[7]+Add_dum[6]+Add_dum[5]+Add_dum[4]+Add_dum[3]+Add_dum[2]+Add_dum[1]+Add_dum[0];
assign Add = $signed(Add_dum[8])<<3;

endmodule
