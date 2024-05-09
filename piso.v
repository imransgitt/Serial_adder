

//data is getting loaded but not coming out//

module piso (clk,reset,load,shift,d_in,d_out);
input clk;
input reset;
input load;
input shift;
input [3:0] d_in;
output reg d_out;

//integer i;
reg [3:0] mem;
reg[2:0] counter;


///synchronization is the funckin problem
initial begin
counter=3'b000;
end

always@(*) begin
	if(load) begin	//loading is working well	
		mem<=d_in; 
		end 
end


always@(posedge clk) begin
	
		if(shift) begin
		
			if(counter!=3'b011) begin
			//d_out<=mem[0];
			mem=mem>>1'b1; 
			d_out<=mem[0];         //first shift then pull to out
			counter<=counter+1'b1;
				end
		
			else 
				counter<=3'b000;
					
			end
		
end
endmodule





























