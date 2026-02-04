import uvm_pkg::*;
`include "uvm_macros.svh"

`include "interface.sv"
`include "fa_sequence_item.sv"
`include "fa_sequence.sv"
`include "fa_sequencer.sv"
`include "fa_driver.sv"
`include "fa_monitor.sv"
`include "fa_agent.sv"
`include "scoreboard.sv"
`include "env.sv"
`include "test.sv"

module top;
  fa_interface vif();
  
  full_adder dut(
    .a(vif.a),
    .b(vif.b),
    .cin(vif.cin),
    .sum(vif.sum),
    .cout(vif.cout)
  );
  initial begin
    uvm_config_db#(virtual fa_interface)::set(null,"*","vif",vif);
    run_test("test");
  end
  
  initial begin
    $dumpfile("adder.vcd");
    $dumpvars;
    #100;
    $finish;
  end
endmodule
