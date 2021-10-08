`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 16:45:43
// Design Name: 
// Module Name: times_gate_operated
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

//design module for magic counter 
//it is difficult to display 2 digit numbers using counter 
//magic counter can display decimal numbers properly 
module times_gate_operated(count1,count2,clk1);
//declaring input output and wires
//count1 is ones digit , count2 is tens digit 
output [0:3] count1;
output [0:3] count2;
input clk1;
//wire clk2; same as reset1 
//input reset;
wire reset1;
wire reset2;
mod_16_counter A(count1,clk1,reset1);
//if(count1 == 4'b1010) reset1 = 1; clk2 = 1;
and G1(reset1,count1[0],count1[2]);
mod_16_counter B(count2,reset1,reset2);
and G2(reset2,count2[0],count2[2]);
endmodule

//mod 16 counter using which magic counter is made 
module mod_16_counter(count,clk,reset);
output reg [0:3] count;
input clk;
input reset;
initial count=4'b0000;
always @(posedge clk or posedge reset)
if(reset==1 || count==4'b1111)
assign count = 4'b0000;
else
assign count = count + 4'b0001 ;
endmodule
