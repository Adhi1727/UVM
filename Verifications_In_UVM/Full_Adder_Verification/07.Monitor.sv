class fa_monitor extends uvm_monitor;
  `uvm_component_utils(fa_monitor);
  virtual fa_interface vinf;
  uvm_analysis_port #(fa_sequence_item) ap;
  fa_sequence_item item;
  
  function new(string name = "monitor",uvm_component parent = null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual fa_interface)::get(this,"","vif",vinf))
    `uvm_fatal("MON","Could not get vif")
    ap = new("ap",this);
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    forever begin
      #10;
      item = fa_sequence_item::type_id::create("item");
      item.a = vinf.a;
      item.b = vinf.b;
      item.cin = vinf.cin;
      item.sum = vinf.sum;
      item.cout = vinf.cout;
      ap.write(item);
    end
  endtask
endclass
