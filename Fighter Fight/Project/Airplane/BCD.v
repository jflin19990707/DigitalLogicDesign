`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:18 12/19/2018 
// Design Name: 
// Module Name:    BCD 
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
module BCD(
        input [31:0]binary,
		  output reg [31:0]BCD
    );
	 reg[3:0]ones;
	 reg[3:0]tens;
	 reg[3:0]hundreds;
	 reg[3:0]thous;
	 reg[3:0]ten_thous;
	 reg[3:0]hun_thous;
	 reg[3:0]mills;
	 reg[3:0]ten_mills;
	 
	 integer i;
	 integer j;
	 always@(binary)begin
	 ones=4'd0;
	 tens=4'd0;
	 hundreds=4'd0;
	 thous=4'd0;
	 ten_thous=4'd0;
	 hun_thous=4'd0;
	 mills=4'd0;
	 ten_mills=4'd0;
	 
	 for(i=31;i>=0;i=i-1)begin
	     if(ten_mills>=5)
		  ten_mills = ten_mills+3;
		  if(mills>=5)
		  mills=mills+3;
		  if(hun_thous>=5)
		  hun_thous = hun_thous+3;
		  if(ten_thous>=5)
		  ten_thous = ten_thous+3;
		  if(thous>=5)
		  thous = thous+3;
		  if(hundreds>=5)
		  hundreds = hundreds+3;
		  if(tens>=5)
		  tens = tens+3;
		  if(ones>=5)
		  ones = ones+3;
		  
		  ten_mills=ten_mills<<1;
		  ten_mills[0]=mills[3];
		  mills=mills<<1;
		  mills[0]=hun_thous[3];
		  hun_thous=hun_thous<<1;
		  hun_thous[0]=ten_thous[3];
		  ten_thous=ten_thous<<1;
		  ten_thous[0]=thous[3];
		  thous=thous<<1;
		  thous[0]=hundreds[3];
		  hundreds=hundreds<<1;
		  hundreds[0]=tens[3];
		  tens=tens<<1;
		  tens[0]=ones[3];
		  ones=ones<<1;
		  ones[0]=binary[i];
		  
		  BCD[31:28]=ten_mills;
		  BCD[27:24]=mills;
		  BCD[23:20]=hun_thous;
		  BCD[19:16]=ten_thous;
		  BCD[15:12]=thous;
		  BCD[11:8]=hundreds;
		  BCD[7:4]=tens;
		  BCD[3:0]=ones;
		  end
		  end


endmodule
