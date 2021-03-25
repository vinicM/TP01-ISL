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
    C1 = 1;
    C2 = 0;
    C3 = 1;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 0;
    C4 = 1;
    C5 = 0;    

    #1
    C1 = 0;
    C2 = 1;
    C3 = 0;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 0;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 0;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 0;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 0;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 1;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 1;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 1;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 0;
    C3 = 1;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 0;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 0;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 0;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 1;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 1;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 1;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 0;
    C2 = 1;
    C3 = 1;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 0;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 0;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 0;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 0;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 1;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 1;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 0;
    C3 = 1;
    C4 = 1;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 0;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 0;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 0;
    C4 = 1;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 1;
    C4 = 0;
    C5 = 0;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 1;
    C4 = 0;
    C5 = 1;

    #1
    C1 = 1;
    C2 = 1;
    C3 = 1;
    C4 = 1;
    C5 = 0;
    #100;
    $finish;

end
endmodule