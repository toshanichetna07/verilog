primitive or_gate (out, a, b);
  output out;
  input a, b;

  table
     0 0 : 0;
     0 1 : 1;
     1 0 : 1;
     1 1 : 1;
  endtable

endprimitive
