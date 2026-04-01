module alu (
    input [31:0] A,
    input [31:0] B,
    input [2:0] op,   // operation 선택
    output reg [31:0] result
);

always @(*) begin
    case(op)
        3'b000: result = A + B;        // +
        3'b001: result = A - B;        // -
        3'b010: result = A * B;        // *
        3'b011: result = A % B;        // %
        3'b100: result = A & B;        // AND
        3'b101: result = A | B;        // OR
        default: result = 0;
    endcase
end

endmodule
