`include "led.v"

module testbench;

led led0(w_out, w_in);
test test0(w_in, w_out);

endmodule

module test(
    input wire LED_OUT,
    output wire LED_IN
);

endmodule