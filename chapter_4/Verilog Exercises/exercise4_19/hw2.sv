module ex4_19(input logic [3:0] a, output logic d, p);
	assign d = (~a[3] & ~a[2] & a[1] & a[0]) |
		(~a[3] & a[2] & a[1] & ~a[0]) |
		(a[3] & ~a[2] & ~a[1] & a[0]) |
		(a[3] & ~a[2] & ~a[1] & a[0]) |
		(a[3] & a[2] & ~a[1] & ~a[0]) |
		(a[3] & a[2] & a[1] & a[0]);

	assign p = (~a[3] & a[2] & a[0]) |
		(~a[3] & a[1] & a[0]) |
		(~a[3] & ~a[2] & a[1]) |
		(~a[2] & a[1] & a[0]);
endmodule
