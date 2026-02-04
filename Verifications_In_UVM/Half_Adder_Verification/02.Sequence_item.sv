import uvm_pkg::*;
`include "uvm_macros.svh"

class ha_seq_item extends uvm_sequence_item;
  `uvm_object_utils(ha_seq_item);
  
  rand bit a;
  rand bit b;
  bit sum;
  bit carry;
  
  //Constructor
  function new(string name = "sequence item");
    super.new(name);
  endfunction
endclass
