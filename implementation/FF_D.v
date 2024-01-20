`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 01:40:53 PM
// Design Name: 
// Module Name: FF_D
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


module FF_D(
    input CLK,RST,En,D,
    output reg out
    );
    always @(posedge CLK)
      if (RST) begin
         out <= 1'b0;
      end else if (En) begin
         out <= D;
      end
endmodule
