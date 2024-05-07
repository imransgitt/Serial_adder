module single_shift(clk,shift,a,y);
input a;
input clk;
//input reset;
input shift;
output reg y;



always@(posedge clk) begin

/*if(reset) begin
	y<=1'b0;
	end */

case(shift)
1'b1:y<=a;
1'b0:y<=1'b0;
default:y<=1'b0;
endcase
	
	
end
endmodule
