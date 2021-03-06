`ifndef SEQ_ITEM
`define SEQ_ITEM

`include "uvm_macros.svh"

import uvm_pkg::*;

class seq_item extends uvm_sequence_item; 
  
 //data and control fields
  rand bit [7:0] addr;
  rand bit       wr;
  rand bit       sel;
  rand bit [31:0] data;
 
  //Utility macro
  `uvm_object_utils_begin(seq_item)
    `uvm_field_int(addr,UVM_ALL_ON) 
    `uvm_field_int(wr,UVM_ALL_ON)
    `uvm_field_int(sel,UVM_ALL_ON)
    `uvm_field_int(data,UVM_ALL_ON)
 `uvm_object_utils_end
 
  //Constructor
  function new(string name = "seq_item");
    super.new(name);
  endfunction
 
endclass

`endif //SEQ_ITEM


