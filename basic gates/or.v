module(output y,input a, b);
  assign y = a|b;
endmodule


//testbench:
module or_gate_tb;

  // Declare testbench variables
  reg a, b;
  wire out;

  // Instantiate the OR gate primitive
  or_gate uut (out, a, b); // uut = Unit Under Test

  // Apply test vectors
  initial begin
    $display("Time | a b | out");
    $monitor("%4t | %b %b |  %b", $time, a, b, out);

    // Test all input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b
