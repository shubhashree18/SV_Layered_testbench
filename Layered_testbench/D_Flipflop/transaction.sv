class transaction; //packet
  
// Stimulus are declared with rand keyword
  
rand bit reset;
rand bit clk;
rand bit d;
  
bit q;
  
//Function for Displaying values 
  function void display (string name);
    $display("----------------------------")
    $display("%s", name);
    $display("----------------------------")
    $display("clk = %0d, reset = %0d, clk, reset, d); 
             $display("q = %0d",q);
  endfunction
endclass
