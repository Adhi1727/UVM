class dff_sequencer extends uvm_sequencer#(dff_sequence_item);
  `uvm_component_utils(dff_sequencer);
  
  function new(string name = "sequencer",uvm_component parent);
    super.new(name,parent);
    `uvm_info("SEQR","Sequencer Created",UVM_LOW);
  endfunction
endclass
