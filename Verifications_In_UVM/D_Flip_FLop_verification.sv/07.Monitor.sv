class dff_monitor extends uvm_monitor;
  `uvm_component_utils(dff_monitor);
  
  virtual dff_interface vinf;
  uvm_analysis_port #(dff_sequence_item) mon_ap;
  dff_sequence_item item;
  
  function new(string name = "monitor", uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual dff_interface)::get(this,"","vif",vinf)) `uvm_fatal("MON","monitor cannot be get vif")
      mon_ap = new("mon_ap",this);
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    forever begin
      @(posedge vinf.clk);
      #1;
      item = dff_sequence_item::type_id::create("item");
    
      item.rst = vinf.rst;
      item.d = vinf.d;
      item.q = vinf.q;
      mon_ap.write(item);
    end
  endtask
endclass
