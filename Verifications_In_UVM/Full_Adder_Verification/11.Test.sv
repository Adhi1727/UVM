class test extends uvm_test;
  `uvm_component_utils(test);
  
  env en;
  fa_sequence se;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    en = env::type_id::create("en",this);
    se = fa_sequence::type_id::create("se");
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
   
    phase.raise_objection(this);
    
    se.start(en.agn.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
                 
