`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2016 10:56:34 AM
// Design Name: 
// Module Name: enableCompare
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


module enableCompare(
    input upEnable[3:0][5:0],
    input downEnable[3:0][5:0],
    input leftEnable[3:0][5:0],
    input rightEnable[3:0][5:0],
    //wall
    input wall_upEnable[3:0][5:0],
    input wall_downEnable[3:0][5:0],
    input wall_leftEnable[3:0][5:0],
    input wall_rightEnable[3:0][5:0],
    
    output reg upEnable_o,
    output reg downEnable_o,
    output  reg leftEnable_o,
    output   reg rightEnable_o

);

//assign up_Enable=1'b1;
//assign down_Enable=1'b1;
//assign leftEnable_o=1'b1;
//assign rightEnable_o=1'b1;

reg [23:0] upEnable_all; 
reg [23:0] downEnable_all;
reg [23:0] leftEnable_all;
reg [23:0] rightEnable_all;

reg [23:0] wall_upEnable_all; 
reg [23:0] wall_downEnable_all;
reg [23:0] wall_leftEnable_all;
reg [23:0] wall_rightEnable_all;

always@(*) begin
//DOWN ENABLE
//scroll 0
downEnable_all[0]<=downEnable[0][0];
downEnable_all[1]<=downEnable[1][0];
downEnable_all[2]<=downEnable[2][0];
downEnable_all[3]<=downEnable[3][0];
//scroll 1
downEnable_all[4]<=downEnable[0][1];
downEnable_all[5]<=downEnable[1][1];
downEnable_all[6]<=downEnable[2][1];
downEnable_all[7]<=downEnable[3][1];
//scroll 2
 downEnable_all[8]<=downEnable[0][2];    
 downEnable_all[9]<=downEnable[1][2];
downEnable_all[10]<=downEnable[2][2];
downEnable_all[11]<=downEnable[3][2];
//scroll 3
downEnable_all[12]<=downEnable[0][3];
downEnable_all[13]<=downEnable[1][3];
downEnable_all[14]<=downEnable[2][3];
downEnable_all[15]<=downEnable[3][3];
//scroll 4
downEnable_all[16]<=downEnable[0][4];    
downEnable_all[17]<=downEnable[1][4];
downEnable_all[18]<=downEnable[2][4];
downEnable_all[19]<=downEnable[3][4];

//scroll 5
downEnable_all[20]<=downEnable[0][5];
downEnable_all[21]<=downEnable[1][5];
downEnable_all[22]<=downEnable[2][5];
downEnable_all[23]<=downEnable[3][5];  
    // UP ENABLE 
  //scroll 0
  upEnable_all[0]<=upEnable[0][0];
  upEnable_all[1]<=upEnable[1][0];
  upEnable_all[2]<=upEnable[2][0];
  upEnable_all[3]<=upEnable[3][0];
  //scroll 1
  upEnable_all[4]<=upEnable[0][1];
  upEnable_all[5]<=upEnable[1][1];
  upEnable_all[6]<=upEnable[2][1];
  upEnable_all[7]<=upEnable[3][1];
  //scroll 2
   upEnable_all[8]<=upEnable[0][2];    
   upEnable_all[9]<=upEnable[1][2];
  upEnable_all[10]<=upEnable[2][2];
  upEnable_all[11]<=upEnable[3][2];
  //scroll 3
  upEnable_all[12]<=upEnable[0][3];
  upEnable_all[13]<=upEnable[1][3];
  upEnable_all[14]<=upEnable[2][3];
  upEnable_all[15]<=upEnable[3][3];
  //scroll 4
  upEnable_all[16]<=upEnable[0][4];    
  upEnable_all[17]<=upEnable[1][4];
  upEnable_all[18]<=upEnable[2][4];
  upEnable_all[19]<=upEnable[3][4];

  //scroll 5
  upEnable_all[20]<=upEnable[0][5];
  upEnable_all[21]<=upEnable[1][5];
  upEnable_all[22]<=upEnable[2][5];
  upEnable_all[23]<=upEnable[3][5];  



// LEFT ENABLE 
    //scroll 0
    leftEnable_all[0]<=leftEnable[0][0];
    leftEnable_all[1]<=leftEnable[1][0];
    leftEnable_all[2]<=leftEnable[2][0];
    leftEnable_all[3]<=leftEnable[3][0];
    //scroll 1
    leftEnable_all[4]<=leftEnable[0][1];
    leftEnable_all[5]<=leftEnable[1][1];
    leftEnable_all[6]<=leftEnable[2][1];
    leftEnable_all[7]<=leftEnable[3][1];
    //scroll 2
    leftEnable_all [8]<=leftEnable[0][2];    
    leftEnable_all [9]<=leftEnable[1][2];
    leftEnable_all[10]<=leftEnable[2][2];
    leftEnable_all[11]<=leftEnable[3][2];
    //scroll 3
    leftEnable_all[12]<=leftEnable[0][3];
    leftEnable_all[13]<=leftEnable[1][3];
    leftEnable_all[14]<=leftEnable[2][3];
    leftEnable_all[15]<=leftEnable[3][3];
    //scroll 4
    leftEnable_all[16]<=leftEnable[0][4];    
    leftEnable_all[17]<=leftEnable[1][4];
    leftEnable_all[18]<=leftEnable[2][4];
    leftEnable_all[19]<=leftEnable[3][4];
    //scroll 5
    leftEnable_all[20]<=leftEnable[0][5];
    leftEnable_all[21]<=leftEnable[1][5];
    leftEnable_all[22]<=leftEnable[2][5];
    leftEnable_all[23]<=leftEnable[3][5];  
  
// RIGHT ENABLE 
    //scroll 0
    rightEnable_all[0]<=rightEnable[0][0];
    rightEnable_all[1]<=rightEnable[1][0];
    rightEnable_all[2]<=rightEnable[2][0];
    rightEnable_all[3]<=rightEnable[3][0];
    //scroll 1
    rightEnable_all[4]<=rightEnable[0][1];
    rightEnable_all[5]<=rightEnable[1][1];
    rightEnable_all[6]<=rightEnable[2][1];
    rightEnable_all[7]<=rightEnable[3][1];
    //scroll 2
    rightEnable_all [8]<=rightEnable[0][2];    
    rightEnable_all [9]<=rightEnable[1][2];
    rightEnable_all[10]<=rightEnable[2][2];
    rightEnable_all[11]<=rightEnable[3][2];
    //scroll 3
    rightEnable_all[12]<=rightEnable[0][3];
    rightEnable_all[13]<=rightEnable[1][3];
    rightEnable_all[14]<=rightEnable[2][3];
    rightEnable_all[15]<=rightEnable[3][3];
    //scroll 4
    rightEnable_all[16]<=rightEnable[0][4];    
    rightEnable_all[17]<=rightEnable[1][4];
    rightEnable_all[18]<=rightEnable[2][4];
    rightEnable_all[19]<=rightEnable[3][4];
    //scroll 5
    rightEnable_all[20]<=rightEnable[0][5];
    rightEnable_all[21]<=rightEnable[1][5];
    rightEnable_all[22]<=rightEnable[2][5];
    rightEnable_all[23]<=rightEnable[3][5];  

//DOWN ENABLE
//scroll 0
downEnable_all[0]<=downEnable[0][0];
downEnable_all[1]<=downEnable[1][0];
downEnable_all[2]<=downEnable[2][0];
downEnable_all[3]<=downEnable[3][0];
//scroll 1
downEnable_all[4]<=downEnable[0][1];
downEnable_all[5]<=downEnable[1][1];
downEnable_all[6]<=downEnable[2][1];
downEnable_all[7]<=downEnable[3][1];
//scroll 2
 downEnable_all[8]<=downEnable[0][2];    
 downEnable_all[9]<=downEnable[1][2];
downEnable_all[10]<=downEnable[2][2];
downEnable_all[11]<=downEnable[3][2];
//scroll 3
downEnable_all[12]<=downEnable[0][3];
downEnable_all[13]<=downEnable[1][3];
downEnable_all[14]<=downEnable[2][3];
downEnable_all[15]<=downEnable[3][3];
//scroll 4
downEnable_all[16]<=downEnable[0][4];    
downEnable_all[17]<=downEnable[1][4];
downEnable_all[18]<=downEnable[2][4];
downEnable_all[19]<=downEnable[3][4];

//scroll 5
downEnable_all[20]<=downEnable[0][5];
downEnable_all[21]<=downEnable[1][5];
downEnable_all[22]<=downEnable[2][5];
downEnable_all[23]<=downEnable[3][5];  
    // UP ENABLE 
  //scroll 0
  upEnable_all[0]<=upEnable[0][0];
  upEnable_all[1]<=upEnable[1][0];
  upEnable_all[2]<=upEnable[2][0];
  upEnable_all[3]<=upEnable[3][0];
  //scroll 1
  upEnable_all[4]<=upEnable[0][1];
  upEnable_all[5]<=upEnable[1][1];
  upEnable_all[6]<=upEnable[2][1];
  upEnable_all[7]<=upEnable[3][1];
  //scroll 2
   upEnable_all[8]<=upEnable[0][2];    
   upEnable_all[9]<=upEnable[1][2];
  upEnable_all[10]<=upEnable[2][2];
  upEnable_all[11]<=upEnable[3][2];
  //scroll 3
  upEnable_all[12]<=upEnable[0][3];
  upEnable_all[13]<=upEnable[1][3];
  upEnable_all[14]<=upEnable[2][3];
  upEnable_all[15]<=upEnable[3][3];
  //scroll 4
  upEnable_all[16]<=upEnable[0][4];    
  upEnable_all[17]<=upEnable[1][4];
  upEnable_all[18]<=upEnable[2][4];
  upEnable_all[19]<=upEnable[3][4];

  //scroll 5
  upEnable_all[20]<=upEnable[0][5];
  upEnable_all[21]<=upEnable[1][5];
  upEnable_all[22]<=upEnable[2][5];
  upEnable_all[23]<=upEnable[3][5];  

//==============================================
//WALL
//==============================================
//DOWN ENABLE
//wall 0
wall_downEnable_all[0]<=wall_downEnable[0][0];
wall_downEnable_all[1]<=wall_downEnable[1][0];
wall_downEnable_all[2]<=wall_downEnable[2][0];
wall_downEnable_all[3]<=wall_downEnable[3][0];
//wall 1
wall_downEnable_all[4]<=wall_downEnable[0][1];
wall_downEnable_all[5]<=wall_downEnable[1][1];
wall_downEnable_all[6]<=wall_downEnable[2][1];
wall_downEnable_all[7]<=wall_downEnable[3][1];
//wall 2
 wall_downEnable_all[8]<=wall_downEnable[0][2];    
 wall_downEnable_all[9]<=wall_downEnable[1][2];
wall_downEnable_all[10]<=wall_downEnable[2][2];
wall_downEnable_all[11]<=wall_downEnable[3][2];
//wall 3
wall_downEnable_all[12]<=wall_downEnable[0][3];
wall_downEnable_all[13]<=wall_downEnable[1][3];
wall_downEnable_all[14]<=wall_downEnable[2][3];
wall_downEnable_all[15]<=wall_downEnable[3][3];
//wall 4
wall_downEnable_all[16]<=wall_downEnable[0][4];    
wall_downEnable_all[17]<=wall_downEnable[1][4];
wall_downEnable_all[18]<=wall_downEnable[2][4];
wall_downEnable_all[19]<=wall_downEnable[3][4];

//wall 5
wall_downEnable_all[20]<=wall_downEnable[0][5];
wall_downEnable_all[21]<=wall_downEnable[1][5];
wall_downEnable_all[22]<=wall_downEnable[2][5];
wall_downEnable_all[23]<=wall_downEnable[3][5];  
    // UP ENABLE 
  //wall 0
  wall_upEnable_all[0]<=wall_upEnable[0][0];
  wall_upEnable_all[1]<=wall_upEnable[1][0];
  wall_upEnable_all[2]<=wall_upEnable[2][0];
  wall_upEnable_all[3]<=wall_upEnable[3][0];
  //wall 1
  wall_upEnable_all[4]<=wall_upEnable[0][1];
  wall_upEnable_all[5]<=wall_upEnable[1][1];
  wall_upEnable_all[6]<=wall_upEnable[2][1];
  wall_upEnable_all[7]<=wall_upEnable[3][1];
  //wall 2
   wall_upEnable_all[8]<=wall_upEnable[0][2];    
   wall_upEnable_all[9]<=wall_upEnable[1][2];
  wall_upEnable_all[10]<=wall_upEnable[2][2];
  wall_upEnable_all[11]<=wall_upEnable[3][2];
  //wall 3
  wall_upEnable_all[12]<=wall_upEnable[0][3];
  wall_upEnable_all[13]<=wall_upEnable[1][3];
  wall_upEnable_all[14]<=wall_upEnable[2][3];
  wall_upEnable_all[15]<=wall_upEnable[3][3];
  //wall 4
  wall_upEnable_all[16]<=wall_upEnable[0][4];    
  wall_upEnable_all[17]<=wall_upEnable[1][4];
  wall_upEnable_all[18]<=wall_upEnable[2][4];
  wall_upEnable_all[19]<=wall_upEnable[3][4];

  //wall 5
  wall_upEnable_all[20]<=wall_upEnable[0][5];
  wall_upEnable_all[21]<=wall_upEnable[1][5];
  wall_upEnable_all[22]<=wall_upEnable[2][5];
  wall_upEnable_all[23]<=wall_upEnable[3][5];  



// LEFT ENABLE 
    //wall 0
    wall_leftEnable_all[0]<=wall_leftEnable[0][0];
    wall_leftEnable_all[1]<=wall_leftEnable[1][0];
    wall_leftEnable_all[2]<=wall_leftEnable[2][0];
    wall_leftEnable_all[3]<=wall_leftEnable[3][0];
    //wall 1
    wall_leftEnable_all[4]<=wall_leftEnable[0][1];
    wall_leftEnable_all[5]<=wall_leftEnable[1][1];
    wall_leftEnable_all[6]<=wall_leftEnable[2][1];
    wall_leftEnable_all[7]<=wall_leftEnable[3][1];
    //wall 2
    wall_leftEnable_all [8]<=wall_leftEnable[0][2];    
    wall_leftEnable_all [9]<=wall_leftEnable[1][2];
    wall_leftEnable_all[10]<=wall_leftEnable[2][2];
    wall_leftEnable_all[11]<=wall_leftEnable[3][2];
    //wall 3
    wall_leftEnable_all[12]<=wall_leftEnable[0][3];
    wall_leftEnable_all[13]<=wall_leftEnable[1][3];
    wall_leftEnable_all[14]<=wall_leftEnable[2][3];
    wall_leftEnable_all[15]<=wall_leftEnable[3][3];
    //wall 4
    wall_leftEnable_all[16]<=wall_leftEnable[0][4];    
    wall_leftEnable_all[17]<=wall_leftEnable[1][4];
    wall_leftEnable_all[18]<=wall_leftEnable[2][4];
    wall_leftEnable_all[19]<=wall_leftEnable[3][4];
    //wall 5
    wall_leftEnable_all[20]<=wall_leftEnable[0][5];
    wall_leftEnable_all[21]<=wall_leftEnable[1][5];
    wall_leftEnable_all[22]<=wall_leftEnable[2][5];
    wall_leftEnable_all[23]<=wall_leftEnable[3][5];  
  
// RIGHT ENABLE 
    //wall 0
    wall_rightEnable_all[0]<=wall_rightEnable[0][0];
    wall_rightEnable_all[1]<=wall_rightEnable[1][0];
    wall_rightEnable_all[2]<=wall_rightEnable[2][0];
    wall_rightEnable_all[3]<=wall_rightEnable[3][0];
    //wall 1
    wall_rightEnable_all[4]<=wall_rightEnable[0][1];
    wall_rightEnable_all[5]<=wall_rightEnable[1][1];
    wall_rightEnable_all[6]<=wall_rightEnable[2][1];
    wall_rightEnable_all[7]<=wall_rightEnable[3][1];
    //wall 2
    wall_rightEnable_all [8]<=wall_rightEnable[0][2];    
    wall_rightEnable_all [9]<=wall_rightEnable[1][2];
    wall_rightEnable_all[10]<=wall_rightEnable[2][2];
    wall_rightEnable_all[11]<=wall_rightEnable[3][2];
    //wall 3
    wall_rightEnable_all[12]<=wall_rightEnable[0][3];
    wall_rightEnable_all[13]<=wall_rightEnable[1][3];
    wall_rightEnable_all[14]<=wall_rightEnable[2][3];
    wall_rightEnable_all[15]<=wall_rightEnable[3][3];
    //wall 4
    wall_rightEnable_all[16]<=wall_rightEnable[0][4];    
    wall_rightEnable_all[17]<=wall_rightEnable[1][4];
    wall_rightEnable_all[18]<=wall_rightEnable[2][4];
    wall_rightEnable_all[19]<=wall_rightEnable[3][4];
    //wall 5
    wall_rightEnable_all[20]<=wall_rightEnable[0][5];
    wall_rightEnable_all[21]<=wall_rightEnable[1][5];
    wall_rightEnable_all[22]<=wall_rightEnable[2][5];
    wall_rightEnable_all[23]<=wall_rightEnable[3][5];  



//enable/disable down    
    if(downEnable_all == 24'h0&&wall_downEnable_all == 24'h0)        downEnable_o <= 1;
    else        downEnable_o <= 0;
//enable/disable up    
    if(upEnable_all == 24'h0&&wall_upEnable_all == 24'h0)      upEnable_o <= 1;
    else      upEnable_o <= 0;
//enable/disable down    
    if(leftEnable_all == 24'h0&&wall_leftEnable_all == 24'h0)        leftEnable_o <= 1;
    else        leftEnable_o <= 0;
//enable/disable up    
    if(rightEnable_all == 24'h0&&wall_rightEnable_all == 24'h0)      rightEnable_o <= 1;
    else      rightEnable_o <= 0;
    
end
endmodule
