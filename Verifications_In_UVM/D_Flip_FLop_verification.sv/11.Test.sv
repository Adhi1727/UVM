class test extends uvm_test;
  `uvm_component_utils(test);
  
  dff_sequence seq;
  envi en;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seq = dff_sequence::type_id::create("seq");
    en = envi::type_id::create("en",this);
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    phase.raise_objection(this);
    seq.start(en.agnt.seqr);
    #200;
    
    phase.drop_objection(this);
  endtask
endclass
