`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 10:20:02 AM
// Design Name: 
// Module Name: CalcTesterSim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CalcTesterSim(

    );
    
    reg  [3:0] dividend;
    reg  [3:0] divisor;
    wire [3:0] quotient;
    wire [3:0] remainder;

    // Instantiate the divider
    DividerModule dut (
        .dividend(dividend),
        .divisor(divisor),
        .quotient(quotient),
        .remainder(remainder)
    );
    
    initial begin
        dividend=4'b0110;divisor=4'b0010;
        #10
        dividend=4'b1111;divisor=4'b0011;
        #10
        dividend=4'b1010;divisor=4'b0011;
        #10;
    end
endmodule
