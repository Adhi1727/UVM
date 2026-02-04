import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_sequence extends uvm_sequence #(ha_seq_item);
  `uvm_object_utils(ha_sequence);
  
  function new(string name = "sequence");
    super.new(name);
  endfunction
  
  task body();
    ha_seq_item seq;
    `uvm_info("SEQ","Sequence is created",UVM_LOW)
    repeat(10) begin
      seq = ha_seq_item::type_id::create("seq");
      `uvm_do(seq);
    end
  endtask
endclass
