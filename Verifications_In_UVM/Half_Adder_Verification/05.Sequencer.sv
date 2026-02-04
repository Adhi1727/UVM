import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_sequencer extends uvm_sequencer #(ha_seq_item);
  `uvm_component_utils(ha_sequencer);
  
  //Constructor
  function new(string name = "sequencer",uvm_component parent);
    super.new(name,parent);
    `uvm_info("SEQR","Sequencer is ready",UVM_LOW)
  endfunction
endclass
  
