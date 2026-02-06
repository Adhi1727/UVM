class dff_agent extends uvm_agent;
  `uvm_component_utils(dff_agent);
  
  dff_sequencer seqr;
  dff_driver drive;
  dff_monitor monit;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  //Build_phase construction
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = dff_sequencer::type_id::create("seqr",this);
    drive = dff_driver::type_id::create("drive",this);
    monit = dff_monitor::type_id::create("monit",this);
  endfunction
  
  //Connect_phase for connecting driver and sequencer
  function void connect_phase(uvm_phase phase);
    drive.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
