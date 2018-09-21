// Decoder circuit
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50
`define NAND nand #50
module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    wire n1,n2,n3 na0,na1;
    `NAND(n1,address0,address1);
    `OR(out0,n1,enable)
    `NOT(na1,address1)
    `AND(n2,na1,address0);
    `OR(out1,n1,enable)
    `NOT(na0,address0)
    `AND(n3,na0,address1);
    `OR(out2,n2,enable)
    `AND(n4,address0,address1);
    `OR(out3,n1,enable)

    
endmodule

