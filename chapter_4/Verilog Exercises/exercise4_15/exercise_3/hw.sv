module ex15_c(input a, b, c, d, output y);
	assign y = (~a & ~b & ~c & ~d) | (a & ~b & ~c) | (a & ~b & c & ~d) | (a & b & d) | (~a & ~b & c & ~d) | (b & ~c & d) | (~a);
endmodule
