`include "uvm_macros.svh"

`include "interface.sv"
`include "sequence_item.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"

module top;
  dff_interface vif();
  d_flip_flop dut(
    .clk(vif.clk),
    .rst(vif.rst),
    .d(vif.d),
    .q(vif.q)
  );
  
  initial begin
    uvm_config_db#(virtual dff_interface)::set(null,"*","vif",vif);
    run_test("test");
  end
  always #5 vif.clk = ~vif.clk;
  initial begin
    $dumpfile("adder.vcd");
    $dumpvars;
    vif.clk = 0;
    #300;
    $finish;
  end
endmodule
