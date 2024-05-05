
`timescale 1 ns / 1 ps
module axilite_slave # (
    parameter integer C_S_AXI_DATA_WIDTH	= 32,   // Width of S_AXI data bus
    parameter integer C_S_AXI_ADDR_WIDTH	= 10,   // Width of S_AXI address bus
    parameter integer OPT_MEM_ADDR_BITS     = 7     // this is mem_addr 's width -1   [yyrwkk]
)(
    input  wire  S_AXI_ACLK                                   ,  
    input  wire  S_AXI_ARESETN                                ,

    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR   ,
    input  wire [2 : 0]                        S_AXI_AWPROT   ,
    input  wire                                S_AXI_AWVALID  ,
    output wire                                S_AXI_AWREADY  ,

    input  wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA    ,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB    ,
    input  wire                                S_AXI_WVALID   ,
    output wire                                S_AXI_WREADY   ,

    output wire [1 : 0]                        S_AXI_BRESP    ,
    output wire                                S_AXI_BVALID   ,
    input  wire                                S_AXI_BREADY   ,

    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR   ,
    input  wire [2 : 0]                        S_AXI_ARPROT   ,
    input  wire                                S_AXI_ARVALID  ,
    output wire                                S_AXI_ARREADY  ,

    output wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA    ,
    output wire [1 : 0]                        S_AXI_RRESP    ,
    output wire                                S_AXI_RVALID   ,
    input  wire                                S_AXI_RREADY   ,

    /********************* user defined port begin *********************/
    output wire [C_S_AXI_DATA_WIDTH-1:0]       s_axi_write_data ,
    output wire [OPT_MEM_ADDR_BITS:0]          s_axi_write_addr ,
    output wire                                s_axi_write_valid,

    output wire [OPT_MEM_ADDR_BITS:0]          s_axi_read_addr  ,
    output wire                                s_axi_read_valid ,
    input  wire [C_S_AXI_DATA_WIDTH-1:0]       s_axi_back_data  ,
    input  wire                                s_axi_back_valid 
    /********************* user defined port  end  *********************/
);

// AXI4LITE signals
reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
reg  	                        axi_awready;

reg  	                        axi_wready;

reg [1 : 0] 	                axi_bresp;
reg  	                        axi_bvalid;

reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
reg  	                        axi_arready;

// reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
reg [1 : 0] 	                axi_rresp;
reg  	                        axi_rvalid;

// Example-specific design signals
// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
// ADDR_LSB is used for addressing 32/64 bit registers/memories
// ADDR_LSB = 2 for 32 bits (n downto 2)
// ADDR_LSB = 3 for 64 bits (n downto 3)
localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;

wire	                         slv_reg_wren;
reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
integer	                         byte_index  ;
reg	                             aw_en       ;

/********************* user defined port begin *********************/
reg [C_S_AXI_DATA_WIDTH-1:0]       s_axi_write_data_reg ;
reg [OPT_MEM_ADDR_BITS:0 ]         s_axi_write_addr_reg ;
reg                                s_axi_write_valid_reg;

//reg [OPT_MEM_ADDR_BITS:0 ]       s_axi_read_addr_reg  ;
//reg                                s_axi_read_valid_reg ;

assign s_axi_write_data   = s_axi_write_data_reg ;
assign s_axi_write_addr   = s_axi_write_addr_reg ;
assign s_axi_write_valid  = s_axi_write_valid_reg;
//assign s_axi_read_addr    = s_axi_read_addr_reg  ;
//assign s_axi_read_valid   = s_axi_read_valid_reg ;
/********************* user defined port  end  *********************/

// I/O Connections assignments
assign S_AXI_AWREADY	= axi_awready      ;
assign S_AXI_WREADY	    = axi_wready       ;
assign S_AXI_BRESP	    = axi_bresp        ;
assign S_AXI_BVALID	    = axi_bvalid       ;
assign S_AXI_ARREADY	= axi_arready      ;
assign S_AXI_RDATA	    = s_axi_back_data  ;  // when S_AXI_ARVALID is high, the next clock should give out the s_axi_back_data. [yyrwkk]
assign S_AXI_RRESP	    = axi_rresp        ;
assign S_AXI_RVALID	    = axi_rvalid       ;

// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_awready <= 1'b0;
        aw_en <= 1'b1;
    end else begin    
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
            // slave is ready to accept write address when 
            // there is a valid write address and write data
            // on the write address and data bus. This design 
            // expects no outstanding transactions. 
            axi_awready <= 1'b1;
            aw_en       <= 1'b0;
        end else if (S_AXI_BREADY && axi_bvalid) begin
            aw_en <= 1'b1       ;
            axi_awready <= 1'b0 ;
        end else begin
            axi_awready <= 1'b0 ;
            aw_en       <= aw_en;
        end
    end 
end       

// Implement axi_awaddr latching
// This process is used to latch the address when both 
// S_AXI_AWVALID and S_AXI_WVALID are valid. 
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_awaddr <= 0;
    end else begin    
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
            // Write Address latching 
            axi_awaddr <= S_AXI_AWADDR;
        end
    end 
end       

// Implement axi_wready generation
// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
// de-asserted when reset is low. 
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_wready <= 1'b0;
    end else begin    
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en ) begin
            // slave is ready to accept write data when 
            // there is a valid write address and write data
            // on the write address and data bus. This design 
            // expects no outstanding transactions. 
            axi_wready <= 1'b1;
        end else begin
            axi_wready <= 1'b0;
        end
    end 
end       

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        s_axi_write_addr_reg <= 'b0;
        s_axi_write_valid_reg <= 'b0;
        s_axi_write_data_reg  <= 'b0;
    end else if (slv_reg_wren) begin
        s_axi_write_addr_reg  <= axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];
        s_axi_write_valid_reg <= 1'b1;
        s_axi_write_data_reg  <= S_AXI_WDATA;           // don't use strobes to select byte enables [yyrwkk]
    end else begin 
        s_axi_write_valid_reg <= 1'b0                ;
        s_axi_write_addr_reg  <= s_axi_write_addr_reg;
        s_axi_write_data_reg  <= s_axi_write_data_reg;
    end
end    

// Implement write response logic generation
// The write response and response valid signals are asserted by the slave 
// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
    end else begin    
        if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
            // indicates a valid write response is available
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // 'OKAY' response 
        end else begin             // work error responses in future
            if (S_AXI_BREADY && axi_bvalid) begin
            //check if bready is asserted while bvalid is high) 
            //(there is a possibility that bready is always asserted high)   
                axi_bvalid <= 1'b0; 
            end  
        end
    end
end   

// Implement axi_arready generation
// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. axi_awready is 
// de-asserted when reset (active low) is asserted. 
// The read address is also latched when S_AXI_ARVALID is 
// asserted. axi_araddr is reset to zero on reset assertion.
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_arready <= 1'b0;
        axi_araddr  <= 32'b0;
    end else begin    
        if (~axi_arready && S_AXI_ARVALID) begin
            // indicates that the slave has acceped the valid read address
            axi_arready <= 1'b1;
            // Read address latching
            axi_araddr  <= S_AXI_ARADDR;
        end else begin
            axi_arready <= 1'b0;
        end
    end 
end       

// Implement axi_arvalid generation
// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset (active low). axi_rresp and axi_rdata are 
// cleared to zero on reset (active low).  
always @( posedge S_AXI_ACLK ) begin
    if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_rvalid <= 0;
        axi_rresp  <= 0;
    end else begin    
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
            // Valid read data is available at the read data bus
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; // 'OKAY' response
        end else if (axi_rvalid && S_AXI_RREADY) begin
            // Read data is accepted by the master
            axi_rvalid <= 1'b0;
        end                
    end
end    

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
assign s_axi_read_valid = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
assign s_axi_read_addr  = ( s_axi_read_valid ==1'b1 )? axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : 'b0;

endmodule
