module ALU(a,b,sign,parity,carry,overflow,zero,result,op);
input [7:0]a,b;
input [2:0]op;
output reg carry;
output reg sign,parity,overflow,zero;
output reg  [7:0]result;

parameter ADD=3'b000, SUB=3'b001 ,MUL=3'b010,DIV=3'b011,AND=3'b100,OR=3'b101,XOR=3'b110,XNOR=3'b111;

always @* 
   begin 
 case(op)
		 ADD : {carry,result} = a+b;
		 SUB : result = a-b;
		 MUL : result = a*b;
		 DIV : result = a/b;
		 AND : result = a&b;
		 OR  : result = a|b;
		 XOR : result = a^b;
		 XNOR: result = ~(a^b);
    endcase
	  sign = result[7];
	  zero = ~|result;
	  parity  = ~^result;
	  overflow =((a[7] &b[7] & ~result[7])|(~a[7] & ~b[7] & result[7]));
	 end
endmodule
	 
	 
	 
	 
	 
	 
	 