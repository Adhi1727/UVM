class fa_sequence_item extends uvm_sequence_item;
  `uvm_object_utils(fa_sequence_item);
  
  rand bit a;
  rand bit b;
  rand bit cin;
  
  bit sum;
  bit cout;
  
  function new(string name = "fa_sequence_item");
    super.new(name);
  endfunction
endclass
