module tb_fft_read_ram_top();

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
logic                        read_en     ;

logic [31:0]                 ram_data    ;

logic [15:0]                 re_data     ;
logic [15:0]                 im_data     ;
logic                        data_valid  ;



dual_sram #(
    .DWIDTH (32)                    ,
    .AWIDTH (7 )
)dual_sram_inst(
    .clk_a_in    (clk        ) ,
    .en_a_in     (1'b0)        ,
    .we_a_in     (1'b0)        ,
    .addr_a_in   ()            ,
    .d_a_in      ()            ,
    .d_a_out     ()            ,
    .clk_b_in    (clk        ) ,
    .en_b_in     (read_en    ) ,
    .we_b_in     (1'b0       ) ,
    .addr_b_in   (ram_addr   ) ,
    .d_b_in      (           ) ,
    .d_b_out     (ram_data   )
);

fft_read_ram fft_read_ram_inst(
    .clk_in      (clk       ),
    .rst_n_in    (rst_n_in  ),
    .en_in       (en_in     ),

    .ram_addr    (ram_addr  ), 
    .read_en     (read_en   ),

    .ram_data    (ram_data  ),

    .re_data     (re_data   ),
    .im_data     (im_data   ),
    .data_valid  (data_valid)
);



tb_fft_read_ram tb_fft_read_ram_inst(
    .clk  (clk     ),
    .rst_n(rst_n_in),
    .en   (en_in   )
);


endmodule