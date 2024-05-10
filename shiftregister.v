module shiftregister(A,B,C,D,E,clk,clear);

input A;
input clk,clear;
output reg B,C,D,E;

always @(posedge clk or negedge clear)
 begin
   if(!clear) begin B=0;C=0;D=0;E=0; end 
	else
	begin
	   E<=D;
		D<=C;
		C<=B;
		B<=A;
	end
	
 end
endmodule
		
		
