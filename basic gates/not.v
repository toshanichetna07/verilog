module(output y, input a);
  assign y = ~a;
endmodule

//testbench:
module not_gate_tb;

  reg a;
  wire out;

  // Instantiate the NOT gate primitive
  not_gate uut(out, a);

  initial begin
    $display("Time | a | out");
    $monitor("%4t | %b |  %b", $time, a, out);

    a = 0; #10;
    a = 1; #10;

    $finish;
  end

endmodule

