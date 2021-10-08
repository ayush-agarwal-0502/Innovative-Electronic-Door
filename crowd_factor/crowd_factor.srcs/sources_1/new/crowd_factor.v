`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2021 00:15:02
// Design Name: 
// Module Name: crowd_factor
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

//design module for crowd factor calculator 
//return 001 010 100 depending on number of people in room 
module crowd_factor(k,clk1,clk2,reset);
//declaring input and output and wires
input clk1 ;
input clk2 ;
input reset ;
output reg [0:2] k;
//output [0:2] factor;
wire [0:3] count1 , count2 ,diff;
//using the clk signals to run the counters 
counter A(clk1,reset,count1);
counter B(clk2,reset,count2);
//taking difference of the calue in counters 
substractor C(diff,count1,count2);
//crowd factor assigning 
always @(diff)
if(diff==4'b0000 || diff==4'b0001) k=3'b001;
else if(diff==4'b0010 || diff==4'b0011) k=3'b010;
else k=3'b100;
//factor=k;
endmodule
//module for counter 
module counter (clk, reset, count);
    input clk, reset;
    output [14:0] count;
    reg [14:0] count;
    always @(negedge clk or posedge reset )
         if (reset) 
              count <= 4'b0000;
         else
               count <= count + 1'b1;
endmodule 
//module for substractor
module substractor( difference ,count1, count2);
output [0:3] difference;
input [0:3] count1 ;
input [0:3] count2 ;
assign difference = count1-count2 ;
endmodule
