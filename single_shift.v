module single_shift(clk,reset,shift,a,y);
input a;
input clk;
input reset;
input shift;
output reg y;



always@(posedge clk) begin

if(reset) begin
	y<=1'b0;
	end 


else
	y<=a;
	
	
end
endmodule
