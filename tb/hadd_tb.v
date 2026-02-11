// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module hadd_tb;

  reg  IN_A;
  reg  IN_B;
  wire O_A;
  wire O_B;

  // DUT (Device Under Test) のインスタンス化
  hadd uut (
    .IN_A(IN_A),
    .IN_B(IN_B),
    .O_A(O_A),
    .O_B(O_B)
  );

  initial begin
    $dumpfile("haddtest.vcd");
    $dumpvars(1,hadd_tb);
    $display(" A B | SUM CARRY ");
    $display("-----------------");

    // 00
    IN_A = 0; IN_B = 0; #10;
    $display(" %b %b |  %b    %b", IN_A, IN_B, O_A, O_B);

    // 01
    IN_A = 0; IN_B = 1; #10;
    $display(" %b %b |  %b    %b", IN_A, IN_B, O_A, O_B);

    // 10
    IN_A = 1; IN_B = 0; #10;
    $display(" %b %b |  %b    %b", IN_A, IN_B, O_A, O_B);

    // 11
    IN_A = 1; IN_B = 1; #10;
    $display(" %b %b |  %b    %b", IN_A, IN_B, O_A, O_B);

    $finish;
  end

endmodule
