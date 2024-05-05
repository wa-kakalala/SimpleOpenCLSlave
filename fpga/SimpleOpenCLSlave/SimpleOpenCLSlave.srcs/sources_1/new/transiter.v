`timescale 1ns / 1ps
/**************************************
@ filename    : transiter.v
@ author      : yyrwkk
@ create time : 2024/05/01 14:17:07
@ version     : v1.0.0
**************************************/


module transiter#(
    parameter DWIDTH  =  32,
    parameter AWIDTH  =  8 ,
    parameter IDWIDTH =  10
)(
    input                    clk_in     ,
    input                    rst_n_in   ,
    
    input                    calc_start ,

    input  [DWIDTH-1:0]      config_data,
    input  [DWIDTH-1:0]      param_addr ,
    input  [DWIDTH-1:0]      param_len  ,
    input  [DWIDTH-1:0]      result_addr,
    input  [DWIDTH-1:0]      result_len ,

    output reg [AWIDTH-1:0 ] bus_addr   ,
    output reg [DWIDTH-1:0 ] bus_data   ,
    output reg [IDWIDTH-1:0] bus_id     ,
    output reg               bus_vld    ,
    output reg               ready
);

reg  [DWIDTH-1:0]  config_data_reg      ;
reg  [DWIDTH-1:0]  param_addr_reg       ;
reg  [DWIDTH-1:0]  param_len_reg        ;
reg  [DWIDTH-1:0]  result_addr_reg      ;
reg  [DWIDTH-1:0]  result_len_reg       ;
localparam STATE_IDLE = 3'd0;
localparam STATE_ADDR = 3'd1;
localparam STATE_LEN  = 3'd2;
localparam STATE_RADDR= 3'd3;
localparam STATE_RLEN = 3'd4;
localparam STATE_CFG  = 3'd5;


reg [2:0] curr_state;
reg [2:0] next_state;

always @(posedge clk_in or negedge rst_n_in) begin
    if( !rst_n_in ) begin
        ready <= 1'b1;
    end else if(  calc_start && ready ) begin
        ready <= 1'b0;
    end else if( curr_state ==  STATE_IDLE) begin  
        ready <= 1'b1;
    end else begin
        ready <= ready;
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        config_data_reg<= 'b0;
        param_addr_reg <= 'b0;
        param_len_reg  <= 'b0;
        result_addr_reg<= 'b0;
        result_len_reg <= 'b0;
    end if( calc_start && ready ) begin
        config_data_reg<= config_data;
        param_addr_reg <= param_addr ;
        param_len_reg  <= param_len  ;
        result_addr_reg<= result_addr;
        result_len_reg <= result_len ;
    end else begin
        config_data_reg<= config_data_reg;
        param_addr_reg <= param_addr_reg ;
        param_len_reg  <= param_len_reg  ;
        result_addr_reg<= result_addr_reg;
        result_len_reg <= result_len_reg ;
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        curr_state <= STATE_IDLE;
    end else begin
        curr_state <= next_state;
    end
end

always @(*) begin
    if( !rst_n_in ) begin
        next_state = STATE_IDLE;
    end else begin
        case( curr_state )
        STATE_IDLE: begin
            if( calc_start && ready ) begin
                next_state = STATE_ADDR;
            end
        end
        STATE_ADDR: begin
            next_state = STATE_LEN;
        end
        STATE_LEN: begin
            next_state = STATE_RADDR;
        end
        STATE_RADDR: begin
            next_state = STATE_RLEN;
        end
        STATE_RLEN: begin
            next_state = STATE_CFG ;
        end
        STATE_CFG: begin
            next_state = STATE_IDLE;
        end
        default: begin
            next_state = STATE_IDLE;
        end
        endcase
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        bus_addr   <= 'b0;
        bus_data   <= 'b0;
        bus_id     <= 'b0;
        bus_vld    <= 'b0;
    end else begin
        bus_id     <= config_data_reg[31:22];
        bus_addr   <= 'b0;
        bus_data   <= 'b0;
        bus_vld    <= 'b1;
        case( curr_state )
        STATE_IDLE: begin
            bus_id <= 'b0;
            bus_vld    <= 'b0;
        end
        STATE_ADDR: begin
            bus_data   <= param_addr_reg;
            bus_addr   <= 'd2;
        end
        STATE_LEN: begin
            bus_data   <= param_len_reg;
            bus_addr   <= 'd3;
        end
        STATE_RADDR: begin
            bus_data   <= result_addr_reg;
            bus_addr   <= 'd4;
        end
        STATE_RLEN: begin
            bus_data   <= result_len_reg;
            bus_addr   <= 'd5;
        end
        STATE_CFG: begin
            bus_data   <= {27'd0,config_data[4:0]};
            bus_addr   <= 'd1;
        end
        default: begin
            bus_id     <= 'b0;
            bus_vld    <= 'b0;
        end
        endcase
    end
end

endmodule
