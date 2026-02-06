class dff_sequence_item extends uvm_sequence_item;
  `uvm_object_utils(dff_sequence_item); // Factory Registration
  
  bit clk;
  rand bit rst;
  rand bit d;
  bit q;
  
  constraint cons1{ rst dist{0:=5 , 1:=5};}
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction

endclass
