`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
//
// Create Date:   17:25:43 07/16/2020
// Design Name:   Pwm
// Module Name:   /home/Moinak/opt/14.7/ISE_DS/KrssgModule/pwm_test.v
// Project Name:  KrssgModule
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pwm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_test;

	// Inputs
	reg reset;
	reg [7:0] pwm_val;

	// Outputs
	wire pwm;
	wire dir;
	reg clk;
	// Instantiate the Unit Under Test (UUT)
	Pwm uut (
		.reset(reset), 
		.pwm_val(pwm_val), 
		.pwm(pwm), 
		.dir(dir),
		.clk(clk)
	);
	always
	#10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		reset = 0;
		pwm_val = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

