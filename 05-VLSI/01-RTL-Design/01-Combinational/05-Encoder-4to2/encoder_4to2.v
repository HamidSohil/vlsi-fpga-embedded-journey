module encoder_4to2 (
    input  wire [3:0] d,
    output wire [1:0] y,
    output wire       valid
);

    assign y[1] = d[2] | d[3];
    assign y[0] = d[1] | d[3];

    assign valid = |d;

endmodule
