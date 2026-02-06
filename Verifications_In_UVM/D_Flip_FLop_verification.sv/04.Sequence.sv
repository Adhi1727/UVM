class dff_sequence extends uvm_sequence#(dff_sequence_item);
  `uvm_object_utils(dff_sequence); 
  
  //CONSTRUCTOR
  function new(string name = "sequence");
    super.new(name);
  endfunction
  
  task body(); // Task to randomize the variables
    dff_sequence_item req;
    `uvm_info("SEQ","Sequence Started",UVM_LOW);
    repeat (10) begin
    req = dff_sequence_item::type_id::create("req");
     start_item(req);
    if(!req.randomize()) `uvm_error("SEQ", "Randomize failed");
      finish_item(req); // Randomize the stimulus
    end
      endtask
endclass
  
