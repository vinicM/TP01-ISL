module ff ( input data, input c, input r, output q);
reg q;
always @(posedge c or negedge r) 
begin
 if(r==1'b0)
  q <= 1'b0; 
 else 
  q <= data; 
end 
endmodule //End 

// ----   FSM alto nível com Case
module maquina(clk, in, out);

input clk, in;
output out;

reg out;
reg [3:0] state;


//parameter saldoInsuf = 2'b00, trocoRec = 2'b01, doceComp = 2'b10, doceEtroco = 2'b11; 
parameter    0c = 4'b0000,
             5c = 4'b1000,
             10c = 4'b0100, 
             15c = 4'b0010,
             20c = 4'b1010, 
             25c = 4'b0001, 
             30c = 4'b1001, 
             35c = 4'b0101, 
             45c = 4'b1011, 
             50c = 4'b0111; // os estados


        
always @(posedge clk or in )begin
    state <= 0c;
    case (state)
        0c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 5c;
            else if (in == 2'b10)
                state = 10c;
            else if(in == 2'b11)
                state = 25c;   
            end
        5c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 10c;
            else if (in == 2'b10)
                state = 15c;
            else if(in == 2'b11)
                state = 30c;   
            end
        10c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 15c;
            else if (in == 2'b10)
                state = 20c;
            else if(in == 2'b11)
                state = 35c;     
            end 
        15c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 20c;
            else if (in == 2'b10)
                state = 25c;
            else if(in == 2'b11)
                state = 35c;     
            end
        20c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 25c;
            else if (in == 2'b10)
                state = 30c;
            else if(in == 2'b11)
                state = 45c;
            end  
        25c:begin
            if (in == 2'b00 )
                out = 2'b01 ;
            else if (in == 2'b01 )
                state = 30c;
            else if (in == 2'b10)
                state = 35c;
            else if(in == 2'b11)
                state = 50c;
            end 
        30c:
            state = 0c;
            out = 2'b10;   
        35c:
            state = 0c;
            out = 2'b11;
        45c:
            state = 0c;
            out = 2'b11;
        50c:
            state = 0c;
            out = 2'b11;
    endcase
end

always @(state)
    begin
        case (state)
            0c:
                out = 2'b00; //$display("Saldo Induficiente");
            5c:
                out = 2'b00;//$display("Saldo Induficiente");
            10c:
                out = 2'b00;//$display("Saldo Induficiente"); 
            15c:
                out = 2'b00;//$display("Saldo Induficiente"); 
            20c:
                out = 2'b00;//$display("Saldo Induficiente"); 
            25c:
                out = 2'b00;//$display("Saldo Induficiente"); 
            30c:
                out = 2'b10;//$display("Doce comprado");
            35c:
                out = 2'b11;//$display("Doce comprado e troco recuperado");
            45c:
                out = 2'b11;//$display("Doce comprado e troco recuperado");
            50c:
                out = 2'b11;//$display("Doce comprado e troco recuperado");
            default:
                out = 2'b00;
        endcase
    end

endmodule

initial 
    begin
      $monitor($time," c %b res %b d %b out  %b  out1  %b",c,d,out);
      #1 d=01;
      #1 d=01;
      #1 d=10;
      #1 d=10;
      $finish ;
    end
endmodule