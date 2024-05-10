module fulladder_tb();

reg a,b,cin;
integer i;
wire sum, carry;

fulladder fa(a,b,cin,sum,carry);

initial 
  begin 
   for(i=0;i<8;i=i+1)
		begin
		 {a,b,cin}=i; #5;
		 $display("T=%2d,a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
		 
		end
	#5 $finish;
	
		  
	end 
  endmodule 