`timescale 1ns/1ps

module tb_mux_2to1;

	reg a;
	reg b;
	reg sel;
	wire y;

	mux_2to1 dut (
	.a(a),
	.b(b),
	.sel(sel),
	.y(y)
);
	initial begin
		$dumpfile("mux_2to1.vcd");
		$dumpvars(0,tb_mux_2to1);
	end
	initial begin
	$monitor(
		"time=%0t a=%b b=%b sel=%b y=%b",
		$time, a, b, sel, y
	);
end

initial begin
	a=0;b=0;sel=0; #10;
	a=0;b=1;sel=0; #10;
	a=1;b=0;sel=0; #10;
	a=1;b=1;sel=0; #10;

	a=0;b=0;sel=1; #10;
        a=0;b=1;sel=1; #10;
        a=1;b=0;sel=1; #10;
        a=1;b=1;sel=1; #10;
	
	$finish;
   end

endmodule
	

