class dff_driver extends uvm_driver#(dff_sequence_item);
  `uvm_component_utils(dff_driver);
  
  dff_sequence_item req;
  virtual dff_interface vinf;
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual dff_interface)::get(this,"","vif",vinf))
      `uvm_fatal("DRV","Could not get vif");
  endfunction
  
  task run_phase(uvm_phase phase);
    req = dff_sequence_item::type_id::create("req");
    
    forever begin
      seq_item_port.get_next_item(req);
      @(negedge vinf.clk);
     // vinf.clk = req.clk;
      vinf.rst = req.rst;
      vinf.d = req.d;
     
      @(posedge vinf.clk);
      #10;
      seq_item_port.item_done();
    end
  endtask
endclass
      
