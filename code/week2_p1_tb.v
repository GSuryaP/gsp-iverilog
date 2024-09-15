module tb_simple_circuit;

reg A,B,C;
wire D,E;
simple_circuit M1(A,B,C,D,E);

initial

begin
#0
A=1'b0; B=1'b0; C=1'b0;
#20
A=1'b0; B=1'b0; C=1'b1;
#20
A=1'b0; B=1'b1; C=1'b0;
#20
A=1'b0; B=1'b1; C=1'b1;
#20
A=1'b1; B=1'b0; C=1'b0;
#20
A=1'b1; B=1'b0; C=1'b1;
#20
A=1'b1; B=1'b1; C=1'b0;
#20
A=1'b1; B=1'b1; C=1'b1;
$finish;
end

initial
begin
$monitor("A=%b, B=%b, C=%b, D=%b, E=%b, Time = %0d", A,B,C,D,E,$time);
end

initial
begin
$dumpfile("week2_p1.vcd");
$dumpvars(0, tb_simple_circuit);
end
endmodule


