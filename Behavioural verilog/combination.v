module combination2 (
    input  A, B, C, D,
    output reg F
);

always @(*) begin
    F = 1'b0;               // default
    if (~B & ~D)
        F = 1'b1;
    else if (A & ~B & ~C)
        F = 1'b1;
    else if (A & B & C & D)
        F = 1'b1;
end

endmodule
