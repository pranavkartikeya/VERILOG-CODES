module srlatchtest();

reg S,R;
wire Q,Qbar;

srlatch m1(R,S,Q,Qbar);

initial
  begin
     
	  S=1'b0; R=1'b1;
   #5	  S=1'b1; R=1'b1;
	#5   S=1'b1; R=1'b0;
	#5   S=1'b0; R=1'b0;
	#5   S=1'b0; R=1'b1;
	
	end 
	endmodule
	
