module SR_latch(S, R, Q, Q_bar);

	input S, R;
	output Q, Q_bar;

	wire q, qn;
	
	assign Q = q;
	assign Q_bar = qn;

	assign q = ~(S & qn); // nand(S, qn)
	assign qn = ~(R & q); // nand(R, q)

endmodule


