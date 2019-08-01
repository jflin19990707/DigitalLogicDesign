`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:02 01/04/2019 
// Design Name: 
// Module Name:    IsCrash 
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
module IsCrash(
	input wire clk,
	input wire  [9:0] ei_x,
	input wire  [8:0] ei_y,
	input wire  [9:0] mi_x,
	input wire  [8:0] mi_y,
	output wire check
    );
	 reg [9:0] e_xl;
	 reg [8:0] e_yl;
	 
	 reg [9:0] e_xm;
	 reg [8:0] e_ym;
	 
	 reg [9:0] e_xr;
	 reg [8:0] e_yr;
	 
	 reg [9:0] m_x;
	 reg [8:0] m_y;
	 
	 reg in;
	 
	 integer k;
	 integer x;
	 integer y;
	 
	 
	 always @(posedge clk) begin
		 e_xm<=ei_x+32;
		 e_ym<=ei_y+77;
		 
		 e_xl<=ei_x+2;
		 e_yl<=ei_y+30;
		 
		 e_xr<=ei_x+62;
		 e_yr<=ei_y+30;
		 
		 m_x<=mi_x+40;
		 m_y<=mi_y+41;
		 in = 0;
		 k = 30;
		 x=30;
		 y=30;
		 if(e_xm< m_x+38 && e_xm>m_x-38 && e_ym <m_y+38 && e_ym >m_y-38) begin//in the square
				if(e_ym<m_y) begin
					if(e_xm<m_x)begin
						k= m_x- e_xm + m_y- e_ym;
					end
					else begin
						k= e_xm-m_x + m_y- e_ym;
					end			
				end
				if(k<38) begin
					in = 1;
				end
		 end
		 
		 if(e_xl< m_x+38 && e_xl>m_x-38 && e_yl <m_y+38 && e_yl >m_y-38) begin//in the square
				if(e_yl<m_y) begin
					if(e_xl<m_x)begin
						x= m_x- e_xl + m_y- e_yl;
					end
					else begin
						x= e_xl-m_x + m_y- e_yl;
					end			
				end
				if(x<38) begin
					in = 1;
				end
		 end
		 
		 if(e_xr< m_x+38 && e_xr>m_x-38 && e_yr <m_y+38 && e_yr >m_y-38) begin//in the square
				if(e_yr<m_y) begin
					if(e_xr<m_x)begin
						y= m_x- e_xr + m_y- e_yr;
					end
					else begin
						y= e_xr-m_x + m_y- e_yr;
					end			
				end
				if(y<38) begin
					in = 1;
				end
		 end
	end
	
	assign check = in;
	 


endmodule
