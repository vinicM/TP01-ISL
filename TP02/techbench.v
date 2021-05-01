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

    reg e1,
    reg e2;

    parameter saldoInsuf = 2'd00, trocoRec = 2'd01, doceComp = 2'd10. doceEtroco = 2'd11 ;

    always @(state) begin
        case(state)
            if( e1 == 0 & e2 == 0)

        
    end