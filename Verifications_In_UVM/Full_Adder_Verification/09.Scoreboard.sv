class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard);
  
  uvm_analysis_imp #(fa_sequence_item, scoreboard) analysis_export;
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    analysis_export = new("analysis_export",this);
  endfunction
  
  function void write(fa_sequence_item item);
    bit exp_sum;
    bit exp_cout;
    
    exp_sum = item.a ^ item.b ^ item.cin;
    exp_cout = (item.a & item.b) | (item.a & item.cin) | (item.b & item.cin);
    
    if ((item.sum == exp_sum) && (item.cout == exp_cout)) begin
      `uvm_info("SCAD", $sformatf("PASS! input: a = %0d | b = %0d | cin = %0d output: sum = %0d | cout = %0d",item.a,item.b,item.cin,item.sum,item.cout),UVM_LOW);
    end
    else begin
      `uvm_error("SCAD",$sformatf("FAILED input: a = %0d b = %0d cin = %0d | execpt: sum = %0d cout = %0d | ouput: sum = %0d cout = %0d",item.a,item.b,item.cin,exp_sum,exp_cout,item.sum,item.cout));
    end
  endfunction
endclass
    
