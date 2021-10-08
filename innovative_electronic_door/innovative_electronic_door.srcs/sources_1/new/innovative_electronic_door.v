`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2021 01:02:39
// Design Name: 
// Module Name: innovative_electronic_door
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

//main circuit module
module innovative_electronic_door(motor_output,crowd_factor, times_gate_operated_0,
times_gate_operated_1,light1,light2,light3,password,password_mode,
entered_password,privacy_mode,emergency_mode,master_switch,
fire_system_out,crowd_factor_reset);
input light1,light2,light3;
input password_mode,privacy_mode,emergency_mode,master_switch;
input fire_system_out,crowd_factor_reset;
input [0:3] password, entered_password, times_gate_operated_0,times_gate_operated_1;
output motor_output, crowd_factor;
wire w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
or G1(w4,light1,light2,light3);
password_machine PM(w5,entered_password,password);
not G2(w6,password_mode);
or G3(w7,w5,w6);
and G4(w8,w4,w7);
not G5(w9,privacy_mode);
and G6(w10,w8,w9);
not G7(w11,w10);
monostable_multivibrator MM(w12,w11);
or G8(motor_output,w12,master_switch,emergency_mode,fire_system_out);
times_gate_operated MC(times_gate_operated_0,times_gate_operated_1,motor_output);
crowd_factor CF(crowd_factor,light1,light2,crowd_factor_reset);
endmodule


//password machine
module password_machine(matched, entered_no, password);
output matched;
input [0:3] entered_no;
input [0:3] password;
wire w0 , w1 , w2 , w3 ;
xnor 
G1 (w0,entered_no[0],password[0]),
G2 (w1,entered_no[1],password[1]),
G3 (w2,entered_no[2],password[2]),
G4 (w3,entered_no[3],password[3]);
and 
G5 (matched,w0,w1,w2,w3);
endmodule


//a mod 16 counter 
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


//the magic counter i invented 
module times_gate_operated(count1,count2,clk1);
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

//monostable multivibrator 555 timer
module monostable_multivibrator(out,signal);
output reg out ;
input signal ;
initial out = 1'b0 ;
always @(negedge signal)
begin
out = 1'b1 ;
#30
out = 1'b0;
end
endmodule

//another counter which i used in crowd factor calculator
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

//the substractor
module substractor( difference ,count1, count2);
output [0:3] difference;
input [0:3] count1 ;
input [0:3] count2 ;
assign difference = count1-count2 ;
endmodule

//crowd factor calculation module 
module crowd_factor(k,clk1,clk2,reset);
input clk1 ;
input clk2 ;
input reset ;
output reg [0:2] k;
//initial k=3'b000;
//output [0:2] factor;
wire [0:3] count1 , count2 ,diff;
//always @(clk1,clk2,reset)
mod_16_counter A(count1,clk1,reset);
mod_16_counter B(count2,clk2,reset);
substractor C(diff,count1,count2);
always @(diff or count1 or count2)
begin
if(diff==4'b0000 || diff==4'b0001 || reset==1) assign k=3'b001;
else if(diff==4'b0010 || diff==4'b0011) assign k=3'b010;
else assign k=3'b100;
end
//factor=k;
endmodule

