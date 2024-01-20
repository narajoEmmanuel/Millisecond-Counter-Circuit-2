`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 07:54:29 PM
// Design Name: 
// Module Name: main
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


module main(
    input CLK,Reset,Pulse,
    output [3:0] Units,Tens
    );
    wire RST;
    wire [4:0] sal_Cont4;
    wire sal_Comp4;
    wire sal_FF4;
    wire [4:0] sal_Cont20;
    wire sal_Comp20;
    wire [9:0]out;
    assign RST = Reset;
    contador_5 cont4(CLK,RST|~Pulse,Pulse,sal_Cont4);
    comparador_5 comp4(CLK,sal_Cont4,4,sal_Comp4);
    FF_D ffOF(CLK,RST|sal_FF4,~Pulse,1,sal_ffOF);
    FF_D ff4(CLK,RST,sal_ffOF ,sal_Comp4,sal_FF4);
    contador_5 cont20(CLK,RST|(sal_FF4 & sal_Comp20),sal_FF4,sal_Cont20);
    comparador_5 comp20(CLK,sal_Cont20,20,sal_Comp20);
    convertidor conv({0,0,sal_Cont20},0,out);
    assign Tens=out[7:4];
    assign Units =out[3:0];
endmodule
