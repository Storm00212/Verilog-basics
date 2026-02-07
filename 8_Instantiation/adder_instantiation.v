// This module demonstrates how to instantiate the parametric_adder.
// We are creating a specific instance of the adder with a width of 16.

module adder_instantiation (
    input [15:0] in1,
    input [15:0] in2,
    output [15:0] out
);

    // Instantiating the parametric_adder with a WIDTH of 16
    parametric_adder #(.WIDTH(16)) my_adder (
        .a(in1),
        .b(in2),
        .sum(out)
    );

endmodule
