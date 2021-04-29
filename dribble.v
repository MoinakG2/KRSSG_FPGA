`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KRSSG
// Engineer: Moinak Ghosh
// 
// Create Date:    17:00:51 08/02/2020 
// Design Name: 
// Module Name:    dribble 
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
module dribbler(enable ,Hall, a ,b ,c );
input [2:0]Hall;
input enable;
reg dir = 1;
output [1:0]a;
output [1:0]b;
output [1:0]c;

reg [1:0]k;
reg [1:0]l;
reg [1:0]m;


wire H1 = Hall[0];
wire H2 = Hall[1];
wire H3 = Hall[2];

always@(Hall or enable) 
begin
if(pwm) 
	begin
	if(Hall==7||Hall==0)
		begin
		k=2'b01;
		l=2'b01;
		m=2'b01;
		end
	else 
		begin
		k[0]=(((~dir&~H2)|(H1&H2)|(dir&~H1))|brake);
		k[1]=(((~dir&H1&~H2)|(dir&~H1&H2))|brake);
		l[0]=(((~dir&~H3)|(H2&H3)|(dir&~H2))|brake);
		l[1]=(((~dir&H2&~H3)|(dir&~H2&H3))|brake);
		m[0]=(((~dir&~H1)|(H1&H3)|(dir&~H3))|brake);
		m[1]=(((~dir&~H1&H3)|(dir&H1&~H3))|brake);
		end
	end
else 
	begin
		if(brake==1) 
			begin
			k=2'b11;
			l=2'b11;
			m=2'b11;
			end
		else
			begin
			k=2'b01;
			l=2'b01;
			m=2'b01;
			end
	end
end
assign a=k;
assign b=l;
assign c=m;



endmodule
