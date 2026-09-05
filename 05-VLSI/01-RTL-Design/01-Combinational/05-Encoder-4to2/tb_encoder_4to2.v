`timescale 1ns/1ps

module tb_encoder_4to2;

    reg  [3:0] d;

    wire [1:0] y;
    wire       valid;

    encoder_4to2 dut (
        .d(d),
        .y(y),
        .valid(valid)
    );

    initial begin
        $dumpfile("encoder_4to2.vcd");
        $dumpvars(0, tb_encoder_4to2);
    end

    initial begin
        $monitor(
            "time=%0t d=%b y=%b valid=%b",
            $time, d, y, valid
        );
    end

    initial begin

        // No active input
        d = 4'b0000; #10;

        // Test each legal one-hot input
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;

        $finish;
    end

endmodule
