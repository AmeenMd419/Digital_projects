`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2024 11:36:37 AM
// Design Name: 
// Module Name: Decode_tb
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


module Decode_tb();
//wire [27:0]Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Y16,Y17,Y18,Y19;
wire [27:0]R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,
I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
reg[7:0] X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15;
reg clk;
super D(R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,
I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,clk);
initial clk = 1'b0;
always #5 clk = ~clk;
initial
begin
X0=8'D80;
X1=8'D38;
X2=8'D182;
X3=8'D112;
X4=8'D72;
X5=8'D84;
X6=8'D232;
X7=8'D84;
X8=8'D40;
X9=8'D116;
X10=8'D104;
X11=8'D52;
X12=8'D184;
X13=8'D116;
X14=8'D46;
X15=8'D116;
//X0=$random;
//X1=$random;
//X2=$random;
//X3=$random;
//X4=$random;
//X5=$random;
//X6=$random;
//X7=$random;
//X8=$random;
//X9=$random;
//X10=$random;
//X11=$random;
//X12=$random;
//X13=$random;
//X14=$random;
//X15=$random;
#100
$finish;
end
endmodule
