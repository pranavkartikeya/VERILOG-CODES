module fulladder(S,C,A,B,CIN);

input A,B;
input CIN;
output S;
output C;
wire t1,t2,t3;

xor a1(A,B,t1);
xor a2(CIN,t1,S);
and a3(A,B,t2);
and a4(t1,CIN,t3);
or  a5(t2,t3,C);
endmodule