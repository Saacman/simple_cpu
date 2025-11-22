module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] s,
    output reg [3:0] y
);
  // alu has two input operand a and b.
  // It executes different operation over input a and b based on input s
  // then generate result to output y
  // wire [3:0] in_y;
  // wire [3:0] sum;
  // adder4Bit adder (
  //     .x  (a),
  //     .y  (in_y),
  //     .sum(sum)
  // );

  typedef enum logic [2:0] {
    ADD,
    SUB,
    NOT,
    AND,
    OR,
    XOR,
    GT,
    EQL
  } state_t;
  
  // assign in_y = (s[0] == 1'b0)? b: ~b + 1'b1;

  always_comb begin
    case (s)
      ADD: y = a + b;
      SUB: y = a + (~b + 1'b1);
      NOT: y = ~a;
      AND: y = a & b;
      OR:  y = a | b;
      XOR: y = a ^ b;
      GT:  y = a > b ? 4'b0001 : 4'b0000;
      EQL: y = a == b ? 4'b0001 : 4'b0000;
    endcase
  end

endmodule
