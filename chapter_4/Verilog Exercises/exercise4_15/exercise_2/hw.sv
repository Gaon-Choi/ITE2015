module ex15_b(input a, b, c, output y);
	assign y = (~a & ~b) | (~a & b & ~c) | (~(a | ~c));
endmodule
