class fa_driver extends uvm_driver #(fa_sequence_item);
  `uvm_component_utils(fa_driver);
  fa_sequence_item req;
  
  virtual fa_interface vinf;
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual fa_interface)::get(this,"","vif",vinf))
  `uvm_fatal("DRV","Could not get vif")

  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    forever begin
      req = fa_sequence_item::type_id::create("req");
      seq_item_port.get_next_item(req);
      vinf.a=req.a;
      vinf.b=req.b;
      vinf.cin=req.cin;
      #10;
      seq_item_port.item_done();
    end
  endtask
endclass
