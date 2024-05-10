module PRACTICE(alu_out,a,b,op,en);

input [7:0]a,b;
input en;
input [2:0]op;

output [7:0]alu_out;
reg [7:0]alu_reg;

assign alu_out=(en==1)?alu_reg:4'bz;

always @(*)

    case (op)
	  3'b000 : alu_reg=a+b;
	  3'b001 :alu_reg=a-b;
  3'b011 :alu_reg = ~a;
  default : alu_reg= 4'b0;
  
  endcase
  endmodule
