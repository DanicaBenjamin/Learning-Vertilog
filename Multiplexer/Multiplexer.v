module Multiplexer(out, s, i0, i1);
    input s, i0, i1;
    output out; 
    wire a, b, sn; // sn is s after not gate, a is i0 and sn through an and gate, b is s and i1 through an and gate 
    not n1(sn, s); 
    and a1(a, sn, i0);
    and a2(b, s, i1);
    or o1(out, a, b);
endmodule
