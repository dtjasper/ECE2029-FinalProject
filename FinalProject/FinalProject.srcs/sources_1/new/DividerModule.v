`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 08:26:54 AM
// Design Name: 
// Module Name: DividerModule
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


module DividerModule(
    input  wire [3:0] dividend,   // A
    input  wire [3:0] divisor,    // B
    output reg  [3:0] quotient,
    output reg  [3:0] remainder
    );
    
   
    integer i;
    reg [7:0] temp;   // holds shifted partial remainder

    always @(*) begin
        if (divisor == 4'd0) begin // catch divide by 0
            quotient   = 4'd0;
            remainder  = 4'd0;
        end 
        else begin
            // Initialize
            temp = {4'd0, dividend};  
            quotient = 4'd0;

            // Long division (4 iterations)
            for (i = 0; i < 4; i = i + 1) begin
                temp = temp << 1;   // bit shift left
                if (temp[7:4] >= divisor) begin
                    temp[7:4] = temp[7:4] - divisor;
                    quotient = (quotient << 1) | 1'b1;
                end else begin
                    quotient = (quotient << 1);
                end
            end
            remainder = temp[7:4];
        end
    end
endmodule
