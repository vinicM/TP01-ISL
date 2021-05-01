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
    reg s2;

    parameter s2 = 1'd0, s1 = 1'd1 ;

    always @(state) begin
        case(state)
            if( s1 == 0 &)
        
    end