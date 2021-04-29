`timescale 1ns / 1ps
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
module test( input clk,input Rx_in ,output [7:0]Rx_data ,output Rx_done);
parameter rate = 400; //for 25000 baud rate

reg [2:0] state = 0;
reg [2:0] state = 0; 
parameter IDLE = 0,Start_bit = 1,Data = 2,Stop_bit = 3, Latch = 4;

reg rx_data = 0,rx_temp = 0;
reg Rx_done = 0; 
reg[7:0]Rx_data = 0;
reg [3:0]bit_count = 0;
reg [9:0]clk_count = 0;

always @(posedge clk)
begin
	rx_temp <= Rx_in;
	rx_data <= rx_temp;
end

always @(posedge clk)
begin
	case(state)
	IDLE: 
	begin
		Rx_done = 0;
		bit_count = 0;
		clk_count = 0;
		if (~rx_data)
			state <= Start_bit;
		else
			state <= IDLE;
	end
	
	Start_bit : 
	begin
		if(clk_count == (rate-1)/2)
			if(rx_data == 0)
				begin
				clk_count <= 0;
				state <= Data;
				end
			else
				state <= IDLE;
		else
			begin
			state <= Start_bit;
			clk_count <= clk_count + 1;
			end
	end
	
	Data : 
	begin
		if (clk_count == rate -1 )
			begin
			clk_count <= 0;
			Rx_data[bit_count] = rx_data;
			if (bit_count < 7)
				begin
				bit_count <= bit_count +1;
				state <= Data;
				end
			else
				begin
				bit_count <= 0;
				state <= Stop_bit;
				end
			end
		else
			begin
			clk_count <= clk_count + 1;
			state <= Data;
			end
	end
	
	Stop_bit : 
	begin
		if (clk_count == rate -1 )
			begin
			clk_count <= 0;
			state <= Latch ;
			Rx_done <= 1;
			end
		else
			begin
			clk_count <= clk_count +1;
			state <= Stop_bit;
			end
	end
	
	Latch : 
	begin
	Rx_data <= 0;
	state <= IDLE;
	end
	endcase
end
 	
endmodule
 
