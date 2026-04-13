module fibonacci_generator #(
	parameter DATA_WIDTH=32
) (
	input                         clk,
	input                         resetn,
	output logic [DATA_WIDTH-1:0] out
);
	logic [DATA_WIDTH-1:0] current, previous;

	always_ff @(posedge clk) begin
		if (!resetn) begin
			current <= 1;
			previous <= 0;
		end else begin
			current <= current + previous;
			previous <= current;
		end
	end

	assign out = current;
endmodule
