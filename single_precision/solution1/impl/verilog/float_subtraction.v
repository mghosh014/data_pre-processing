// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="float_subtraction,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z045-ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.588000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=997,HLS_SYN_LUT=1874,HLS_VERSION=2019_2}" *)

module float_subtraction (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_V_dout,
        a_V_empty_n,
        a_V_read,
        b_V_dout,
        b_V_empty_n,
        b_V_read,
        c_V_din,
        c_V_full_n,
        c_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state16 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] a_V_dout;
input   a_V_empty_n;
output   a_V_read;
input  [15:0] b_V_dout;
input   b_V_empty_n;
output   b_V_read;
output  [15:0] c_V_din;
input   c_V_full_n;
output   c_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_V_read;
reg b_V_read;
reg c_V_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    a_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_nbreadreq_fu_44_p3;
wire   [0:0] tmp_1_nbreadreq_fu_52_p3;
reg    b_V_blk_n;
reg    c_V_blk_n;
reg    ap_enable_reg_pp0_iter13;
reg   [0:0] tmp_1_reg_109;
reg   [0:0] tmp_1_reg_109_pp0_iter12_reg;
reg    ap_predicate_op29_read_state2;
reg    ap_predicate_op30_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_state14_pp0_stage0_iter12;
reg    ap_block_state15_pp0_stage0_iter13;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_1_reg_109_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter4_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter5_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter6_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter7_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter8_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter9_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter10_reg;
reg   [0:0] tmp_1_reg_109_pp0_iter11_reg;
reg   [15:0] tmp_3_reg_113;
reg   [15:0] tmp_4_reg_118;
wire   [31:0] grp_fu_88_p1;
reg   [31:0] d_reg_133;
wire   [31:0] grp_fu_91_p1;
reg   [31:0] e_reg_138;
wire   [31:0] grp_fu_79_p2;
reg   [31:0] tmp_5_reg_143;
wire   [31:0] grp_fu_83_p2;
reg   [31:0] f_reg_148;
reg    ap_block_pp0_stage0_subdone;
reg    ap_predicate_tran2to16_state2;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
wire   [15:0] grp_fu_94_p1;
reg    ap_block_pp0_stage0_01001;
wire  signed [31:0] grp_fu_88_p0;
wire  signed [31:0] grp_fu_91_p0;
reg    grp_fu_79_ce;
reg    grp_fu_83_ce;
reg    grp_fu_88_ce;
reg    grp_fu_91_ce;
reg    grp_fu_94_ce;
wire    ap_CS_fsm_state16;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
end

float_subtractionbkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
float_subtractionbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(d_reg_133),
    .din1(e_reg_138),
    .ce(grp_fu_79_ce),
    .dout(grp_fu_79_p2)
);

float_subtractioncud #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
float_subtractioncud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_5_reg_143),
    .din1(32'd958013595),
    .ce(grp_fu_83_ce),
    .dout(grp_fu_83_p2)
);

float_subtractiondEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
float_subtractiondEe_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_88_p0),
    .ce(grp_fu_88_ce),
    .dout(grp_fu_88_p1)
);

float_subtractiondEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
float_subtractiondEe_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_91_p0),
    .ce(grp_fu_91_ce),
    .dout(grp_fu_91_p1)
);

float_subtractioneOg #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
float_subtractioneOg_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(f_reg_148),
    .ce(grp_fu_94_ce),
    .dout(grp_fu_94_p1)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter13 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_109_pp0_iter3_reg == 1'd1))) begin
        d_reg_133 <= grp_fu_88_p1;
        e_reg_138 <= grp_fu_91_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_109_pp0_iter10_reg == 1'd1))) begin
        f_reg_148 <= grp_fu_83_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_44_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_109 <= tmp_1_nbreadreq_fu_52_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_1_reg_109_pp0_iter10_reg <= tmp_1_reg_109_pp0_iter9_reg;
        tmp_1_reg_109_pp0_iter11_reg <= tmp_1_reg_109_pp0_iter10_reg;
        tmp_1_reg_109_pp0_iter12_reg <= tmp_1_reg_109_pp0_iter11_reg;
        tmp_1_reg_109_pp0_iter2_reg <= tmp_1_reg_109_pp0_iter1_reg;
        tmp_1_reg_109_pp0_iter3_reg <= tmp_1_reg_109_pp0_iter2_reg;
        tmp_1_reg_109_pp0_iter4_reg <= tmp_1_reg_109_pp0_iter3_reg;
        tmp_1_reg_109_pp0_iter5_reg <= tmp_1_reg_109_pp0_iter4_reg;
        tmp_1_reg_109_pp0_iter6_reg <= tmp_1_reg_109_pp0_iter5_reg;
        tmp_1_reg_109_pp0_iter7_reg <= tmp_1_reg_109_pp0_iter6_reg;
        tmp_1_reg_109_pp0_iter8_reg <= tmp_1_reg_109_pp0_iter7_reg;
        tmp_1_reg_109_pp0_iter9_reg <= tmp_1_reg_109_pp0_iter8_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_109_pp0_iter1_reg <= tmp_1_reg_109;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op29_read_state2 == 1'b1))) begin
        tmp_3_reg_113 <= a_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_read_state2 == 1'b1))) begin
        tmp_4_reg_118 <= b_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_109_pp0_iter7_reg == 1'd1))) begin
        tmp_5_reg_143 <= grp_fu_79_p2;
    end
end

always @ (*) begin
    if (((tmp_1_nbreadreq_fu_52_p3 == 1'd1) & (tmp_nbreadreq_fu_44_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_V_blk_n = a_V_empty_n;
    end else begin
        a_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op29_read_state2 == 1'b1))) begin
        a_V_read = 1'b1;
    end else begin
        a_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((ap_predicate_tran2to16_state2 == 1'b1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_nbreadreq_fu_52_p3 == 1'd1) & (tmp_nbreadreq_fu_44_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_V_blk_n = b_V_empty_n;
    end else begin
        b_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_read_state2 == 1'b1))) begin
        b_V_read = 1'b1;
    end else begin
        b_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        c_V_blk_n = c_V_full_n;
    end else begin
        c_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        c_V_write = 1'b1;
    end else begin
        c_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_79_ce = 1'b1;
    end else begin
        grp_fu_79_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_83_ce = 1'b1;
    end else begin
        grp_fu_83_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_88_ce = 1'b1;
    end else begin
        grp_fu_88_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_91_ce = 1'b1;
    end else begin
        grp_fu_91_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_94_ce = 1'b1;
    end else begin
        grp_fu_94_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_tran2to16_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter13 == 1'b1) & (ap_enable_reg_pp0_iter12 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter13 == 1'b1) & (ap_enable_reg_pp0_iter12 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_tran2to16_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (c_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((b_V_empty_n == 1'b0) & (ap_predicate_op30_read_state2 == 1'b1)) | ((1'b0 == a_V_empty_n) & (ap_predicate_op29_read_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (c_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((b_V_empty_n == 1'b0) & (ap_predicate_op30_read_state2 == 1'b1)) | ((1'b0 == a_V_empty_n) & (ap_predicate_op29_read_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (c_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((b_V_empty_n == 1'b0) & (ap_predicate_op30_read_state2 == 1'b1)) | ((1'b0 == a_V_empty_n) & (ap_predicate_op29_read_state2 == 1'b1)))));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state15_pp0_stage0_iter13 = ((tmp_1_reg_109_pp0_iter12_reg == 1'd1) & (c_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((b_V_empty_n == 1'b0) & (ap_predicate_op30_read_state2 == 1'b1)) | ((1'b0 == a_V_empty_n) & (ap_predicate_op29_read_state2 == 1'b1)));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op29_read_state2 = ((tmp_1_nbreadreq_fu_52_p3 == 1'd1) & (tmp_nbreadreq_fu_44_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op30_read_state2 = ((tmp_1_nbreadreq_fu_52_p3 == 1'd1) & (tmp_nbreadreq_fu_44_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_tran2to16_state2 = ((tmp_1_nbreadreq_fu_52_p3 == 1'd0) | (tmp_nbreadreq_fu_44_p3 == 1'd0));
end

assign c_V_din = grp_fu_94_p1;

assign grp_fu_88_p0 = $signed(tmp_3_reg_113);

assign grp_fu_91_p0 = $signed(tmp_4_reg_118);

assign tmp_1_nbreadreq_fu_52_p3 = b_V_empty_n;

assign tmp_nbreadreq_fu_44_p3 = a_V_empty_n;

endmodule //float_subtraction
