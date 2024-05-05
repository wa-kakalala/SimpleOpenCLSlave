module tb_fft_write_ram_top();
logic clk;

initial begin
    clk = 1'b0;
end

initial begin
    forever begin
        #5 clk = ~clk;
    end
end

logic                        rst_n_in    ;
logic                        en_in       ;

logic [ 6:0]                 ram_addr    ; 
logic [31:0]                 ram_data    ;
logic                        wr_en       ;
logic                        wr_we       ;

logic [15:0]                 re_data     ;
logic [15:0]                 im_data     ;
logic                        data_valid  ;


fft_write_ram fft_write_ram_inst(
    .clk_in   (clk     ),
    .rst_n_in (rst_n_in),

    .en_in    (en_in   ),

    .data_vld (data_valid),
    .im_d     (im_data),
    .re_d     (re_data),

    .wr_en    (wr_en),
    .wr_we    (wr_we),
    .wr_addr  (ram_addr),
    .wr_d     (ram_data),

    .ready_out()
);

tb_fft_write_ram tb_fft_write_ram_inst(
    .clk  (clk     ),
    .rst_n(rst_n_in),

    .en   (en_in   ),

    .im_d (im_data    ),
    .re_d (re_data    ),
    .d_vld(data_valid)
);
endmodule