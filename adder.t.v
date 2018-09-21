// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
    $display("A B| Carryin | Sum Carryout");
    a=0;b=0;carryin=0; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=0; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=0; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=0; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=0;b=0;carryin=1; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=1; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=1; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=1; #1000 
    $display("%b  %b  %b | %b  %b | ", a, b, carryin, sum, carryout);
    end
    initial begin
    a=0;b=0;carryin=0; #1000
    $dumpfile("adder.vcd"); 
    $dumpvars(0, testFullAdder);
    
    end
endmodule


