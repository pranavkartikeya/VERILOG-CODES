module fulladder(a,b,cin,sum,carry);

   input a,b,cin;
	output sum,carry;
	
	assign {carry,sum}=a+b+cin;
endmodule
	