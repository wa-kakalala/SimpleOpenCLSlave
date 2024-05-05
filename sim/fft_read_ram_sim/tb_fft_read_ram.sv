program tb_fft_read_ram(
    input  logic clk  ,
    output logic rst_n,
    output logic en   
);

initial begin
    rst_n = 1'b0;
    en    = 1'b0;
end

initial begin
    @(posedge clk );
    rst_n  <= 1'b1;
    @(posedge clk );
    en <= 1'b1;
    @(posedge clk );
    en <= 1'b0;

    repeat(5000) @(posedge clk);
    $stop();
end


endprogram