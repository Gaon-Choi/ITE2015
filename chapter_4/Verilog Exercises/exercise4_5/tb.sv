module tb();
	logic a, b, c;
	logic y;

	// instantiate device
	minority dut(a, b, c, y);

	// generate input sequence
	initial
		begin
			a = 0; b = 0; c = 0;
			#1;			
			a = 0; b = 0; c = 1;
			#1;
			a = 0; b = 1; c = 0;
			#1;
			a = 0; b = 1; c = 1;
			#1;
			a = 1; b = 0; c = 0;
			#1;
			a = 1; b = 0; c = 1;
			#1;
			a = 1; b = 1; c = 0;
			#1;
			a = 1; b = 1; c = 1;
			#1;
			$stop;
		end
endmodule