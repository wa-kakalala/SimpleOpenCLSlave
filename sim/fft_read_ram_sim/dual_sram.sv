module dual_sram#(
    parameter DWIDTH = 32                  ,
    parameter AWIDTH =  5
  )(
    /*================ Port A ================*/
    input  logic clk_a_in                  ,
    input  logic en_a_in                   ,
    input  logic we_a_in                   ,
    input  logic [(AWIDTH - 1):0] addr_a_in,
    input  logic [(DWIDTH - 1):0] d_a_in   ,
    output logic [(DWIDTH - 1):0] d_a_out  ,
    /*================ Port B ================*/
    input  logic clk_b_in                  ,
    input  logic en_b_in                   ,
    input  logic we_b_in                   ,
    input  logic [(AWIDTH - 1):0] addr_b_in,
    input  logic [(DWIDTH - 1):0] d_b_in   ,
    output logic [(DWIDTH - 1):0] d_b_out
  );

  logic     [(DWIDTH - 1):0] memory[((1 << AWIDTH) - 1):0];
  integer                    i                            ;

  /**
  * @ bref: initialize to zeor
  */
  bit [15:0] re;
  bit [15:0] im;
  initial
  begin
    im = 1'b1;
    re = 1'b0;
    for(i = 0;i < (1 << AWIDTH); i = i + 1) begin
      memory[i] <= {im,re};
      im = im + 2'd2;
      re = re + 2'd2;
    end
  end

  always @(posedge clk_a_in)
  begin
    if (en_a_in)
    begin
      if (we_a_in)
        memory[addr_a_in] <= d_a_in;
      else
        d_a_out           <= memory[addr_a_in];
    end
  end

  always @(posedge clk_b_in)
  begin
    if (en_b_in)
    begin
      if (we_b_in)
        memory[addr_b_in] <= d_b_in;
      else
        d_b_out           <= memory[addr_b_in];
    end
  end

endmodule
