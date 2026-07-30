module d_flipflop(
    input wire CLK, D, PRE,
    output wire OUT
);

reg OUT_reg;

initial OUT_reg = 0;

always @(PRE, posedge CLK) begin
    case (PRE)
        1'b1: OUT_reg <= 0;
        default: OUT_reg <= D;
    endcase
end

assign OUT = OUT_reg;

endmodule