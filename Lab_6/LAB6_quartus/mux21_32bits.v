module mux21_32bits (
    input [31:0] in0,    // chon khi sel=0
    input [31:0] in1,    //chon khi sel=1
    input sel,           
    output [31:0] out    // out 32bits
);

 
    assign out = (sel == 1'b1) ? in1 : in0;

endmodule