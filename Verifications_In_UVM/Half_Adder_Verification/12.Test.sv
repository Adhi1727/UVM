import uvm_pkg::*;
`include "uvm_macros.svh"
`include "package.sv"

class test extends uvm_test;
  `uvm_component_utils(test);
  
  envi en;
  ha_sequence se;
  
  //Constructor
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  //Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    en = envi::type_id::create("en",this);
    se = ha_sequence::type_id::create("se",this);
  endfunction
  
  // Run phase 
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    phase.raise_objection(this);
    
    se.start(en.agn.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
