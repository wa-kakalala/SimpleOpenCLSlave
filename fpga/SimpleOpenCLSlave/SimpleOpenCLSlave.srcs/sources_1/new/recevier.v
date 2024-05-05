`timescale 1ns / 1ps
/**************************************
@ filename    : recevier.v
@ author      : yyrwkk
@ create time : 2024/05/01 16:10:29
@ version     : v1.0.0
**************************************/
module recevier#(
    parameter DWIDTH  =  32   ,
    parameter AWIDTH  =  8    ,
    parameter IDWIDTH =  10   ,
    parameter CSRLEN  =  6    ,
    parameter ID      =  0   
)(
    input                    clk_in      ,
    input                    rst_n_in    ,

    input      [AWIDTH-1:0 ] bus_addr    ,
    input      [DWIDTH-1:0 ] bus_data    ,
    input      [IDWIDTH-1:0] bus_id      ,
    input                    bus_vld     ,

    output [DWIDTH-1:0 ]     param_addr  ,
    output [DWIDTH-1:0 ]     param_len   ,
    output [DWIDTH-1:0 ]     result_addr ,
    output [DWIDTH-1:0 ]     result_len  ,

    output reg               calc_start  
);


reg [DWIDTH-1:0 ] csr [CSRLEN-1:0];
integer idx;
initial begin
    for( idx=0;idx<CSRLEN;idx = idx+1'b1) begin
        csr[idx] <= 'b0;
    end
end

always @(posedge clk_in ) begin
    if( bus_vld &&  bus_id == ID) begin
        csr[bus_addr] <= bus_data;
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        calc_start <= 1'b0;
    end else if( bus_vld && bus_addr == 'd1 &&  bus_id == ID) begin
        calc_start <= 1'b1;
    end else begin
        calc_start <= 1'b0;
    end
end

assign config_data = csr['d1]  ;
assign param_addr  = csr['d2]  ;
assign param_len   = csr['d3]  ;
assign result_addr = csr['d4]  ;
assign result_len  = csr['d5]  ;

endmodule
