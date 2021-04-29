`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
// 
// Create Date:    18:14:30 07/15/2020 
// Design Name: 
// Module Name:    Encoder 
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
module Encoder(input clk,input pulse,input reset, output [6:0]enc,output new_clk);
reg [1:0] state;
reg [1:0] next_state;
reg [1:0]data;

reg new_clk;
reg [32:0]count = 0;

parameter IDLE = 2'b00, Increment_enc = 2'b01, Latch = 2'b10;
parameter prescaler = 60000;
reg [6:0]temp_enc = 0; 
reg [6:0]enc;
always @(posedge clk)
begin
	if(count == prescaler)
		begin
			count <=0;
			new_clk <= 0;
		end
	else
		begin
			count <= count+1;
			new_clk <= 1; 
		end
end

always @(new_clk)
begin
	next_state = 2'b00;
	case(state)
    IDLE : if (new_clk == 1'b1) begin
                 next_state = Increment_enc;
               end else begin
                  next_state = IDLE;
                end
     Increment_enc : if (new_clk == 1'b1) begin
                  next_state = Increment_enc;
                end else if (new_clk == 1'b0) begin
                 next_state = Latch;
                end else begin
                  next_state = IDLE;
                end
     Latch :  begin
                  next_state = IDLE;
                end
     default : next_state = IDLE;
    endcase
end
always @ (posedge clk)
 begin 
    if (reset == 1'b1) begin
      state <=   IDLE;
    end else begin
      state <=  next_state;
    end
 end
always @(  posedge clk)
begin
	data[1] <= data[0];
	data[0] <= pulse;
	case(state)
    IDLE : begin
		temp_enc <= 0; end
	 Increment_enc :begin 
						temp_enc <= temp_enc + (data[0]^data[1]); end
    Latch : begin
				enc <= temp_enc-1; end
	default : temp_enc <= 0;
	 endcase
end
endmodule
