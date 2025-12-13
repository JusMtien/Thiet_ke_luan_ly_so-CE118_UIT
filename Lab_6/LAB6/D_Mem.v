module D_Mem (
    input  wire        clk,
    input  wire        MemRead,
    input  wire        MemWrite,
    input  wire [31:0] address,
    input  wire [31:0] WriteData,
    output reg  [31:0] ReadData
);

    // 50 ô nhớ, mỗi ô 32-bit
    reg [31:0] mem [0:49];

    // địa chỉ word (address >> 2)
    wire [5:0] word_addr;  
    assign word_addr = address[31:2];

    // -----------------------------
    // INITIAL: reset RAM và preset
    // -----------------------------
    integer i;
    initial begin
        // clear tất cả ô
        for (i = 0; i < 50; i = i + 1)
            mem[i] = 32'd0;

        // preset giá trị test cho lw $1,16($2)
        // 16 / 4 = 4 → mem[4] = 10
        mem[4] = 32'd10;
    end

    // đọc dữ liệu (combinational)
    always @(*) begin
        if (MemRead) begin
            if (word_addr < 50)
                ReadData = mem[word_addr];
            else
                ReadData = 32'h00000000;
        end 
        else begin
            ReadData = 32'h00000000;
        end
    end

    // ghi dữ liệu (sequential)
    always @(posedge clk) begin
        if (MemWrite && (word_addr < 50)) begin
            mem[word_addr] <= WriteData;
        end
    end

endmodule
