

//data is getting loaded but not coming out//
//uptade---> working fine all bits are coming out properly

module piso (clk,reset,load,shift,d_in,d_out);
input clk;
input reset;
input load;
input shift;
input [3:0] d_in;
output reg d_out;

//integer i;
reg [3:0] mem;
reg [2:0] counter;
reg flag;

///synchronization is the funckin problem
/*initial begin
counter=3'b000;
end*/

always@(posedge clk) begin
	if(reset)
		mem<=4'b0000;
 	
 	if(!reset) begin
 	
		if(load) begin	//loading is working well	
			mem<=d_in; 
			
			end
		
		if(shift) begin
		
				if(counter!=3'b011) begin
				//d_out=mem[0]; 
				mem<=mem>>1'b1;
				flag<=1'b1;     //first shift then pull to out
				counter<=counter+1'b1;
					end
	
					
				else			
				counter<=3'b000;
					
			 end
			 
			 if(flag==1'b1) begin
					d_out<=mem[0];
				end
	end
	
	
				
end
endmodule


/*  *************************************************************************************************************************************************************
	(done)data is getting loaded and shifted in mem accordingly 
	(should work out)but is taken out in the next cycle and given to full adder correspondingly- can be solved 
	(Done)But cin right from the first cycle is shown x  problem to be solved first.

*/

























