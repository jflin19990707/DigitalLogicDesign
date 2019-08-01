`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:39 12/28/2018 
// Design Name: 
// Module Name:    clk_20ms 
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
module clk_20ms(
    input wire clk,
	 output reg clk_20ms
	 );
	 reg[31:0] cnt;
	 always @(posedge clk)begin
	 if(cnt<10_000_00)begin
	 cnt <= cnt + 1;
	 end else begin
	 cnt <= 0;
	 clk_20ms <= ~clk_20ms;
    end
end
endmodule
