module mux_4to1_struct(
	input wire a,
	input wire b,
	input wire c,
	input wire d,
	input wire [1:0]sel,
	output wire y
);

	wire w1;
	wire w2;

	mux_2to1 mo(
	.a(a),
	.b(b),
	.sel(sel[0]),
	.y(w1)
	);

	mux_2to1 m1(
	.a(c),
	.b(d),
	.sel(sel[0]),
	.y(w2)
	);

	mux_2to1 m2(
	.a(w1),
	.b(w2),
	.sel(sel[1]),
	.y(y)
	);
endmodule
