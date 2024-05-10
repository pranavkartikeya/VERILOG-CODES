module aluadder4bit(X,Y,Z,sign,zero,carry,overflow,parity);

input [15:0]X,Y;
output [15:0]Z;
wire [3:1]t;
output sign,zero,carry,overflow,parity;
assign sign=Z[15];
assign zero=~|Z;
assign parity = ~^Z;
assign overflow = ( (X[15] & Y[15] &~Z[15]) |(~X[15] & ~Y[15] &Z[15]));

aluadder4bit_1 m1(X[3:0],Y[3:0],1'b0,t[1],Z[3:0]);
aluadder4bit_1 m2(X[7:4],Y[7:4],t[1],t[2],Z[7:4]);
aluadder4bit_1 m3(X[11:8],Y[11:8],t[2],t[3],Z[11:8]);
aluadder4bit_1 m4(X[15:12],Y[15:12],t[3],carry,Z[15:12]);



endmodule 