module noob_fixed_arb
(
  input [2:0] req,
  output reg [2:0] grant
);

  always @(*)begin
    case(1'b1)
      req[0]: grant = 3'b001;
      req[1]: grant = 3'b010;
      req[2]: grant = 3'b100;
      default: grant = 3'b000;
    endcase
  end
endmodule
