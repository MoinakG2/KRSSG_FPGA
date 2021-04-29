`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
//
// Create Date:   23:30:00 07/15/2020
// Design Name:   Encoder
// Module Name:   /home/Moinak/opt/14.7/ISE_DS/KrssgModule/enc_test.v
// Project Name:  KrssgModule
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module enc_test;

	// Inputs
	reg clk;
	reg pulse;
	reg reset;

	// Outputs
	wire [6:0] enc;
	wire new_clk;
	// Instantiate the Unit Under Test (UUT)
	Encoder uut (
		.clk(clk), 
		.pulse(pulse), 
		.reset(reset), 
		.enc(enc),
		.new_clk(new_clk)
		);
	always
	#10 clk=~clk;
	always
	#11788 pulse=~pulse;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		pulse = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

