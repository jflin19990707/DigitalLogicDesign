`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:00 12/28/2018 
// Design Name: 
// Module Name:    clk_50ms 
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
module clk_50ms(
    input wire clk,
	 output reg clk_50ms
	 );
	 reg[31:0] cnt;
	 always @(posedge clk)begin
	 if(cnt<25_000_00)begin
	 cnt <= cnt + 1;
	 end else begin
	 cnt <= 0;
	 clk_50ms <= ~clk_50ms;
    end
	 end
endmodule
