import uvm_pkg::*;
`include "uvm_macros.svh"

`include "test.sv"
`include "interface.sv"

module top();
  ha_if vif();
  
  half_adder dut(
    .a(vif.a),
    .b(vif.b),
    .sum(vif.sum),
    .carry(vif.carry)
  );
  
  initial begin
    uvm_config_db #(virtual ha_if)::set(null,"*","vif",vif);
    run_test("test");
  end
  
  initial begin
    $dumpfile("ha.vcd");
    $dumpvars;
    #200;
    $finish;
  end
endmodule
