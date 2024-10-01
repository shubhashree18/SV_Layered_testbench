class transaction;

// Stimulus are declared with rand keyword
rand bit a;
rand bit b;

bit sum;
bit carry;

//Function for Displaying values of a, b and sum, carry
function void display(string name);
  $display("---------------------------");
  $display("%s", name);
  $display("---------------------------");
  $display("a = %0d, b = %0d",a,b);
  $display("sum %60d, carry %0d", sum, carry);
  $display("---------------------------");
endfunction
endclass
