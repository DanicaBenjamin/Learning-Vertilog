module half_adder_tb;
reg a; 
reg b;
wire sum;
wire carry; 

half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);

    // test case 1 (0 0)
    a = 1'b0;
    b = 1'b0;
    #20;

    // test case 2 (0 1) 
    a = 1'b0;
    b = 1'b1;
    #20;

    // test case 3 (1 0)
    a = 1'b1;
    b = 1'b0;
    #20;

    // test case 4 (1 1)
    a = 1'b1;
    b = 1'b1;
    #20;

    $finish;
end
endmodule
