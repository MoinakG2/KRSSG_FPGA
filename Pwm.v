`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh 
// 
// Create Date:    17:03:17 07/16/2020 
// Design Name: 
// Module Name:    Pwm 
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
module Pwm(input reset ,input [7:0]pwm_val,input clk ,output pwm,output dir);
   reg [6:0]count = 0;
	reg pwm;
	reg [5:0]prescaler = 0;
	reg new_clk = 0;
	always @(posedge clk)
	begin
		if(prescaler == 0)
			new_clk = ~new_clk;
		prescaler <= prescaler +1;
	end
	always @(posedge new_clk)
	begin
		if (reset==1)
			pwm = 0;
		else
			begin
				if(count < pwm_val[6:0])
					pwm = 1;
				else
					pwm = 0;
				count = count + 1;
			end
	end
assign dir = pwm_val[7];
endmodule
