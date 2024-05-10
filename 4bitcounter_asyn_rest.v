
//4bit counter with asynchronus reset
module couter4bit(clk,reset,count);
input clk,reset;
output reg [3:0]count;

always @(posedge clk or posedge reset)
begin
if(reset)
  count<=4'b0000;
  else
  count<=count+1;
  end
  endmodule
