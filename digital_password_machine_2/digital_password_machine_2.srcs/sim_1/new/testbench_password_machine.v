`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2021 17:55:29
// Design Name: 
// Module Name: testbench_password_machine
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

//making the testbench for password machine 
module testbench_password_machine();
//initiating the outputs and the inputs
wire matched;
reg [0:3] entered_no ;
reg [0:3] password ;
//instantiating the design module
password_machine A(matched, entered_no, password);
initial 
begin 
#1
//setting the initial values and setting the password
password = 4'b0110 ;
entered_no = 4'b0000 ;
end 
initial 
//making a loop to input different values in sequence 
begin
forever 
#20 entered_no = entered_no + 4'b0001 ;
end
initial #340 $finish ;
endmodule
