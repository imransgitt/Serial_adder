module sipo (clk,a,shift,out);
input clk;
//input reset;
input shift;
input a;
output reg [3:0]out;

reg [3:0]mem;
reg [2:0]counter;

always@(posedge clk) begin

 /*if(reset) begin
 	counter<=3'b000;
 	end*/

 	
if(shift)begin  //right shift happening fine
	//mem[3]<=a;	
	if(counter<3'b011) begin
	mem[3]<=a;
	//out<=4'b0000; 
 	mem=mem>>1'b1;
 	counter<=counter+1'b1;
 	out<=4'b0000;
 			end
 	
 	else	 begin
 		counter<=3'b000;
 		out<=mem;
 			end

	end
 	
end
endmodule
