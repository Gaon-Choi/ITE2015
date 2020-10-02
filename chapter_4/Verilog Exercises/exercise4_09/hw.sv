module mux8(input logic [2:0] s,
	    input d0, input d1, input d2, input d3, input d4, input d5, input d6, input d7,
	    output logic y);
    always @(*)
	    case (s)
		    3'b000: y = d0;
		    3'b001: y = d1;
		    3'b010: y = d2;
		    3'b011: y = d3;
		    3'b100: y = d4;
		    3'b101: y = d5;
		    3'b110: y = d6;
		    3'b111: y = d7;
            endcase
endmodule

module ex4_07(input logic a, b, c,
             output logic y);
     mux8 mux8_1 (1'b1, 1'b0, 1'b0, 1'b1,
                       1'b1, 1'b1, 1'b0, 1'b0,
		       {a, b, c}, y);
endmodule
