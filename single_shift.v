module single_shift(clk,reset,load,shift,a,y);
input a;
input clk;
input reset;
input shift;
input load;
output reg y;

reg [2:0]count;

initial 
begin
count=3'b000;
y<=1'b0;
end

always@(posedge clk) begin

if(reset) 
	y<=1'b0;
	
else  

	begin
	
	if(count<3'b111) begin
		y<=1'b0;
		count<=count+1'b1;
		end
	else 
		y<=a;
		
		
		
	end

	
end
endmodule
