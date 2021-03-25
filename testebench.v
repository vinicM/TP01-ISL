`include "display.v"

module testbench ();

reg C1 = 0;
reg C2 = 0;
reg C3 = 0;
reg C4 = 0;
reg C5 = 0;

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

    #100;
    $finish;
end

endmodule