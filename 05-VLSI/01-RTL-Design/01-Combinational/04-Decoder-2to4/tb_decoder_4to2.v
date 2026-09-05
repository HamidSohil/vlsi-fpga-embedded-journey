`timescale 1ns/1ps

module tb_decoder_2to4;

	reg [1:0] a;
	reg       en;
	wire [3:0] y;

	decoder_2to4 dut (
	.a(a),
	.en(en),
	.y(y)
	);

initial begin
	$dumpfile("decoder_2to4.vcd");
	$dumpvars(0,tb_decoder_2to4);
	end

initial begin
	$monitor(
		"time=%0t en=%b a=%b y=%b",
		$time,en,a,y
		);
	end

	initial begin

	en =0;
	a  = 2'b00; #10;
	a  = 2'b01; #10;
	a  = 2'b10; #10;
	a  = 2'b11; #10;

	en =1;
	a  = 2'b00; #10;
	a  = 2'b01; #10;
	a  = 2'b10; #10;
	a  = 2'b11; #10;
	
	$finish;
	end

endmodule
	
