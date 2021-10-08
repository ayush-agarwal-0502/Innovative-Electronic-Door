`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2021 13:00:06
// Design Name: 
// Module Name: testbench_innovative_electronic_door
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


module testbench_innovative_electronic_door();
reg light1,light2,light3;
reg password_mode,privacy_mode,emergency_mode,master_switch;
reg fire_system_out,crowd_factor_reset;
reg [0:3] password, entered_password;
wire motor_output;
wire [0:2] crowd_factor;
wire [0:3] times_gate_operated_0,times_gate_operated_1;
innovative_electronic_door A(motor_output,crowd_factor, times_gate_operated_0,
times_gate_operated_1,light1,light2,light3,password,password_mode,entered_password,
privacy_mode,emergency_mode,master_switch,fire_system_out,crowd_factor_reset);
initial 
begin 
//all initialisations for the variables
password_mode = 0;
privacy_mode = 0;
master_switch = 0;
fire_system_out = 0;
crowd_factor_reset = 0;
emergency_mode = 0;
password = 4'b0101;
entered_password = 4'b0000;
crowd_factor_reset = 1;
light1=0;
light2=0;
light3=0;
//checking operation of master switch
#10
crowd_factor_reset = 0;
master_switch = 1;
#10
master_switch = 0;
//checking operation of fire alarm 
#10
fire_system_out = 1;
#10;
fire_system_out = 0;
#10
//testing emergency mode 
emergency_mode=1;
#10
emergency_mode=0;
#30
//first person enters 
light1 = 1;
light3 = 1;
#10
light1 = 0;
light3 = 0;
#40
//second person enters
light1 = 1;
light3 = 1;
#10
light1 = 0;
light3 = 0;
#40
//third person enters
light1 = 1;
light3 = 1;
#10
light1 = 0;
light3 = 0;
#40
//fourth person enters 
light1 = 1;
light3 = 1;
#10
light1 = 0;
light3 = 0;
#40
//one person leaves 
light2=1;
light3=1;
#10
light2=0;
light3=0;
#40
//now testing privacy mode
privacy_mode = 1;
#10
light1=1;
#10
light1=0;
#30;
privacy_mode = 0;
#10
//now testing password mode
password_mode=1;
#10
light1 = 1;
#10
light1 = 0;
#10
//entering wrong password
entered_password = 4'b0110;
#10
light1 = 1;
#10
light1 = 0;
#10
//entering correct password
entered_password = 4'b0101;
#10
light1 = 1;
light3 = 0;
#10
light1 = 0;
light3 = 0;
#40
password_mode = 0;
#30
light1=1;
light3=1;
#10
light1=0;
light3=0;
#40
$finish;
end

endmodule
