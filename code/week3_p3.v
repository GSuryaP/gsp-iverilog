module fulladder (
    input wire a,b,cin,
    output wire sum,cout
);

assign sum = a ^ b ^ cin;      
assign cout = (a & b) | (cin & (a ^ b));

endmodule

module fulladdR ( 
    input wire [3:0] a, b, 
    input wire cin, 
    output wire [3:0] sum,
    output wire cout 
);

wire [2:0] c; 

fulladder u0 (a[0], b[0], cin, sum[0], cout0); 

fulladder u1 (a[1], b[1], cout0, sum[1], cout1); 

fulladder u2 (a[2], b[2], cout1, sum[2], cout2); 

fulladder u3 (a[3], b[3], cout2, sum[3], cout); 

endmodule
