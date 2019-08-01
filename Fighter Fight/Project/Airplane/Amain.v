`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:45 12/17/2018 
// Design Name: 
// Module Name:    Amain 
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
module Amain(input clk_25,                       //ʱ��Ƶ��Ϊһ֡
             input reset,
             input [3:0]Dir,                     //�ɻ��ƶ�����
             input [9:0] x,
             input [9:0] y,
             input vs,                           //���ź�
             output reg [11:0] RGB,              //�����ǰɨ���12λ��ɫ
             output reg over                     //�����Ϸ״̬				 
    );
	 
	 reg[2:0] Dir1 = 1,Dir1_next;
	 reg[9:0] Px=0,Py=32,Px_next,Py_next,Pxt,Pyt; //�ɻ�����

    wire [11:0]AirRGB;
	 
	 always @(posedge vs or posedge reset)
	 if(reset)begin
	 Dir1<=0;
	 Px<=0;
	 Py<=32;
	 Px_next<=0;
	 Py_next<=32;
	 over<=0;
	 end
	/* 
	 begin
	       case(Dir)
			 4'b0000:begin stop1<=1; end
			 4'b1000:begin Dir1<=0;stop1<=0;end
			 4'b0100:begin Dir1<=1;stop1<=0;end
			 4'b0010:begin Dir1<=2;stop1<=0;end
			 4'b0001:begin Dir1<=3;stop1<=0;end
			 endcase
	end
	
	begin
	    if(stop1==1)begin
		     Px <= Px;
			  Py <= Py;
		 end
	else begin
	    Py_next<=Py;                              //���Ƶ�ǰ��������ж�
		 Px_next<=Px; 
   end	*/
endmodule
