`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:09 12/21/2018 
// Design Name: 
// Module Name:    clk_10ms 
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
module clk_10ms(
    input wire clk,
	 output reg clk_1s
	 );
	 reg[31:0] cnt;
	 always @(posedge clk)begin
	 if(cnt<5_000_00)begin
	 cnt <= cnt + 1;
	 end else begin
	 cnt <= 0;
	 clk_1s <= ~clk_1s;
    end
end



endmodule
