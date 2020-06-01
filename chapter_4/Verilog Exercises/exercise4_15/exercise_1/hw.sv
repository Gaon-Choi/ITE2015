module ex17_a(input a, b, c, output y);
	assign y = (a & c) | (~a & ~b & c);
endmodule
