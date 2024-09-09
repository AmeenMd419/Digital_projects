`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2024 11:17:47 AM
// Design Name: 
// Module Name: Decode
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


module Decode(Y,T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,
               X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,clk);
               
input [27:0] T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15;
input X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15;
input clk;
output  [27:0]Y;

wire [27:0]R;
wire  N0,N1,N2,N3;
wire [27:0] To0,To1,To2,To3;

reg [1:0]S=2'D0;
reg M0,M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15;
reg [27:0] TT0,TT1,TT2,TT3,TT4,TT5,TT6,TT7,TT8,TT9,TT10,TT11,TT12,TT13,TT14,TT15;
reg [4:0]K = 5'D0;
//genvar i,j;

always@(posedge clk)
begin
S=(S==2'D3)?(2'D0):(S+2'D1);
end

always@(S)
begin
 M0<=X0;
 M1<=X1;
 M2<=X2;
 M3<=X3;
 M4<=X4;
 M5<=X5;
 M6<=X6;
 M7<=X7;
 M8<=X8;
 M9<=X9;
 M10<=X10;
 M11<=X11;
 M12<=X12;
 M13<=X13;
 M14<=X14;
 M15<=X15;
 
 TT0<=T0;
 TT1<=T1;
 TT2<=T2;
 TT3<=T3;
 TT4<=T4;
 TT5<=T5;
 TT6<=T6;
 TT7<=T7;
 TT8<=T8;
 TT9<=T9;
 TT10<=T10;
 TT11<=T11;
 TT12<=T12;
 TT13<=T13;
 TT14<=T14;
 TT15<=T15;
end

Mux_4 M_1(S,M0,M4,M8,M12,N0);
Mux_4 M_2(S,M1,M5,M9,M13,N1);
Mux_4 M_3(S,M2,M6,M10,M14,N2);
Mux_4 M_4(S,M3,M7,M11,M15,N3);

Mux_4_4 M_5(S,TT0,TT4,TT8,TT12,To0);
Mux_4_4 M_6(S,TT1,TT5,TT9,TT13,To1);
Mux_4_4 M_7(S,TT2,TT6,TT10,TT14,To2);
Mux_4_4 M_8(S,TT3,TT7,TT11,TT15,To3);

ROM R1(N0,N1,N2,N3,To0,To1,To2,To3,R,clk);
AC AA(Y,R,clk);


endmodule
