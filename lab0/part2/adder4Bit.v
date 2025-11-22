module adder4Bit (
    input  [3:0] x,
    input  [3:0] y,
    output [3:0] sum
);
  wire [2:0] c;
  fullAdder inst0 (
      .a(x[0]),
      .b(y[0]),
      .cin('0),
      .cout(c[0]),
      .s(sum[0])
  );
  fullAdder inst1 (
      .a(x[1]),
      .b(y[1]),
      .cin(c[0]),
      .cout(c[1]),
      .s(sum[1])
  );
  fullAdder inst2 (
      .a(x[2]),
      .b(y[2]),
      .cin(c[1]),
      .cout(c[2]),
      .s(sum[2])
  );
  fullAdder inst3 (
      .a(x[3]),
      .b(y[3]),
      .cin(c[2]),
      .cout(sum[4]),
      .s(sum[3])
  );
endmodule
