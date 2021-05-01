`include "maquina.v"

module ff();

reg q;

always @(posedge c or negedge r) begin
    begin
        if( r == 1'b0 )
            q <= 1'b0;
        else
            q <= data;
end
endmodule

module maquina();

    reg s1,
    reg s2,
    reg state;

    parameter  = ;