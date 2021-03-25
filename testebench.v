`include "display.v"

module testbench ();

reg C1 = 1;
reg C2 = 1;
reg C3 = 1;
reg C4 = 1;
reg C5 = 1;

wire A;
wire B;
wire C;
wire D;
wire E;
wire F;
wire G;

display meumoduloTeste(C1,C2,C3,C4,C5,A,B,C,D,E,F,G);

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

    #100;
    $finish;
end

endmodule