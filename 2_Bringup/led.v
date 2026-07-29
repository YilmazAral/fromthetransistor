module test(
    output wire OUT
);

integer i;
reg CLK;

initial CLK = 0;

always #1 CLK = ~CLK;

led led0(CLK, OUT);

initial begin
    for (i = 0; i < 10; i = i + 1) begin
        $display("CLK = %d OUT = %d\n", CLK, OUT); #1;
    end

    $finish;
end

endmodule

module led(
    input wire CLK,
    output wire OUT
);

reg OUT_reg;

initial OUT_reg = 0;


always @(posedge CLK) begin
    OUT_reg <= ~OUT_reg;
end

assign OUT = OUT_reg;

endmodule