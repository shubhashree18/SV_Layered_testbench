function new(virtual intf vif,mailbox gen2driv); 
  this.vif = vif;
  this.gen2driv = gen2driv; 
endfunction

task main;
  repeat (1)
    begin
      transaction trans;
      gen2driv.get(trans);
  
//transfering all data into the DUT
    vif.clk <= trans.clk;
    vif.reset <= trans.reset;
    vif.d <= trans.d;

    trans.q = vif.q;
    trans.display("Driver");
    end
  endtask
endclass
