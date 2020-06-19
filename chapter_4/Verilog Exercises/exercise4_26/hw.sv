module sr_latch(input S, R,
                output Q, Qn);
	wire q, qn;

	assign Q = q;
	assign Qn = qn;

	assign q = ~(R | qn);
	assign qn = ~(S | q);

endmodule
