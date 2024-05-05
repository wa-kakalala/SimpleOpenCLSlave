program tb_fft_write_ram(
    input  logic clk         ,
    output logic rst_n       ,
    output logic en          ,
    output logic [15:0] im_d ,
    output logic [15:0] re_d ,
    output logic        d_vld
);

initial begin
    rst_n = 1'b0;
    en    = 1'b0;

    im_d  = 'b0;
    re_d  = 'b0;
    d_vld = 'b0;
end

initial begin
    @(posedge clk );
    rst_n  <= 1'b1;
    @(posedge clk );
    en <= 1'b1;
    @(posedge clk );
    en <= 1'b0;

    @(posedge clk);
    for( int i = 0;i<128;i++) begin
        im_d <= {16{1'b1}};
        re_d <= re_d + 1'b1;
        d_vld <= 1'b1;
        @(posedge clk);
    end
    d_vld <= 1'b0;

    repeat(10) @(posedge clk);
    $stop();
end


endprogram