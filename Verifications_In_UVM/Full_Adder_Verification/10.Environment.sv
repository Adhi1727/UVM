class env extends uvm_env;
  `uvm_component_utils(env);
  
  fa_agent agn;
  scoreboard score;
  
  function new(string name = "env",uvm_component parent);
    super.new(name,parent);
    `uvm_info("ENV","environment created",UVM_LOW)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agn = fa_agent::type_id::create("agn",this);
    score = scoreboard::type_id::create("score",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    agn.monit.ap.connect(score.analysis_export);
  endfunction
endclass
  
