module jk_ff(input clk,
             input J, K,
	     output Q);
     always @ (posedge clk)
	     case ({j, k})
		     2'b01: q <= 1'b0;
		     2'b10: q <= 1'b1;
		     2'b11: q <= ~q;
	     endcase
endmodule
