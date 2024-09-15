`define TESTVECS 6

module tb; 
  // Inputs
  reg [2:0] i1;
  reg i2;  
  // Outputs
  wire sum1, cout1;  

  // Test vector array
  reg [3:0] test_vecs [0:(`TESTVECS-1)]; 
  integer i; 

  initial 
  begin
    $dumpfile("week4_p1.vcd");     
    $dumpvars(0,tb); 
  end   

  initial begin  
    test_vecs[0][3:1] = 3'b000;  test_vecs[0][0:0] = 1'b0;    
    test_vecs[1][3:1] = 3'b001;  test_vecs[1][0:0] = 1'b1;    
    test_vecs[2][3:1] = 3'b010;  test_vecs[2][0:0] = 1'b0;    
    test_vecs[3][3:1] = 3'b011;  test_vecs[3][0:0] = 1'b1; 
    test_vecs[4][3:1] = 3'b100;  test_vecs[4][0:0] = 1'b0;
    test_vecs[5][3:1] = 3'b101;  test_vecs[5][0:0] = 1'b1;
  end

  // Initialize inputs
  initial {i1, i2} = 0;

  // Instantiate the circuit3 module (do not redeclare it)
  circuit3 circuit3_0 (i1, i2, sum1, cout1); 

  // Apply test vectors in a loop
  initial 
  begin       
    for(i = 0; i < `TESTVECS; i = i + 1) begin
      #10 {i1, i2} = test_vecs[i];     
    end
  end

  // Monitor to print values to console
  initial 
  begin
    $monitor("Time: %0t | i1 = %b, i2 = %b | sum1 = %b, cout1 = %b", $time, i1, i2, sum1, cout1);
  end

endmodule