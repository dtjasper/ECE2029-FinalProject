`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 03:39:13 PM
// Design Name: 
// Module Name: AdderModule
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


module AdderModule(
    input [3:0] A,
    input [3:0] B,
    input carryIn,
    output [3:0] sum,
    output carryOut
    ); 

    wire c0, c1, c2; // temporary carries

    FullAdd fa0 (
        .A(A[0]), 
        .B(B[0]), 
        .carryIn(carryIn), 
        .sum(sum[0]), 
        .carryOut(c0)
    );

    FullAdd fa1 (
        .A(A[1]), 
        .B(B[1]), 
        .carryIn(c0), 
        .sum(sum[1]), 
        .carryOut(c1)
    );

    FullAdd fa2 (
        .A(A[2]), 
        .B(B[2]), 
        .carryIn(c1), 
        .sum(sum[2]), 
        .carryOut(c2)
    );

    FullAdd fa3 (
        .A(A[3]), 
        .B(B[3]), 
        .carryIn(c2), 
        .sum(sum[3]), 
        .carryOut(carryOut)
    );
    
endmodule
