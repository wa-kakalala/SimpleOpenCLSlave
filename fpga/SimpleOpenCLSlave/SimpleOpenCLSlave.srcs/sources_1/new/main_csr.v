`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/28 16:20:34
// Design Name: 
// Module Name: main_csr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "./config.vh"
module main_csr # (
    parameter DWIDTH  =  32,
    parameter AWIDTH  =  8 ,
    parameter CSRLEN  =  9
)(
    input                clk_in                        ,
    input                rst_n_in                      ,
   
    // AXI-Lite
    input  [DWIDTH-1:0]  s_axi_write_data              ,
    input  [AWIDTH-1:0]  s_axi_write_addr              ,
    input                s_axi_write_valid             ,
    
    output               interrupt_flag                ,
    output [DWIDTH-1:0]  config_data                   ,
    output [DWIDTH-1:0]  param_addr                    ,
    output [DWIDTH-1:0]  param_len                     ,
    output [DWIDTH-1:0]  result_addr                   ,
    output [DWIDTH-1:0]  result_len                    ,
    output reg           calc_start                       
);

reg [DWIDTH-1:0] csr [CSRLEN-1:0]; 

integer idx;
initial begin 
    for( idx = 0;idx<CSRLEN;idx = idx+1'b1) begin
        csr[idx] = 'b0;
    end
end

always @(posedge clk_in ) begin
    if( s_axi_write_valid ) begin
        csr[s_axi_write_addr] <= s_axi_write_data;
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        calc_start <= 1'b0;
    end else if( s_axi_write_addr == `CONFIG_IDX && s_axi_write_valid) begin
        calc_start <= 1'b1;
    end else begin
        calc_start <= 1'b0;
    end
end

assign config_data = csr[`CONFIG_IDX     ]  ;
assign param_addr  = csr[`PARAM_ADDR_IDX ]  ;
assign param_len   = csr[`PARAM_DATA_IDX ]  ;
assign result_addr = csr[`RESULT_ADDR_IDX]  ;
assign result_len  = csr[`RESULT_LEN_IDX ]  ;

endmodule
