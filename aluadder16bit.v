module aluadder(X,Y,Z,sign,zero,carry,overflow,parity);

input [15:0]X,Y;
output [15:0]Z;
output sign,zero,carry,overflow,parity;

assign {carry,Z}=X+Y;
assign sign=Z[15];
assign zero=~|Z;
assign parity = ~^Z;
assign overflow = ( (X[15] & Y[15] &~Z[15]) |(~X[15] & ~Y[15] &Z[15]));
endmodule 