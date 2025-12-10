`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 08:27:38 AM
// Design Name: 
// Module Name: DisplayCreator
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


module DisplayCreator(
    
    input  [3:0] bcdIn,
    output [14:0] signalOut   
    
    );
    
    reg [14:0] result;
    
    always @(*) begin
    case (bcdIn)
        4'd0:  result = 15'b111_101_101_101_111;
        4'd1:  result = 15'b010_110_010_010_111;
        4'd2:  result = 15'b111_001_111_100_111;
        4'd3:  result = 15'b111_001_111_001_111;
        4'd4:  result = 15'b101_101_111_001_001;
        4'd5:  result = 15'b111_100_111_001_111;
        4'd6:  result = 15'b111_100_111_101_111;
        4'd7:  result = 15'b111_001_001_001_001;
        4'd8:  result = 15'b111_101_111_101_111;
        4'd9:  result = 15'b111_101_111_001_111;
        default: result = 15'b0;
    endcase
    end
    
    assign signalOut = result;

endmodule
