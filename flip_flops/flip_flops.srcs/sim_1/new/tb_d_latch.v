`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:50:06
// Design Name: 
// Module Name: tb_d_latch
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


module tb_d_latch();
d_i,enable_i,q_o,reset_i


reg d_i;
reg enable_i;
reg reset_i;

reg [2:0]delay;
reg [2:0]delay2;
integer i;




d_latch dl0 (

.d_i(d_i),
.reset_i(reset_i),
.q_o(q_o)
);


	initial begin
	$monitor ("[%0t] enable_i = %0b q_o=%0b",$time, enable_i,d_i,q_oq);
	
	
	d_i <= 0;
	enable_i <=0;
	reset_i <=0;
	
	
	
	#10 reset_i <=1;
	
	for(i = 0; i <5; i=i+1)
	begin
		delay = $random;
		delay2 = $random;
		#(delay2) enable_i <= ~enable_i;
		#(delay) d_i <= i;
		
	end
	
	end

endmodule
