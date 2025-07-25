`timescale 1ns / 1ps

module tb_sync_ram;
  reg clk, we;
  reg [3:0] addr;
  reg [7:0] din;
  wire [7:0] dout;

  integer i;

  sync_ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;  // 10ns clock

  initial begin
    // Write to all 16 locations
    we = 1;
    for (i = 0; i < 16; i = i + 1) begin
      addr = i;
      din = 8'hA0 + i;
      #10;
    end

    // Read from all 16 locations
    we = 0;
    for (i = 0; i < 16; i = i + 1) begin
      addr = i;
      #10;
      $display("Time = %0t ns | Addr = %0d | Data Read = %0d (hex = %0h)", $time, addr, dout, dout);
    end

    $finish;
  end
endmodule
