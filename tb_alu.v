`timescale 1ns/1ps

module tb_alu;

reg [31:0] A;
reg [31:0] B;
reg [2:0] op;
wire [31:0] result;

alu uut (
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin
    // waveform 보기용
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);


    A = 15; B = 7; op = 3'b000;
    #10;

    A = 20; B = 8; op = 3'b001;
    #10;

    A = 6; B = 9; op = 3'b010;
    #10;

    A = 23; B = 5; op = 3'b011;
    #10;

    // AND
    A = 12; B = 10; op = 3'b100;
    #10;

    // OR
    A = 12; B = 10; op = 3'b101;
    #10;

    $finish;
end

endmodule
