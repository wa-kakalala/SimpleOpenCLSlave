`timescale 1ns / 1ps
/**************************************
@ filename    : SimpleOpenCLSlave.v
@ author      : yyrwkk
@ create time : 2024/05/01 16:30:16
@ version     : v1.0.0
**************************************/
module SimpleOpenCLSlave(
    input   clk_in   ,
    input   rst_n_in
);

system_wrapper system_wrapper_inst(
    .clk_in1_0       (clk_in  ),
    .reset_0         (rst_n_in),

    .interrupt_flag_0()
);
endmodule
