`include "interface.sv"
`include "test"
module testbench_top;
intf i_intf();
test t1(i_intf);
DFF dff(
  .clk(i_intf.clk),
  .reset (i_intf.reset),
  .d(i_intf.d),
  .qCi_intf.q)
  ):
initial begin
$dumpfile("dump. vcd"); $dumpvars;
end
endmodule
