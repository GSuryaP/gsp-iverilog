module TB;
reg i;
reg j;
wire y0;
wire y1;

demux_1x2 new_demux (.i(i), .j(j), .y0(y0), .y1(y1));

initial begin
$dumpfile("demux_1x2_test.vcd");
$dumpvars(0, TB);
$monitor($time, " sel = %b, in = %b, y0 = %b, y1 = %b", j, i, y0, y1);
end

initial begin
j = 1'b0; i = 1'b0;
#5 j = 1'b0; i = 1'b1;
#5 j = 1'b1; i = 1'b0;
#5 j = 1'b1; i = 1'b1;
end
endmodule
