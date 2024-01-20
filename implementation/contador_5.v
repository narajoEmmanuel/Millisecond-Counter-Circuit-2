`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 01:58:39 PM
// Design Name: 
// Module Name: contador_5
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


module contador_5(
    input CLK,RST,En,
    output reg [4:0] out
    );
   always @(posedge CLK)
      if (RST)
         out <= 5'b00000;
      else if (En)
         out <= out + 1'b1;
endmodule
