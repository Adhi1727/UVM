import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(ha_scoreboard);
  
  uvm_analysis_imp #(ha_seq_item,ha_scoreboard) an_export;
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  // Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    an_export = new("an_export",this);
  endfunction
  
  function void write(ha_seq_item item);
    bit exp_sum;
    bit exp_carry;
    
    exp_sum = item.a ^ item.b;
    exp_carry = item.a & item.b;
    
    if(item.sum == exp_sum && item.carry == exp_carry)
      `uvm_info("SCB",$sformatf("RESULT PASS! a = %0d | b = %0d | Sum = %0d | Carry = %0d",item.a,item.b,item.sum,item.carry),UVM_LOW)
    else
      `uvm_error("SCB","RESULT FAIL")
  endfunction
endclass
