`timescale 1ns/1ps

module tb_Half_Adder;

	reg a;
	reg b;

	wire sum;
	wire carry;

	Half_Adder dut (
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry)
	);

	initial begin
		$dumpfile("Half_Adder.vcd");
		$dumpvars(0,tb_Half_Adder);
	end
	
	initial begin
	$monitor(
		"time=%0t a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry
	);
	end
	initial begin
		
		a=0; b=0; #10;
		a=0; b=1; #10;
		a=1; b=0; #10;
		a=1; b=1; #10;
	$finish;
	
	end
endmodule
