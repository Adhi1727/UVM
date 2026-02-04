import uvm_pkg::*;
`include "uvm_macros.svh"

class envi extends uvm_env;
  `uvm_component_utils(envi);
  
  ha_agent agn;
  ha_scoreboard scr;
  
  //Constructor
  function new(string name = "environment",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  //Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agn = ha_agent::type_id::create("agn",this);
    scr = ha_scoreboard::type_id::create("scr",this);
  endfunction
  
  //Connect phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agn.moni.mon_ap.connect(scr.an_export);
  endfunction
endclass
