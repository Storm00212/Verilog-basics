module combination (
    input  A, B, C, D,
    output F
);

assign F = (~B & ~D) |
           (A & ~B & ~C) |
           (A & B & C & D);

endmodule
