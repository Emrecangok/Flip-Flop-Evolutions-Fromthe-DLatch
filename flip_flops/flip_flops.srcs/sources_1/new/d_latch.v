`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:42:00
// Design Name: 
// Module Name: d_latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module d_latch(d_i,enable_i,q_o,reset_i);


input d_i,enable_i,reset_i;
output q_o;

//always blogu enable_i d_i reset_i lerden herhangi biri değiştiği an her zaman calisir.
always @ (enable_i,d_i,reset_i)
	if(!reset_i)
		q  <=  0;
	else
		if(enable_i)
			q_o <= d_i;

endmodule
