primitive mux4to1_udp(f,s0,s1,a,b,c,d);
		input s1,s0,a,b,c,d;
		output f;
		table
		 // s1 s0  a b c d : f
           0 0   0 ? ? ? : 0;
			  0 0   1 ? ? ? : 1;
			  0 1   ? 0 ? ? : 0;
			  0 1   ? 1 ? ? : 1;
			  1 0   ? ? 0 ? : 0;
			  1 0   ? ? 1 ? : 1;
			  1 1   ? ? ? 0 : 0;
			  1 1   ? ? ? 1 : 1;
		endtable
		
endprimitive


