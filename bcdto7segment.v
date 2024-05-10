module bcdto7segment(bcd,seg);

   input [3:0]bcd;
   output reg  [6:0]seg;
	
	always @(bcd)
	 begin
	   case(bcd)
		0: seg=6'b000001;
		1: seg=6'b000011;	
		2: seg=6'b000111;
		3: seg=6'b010001;
		4: seg=6'b110001;
		5: seg=6'b011001;
		6: seg=6'b001101;
		7: seg=6'b010101;
		
	default : seg=6'b111111;
	endcase
	end
	endmodule

