
//`include "serial_adder.v"
//test bench in verilog only for simulation level of verification 
module serial_adder_tb();
reg clk;
//reg reset;
reg load;
reg shift;
reg [3:0]a;
reg [3:0]b;
wire [3:0]sum;

serial_adder dut(.clk(clk),.load(load),.shift(shift),.a(a),.b(b),.sum(sum));

initial begin
$dumpfile("output_wave.vcd");
$dumpvars(0,serial_adder_tb);
end

initial begin
clk=1'b0;
load=1'b1;
shift=1'b1;
a=4'b1100;
b=4'b0111;

#500 $finish;
end

always #5 clk=~clk;

endmodule

