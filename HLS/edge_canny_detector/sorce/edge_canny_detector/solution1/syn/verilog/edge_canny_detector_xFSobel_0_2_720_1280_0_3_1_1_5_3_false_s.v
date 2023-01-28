// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module edge_canny_detector_xFSobel_0_2_720_1280_0_3_1_1_5_3_false_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        gaussian_mat_4209_dout,
        gaussian_mat_4209_empty_n,
        gaussian_mat_4209_read,
        gradx_mat_4210_din,
        gradx_mat_4210_full_n,
        gradx_mat_4210_write,
        grady_mat_4213_din,
        grady_mat_4213_full_n,
        grady_mat_4213_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] gaussian_mat_4209_dout;
input   gaussian_mat_4209_empty_n;
output   gaussian_mat_4209_read;
output  [15:0] gradx_mat_4210_din;
input   gradx_mat_4210_full_n;
output   gradx_mat_4210_write;
output  [15:0] grady_mat_4213_din;
input   grady_mat_4213_full_n;
output   grady_mat_4213_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg gaussian_mat_4209_read;
reg gradx_mat_4210_write;
reg grady_mat_4213_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_idle;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_ready;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gaussian_mat_4209_read;
wire   [15:0] grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_din;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_write;
wire   [15:0] grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_din;
wire    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_write;
reg    grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg;
reg    ap_block_state1_ignore_call3;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_block_state1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg = 1'b0;
end

edge_canny_detector_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start),
    .ap_done(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done),
    .ap_idle(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_idle),
    .ap_ready(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_ready),
    .gaussian_mat_4209_dout(gaussian_mat_4209_dout),
    .gaussian_mat_4209_empty_n(gaussian_mat_4209_empty_n),
    .gaussian_mat_4209_read(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gaussian_mat_4209_read),
    .gradx_mat_4210_din(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_din),
    .gradx_mat_4210_full_n(gradx_mat_4210_full_n),
    .gradx_mat_4210_write(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_write),
    .grady_mat_4213_din(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_din),
    .grady_mat_4213_full_n(grady_mat_4213_full_n),
    .grady_mat_4213_write(grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg <= 1'b0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg <= 1'b1;
        end else if ((grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_ready == 1'b1)) begin
            grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gaussian_mat_4209_read = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gaussian_mat_4209_read;
    end else begin
        gaussian_mat_4209_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gradx_mat_4210_write = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_write;
    end else begin
        gradx_mat_4210_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grady_mat_4213_write = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_write;
    end else begin
        grady_mat_4213_write = 1'b0;
    end
end

always @ (*) begin
    if (((grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call3 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign gradx_mat_4210_din = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_gradx_mat_4210_din;

assign grady_mat_4213_din = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_grady_mat_4213_din;

assign grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start = grp_xFSobel3x3_0_2_720_1280_0_3_1_1_5_1281_3_9_false_s_fu_16_ap_start_reg;

assign start_out = real_start;

endmodule //edge_canny_detector_xFSobel_0_2_720_1280_0_3_1_1_5_3_false_s
