module testbench();
reg [15:0]A;
reg [3:0]B;
wire F;

mux16to1 m1(.in(A),.sel(B),.out(F));

initial begin
 
#5 A=16'h3f0a ;B=4'h0;
#5 B=4'h1;
#5 B=4'h6;
#5 B=4'hc;
end 
endmodule
