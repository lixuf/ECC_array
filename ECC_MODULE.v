`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/22 15:32:37
// Design Name: 
// Module Name: ECC_MODULE
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

//input must continue 252
module ECC_MODULE(
input clk,
input rst_n,

input [7:0] axis_ins_tdata,
input axis_ins_tvalid,
output axis_ins_tready,

output reg [7:0] axis_ous_tdata,
output reg axis_ous_valid,
input axis_ous_ready//empty signal
    );

//asy rst_n
reg rst_n_1;
reg rst_n_2;
reg rst_n_3;
always@(posedge clk or negedge rst_n) begin
    if(rst_n==1'b0) begin
        rst_n_1<=1'b0;
        rst_n_2<=1'b0;
        rst_n_3<=1'b0;
    end
    else begin
        rst_n_3<=rst_n_2;
        rst_n_2<=rst_n_1;
        rst_n_1<=1'b1;
    end
end

//pipline
reg [7:0] m1;
reg valid1;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid1<=1'b0;
    end
    else if(axis_ins_tvalid==1'b1)begin
        valid1<=1'b1;
    end
    else begin
        valid1<=1'b0;
    end
end
always@(posedge clk) begin
   m1<=axis_ins_tdata;
end


reg [7:0] f2;
wire [7:0] r22;
reg [7:0] m2;
reg valid2;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid2<=1'b0;
    end
    else if (valid1==1'b1) begin
        valid2<=1'b1;
    end
    else begin
        valid2<=1'b0;
    end
end
always@(posedge clk) begin
    f2<=m1^r22;
    m2<=m1;
end


reg [7:0] r23;
assign r22=r23;
reg [7:0] r13;
reg [7:0] r03;
reg [7:0] m3;
reg valid3;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid3<=1'b0;
    end
    else if (valid2==1'b1) begin
        valid3<=1'b1;
    end
    else begin
        valid3<=1'b0;
    end
end
always@(posedge clk) begin
    m3<=m2;
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        r23<=8'd0;
    end
    else if (valid2==1'b1) begin
                r23[7] <= (f2[6] ^ f2[5]) ^ (f2[4]                   ^ r13[7]);
                r23[6] <= (f2[7] ^ f2[5]) ^ (f2[4] ^ f2[3])          ^ r13[6] ;
                r23[5] <= (f2[6] ^ f2[4]) ^ (f2[3] ^ f2[2])          ^ r13[5] ; 
                r23[4] <= (f2[7] ^ f2[5]) ^ (f2[3] ^ f2[2]) ^ (f2[1] ^ r13[4]);
                r23[3] <= (f2[5] ^ f2[2]) ^ (f2[1] ^ f2[0])          ^ r13[3] ;
                r23[2] <= (f2[6] ^ f2[5]) ^ (f2[1] ^ f2[0])          ^ r13[2] ;
                r23[1] <= (f2[7] ^ f2[6]) ^ (f2[0]                   ^ r13[1]);
                r23[0] <= (f2[7] ^ f2[6]) ^ (f2[5]                   ^ r13[0]);
    end
    else begin
        r23<=8'd0;
    end
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        r13<=8'd0;
    end
    else if (valid2==1'b1) begin
        r13[7] <= (f2[6] ^ f2[4]) ^ (f2[3] ^ f2[2]) ^          r03[7] ;
        r13[6] <= (f2[7] ^ f2[5]) ^ (f2[3] ^ f2[2]) ^ (f2[1] ^ r03[6]);
        r13[5] <= (f2[6] ^ f2[4]) ^ (f2[2] ^ f2[1]) ^ (f2[0] ^ r03[5]);
        r13[4] <= (f2[7] ^ f2[5]) ^ (f2[3] ^ f2[1]) ^ (f2[0] ^ r03[4]);
        r13[3] <= (f2[3] ^ f2[0])                            ^ r03[3] ;          
        r13[2] <= (f2[6] ^ f2[4]) ^ (f2[3]                   ^ r03[2]);
        r13[1] <= (f2[6] ^ f2[5]) ^ (f2[4]                   ^ r03[1]);
        r13[0] <= (f2[7] ^ f2[5]) ^ (f2[4] ^ f2[3])          ^ r03[0] ;
    end
    else begin
        r13<=8'd0;
    end
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        r03<=8'd0;
    end
    else if (valid2==1'b1) begin
                r03[7] <= (f2[7] ^ f2[6]) ^ (f2[5] ^ f2[1]);
                r03[6] <= (f2[6] ^ f2[5]) ^ (f2[4] ^ f2[0]);
                r03[5] <= (f2[5] ^ f2[4]) ^  f2[3];
                r03[4] <= (f2[4] ^ f2[3]) ^  f2[2];   
                r03[3] <= (f2[6] ^ f2[5]) ^ (f2[3] ^ f2[2]);
                r03[2] <= (f2[7] ^ f2[6]) ^ (f2[4] ^ f2[2]);
                r03[1] <= (f2[7] ^ f2[3]);  
                r03[0] <= (f2[7] ^ f2[6]) ^  f2[2];
    end
    else begin
        r03<=8'd0;
    end
end

reg [7:0] counter;
wire _SE4_1=(counter==8'd251)?1'b1:1'b0;
wire _SE4_2=_SE4_1;
wire _SE4_2_n=~_SE4_1;
reg SE4;
reg SE4_n;
reg [7:0] r24;
reg [7:0] r14;
reg [7:0] r04;
(* KEEP="TRUE" *)reg [7:0] m4_e;
(* KEEP="TRUE" *)reg [7:0] m4_00;
(* KEEP="TRUE" *)reg [7:0] m4_01;
reg valid4;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid4<=1'b0;
    end
    else if (valid3==1'b1) begin
        valid4<=1'b1;
    end
    else begin
        valid4<=1'b0;
    end
end
always@(posedge clk) begin
    m4_e<=m3;
end
always@(posedge clk) begin
    m4_00<=m3;
    m4_01<=m3;
end
always@(posedge clk) begin
    r24<=r23;
end
always@(posedge clk) begin
    r14<=r13;
end
always@(posedge clk) begin
    r04<=r03;
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        counter<=8'd0;
    end
    else if(_SE4_1==1'b1) begin
        counter<=8'd0;
    end
    else if (valid3==1'b1) begin
        counter<=counter+8'd1;
    end
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        SE4<=1'd0;
    end
    else begin
        SE4<=_SE4_2;
    end
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        SE4_n<=1'd0;
    end
    else begin
        SE4_n<=_SE4_2_n;
    end
end


wire [7:0] rp;//bypass rp5

//if exceed 252
reg [7:0] rpe1;
reg [7:0] roe1;
reg [7:0] r0e1;
reg [7:0] r1e1;
reg [7:0] r2e1;
reg valide1;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valide1<=1'b0;
    end
    else if ((valid4&SE4)==1'b1) begin
        valide1<=1'b1;
    end
    else begin
        valide1<=1'b0;
    end
end
always@(posedge clk) begin
    rpe1<=rp^r24;
end
always@(posedge clk) begin
    roe1<=m4_e;
end
always@(posedge clk) begin
    r0e1<=r04;
end
always@(posedge clk) begin
    r1e1<=r14;
end
always@(posedge clk) begin
    r2e1<=r24;
end

reg valide2;
reg [7:0] roe2;
reg [7:0] rpe2;
reg [7:0] r0e2;
reg [7:0] r1e2;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valide2<=1'b0;
    end
    else if (valide1==1'b1) begin
        valide2<=1'b1;
    end
    else begin
        valide2<=1'b0;
    end
end
always@(posedge clk) begin
    rpe2<=rpe1^r1e1;
end
always@(posedge clk) begin
    r0e2<=r0e1;
end
always@(posedge clk) begin
    r1e2<=r1e1;
end
always@(posedge clk) begin
    roe2<=r2e1;
end


reg valide3;
reg [7:0] roe3;
reg [7:0] rpe3;
reg [7:0] r0e3;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valide3<=1'b0;
    end
    else if (valide2==1'b1) begin
        valide3<=1'b1;
    end
    else begin
        valide3<=1'b0;
    end
end
always@(posedge clk) begin
    rpe3<=rpe2^r0e2;
end
always@(posedge clk) begin
    r0e3<=r0e2;
end
always@(posedge clk) begin
    roe3<=r1e2;
end


reg valide4;
reg [7:0] roe4;
reg [7:0] rpe4;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valide4<=1'b0;
    end
    else if (valide3==1'b1) begin
        valide4<=1'b1;
    end
    else begin
        valide4<=1'b0;
    end
end
always@(posedge clk) begin
    rpe4<=rpe3;
end
always@(posedge clk) begin
    roe4<=r0e3;
end


reg valide5;
reg [7:0] roe5;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valide5<=1'b0;
    end
    else if (valide4==1'b1) begin
        valide5<=1'b1;
    end
    else begin
        valide5<=1'b0;
    end
end
always@(posedge clk) begin
    roe5<=rpe4;
end


//if net exceed 252
reg valid5;
reg [7:0] ro5;
reg [7:0] rp5;
assign rp=rp5;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid5<=1'b0;
    end
    else if (valid4&SE4_n==1'b1) begin
        valid5<=1'b1;
    end
    else begin
        valid5<=1'b0;
    end
end
always@(posedge clk) begin
    ro5<=m4_00;
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        rp5<=8'b0;
    end
    else if (valid4&SE4_n==1'b1) begin
        rp5<=rp5^m4_01;
    end
    else begin
        rp5<=8'd0;
    end
end


///output R
reg [7:0] Ro;
reg valid;
wire [7:0] _Ro={8{valid5}}&ro5|
           {8{valide1}}& roe1|
           {8{valide2}}& roe2|
           {8{valide3}}& roe3|
           {8{valide4}}& roe4|
           {8{valide5}}& roe5;
always@(posedge clk) begin
    Ro<=_Ro;
end
wire _valid=(valid5|valide1|valide2|valide3|valide4|valide5)?1'b1:1'b0;
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        valid<=1'b0;
    end
    else begin
        valid<=_valid;
    end
end

always@(posedge clk) begin
    axis_ous_tdata<=Ro;
end
always@(posedge clk) begin
    if(rst_n_3==1'b0) begin
        axis_ous_valid<=1'b0;
    end
    else begin
        axis_ous_valid<=valid;
    end
end
endmodule
