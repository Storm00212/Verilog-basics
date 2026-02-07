// Testbench for the adder_instantiation module
`timescale 1ns / 1ps

module adder_instantiation_tb;

    // Inputs
    reg [15:0] in1;
    reg [15:0] in2;

    // Outputs
    wire [15:0] out;

    // Instantiate the Unit Under Test (UUT)
    adder_instantiation uut (
        .in1(in1),
        .in2(in2),
        .out(out)
    );

    initial begin
        // Initialize Inputs
        in1 = 0;
        in2 = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
        in1 = 100;
        in2 = 200;
        #100;

        in1 = 65535;
        in2 = 1;
        #100;

        $finish;
    end

    initial begin
        $monitor("Time=%0t in1=%d, in2=%d, out=%d", $time, in1, in2, out);
    end

endmodule
