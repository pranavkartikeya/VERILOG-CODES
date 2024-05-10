module aluadder4bit_1(A,B,cin,C,S);
input [3:0]A,B;
input cin;
output [3:0]S;
output C;

assign {C,S} = A+B+cin;

endmodule
