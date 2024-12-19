`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/22 16:54:34
// Design Name: 
// Module Name: ECC_array
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
//连续输入252个symbol后间隔4个clk在继续输入

module ECC_array(
input clk,
input rst_n,

input [127:0] axis_ins_tdata,
input axis_ins_tvalid,
output axis_ins_tready,

output [127:0] axis_ous_tdata,
output axis_ous_valid,
input axis_ous_ready//empty signal
    );
    
wire [7:0] axis_ous_tdata0;
ECC_MODULE v_ECC_MODULE_0(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[7:0]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(axis_ins_tready),
.axis_ous_tdata(axis_ous_tdata0),
.axis_ous_valid(axis_ous_valid),
.axis_ous_ready()//empty signal
);

wire [7:0] axis_ous_tdata1;
ECC_MODULE v_ECC_MODULE_1(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[15:8]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata1),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata2;
ECC_MODULE v_ECC_MODULE_2(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[23:16]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata2),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata3;
ECC_MODULE v_ECC_MODULE_3(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[31:24]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata3),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata4;
ECC_MODULE v_ECC_MODULE_4(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[39:32]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata4),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata5;
ECC_MODULE v_ECC_MODULE_5(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[47:40]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata5),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata6;
ECC_MODULE v_ECC_MODULE_6(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[55:48]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata6),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata7;
ECC_MODULE v_ECC_MODULE_7(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[63:56]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata7),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata8;
ECC_MODULE v_ECC_MODULE_8(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[71:64]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata8),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata9;
ECC_MODULE v_ECC_MODULE_9(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[79:72]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata9),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata10;
ECC_MODULE v_ECC_MODULE_10(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[87:80]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata10),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata11;
ECC_MODULE v_ECC_MODULE_11(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[95:88]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata11),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata12;
ECC_MODULE v_ECC_MODULE_12(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[103:96]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata12),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata13;
ECC_MODULE v_ECC_MODULE_13(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[111:104]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata13),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata14;
ECC_MODULE v_ECC_MODULE_14(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[119:112]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata14),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);



wire [7:0] axis_ous_tdata15;
ECC_MODULE v_ECC_MODULE_15(
.clk(clk),
.rst_n(rst_n),
.axis_ins_tdata(axis_ins_tdata[127:120]),
.axis_ins_tvalid(axis_ins_tvalid),
.axis_ins_tready(),
.axis_ous_tdata(axis_ous_tdata15),
.axis_ous_valid(),
.axis_ous_ready()//empty signal
);

assign axis_ous_tdata=
{axis_ous_tdata0,
axis_ous_tdata1,
axis_ous_tdata2,
axis_ous_tdata3,
axis_ous_tdata4,
axis_ous_tdata5,
axis_ous_tdata6,
axis_ous_tdata7,
axis_ous_tdata8,
axis_ous_tdata9,
axis_ous_tdata10,
axis_ous_tdata11,
axis_ous_tdata12,
axis_ous_tdata13,
axis_ous_tdata14,
axis_ous_tdata15
};
endmodule
