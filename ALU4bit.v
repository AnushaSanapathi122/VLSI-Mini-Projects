module ALU4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALUControl,
    output reg [3:0] ALUResult
);
    
    always @(*) begin
        case (ALUControl)
            3'b000: ALUResult = A & B; // AND operation
            3'b001: ALUResult = A | B; // OR operation
            3'b010: ALUResult = A + B; // ADD operation
            3'b011: ALUResult = A - B; // SUBTRACT operation
            3'b100: ALUResult = A ^ B; // XOR operation
            3'b101: ALUResult = ~(A | B); // NOR operation
            3'b110: ALUResult = ~(A & B); // NAND
            3'b111: ALUResult = ~A; // NOT operation
            default: ALUResult = 4'b0000; // Default case
        endcase
    end
    endmodule