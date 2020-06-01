module exercise4_17(input a, b, c, d, e, f, g, output y);
	logic n1, n2, n3, n4, n5;

	assign n1 = ~(a & b & c);
	assign n2 = ~(n1 & d);
	
	assign n3 = f & g;
	assign n4 = ~(e | n3);

	assign n5 = ~(n2 | n4);

	assign y = ~(n5 & n5);
endmodule
