module Full_Adder_tb;
    reg a, b, c;
    wire out1, out2, out3; 
    wire sum, carry;

    Full_Adder uut(
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("Full_Adder.vcd");
        $dumpvars(1, Full_Adder_tb);

        // test case 1 (0 0 0)
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        #20;

        // test case 2 (0 0 1)
        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        #20;

        // test case 3 (0 1 0) 
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        #20;

        // test case 4 (0 1 1)
        a = 1'b0;
        b = 1'b1;
        c = 1'b1;
        #20;

        // test case 5 (1 0 0)
        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        #20;

        // test case 6 (1 0 1)
        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
        #20;

        // test case 7 (1 1 0)
        a = 1'b1;
        b = 1'b1;
        c = 1'b0;
        #20;

        // test case 8 (1 1 1)
        a = 1'b1;
        b = 1'b1;
        c = 1'b1;
        #20;

        $finish;
    end 
endmodule
