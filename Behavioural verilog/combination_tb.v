`timescale 1ns/1ps

module tb_boolean_func;

reg A, B, C, D;
wire F_data, F_beh;

// Instantiate DUTs
combination DUT (
    .A(A), .B(B), .C(C), .D(D),
    .F(F_data)
);



integer i;

initial begin
    // 1️ Create waveform dump file
    $dumpfile("boolean_func.vcd");

    // 2️ Dump all variables in this module and below
    $dumpvars(0, tb_boolean_func);

    // Optional: dump specific signals only
    // $dumpvars(1, A, B, C, D, F_data, F_beh);

    $display("A B C D | Dataflow Behavioral");
    $display("-------------------------------");

    for (i = 0; i < 16; i = i + 1) begin
        {A, B, C, D} = i;
        #10;
        $display("%b %b %b %b |    %b         %b",
                 A, B, C, D, F_data, F_beh);
    end

    $finish;
end

endmodule
