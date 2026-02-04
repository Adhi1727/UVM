class fa_sequencer extends uvm_sequencer #(fa_sequence_item);
  `uvm_component_utils(fa_sequencer);
  
  function new(string name = "sequencer",uvm_component parent);
    super.new(name,parent);
    `uvm_info("SEQ_R","Sequencer created",UVM_LOW);
  endfunction
endclass
  
