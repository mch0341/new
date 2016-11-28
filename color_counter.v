`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2016 05:31:51 PM
// Design Name: 
// Module Name: color_counter
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


module color_counter(
    input clk,
    output reg [3:0] color
    );
    
    reg [3:0] count = 0;
    
    always @ (posedge clk) begin
        count <= count +1;
        if(count == 1)begin
        
            color <=2;
            
        end
        
        else if (count ==2) begin
       
            color <=3; 
              
        end
        
        else if (count ==3) begin
       
            color <=4; 
              
        end

        else if (count ==4) begin
       
            color <=5; 
              
        end
        
        else begin
            count<=0;
        end
        
       
    end
    
endmodule
