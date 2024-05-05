`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 16:32:26
// Design Name: 
// Module Name: tb_SimpleOpenCLSlave
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


module tb_SimpleOpenCLSlave();

reg clk_in   ;
reg rst_n_in ;

SimpleOpenCLSlave SimpleOpenCLSlave_inst(
    .clk_in  (clk_in  ),
    .rst_n_in(rst_n_in)
);

initial begin
    clk_in   = 'b0;
    rst_n_in = 'b0;
end

initial begin
    forever begin
        #5 clk_in = ~clk_in;
    end
end

initial begin
    repeat(2) @(posedge clk_in);
    rst_n_in <= 1'b1;
    @(posedge clk_in);
    
    repeat(5000) @(posedge clk_in);
    $stop;
end

endmodule
