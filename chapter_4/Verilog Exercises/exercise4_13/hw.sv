module 2_4_decorder(input [1:0] code, output [3:0] y);
	always_comb
		case (code)
			2'b00: y = 4'b0001;
			2'b01: y = 4'b0010;
			2'b10: y = 4'b0100;
			2'b11: y = 4'b1000;
		endcase
endmodule
