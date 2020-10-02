module ex4_7_testbench();
	logic clk, reset;
	logic [3:0] data;
	logic [6:0] s_expected;
	logic [6:0] s;
	logic [31:0] vectornum, errors;
	logic [10:0] testvectors[10000:0];
	// instantiate device under test
	sevenseg dut(data, s);

	// generate clock
	always
		begin
			clk = 1; #5; clk = 0; #5;
		end

	// at start of test, load vectors
	// and pulse reset
	initial
		begin
			$readmemb("ex4_7.tv", testvectors);
			vectornum = 0; errors = 0;
			reset = 1; #27; reset = 0;
		end
	
	// apply test vectors on rising edge of clk
	always @(posedge clk)
		begin
			#1; {data, s_expected} =
				testvectors[vectornum];
		end
	
	// check results on falling edge of clk
	always @(negedge clk)
		if (~reset) begin // skip during reset
		if (s !== s_expected) begin
			$display("Error: inputs = %h", data);
			$display(" outputs = %b (%b expected)", s, s_expected);
			errors = errors + 1;
		end
		vectornum = vectornum + 1;
		if (testvectors[vectornum] === 11'bx) begin
			$display("%d tests completed with %d errors", vectornum, errors);
			$finish;
		end
	end
endmodule
