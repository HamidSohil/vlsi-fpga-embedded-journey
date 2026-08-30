`timescale 1ns/1ps
module tb_basic_gate;

reg a;
reg b;

wire y_and;
wire y_or;
wire y_xor;
wire y_xnor;
wire y_nand;
wire y_nor;
wire not_a;
wire not_b;

	basic_gate dut (
	    .a(a),
	     .b(b),

	    .y_and(y_and),
	    .y_or(y_or),
	    .y_xor(y_xor),
	    .y_xnor(y_xnor),
	    .y_nand(y_nand),
	    .y_nor(y_nor),
	    .not_a(not_a),
	    .not_b(not_b)
	);
initial begin

    a = 0;
    b = 0;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 1;
    #10;

    $finish;

end   
 
initial begin
    $monitor(
        "time=%0t a=%b b=%b AND=%b OR=%b XOR=%b NAND=%b NOR=%b XNOR=%b NOT_A=%b NOT_B=%b",
        $time,
        a,
        b,
        y_and,
        y_or,
        y_xor,
        y_nand,
        y_nor,
        y_xnor,
        not_a,
        not_b
    );
end
initial begin
    $dumpfile("basic_gate.vcd");
    $dumpvars(0, tb_basic_gate);
end

endmodule
