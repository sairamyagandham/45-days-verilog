module gates_advanced(
  input a,
  input b,
  output out_nand,
  output out_nor,
  output out_xor,
  output out_xnor
);
  assign out_nand=~(a&b);
  assign out_nor=~(a|b);
  assign out_xor=a^b;
  assign out_xnor=~(a^b);
endmodule
