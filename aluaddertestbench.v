module aluaddertestbench();

reg [15:0]A;
reg [15:0]B;
wire [15:0]C;
wire S,Z,CA,OV,P;

aluadder m2(A,B,C,S,Z,CA,OV,P);

initial begin

#5  A=16'h8fff;B=16'h8000;
#5  A=16'hfffe;B=16'h8002;
#5  A=16'h8aaa;B=16'h8555;
end
endmodule
