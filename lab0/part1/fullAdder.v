module fullAdder (
    input  cin,
    input  a,
    input  b,
    output s,
    output cout
);
  // FullAdder compute addition of input cin, a and b,
  // then output result to s and carry bit to cout.

  wire a_xor_b;
  assign a_xor_b = a ^ b;
  assign s = cin ^ a_xor_b;
  assign cout = (a & b) | (cin & a_xor_b);

endmodule
