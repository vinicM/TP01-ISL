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

    reg saldoInsuf,
    reg trocoRec,
    reg doceComp,
    reg doceEtroco;
    reg state;

    parameter saldoInsuf = 00, trocoRec = 01, doceComp = 10, doceEtroco = 11 ;

    always @(state) begin
        begin
            
        end
        
    end