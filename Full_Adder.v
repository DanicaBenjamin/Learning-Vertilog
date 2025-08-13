module Full_Adder(sum, carry, out1, out2, out3, a, b, c);
    output sum, carry;
    wire out1, out2, out3;
    input a, b, c; 
    xor x1(out1, a, b);
    xor x2(sum, out1, c);
    and a1(out2, a, b);
    and a2(out3, out1, c);
    or o1(carry, out2, out3);
endmodule
