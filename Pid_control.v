`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh 
// 
// Create Date:    03:36:15 08/02/2020 
// Design Name: 
// Module Name:    Pid_control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Pid_control( input [7:0]target ,input reset , output [7:0]pwm_val ,input clk ,input [6:0]enc_data , output brake);

parameter k1=15; // change these values to suit your system
parameter k2 = 16;
parameter k3 = 0;
reg signed [15:0]  e_in=0;
reg signed [15:0] u_prev=0;
reg signed [15:0] u_out=0;
reg signed [15:0] e_prev[1:2]={0};
reg [6:0]pwm = 0;
reg brake = 0;
always 
begin
	if(target==0)
	brake = 1;
	else
	brake = 0;
end

always @ (negedge clk)
begin
if (reset==1)
begin
	e_in<=0;
	e_prev[2] <= 0;
	e_prev[1] <= 0;
	u_prev <= 0;

end
else
begin
	e_in<=target[6:0]-enc_data;
	e_prev[2] <= e_prev[1];
	e_prev[1] <= e_in;
	u_prev <= u_out;
end
	u_out <= u_prev + k1*e_in - k2*e_prev[1] + k3*e_prev[2];
if(u_out<0)	
	pwm <= 0;
else if(u_out > 127) 
	pwm <= 127;
else 
	pwm <= u_out[ 6: 0] ;
end
	assign pwm_val[6:0]=pwm;
	assign pwm_val[7]=target[7];
endmodule
