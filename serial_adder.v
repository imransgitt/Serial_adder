// A 4 bit serial adder

`include "full_adder.v"
`include "piso.v"
`include "single_shift.v"
`include "sipo.v"

module serial_adder(clk,load,shift,a,b,sum);
input clk;
input load;
input shift;
//input reset;
input [3:0]a;
input [3:0]b;
output [3:0]sum;


wire w1;
wire w2;
wire w3;
wire w4;
wire w5;

//module instantiations
piso p1 (.clk(clk),.load(load),.shift(shift),.d_in(a),.d_out(w1));
piso p2 (.clk(clk),.load(load),.shift(shift),.d_in(b),.d_out(w2));
full_adder f1 (.a(w1),.b(w2),.cin(w4),.sum(w5),.cout(w3));
single_shift s1(.clk(clk),.shift(shift),.a(w3),.y(w4));
sipo sp1 (.clk(clk),.shift(shift),.a(w5),.out(sum));

endmodule






