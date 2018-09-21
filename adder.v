// Adder circuit
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50
`define NAND nand #50
module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
    
);
    wire n1,n2,n3,x1;
    `AND AandB(n1,a,b);
    `AND AandC(n2,a,carryin);
    `AND CandB(n3,carryin,b);
    `OR Cout(carryout,n1,n2,n3);
    `XOR AorB(x1,a,b);
    `XOR AorC(sum,x1,carryin);
endmodule
