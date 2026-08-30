module basic_gate (
	input wire a,
	input wire b,
	output wire y_and,
	output wire y_or,
	output wire y_xor,
	output wire y_xnor,
	output wire y_nand,
	output wire y_nor,
	output wire not_a,
	output wire not_b
);

	assign y_and	 = a & b;
	assign y_or 	 = a | b;
	assign y_xor	 = a ^ b;
	assign y_nor	 = ~(a | b);
	assign y_nand	 = ~(a & b);
	assign y_xnor	 = ~(a ^ b);
	assign not_a	 = ~a;
	assign not_b	 = ~b;

endmodule

	
