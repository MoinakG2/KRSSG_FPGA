`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh 
// 
// Create Date:    17:42:59 08/07/2020 
// Design Name: 
// Module Name:    kicker 
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
module kicker(input clk , input charge_flag , input [6:0]kick_time ,input ir ,output charge ,output Trigger 
    );
reg state = 0  ;
reg next_state = 0;
reg [19:0]counter = 0;
reg [19:0]set_time = 0;
reg invalid = 1;
reg charge = 0;
reg Trigger = 1;
parameter IDLE = 0, Begin_charge = 1;
always
begin
		  if(kick_time==7'b0000001)  begin set_time<=957550; invalid = 1; end
	else if(kick_time==7'b0000011)  begin set_time<=873476; invalid = 1; end
	else if(kick_time==7'b0000111)  begin set_time<=833576; invalid = 1; end
	else if(kick_time==7'b0011111)  begin set_time<=788576; invalid = 1; end
	else if(kick_time==7'b1000000)  begin set_time<=748576; invalid = 1; end
	else if(kick_time==7'b1100000)  begin set_time<=648576; invalid = 1; end
	else if(kick_time==7'b1110000)  begin set_time<=548576; invalid = 1; end
	else if(kick_time==7'b1111000)  begin set_time<=498576; invalid = 1; end
	else if(kick_time==7'b1111100)  begin set_time<=448576; invalid = 1; end
	else if(kick_time==7'b1111110)  begin set_time<=394876; invalid = 1; end
	else if(kick_time==7'b1111111)  begin set_time<=1;      invalid = 1; end
	else invalid = 0;
end
always @(posedge clk)
begin
	state <= next_state;
	
	case(state)
	IDLE: if(charge_flag&invalid)
				begin
				next_state = Begin_charge;
				counter = set_time;
				charge = 0;
				Trigger = 0;
				end
			else
				begin
				next_state = IDLE;
				charge = 1;
				Trigger = 0;
				counter = set_time;
				end
	Begin_charge: if(counter == 0)
							begin
							next_state = IDLE;
							charge = 1;
							Trigger = 1;
							end
					  else
							begin
							next_state = Begin_charge;
							counter = counter +1;
							charge = 0;
							Trigger = 0;
					  end
	endcase
end

endmodule
