module not1_test;
reg a;
wire b;

not not1_test(b,a);

initial
begin
#00 a=0;
#10 a=1; 
end


initial 
begin
$monitor("A = %b, B = %b, Time = %0d", a,b,$time);
end 

initial
begin
$dumpfile("not1_test.vcd");
$dumpvars(0,not1_test);
end 
endmodule
