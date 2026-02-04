import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_driver extends uvm_driver #(ha_seq_item);
  `uvm_component_utils(ha_driver); // Factory Registration
  
  virtual ha_if vinf;
  ha_seq_item seq;
  
  // Constructor
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  //Build_phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual ha_if)::get(this,"","vif",vinf))
      `uvm_fatal("DRV","Interface is not found");
  endfunction
  
  // Run_phase
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    forever begin
      seq = ha_seq_item::type_id::create("seq");
      seq_item_port.get_next_item(seq);
      vinf.a <= seq.a;
      vinf.b <= seq.b;
      #10;
      seq_item_port.item_done();
    end
  endtask
endclass
