`timescale 1ns/1ps

module tb_mux_4to1_struct;

	reg a;
	reg b;
	reg c;
	reg d;
	reg [1:0]sel;

	wire y;

	mux_4to1_struct dut (
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.sel(sel),
		.y(y)
	);

	initial begin
		$dumpfile("mux_4to1_struct.vcd");
		$dumpvars(0,tb_mux_4to1_struct);
	end

	initial begin 
		$monitor(
			"time=%0t sel=%b a=%b b=%b c=%b d=%b y=%b",$time,sel,a,b,c,d,y
		);
	end
	
	initial begin
		a=0;
		b=1;
		c=0;
		d=1;
	
	sel = 2'b00; #10;
	sel = 2'b01; #10;
	sel = 2'b10; #10;
	sel = 2'b11; #10;

		a=1;
		b=0;
		c=1;
		d=1;
	sel = 2'b00; #10;
	sel = 2'b01; #10;
	sel = 2'b10; #10;
	sel = 2'b11; #10;

	$finish;
end

endmodule 

	
	
	

	

