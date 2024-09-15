module and2(a,b,c);
input a,b;
output c;
assign c= a&b;
endmodule

module or2(a,b,c);
input a,b;
output c;
assign c= a|b;
endmodule

module simple_circuit(A,B,C,D);
input A,B,C;
output D;
wire w1,w2,w3;
and2 G1(C,B,w1);
or2 G2(w1,A,w2);
and2 G3(A,B,w3);
or2 G4(w2,w3,D);
endmodule