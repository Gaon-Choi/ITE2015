module minority(input a,b,c, output y);
	/*
	<Truth Table>
	a	b	c	y
	--------------------------------
	0	0	1	1	--> mt1
	0	1	0	1	--> mt2
	1	0	0	1	--> mt3
	0	0	0	1	--> mt4
	(others)			0
	*/

	// minterms
	assign mt1 = ~a & ~b & c;
	assign mt2 = ~a & b & ~c;
	assign mt3 = a & ~b & ~c;
	assign mt4 = ~a & ~b & ~c;

	// sum of products
	assign y = mt1 | mt2 | mt3 | mt4;
endmodule
