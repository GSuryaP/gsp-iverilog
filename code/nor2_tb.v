module nor2_test;
reg a,b;
wire c;

nor nor2_test(c,a,b);

initial 
begin
$monitor("A = %b, B = %b, C = %b, Time = %0d", a,b,c,$time);
end 

initial
begin
#00 a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
end


initial
begin
$dumpfile("nor2_test.vcd");
$dumpvars(0,nor2_test);
end 
endmodule
