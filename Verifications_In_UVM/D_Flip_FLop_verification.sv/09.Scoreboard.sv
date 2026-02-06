class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard);
  
  uvm_analysis_imp #(dff_sequence_item,scoreboard) scr_ap;
  
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    scr_ap = new("scr_ap",this);
  endfunction
  
  function void write(dff_sequence_item item);
    bit exp_q;
    
    if(item.rst)
      exp_q = 1'b0;
    else
      exp_q = item.d;
    
    if(exp_q === item.q)
      `uvm_info("SB",$sformatf("PASS----> INPUT:clk=%0b |rst=%0b|d=%0b|Actual output: q=%0b|| Expected output: q=%0b",item.clk,item.rst,item.d,item.q,exp_q),UVM_LOW)
    else
      `uvm_error("SB",$sformatf("FAILED----> INPUT:clk=%0b |rst=%0b|d=%0b|Actual output: q=%0b|| Expected output: q=%0b",item.clk,item.rst,item.d,item.q,exp_q));
    
    
  endfunction
endclass
