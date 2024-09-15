module demux_1x2 (input wire i, j, output wire y0, y1);

assign y0 = ~j & i;
assign y1 = j & i;

endmodule