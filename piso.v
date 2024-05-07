

//data is getting loaded but not coming out//

module piso (clk,load,shift,d_in,d_out);
input clk;
//input reset;
input load;
input shift;
input [3:0] d_in;
output reg d_out;

//integer i;
reg [3:0] mem=3'b000;
reg[2:0] counter=3'b000;


//write the new code ///synchronization in the funckin problem

always@(*) begin
	if(load) begin	//loading is working well	
		mem<=d_in; 
		end 
end

always@(posedge clk or posedge shift) begin
	
		if(shift) begin
		
			if(counter<3'b011) begin
			mem=mem>>1'b1; 
			d_out<=mem[0];     //first shift then pull to out
			counter<=counter+1'b1;
		end
		
		else 	
			counter<=3'b000;
	
		end
end
endmodule





























