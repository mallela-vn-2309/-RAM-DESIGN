`timescale 1ns / 1ps

module sync_ram (
    input clk,
    input we,                    // Write Enable
    input [3:0] addr,            // 4-bit address (16 locations)
    input [7:0] din,             // Data input
    output reg [7:0] dout        // Data output
);

reg [7:0] mem [15:0];            // 16x8 RAM array

always @(posedge clk) begin
    if (we)
        mem[addr] <= din;        // Write operation
    else
        dout <= mem[addr];       // Read operation
end

endmodule
