class fa_agent extends uvm_agent;
  `uvm_component_utils(fa_agent);
  
  fa_sequencer seqr;
  fa_driver drive;
  fa_monitor monit;
  
  function new(string name = "fa_agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = fa_sequencer::type_id::create("seqr",this);
    drive = fa_driver::type_id::create("drive",this);
    monit = fa_monitor::type_id::create("monit",this);
    
  endfunction
  
  function void connect_phase(uvm_phase phase);
    drive.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
