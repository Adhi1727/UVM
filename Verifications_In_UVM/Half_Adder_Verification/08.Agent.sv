import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_agent extends uvm_agent;
  `uvm_component_utils(ha_agent);
  
  // Handle name created
  ha_sequencer seqr;
  ha_driver dri;
  ha_monitor moni;
  
  //Constructor
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  // Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = ha_sequencer::type_id::create("seqr",this);
    dri = ha_driver::type_id::create("dri",this);
    moni = ha_monitor::type_id::create("moni",this);
  endfunction
  
  // Connect phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    dri.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
