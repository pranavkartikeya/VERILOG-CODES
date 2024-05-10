module ripplecarryadder(a,b,cin,S,C);

input [3:0]a,b;
input cin;
output [3:0]S;
output C;
wire [3:1]t;

fulladder fa0(S[0],t[1],a[0],b[0],cin);
fulladder fa1(S[1],t[2],a[1],b[1],t[1]);
fulladder fa2(S[2],t[3],a[2],b[2],t[2]);
fulladder fa3(S[3],C,a[3],b[3],t[3]);

endmodule 
