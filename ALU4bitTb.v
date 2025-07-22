module ALU4bitTb;
reg [3:0] A, B;
reg [2:0] ALUControl;
wire [3:0] ALUResult;
ALU4bit uut (
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .ALUResult(ALUResult)
);
initial begin
    $dumpfile("ALU4bitTb.vcd");
    $dumpvars(0, ALU4bitTb);
    // Test AND operation
    A = 4'b1100; B = 4'b1010; ALUControl = 3'b000; #10;
    $display("AND Result: %b",ALUResult );
    // Test OR operation
    A= 4'b1100; B = 4'b1010; ALUControl = 3'b001; #10;
    $display("OR Result: %b", ALUResult);
    // Test ADD operation
    A = 4'b0011; B = 4'b0001; ALUControl = 3'b010; #10;
    $display("ADD Result: %b", ALUResult);
    // Test SUBTRACT operation
    A = 4'b0100; B = 4'b0010; ALUControl = 3'b011; #10;
    $display("SUBTRACT Result: %b", ALUResult);
    // Test XOR operation
    A = 4'b1100; B = 4'b1010; ALUControl = 3'b100; #10;
    $display("XOR Result: %b", ALUResult);
    // Test NOR operation
    A = 4'b1100; B = 4'b1010; ALUControl = 3'b101; #10;
    $display("NOR Result: %b", ALUResult);
    // Test NAND operation
    A = 4'b1100; B = 4'b1010; ALUControl = 3'b110; #10;
    $display("NAND Result: %b", ALUResult);
    // Test NOT operation
    A = 4'b1100; ALUControl = 3'b111; #10;
    $display("NOT Result: %b", ALUResult);
    $finish;
    
end
endmodule    