module fft_write_ram #(
    parameter AWIDTH = 7  ,
    parameter DWIDTH = 32
)(
    input                      clk_in   ,
    input                      rst_n_in ,

    input                      en_in    ,

    input                      data_vld ,
    input  [((DWIDTH>>1)-1):0] im_d     ,
    input  [((DWIDTH>>1)-1):0] re_d     ,

    output                     wr_en    ,
    output                     wr_we    ,
    output [AWIDTH-1:0]        wr_addr  ,
    output [DWIDTH-1:0]        wr_d     ,

    output                     ready_out
);


reg   ready                              ;
reg   working                            ;

reg   [AWIDTH-1:0]        wr_addr_reg    ;
reg   [DWIDTH-1:0]        wr_d_reg       ;
reg                       wr_en_reg      ;
reg                       wr_we_reg      ;

always @(posedge clk_in or negedge rst_n_in ) begin
    if( ! rst_n_in ) begin
        ready <= 1'b1;
    end else if( ready && en_in ) begin
        ready <= 1'b0;
    end else if( wr_addr_reg == {AWIDTH{1'b1}} ) begin
        ready <= 1'b1 ;
    end else begin
        ready <= ready;
    end
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        working <= 1'b0;
    end else if( ready && en_in ) begin
        working <= 1'b1;
    end else if( wr_addr_reg == {AWIDTH{1'b1}} ) begin
        working <= 1'b0;
    end else begin
        working <= working;
    end
    
end

always @(posedge clk_in or negedge rst_n_in ) begin
    if( !rst_n_in ) begin
        wr_addr_reg<= 'b0;
    end else if( working && data_vld ) begin
        if( wr_addr_reg == {AWIDTH{1'b1}}) begin
            wr_addr_reg<= 'b0;
        end else begin
            wr_addr_reg <= wr_addr_reg + 1'b1;
        end
    end else begin
        wr_addr_reg<= 'b0;
    end
end

assign wr_en    = (working && data_vld ) ? 1'b1: 1'b0;
assign wr_we    = (working && data_vld ) ? 1'b1: 1'b0;
assign wr_addr  = wr_addr_reg;
assign wr_d     = {im_d,re_d};
assign ready_out= ready;

// integer file;
// initial begin
//     file = $fopen("./result.txt");
// end

// initial begin
//     forever begin
//         @(posedge clk_in );
//         if( working && data_vld ) begin
//             $fdisplay(file,"%d %d",im_d,re_d);
//         end 
//         if( working && wr_addr_reg == {AWIDTH{1'b1}}) begin
//             $fclose(file);
//         end
//     end
// end

endmodule