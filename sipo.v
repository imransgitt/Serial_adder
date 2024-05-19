

module sipo (clk,reset,a,shift,out);
input clk;
input reset;
input shift;
input a;
output reg [3:0]out;

reg [3:0]mem;
reg [2:0]counter;

	
always@(posedge clk) begin
	
 if(reset) begin
 	mem=4'b0000;
 	end
 	
 if(!reset) begin
 	
 		if(shift)begin
 				  //right shift happening fine		
			if(counter<3'b100) begin
			mem[3]<=a;
 			mem=mem>>1'b1;
 			counter<=counter+1'b1;
 			out<=4'b0000;
 			//out<=mem;
 				end
 				
 			else	 begin
 			//out=mem;
 			counter<=3'b000;
 			out<=mem;
 			end

	end
end
	
	
 	
end
endmodule
