`include "design.v"
`timescale 1ns/1ns


module bcd_adder_tb;
reg [3:0] A_input, B_input;
reg Carry_input;
wire [3:0] Sum_output;
wire Carry_output;

bcd_adder uut(A_input, B_input, Carry_input, Sum_output, Carry_output);

initial begin

    $dumpfile("design_tb.vcd");
    $dumpvars(0, bcd_adder_tb);

    $display("time\t A_input B_input Carry_input Sum_output Carry_output");
    
    $monitor("%g\t   %b\t %b\t %b\t %b\t%b",  
            $time, A_input, B_input, Carry_input, Sum_output, Carry_output);


    A_input = 0;  B_input = 0;  Carry_input = 0;   #100;
    A_input = 6;  B_input = 9;  Carry_input = 0;   #100;
    A_input = 3;  B_input = 3;  Carry_input = 1;   #100;        
    A_input = 4;  B_input = 5;  Carry_input = 0;   #100;
    A_input = 8;  B_input = 2;  Carry_input = 0;   #100;
    A_input = 9;  B_input = 9;  Carry_input = 1;   #100;

    $finish;

end

endmodule
