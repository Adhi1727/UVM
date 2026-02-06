class envi extends uvm_env;
  `uvm_component_utils(envi);
  
  dff_agent agnt;
  scoreboard score;
  
  function new(string name = "environment",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agnt = dff_agent::type_id::create("agnt",this);
    score = scoreboard::type_id::create("score",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    agnt.monit.mon_ap.connect(score.scr_ap);
  endfunction
  
endclass
