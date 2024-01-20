`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 02:26:23 PM
// Design Name: 
// Module Name: comparador_5
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


module comparador_5(
    input CLK,
    input [4:0] A,B,
    output out
    );
    reg salida = 1'b0;

   always @(posedge CLK)
      if (A == B)
         salida <= 1'b1;
      else
         salida <= 1'b0;
   assign out=salida;
endmodule
