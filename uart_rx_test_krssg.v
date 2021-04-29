`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
//
// Create Date:   12:27:26 08/08/2020
// Design Name:   uart_rx_module
// Module Name:   C:/Users/Moinak/Desktop/xilinx_projects/uart_rx_krssg/uart_rx_test_krssg.v
// Project Name:  uart_rx_krssg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_rx_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_rx_test_krssg;

	// Inputs
	reg clk;
	reg data_line;

	// Outputs
	wire data_flag;
	wire [7:0] data_byte;

	// Instantiate the Unit Under Test (UUT)
	uart_rx_module uut (
		.clk(clk), 
		.data_line(data_line), 
		.data_flag(data_flag), 
		.data_byte(data_byte)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data_line = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   
	always begin
		clk = ~clk;
		#50;
	end
	
	always begin
		data_line = 1;
		#800;
		data_line = 0;
		#800;
		data_line = 1;
		#800;
		data_line = 0;
		#800;
		data_line = 1;
		#800;
		data_line = 0;
		#800;
		data_line = 1;
		#800;
		data_line = 0;
		#800;
		data_line = 1;
		#800;
		data_line = 0;
		#800;
		data_line = 1;
		#800;
	end
endmodule

