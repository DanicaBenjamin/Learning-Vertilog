module Multiplexer_tb;
    reg s, i0, i1;
    wire sn, a, b;
    wire out;

    Multiplexer uut(
        .i0(i0),
        .i1(i1),
        .s(s),
        .out(out)
    );

    initial begin
        $dumpfile("Multiplexer.vcd");
        $dumpvars(1, Multiplexer_tb);

        // test case 1 (s: 0, i0: 0, i1: 0)
        i0 = 1'b0;
        s = 1'b0;
        i1 = 1'b0;
        #20;

        // test case 2 (s: 0, i0: 1, i1: 0)
        i0 = 1'b1;
        s = 1'b0; 
        i1 = 1'b0;
        #20; 

        // test case 3 (s: 1, i1: 0, i0: 0)
        i1 = 1'b0;
        s = 1'b1;
        i0 = 1'b0;
        #20; 

        // test case 4 (s: 1, i1: 1, i0:0)
        i1 = 1'b1;
        s = 1'b1; 
        i0 = 1'b0;
        #20; 

        $finish;
    end 
endmodule
