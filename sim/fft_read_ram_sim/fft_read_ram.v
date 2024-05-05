module fft_read_ram # (
    parameter DRAMWIDTH = 32,
    parameter ARAMWIDTH = 7
)(
    input                         clk_in      ,
    input                         rst_n_in    ,
    input                         en_in       ,
    
    output [(ARAMWIDTH-1):0]      ram_addr    , 
    output                        read_en     ,
    
    input  [DRAMWIDTH-1:0]        ram_data    ,
    
    output [(DRAMWIDTH>>1)-1:0]   re_data     ,
    output [(DRAMWIDTH>>1)-1:0]   im_data     ,
    output                        data_valid
);

reg working                                   ;
reg ready                                     ;
reg read_en_reg                               ;

reg [(ARAMWIDTH-1):0]      ram_addr_reg;

always @(posedge clk_in or negedge rst_n_in) begin
    if( !rst_n_in ) begin
        ready <= 1'b1;
    end else if( ready && en_in ) begin
        ready <= 1'b0;
    end else if(ram_addr_reg == {ARAMWIDTH{1'b1}}) begin
        ready <= 1'b1;
    end else begin
        ready <= ready;
    end
end

always @(posedge clk_in or negedge rst_n_in) begin
    if( !rst_n_in ) begin
        working <= 1'b0;
    end else if( ready && en_in  ) begin
        working <= 1'b1;
    end else if( ram_addr_reg == {ARAMWIDTH{1'b1}} ) begin
        working <= 1'b0 ;
    end else begin
        working <= working;
    end
end

always @(posedge clk_in or negedge rst_n_in) begin
    if( !rst_n_in ) begin
        ram_addr_reg <= 'b0;
    end else if( working ) begin
        if( ram_addr_reg == {ARAMWIDTH{1'b1}}) begin
            ram_addr_reg <= 'b0;
        end else begin
            ram_addr_reg <= ram_addr_reg + 1'b1;
        end
    end else begin
        ram_addr_reg <= 'b0;
    end
end

always @(posedge clk_in or negedge rst_n_in) begin
    if( !rst_n_in ) begin
        read_en_reg <= 1'b0;
    end else begin
        read_en_reg <= read_en;
    end
end

assign ram_addr   = ram_addr_reg                          ;
assign read_en    = working                               ;

assign data_valid = read_en_reg                           ;
assign im_data    = ram_data[(DRAMWIDTH-1):(DRAMWIDTH>>1)];
assign re_data    = ram_data[(DRAMWIDTH>>1)-1:0]          ;

endmodule