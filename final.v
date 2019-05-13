// Verilog test fixture created from schematic /home/ise/ism_projects/motor/control.sch - Wed May  8 12:12:04 2019

`timescale 1ns / 1ps

module control(clk,h1,h2,h3,,XLXN_13,Q1H,Q1L,Q2H,Q2L,Q3H,Q3L);
   input clk,h1,h2,h3;
   input [7:0] XLXN_13;
   output Q1H,Q1L,Q2H,Q2L,Q3H,Q3L;
	wire p,sign;
	motor7bitpwm pwm1(clk,XLXN_13,p,sign);
	motorV motor1(h1,h2,h3,p,sign,Q1H,Q1L,Q2H,Q2L,Q3H,Q3L);
endmodule
