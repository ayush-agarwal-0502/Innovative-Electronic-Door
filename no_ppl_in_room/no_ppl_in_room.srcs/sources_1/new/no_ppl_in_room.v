`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 12:45:59
// Design Name: 
// Module Name: no_ppl_in_room
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

module no_ppl_in_room(crowd_factor clk1, clk2 ,reset);
input clk1;
input clk2;
input reset;
//output [0:3] difference;
wire [0:3] difference;
wire [0:3] count1 ;
wire [0:3] count2 ;
output [0:3] crowd_factor;
mod_16_counter A(count1,clk1,reset);
mod_16_counter B(count2,clk2,reset);
substractor C(difference,count1,count2);
endmodule


///////////////////////////////////////////////////
//module no_ppl_in_room(low_crowd,medium_crowd,high_crowd, clk1, clk2 ,reset);
//input clk1;
//input clk2;
//input reset;
////output [0:3] difference;
//wire [0:3] difference;
//output reg low_crowd;
//output reg medium_crowd;
//output reg high_crowd;
//wire [0:3] count1 ;
//wire [0:3] count2 ;
//mod_16_counter A(count1,clk1,reset);
//mod_16_counter B(count2,clk2,reset);
//substractor C(difference,count1,count2);
//initial low_crowd = 0;
//initial medium_crowd = 0;
//initial high_crowd = 0;
//always @(difference)
//begin
//if(difference>4'b0000 && difference<4'b0011) low_crowd = 1'b1;
//else if(difference>4'b0011 && difference<4'b0111) medium_crowd=1'b1;
//else high_crowd=1'b1;
//if(difference>4'b0000 && difference<4'b0011)  
//if(difference==4'b0000 || difference==4'b0001 || difference==4'b0010 )
//begin
//low_crowd = 1'b1; 
//medium_crowd=1'b0;
//high_crowd=1'b0;
//end
//else if (difference>4'b0011 && difference<4'b0111)
//begin
//low_crowd = 1'b0; 
//medium_crowd=1'b1;
//high_crowd=1'b0;
//end
//else
//begin
//low_crowd = 1'b0; 
//medium_crowd=1'b0;
//high_crowd=1'b1;
//end
//end
//endmodule

//module mod_10_counter(count,clk,reset);
//output reg [0:3] count;
//input clk;
//input reset;
//initial count=4'b0000;
//always @(posedge clk)
//if(reset==1 || count==4'b1001)
//assign count = 4'b0000;
//else
//assign count = count + 4'b0001 ;
//endmodule

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

module substractor( difference ,count1, count2);
output [0:3] difference;
input [0:3] count1 ;
input [0:3] count2 ;
assign difference = count1-count2 ;
endmodule