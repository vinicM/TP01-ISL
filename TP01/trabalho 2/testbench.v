`include "display.v"

module testbench();

reg c1 = 1;
reg c2 = 1;
reg c3 = 1;
reg c4 = 1;
reg c5 = 1;

wire a;
wire b;
wire c;
wire d;
wire e;
wire f;
wire g;

display moduloTeste(c1, c2, c3, c4, c5, a, b, c, d, e, f, g);

initial begin
    $dumpfile("testbench.vcd");
    $dumpvars;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 1;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 0;
    c4 = 1;
    c5 = 0;    

    #1
    c1 = 0;
    c2 = 1;
    c3 = 0;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 1;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 1;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 1;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 0;
    c3 = 1;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 0;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 0;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 0;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 1;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 1;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 1;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 0;
    c2 = 1;
    c3 = 1;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 0;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 0;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 1;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 1;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 0;
    c3 = 1;
    c4 = 1;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 0;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 0;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 0;
    c4 = 1;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 1;
    c4 = 0;
    c5 = 0;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 1;
    c4 = 0;
    c5 = 1;

    #1
    c1 = 1;
    c2 = 1;
    c3 = 1;
    c4 = 1;
    c5 = 0;
    #100;
    $finish;

end
endmodule