code:
module top_module( 
    input a, b,
    output cout, sum 
    );
  
  assign sum = a ^ b;
  assign cout = a & b;

endmodule
testbench:
module tb_half_adder;
    reg a, b;
    wire sum, cout;

    // Instantiate the half adder
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("A B | SUM COUT");
        $monitor("%b %b |  %b    %b", a, b, sum, cout);

        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
