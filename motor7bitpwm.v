`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:51:17 05/08/2019 
// Design Name: 
// Module Name:    motor7bitpwm 
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
module motor7bitpwm(
    input clk,input [7:0] pwm_in,output pwm,output sign
    );
	 assign sign=pwm_in[7];
	 reg [7:0] counter=0;reg [7:0]count;
	 //counter <= 0;
	 always@(posedge clk)
	 begin
	 if (count==0)
	 begin
	 if(counter<127)
	 counter <= counter + 1;
	 else counter <= 0;
	 end
	 count <=count+1;
	end
assign pwm = (counter<pwm_in[6:0])?1:0;
endmodule
