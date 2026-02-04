class fa_sequence extends uvm_sequence #(fa_sequence_item);
  `uvm_object_utils(fa_sequence);
  
  function new(string name = "fa_sequence");
    super.new(name);
  endfunction
  
  task body();
    fa_sequence_item req;
    `uvm_info("SEQ","sequence started",UVM_LOW);
    repeat(5) begin
      req = fa_sequence_item::type_id::create("req");
      `uvm_do(req);
    end
  endtask
endclass
