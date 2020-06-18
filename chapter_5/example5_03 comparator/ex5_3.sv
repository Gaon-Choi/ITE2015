module comparator #(parameter N = 8)
                   (input logic [N-1:0] a, b,
                    output logic eq, neq, lt,
		    lte, gt, gte);
	assign eq = (a == b);	// equals
	assign neq = (a != b);	// not equals
	assign lt = (a < b);	// less than
	assign lte = (a <= b);	// less than or equals
	assign gt = (a > b);	// greater than
	assign gte = (a >= b);	// greater than or equals
endmodule
