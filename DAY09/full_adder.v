module full_adder
  (
    input a,
    input b,
    output sum,
    input cin,
    output cout
  );
  assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
