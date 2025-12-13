module adder32 (
    input  [31:0] A,
    input  [31:0] B,
    input         Cin,
    output [31:0] SUM,
    output        Cout,
    output        Overflow
);

    assign {Cout, SUM} = A + B + Cin;

    // bit dấu
    wire A31  = A[31];
    wire B31  = B[31];
    wire S31  = SUM[31];

    // overflow signed
    assign Overflow = ( A31 &  B31 & ~S31 ) |
                      (~A31 & ~B31 &  S31 );

endmodule
