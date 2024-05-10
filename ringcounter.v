module ringcounter(in,count,clk);
input [0:7]in;
input clk;
output  reg [0:7]count;

always @(posedge clk)
 begin
 if(in) count=8'b10000000;
 
 else
 begin
     count <=count<<1;
	 count[7] <=count [0];
	
	end
	end
	endmodule
   