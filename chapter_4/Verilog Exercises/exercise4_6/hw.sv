module hexademical_seven_segment_display_decoder(input [3:0] data, output reg [6:0] segments);

	always @ (*)
		case (data)
			//               abc_defg
			0 : segments = 7'b111_1110;	// 0
			1 : segments = 7'b011_0000;	// 1
			2 : segments = 7'b110_1101;	// 2
			3 : segments = 7'b111_1001;	// 3
			4 : segments = 7'b011_0011;	// 4
			5 : segments = 7'b101_1011;	// 5
			6 : segments = 7'b101_1111;	// 6
			7 : segments = 7'b111_0000;	// 7
			8 : segments = 7'b111_1111;	// 8
			9 : segments = 7'b111_0011;	// 9
			10: segments = 7'b111_0111;	// A
			11: segments = 7'b001_1111;	// B(b)
			12: segments = 7'b100_1110;	// C
			13: segments = 7'b011_1101;	// D(d)
			14: segments = 7'b100_1111;	// E
			15: segments = 7'b100_0111;	// F
			default: segments = 7'b000_0000;
		endcase
endmodule
