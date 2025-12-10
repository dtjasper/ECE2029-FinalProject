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
    
    reg [3:0] A;
    reg [3:0] B;
    reg carryIn;
    wire [3:0] sum;
    wire carryOut;

    // Instantiate the divider
//    DividerModule dut (
//        .dividend(dividend),
//        .divisor(divisor),
//        .quotient(quotient),
//        .remainder(remainder)
//    );

    AdderModule dut(
        .A(A),
        .B(B),
        .carryIn(carryIn),
        .sum(sum),
        .carryOut(carryOut)
    );
    
    initial begin
//        dividend=4'b0110;divisor=4'b0010;
//        #10
//        dividend=4'b1111;divisor=4'b0011;
//        #10
//        dividend=4'b1010;divisor=4'b0011;
//        #10;
        A=4'b0001;B=4'b0000;carryIn=1;
        #10
        A=4'b0111;B=4'b0101;carryIn=0;
        #10;
    end
endmodule
