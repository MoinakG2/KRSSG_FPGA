`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
// 
// Create Date:    14:19:27 08/02/2020 
// Design Name: 
// Module Name:    Control_unit 
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
module Control_unit( input clk , input reset ,input [7:0]data, input receive_flag , output [7:0]Motor1,
	output [7:0]Motor2,output [7:0]Motor3,output [7:0]Motor4, output charge_flag , output [6:0]kick_charge ,output dribller);

reg [7:0]Motor1 = 0; 
reg [7:0]Motor2 = 0;
reg [7:0]Motor4 = 0;
reg [7:0]Motor3 = 0;
reg [2:0]count = 0;
reg [7:0]Kicker = 0;
reg charge_flag = 0;
reg [7:0]key = 0 ;
always @ (posedge clk)
begin
	if (reset)
	begin
		Motor1 <= 0;
		Motor2 <= 0;
		Motor3 <= 0;
		Motor4 <= 0;
		Kicker <=0;
		count <=0;
		key<=0;
		charge_flag <=0;
	end
		
		
		
	else	if(receive_flag)	
	begin
			case (count)
			   3'b000 : begin key <= data;	count <= count + 1;	end		
				3'b001 : if(key == 255) begin Motor1 <= data  ;count <= count + 1;end else begin count <=0;end
				3'b010 : if(key == 255) begin Motor2 <= data ;count <= count + 1;end else begin count <=0;end
				3'b011 : if(key == 255) begin Motor3 <= data ;count <= count + 1;end else begin count <=0;end
				3'b100 : if(key == 255) begin Motor4 <= data ;count <= count + 1; end else begin count <=0;end
		      3'b101 : if(key == 255) begin Kicker <=data ; key <= 0; count <= 0;end
			endcase
	end
	
	if (Kicker[6:0] != 0)
	begin 
		charge_flag <= 1;
	end
	else 
	begin
		charge_flag <= 0; 
	end
end
assign kick_charge = Kicker[6:0];
assign dribller = Kicker[7];
endmodule
