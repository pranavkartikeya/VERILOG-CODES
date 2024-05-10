module updowncounter(din,ld,clk,mode,clr,count);

input ld,clr,clk,mode;
input [0:7]din;
output reg [0:7]count;

always @(*)
 begin
 if(clr) count<=0;
 else if(ld) count<=din;
 else if(mode) count<= count + 1;
 else count<= count -1;
 end
 endmodule 
 
