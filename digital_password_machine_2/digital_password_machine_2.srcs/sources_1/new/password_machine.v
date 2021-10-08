`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2021 17:51:09
// Design Name: 
// Module Name: password_machine
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

//design module for password machine
module password_machine(matched, entered_no, password);
//declaring the input and output and wires
output matched;
input [0:3] entered_no;
input [0:3] password;
wire w0 , w1 , w2 , w3 ;
//gate level modelling of the password machine 
xnor 
G1 (w0,entered_no[0],password[0]),
G2 (w1,entered_no[1],password[1]),
G3 (w2,entered_no[2],password[2]),
G4 (w3,entered_no[3],password[3]);
and 
G5 (matched,w0,w1,w2,w3);
endmodule
