module mux2to1_b(in0,in1,s,out);
input in0,in1;
input s;
output reg out;

always @(in0 or in1 or s)

if(s) 
out = in1;
else 
out= in0;

endmodule
