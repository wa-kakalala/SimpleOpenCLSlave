`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/29 11:36:43
// Design Name: 
// Module Name: ram_128
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


module ram_128(
    input wire clka               ,
    input wire ena                ,
    input wire [0 : 0] wea        ,
    input wire [6 : 0] addra      ,
    input wire [31 : 0] dina      ,
    input wire clkb               ,
    input wire enb                ,
    input wire [6 : 0] addrb      ,
    output wire [31 : 0] doutb     
);
    
ram128 ram128_inst (
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [6 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .clkb(clkb),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [6 : 0] addrb
  .doutb(doutb)  // output wire [31 : 0] doutb
);
endmodule
