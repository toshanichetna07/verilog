module(output y,input a, b);
  assign y = a & b;
endmodule

testbench:
module and_gate_tb;

  reg a, b;
  wire out;

  // Instantiate the AND gate primitive
  and_gate uut(out, a, b);

  initial begin
    $display("Time | a b | out");
    $monitor("%4t | %b %b |  %b", $time, a, b, out);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

endmodule
