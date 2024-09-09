`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2024 11:32:12 PM
// Design Name: 
// Module Name: ROM
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


module ROM(Addr0,Addr1,Addr2,Addr3,Tw0,Tw1,Tw2,Tw3,R,clk);
input [27:0]Tw0,Tw1,Tw2,Tw3;
output reg [27:0]R;
input Addr0,Addr1,Addr2,Addr3,clk;
wire [3:0]A;
assign A = {Addr3,Addr2,Addr1,Addr0};
always@(*)
begin
case(A)
4'D0: R=28'D0;
4'D1: R=Tw0;
4'D2:R=Tw1;
4'D3:R=Tw1+Tw0;
4'D4:R=Tw2;
4'D5:R=Tw2+Tw0;
4'D6:R=Tw2+Tw1;
4'D7:R=Tw2+Tw1+Tw0;
4'D8:R=Tw3;
4'D9:R=Tw3+Tw0;
4'D10:R=Tw3+Tw1;
4'D11:R=Tw3+Tw1+Tw0;
4'D12:R=Tw3+Tw2;
4'D13:R=Tw3+Tw2+Tw0;
4'D14:R=Tw3+Tw2+Tw1;
4'D15:R=Tw3+Tw2+Tw1+Tw0;
default:R=28'D0;
endcase
end
endmodule
