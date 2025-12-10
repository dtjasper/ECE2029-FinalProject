`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 03:35:00 PM
// Design Name: 
// Module Name: FullAdd
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



module HalfAdder(
    input A,
    input B,
    output s,
    output c
    );
    
    assign s = A ^ B;
    assign c = A & B;
    
endmodule

module FullAdd(
    input A,
    input B,
    input carryIn,
    output sum,
    output carryOut
    );
    
    wire sum1, carry1, carry2;

    HalfAdder HA1 (
        .A(A),
        .B(B),
        .s(sum1),  // Intermediate sum
        .c(carry1)   // Carry from first half-adder
    );

    HalfAdder HA2 (
        .A(sum1),
        .B(carryIn),
        .s(sum), // Final sum output
        .c(carry2)   // Carry from second half-adder
    );

    assign carryOut = carry1 | carry2;
    
endmodule

