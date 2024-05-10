`timescale 1ns / 1ps

module alutestbench;

    // Parameters
    localparam WIDTH = 8;

    // Signals
    reg [3:0] opcode;
    reg [WIDTH-1:0] operandA;
    reg [WIDTH-1:0] operandB;
    wire [WIDTH-1:0] result;
    wire zero_flag, carry_flag, overflow_flag;

    // Instantiate ALU
    ALU alu_inst (
        .opcode(o),
        .operandA(a),
        .operandB),
        .result(result),
        .zero_flag(zero_flag),
        .carry_flag(carry_flag),
        .overflow_flag(overflow_flag)
    );

    // Clock generation
    reg clock = 0;
    always #5 clock = ~clock;

    // Test stimuli
    initial begin
        // Test case 1: Addition
        opcode = 4'b0000; // ADD
        operandA = 8'b00001111;
        operandB = 8'b00000001;
        #10;
        
        // Test case 2: Subtraction
        opcode = 4'b0001; // SUB
        operandA = 8'b00001111;
        operandB = 8'b00000001;
        #10;

        // Test case 3: Bitwise AND
        opcode = 4'b0010; // AND
        operandA = 8'b11110000;
        operandB = 8'b00001111;
        #10;

        // Test case 4: Bitwise OR
        opcode = 4'b0011; // OR
        operandA = 8'b11110000;
        operandB = 8'b00001111;
        #10;

        // Test case 5: Bitwise XOR
        opcode = 4'b0100; // XOR
        operandA = 8'b11110000;
        operandB = 8'b00001111;
        #10;

        // Test case 6: Bitwise NOR
        opcode = 4'b0101; // NOR
        operandA = 8'b11110000;
        operandB = 8'b00001111;
        #10;

        $finish;
    end

endmodule
