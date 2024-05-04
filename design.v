module bcd_adder (A_input, B_input, Carry_input, Sum_output, Carry_output);

input [3:0] A_input, B_input;
input Carry_input;
output reg [3:0] Sum_output;
output reg Carry_output;

reg [4:0] sum_temp;

always @(A_input or B_input or Carry_input) begin

    sum_temp = A_input + B_input + Carry_input;
    if (sum_temp > 9) begin
        sum_temp = sum_temp + 6;
        Sum_output = sum_temp[3:0];
        Carry_output = sum_temp[4];
    end

    else begin

        Sum_output = sum_temp[3:0];
        Carry_output = 0;

    end

end

endmodule