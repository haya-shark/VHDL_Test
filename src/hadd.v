// Code your design here
module hadd(input IN_A, input IN_B, output O_A, output O_B);

  assign O_A = IN_A ^ IN_B;  // XOR
  assign O_B = IN_A & IN_B;  // AND

endmodule
