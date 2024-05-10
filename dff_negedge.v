module dff_negedge(d,clk,q,qbar);
input d,clk;
output reg q,qbar;


always @(negedge clk)

begin 
      q=d;
      qbar=~d;
end
endmodule