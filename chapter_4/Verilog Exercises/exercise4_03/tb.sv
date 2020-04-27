module tb();
	logic [3:0] a;
	logic y;

	xor_4_inputs dut(a, y);

	initial
		begin
			a = 4'b0001;
			#10;
			a = 4'b1111;
			#10;
			$stop;
		end
endmodule