import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_monitor extends uvm_monitor;
  `uvm_component_utils(ha_monitor);
  
  virtual ha_if vinf;
  ha_seq_item item;
  
  uvm_analysis_port #(ha_seq_item) mon_ap;
  
  // Constructor
  function new(string name = "monitor",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  //Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual ha_if)::get(this,"","vif",vinf))
      `uvm_fatal("MON","virtual is not found")
      mon_ap = new("mon_ap",this);
  endfunction
  
  //Run phase
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    forever begin
      #10;
      item = ha_seq_item::type_id::create("item");
      item.a = vinf.a;
      item.b = vinf.b;
      item.sum = vinf.sum;
      item.carry = vinf.carry;
      mon_ap.write(item);
    end
  endtask 
endclass
      
