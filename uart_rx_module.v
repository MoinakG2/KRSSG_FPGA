//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
// 
// Create Date:    19:58:15 06/02/2020 
// Design Name: 
// Module Name:    test 
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

`timescale 1ns / 1ps
module uart_rx_module(input clk,
	input data_line,
	output data_flag,
	output [7:0]data_byte
    );

parameter CLKS_PER_BIT = 3'b111;
parameter S_IDLE = 3'b000;
parameter S_START = 3'b001;
parameter S_DATA = 3'b010;
parameter S_PARITY = 3'b011;
parameter S_STOP = 3'b100;
parameter S_CLEANUP = 3'b101;

reg [2:0]current_state = 3'b000;
reg current_data;
reg current_data_temp;
reg [3:0]clk_counter = 4'b0000;
reg [2:0]bit_index = 3'b000;
reg [7:0]data = 8'b00000000;
reg flag = 1'b0;

always@(posedge clk)
begin
	current_data_temp <= data_line;
	current_data <= current_data_temp;
end

always@(posedge clk)
begin
	case(current_state)
		S_IDLE:
			begin
				if(current_data == 0)
				begin
					current_state <= S_START;
					clk_counter <= 0;
					bit_index <= 0;
					flag <= 0;
				end
				else
					current_state <= S_IDLE;
			end
		
		S_START:
			begin
				if (clk_counter == (CLKS_PER_BIT>>1))
				begin
					if (current_data == 0)
					begin
						current_state <= S_DATA;
						clk_counter <= 0;
					end
					else
						current_state <= S_IDLE;
				end
				else
				begin
					clk_counter <= clk_counter + 1;
					current_state <= S_START;
				end
			end
		
		S_DATA:
			begin
				if (clk_counter == CLKS_PER_BIT)
				begin
					clk_counter <= 0;
					data[bit_index] <= current_data;
					if (bit_index == 7)
					begin
						current_state <= S_STOP;
						bit_index <= 0;
					end
					else
					begin
						bit_index <= bit_index + 1;
						current_state <= S_DATA;
					end
				end
				else
				begin
					clk_counter <= clk_counter + 1;
					current_state <= S_DATA;
				end
			end
		
		S_STOP:
			begin
				if (clk_counter == CLKS_PER_BIT)
				begin
					clk_counter <= 0;
					flag <= 1;
					current_state <= S_CLEANUP;
				end
				else
				begin
					clk_counter <= clk_counter + 1;
					current_state <= S_STOP;
				end
			end
			
		S_CLEANUP:
			begin
				if (clk_counter == (CLKS_PER_BIT>>1))
				begin
					clk_counter <= 0;
					current_state <= S_IDLE;
					data <= 8'b00000000;
					flag <= 0;
				end
				else
				begin
					clk_counter <= clk_counter + 1;
					current_state <= S_CLEANUP;
				end
			end
			
		default:
			begin
				current_state <= S_IDLE;
			end
	endcase
end

assign data_byte = data;
assign data_flag = flag;

endmodule
