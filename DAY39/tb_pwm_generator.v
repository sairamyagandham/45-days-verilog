`timescale 1ns/1ps
module tb_pwm_generator;
  reg clk;
  reg [3:0] duty;
  wire pwm;
  pwm_generator uut
  (
    .clk(clk),
    .duty(duty),
    .pwm(pwm)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_pwm_generator);
    clk=0;
    duty=4;
    #200;
    $finish;
  end
endmodule
