// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Sun Mar  7 00:59:05 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode funcsim
//               /home/david/ebaz4205/projects/Display_LEDs/Display_LEDs.srcs/sources_1/bd/design_1/ip/design_1_tm1638_demo_0_0/design_1_tm1638_demo_0_0_sim_netlist.v
// Design      : design_1_tm1638_demo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tm1638_demo_0_0,tm1638_demo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tm1638_demo,Vivado 2020.2.1" *) 
(* NotValidForBitStream *)
module design_1_tm1638_demo_0_0
   (clk,
    tm_cs,
    tm_clk,
    tm_rw,
    tm_dio);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output tm_cs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tm_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tm_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_tm1638_demo_0_0_tm_clk, INSERT_VIP 0" *) output tm_clk;
  output tm_rw;
  inout tm_dio;

  wire clk;
  wire tm_clk;
  wire tm_cs;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVCMOS33" *) 
  (* SLEW = "SLOW" *) wire tm_dio;
  wire tm_rw;

  design_1_tm1638_demo_0_0_tm1638_demo inst
       (.clk(clk),
        .tm_clk(tm_clk),
        .tm_cs(tm_cs),
        .tm_dio(tm_dio),
        .tm_rw_reg_0(tm_rw));
endmodule

(* ORIG_REF_NAME = "tm1638" *) 
module design_1_tm1638_demo_0_0_tm1638
   (dio_out,
    \data_out_q_reg[4]_0 ,
    tm_rw_,
    tm_latch_reg,
    tm_clk,
    \instruction_step_reg[1] ,
    \instruction_step_reg[1]_0 ,
    E,
    instruction_step0,
    \instruction_step_reg[3] ,
    \instruction_step_reg[5] ,
    rst,
    clk,
    Q,
    \data_q_reg[6]_0 ,
    tm_latch,
    counter_reg,
    tm_latch_reg_0,
    tm_cs_reg,
    \tm_out_reg[0] ,
    dio_in,
    tm_rw_reg,
    tm_rw_reg_0,
    tm_cs_reg_0,
    tm_cs);
  output dio_out;
  output [1:0]\data_out_q_reg[4]_0 ;
  output tm_rw_;
  output tm_latch_reg;
  output tm_clk;
  output \instruction_step_reg[1] ;
  output \instruction_step_reg[1]_0 ;
  output [0:0]E;
  output instruction_step0;
  output \instruction_step_reg[3] ;
  output \instruction_step_reg[5] ;
  input rst;
  input clk;
  input [7:0]Q;
  input \data_q_reg[6]_0 ;
  input tm_latch;
  input [0:0]counter_reg;
  input tm_latch_reg_0;
  input [5:0]tm_cs_reg;
  input \tm_out_reg[0] ;
  input dio_in;
  input tm_rw_reg;
  input tm_rw_reg_0;
  input tm_cs_reg_0;
  input tm_cs;

  wire [0:0]E;
  wire \FSM_onehot_cur_state[0]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_2_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_2_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_3_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  wire [7:0]Q;
  wire clk;
  wire [0:0]counter_reg;
  wire [2:0]ctr_q;
  wire \ctr_q[0]_i_1_n_0 ;
  wire \ctr_q[1]_i_1_n_0 ;
  wire \ctr_q[2]_i_1_n_0 ;
  wire data_d;
  wire data_out_d;
  wire [7:0]data_out_q;
  wire [1:0]\data_out_q_reg[4]_0 ;
  wire [7:0]data_q;
  wire \data_q[0]_i_1_n_0 ;
  wire \data_q[1]_i_1_n_0 ;
  wire \data_q[2]_i_1_n_0 ;
  wire \data_q[3]_i_1_n_0 ;
  wire \data_q[4]_i_1_n_0 ;
  wire \data_q[5]_i_1_n_0 ;
  wire \data_q[6]_i_1_n_0 ;
  wire \data_q[7]_i_2_n_0 ;
  wire \data_q_reg[6]_0 ;
  wire dio_in;
  wire dio_out;
  wire dio_out_i_1_n_0;
  wire dio_out_i_2_n_0;
  wire dio_out_i_3_n_0;
  wire dio_out_i_4_n_0;
  wire instruction_step0;
  wire \instruction_step_reg[1] ;
  wire \instruction_step_reg[1]_0 ;
  wire \instruction_step_reg[3] ;
  wire \instruction_step_reg[5] ;
  wire p_0_in__0;
  wire rst;
  wire sclk_d;
  wire \sclk_q[0]_i_1_n_0 ;
  wire \sclk_q[1]_i_1_n_0 ;
  wire \sclk_q[2]_i_1_n_0 ;
  wire \sclk_q[3]_i_1_n_0 ;
  wire \sclk_q[4]_i_1_n_0 ;
  wire \sclk_q[4]_i_2_n_0 ;
  wire \sclk_q[5]_i_1_n_0 ;
  wire \sclk_q[5]_i_2_n_0 ;
  wire \sclk_q[6]_i_2_n_0 ;
  wire \sclk_q_reg_n_0_[0] ;
  wire \sclk_q_reg_n_0_[1] ;
  wire \sclk_q_reg_n_0_[2] ;
  wire \sclk_q_reg_n_0_[3] ;
  wire \sclk_q_reg_n_0_[4] ;
  wire \sclk_q_reg_n_0_[5] ;
  wire tm_clk;
  wire tm_cs;
  wire tm_cs1_out;
  wire tm_cs_i_4_n_0;
  wire [5:0]tm_cs_reg;
  wire tm_cs_reg_0;
  wire [7:1]tm_data;
  wire tm_latch;
  wire tm_latch_reg;
  wire tm_latch_reg_0;
  wire \tm_out_reg[0] ;
  wire tm_rw_;
  wire tm_rw_reg;
  wire tm_rw_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_cur_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .O(\FSM_onehot_cur_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004F40)) 
    \FSM_onehot_cur_state[0]_i_2 
       (.I0(\FSM_onehot_cur_state[0]_i_3_n_0 ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(p_0_in__0),
        .I3(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_cur_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_cur_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_cur_state[0]_i_3 
       (.I0(ctr_q[2]),
        .I1(ctr_q[1]),
        .I2(ctr_q[0]),
        .O(\FSM_onehot_cur_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5040FAFA5040)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(data_out_d),
        .I1(p_0_in__0),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I5(tm_latch),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F5F5F0F0A0B0)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(data_out_d),
        .I1(p_0_in__0),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_cur_state[2]_i_3_n_0 ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\FSM_onehot_cur_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_cur_state[2]_i_2 
       (.I0(\sclk_q_reg_n_0_[3] ),
        .I1(\sclk_q_reg_n_0_[4] ),
        .I2(\sclk_q_reg_n_0_[0] ),
        .I3(\sclk_q_reg_n_0_[1] ),
        .I4(\sclk_q_reg_n_0_[2] ),
        .I5(\sclk_q_reg_n_0_[5] ),
        .O(\FSM_onehot_cur_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[2]_i_3 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(tm_latch),
        .O(\FSM_onehot_cur_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_WAIT:010,S_TRANSFER:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_WAIT:010,S_TRANSFER:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_WAIT:010,S_TRANSFER:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \ctr_q[0]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(p_0_in__0),
        .I2(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I3(ctr_q[0]),
        .O(\ctr_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \ctr_q[1]_i_1 
       (.I0(ctr_q[0]),
        .I1(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I2(p_0_in__0),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(ctr_q[1]),
        .O(\ctr_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \ctr_q[2]_i_1 
       (.I0(ctr_q[1]),
        .I1(ctr_q[0]),
        .I2(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I3(p_0_in__0),
        .I4(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I5(ctr_q[2]),
        .O(\ctr_q[2]_i_1_n_0 ));
  FDRE \ctr_q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctr_q[0]_i_1_n_0 ),
        .Q(ctr_q[0]),
        .R(rst));
  FDRE \ctr_q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctr_q[1]_i_1_n_0 ),
        .Q(ctr_q[1]),
        .R(rst));
  FDRE \ctr_q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctr_q[2]_i_1_n_0 ),
        .Q(ctr_q[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \data_out_q[7]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(p_0_in__0),
        .I2(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I3(ctr_q[0]),
        .I4(ctr_q[1]),
        .I5(ctr_q[2]),
        .O(data_out_d));
  FDRE \data_out_q_reg[0] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[0]),
        .Q(data_out_q[0]),
        .R(rst));
  FDRE \data_out_q_reg[1] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[1]),
        .Q(data_out_q[1]),
        .R(rst));
  FDRE \data_out_q_reg[2] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[2]),
        .Q(data_out_q[2]),
        .R(rst));
  FDRE \data_out_q_reg[3] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[3]),
        .Q(data_out_q[3]),
        .R(rst));
  FDRE \data_out_q_reg[4] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[4]),
        .Q(data_out_q[4]),
        .R(rst));
  FDRE \data_out_q_reg[5] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[5]),
        .Q(data_out_q[5]),
        .R(rst));
  FDRE \data_out_q_reg[6] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[6]),
        .Q(data_out_q[6]),
        .R(rst));
  FDRE \data_out_q_reg[7] 
       (.C(clk),
        .CE(data_out_d),
        .D(data_q[7]),
        .Q(data_out_q[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[0]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(\data_out_q_reg[4]_0 [0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[1]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[0]_i_2 
       (.I0(data_out_q[0]),
        .I1(tm_rw_),
        .I2(Q[0]),
        .I3(\data_q_reg[6]_0 ),
        .O(\data_out_q_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[1]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[1]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[2]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[1]_i_2 
       (.I0(data_out_q[1]),
        .I1(tm_rw_),
        .I2(Q[1]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[2]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[2]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[3]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[2]_i_2 
       (.I0(data_out_q[2]),
        .I1(tm_rw_),
        .I2(Q[2]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[3]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[3]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[4]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[3]_i_2 
       (.I0(data_out_q[3]),
        .I1(tm_rw_),
        .I2(Q[3]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[4]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(\data_out_q_reg[4]_0 [1]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[5]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[4]_i_2 
       (.I0(data_out_q[4]),
        .I1(tm_rw_),
        .I2(Q[4]),
        .I3(\data_q_reg[6]_0 ),
        .O(\data_out_q_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[5]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[5]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[6]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[5]_i_2 
       (.I0(data_out_q[5]),
        .I1(tm_rw_),
        .I2(Q[5]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \data_q[6]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[6]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(data_q[7]),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\data_q[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[6]_i_2 
       (.I0(data_out_q[6]),
        .I1(tm_rw_),
        .I2(Q[6]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[6]));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \data_q[7]_i_1 
       (.I0(tm_latch),
        .I1(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I2(p_0_in__0),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .O(data_d));
  LUT6 #(
    .INIT(64'hFFFFFF80FFFF8080)) 
    \data_q[7]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\data_q_reg[6]_0 ),
        .I2(tm_data[7]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I5(dio_in),
        .O(\data_q[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_q[7]_i_3 
       (.I0(data_out_q[7]),
        .I1(tm_rw_),
        .I2(Q[7]),
        .I3(\data_q_reg[6]_0 ),
        .O(tm_data[7]));
  FDRE \data_q_reg[0] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[0]_i_1_n_0 ),
        .Q(data_q[0]),
        .R(rst));
  FDRE \data_q_reg[1] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[1]_i_1_n_0 ),
        .Q(data_q[1]),
        .R(rst));
  FDRE \data_q_reg[2] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[2]_i_1_n_0 ),
        .Q(data_q[2]),
        .R(rst));
  FDRE \data_q_reg[3] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[3]_i_1_n_0 ),
        .Q(data_q[3]),
        .R(rst));
  FDRE \data_q_reg[4] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[4]_i_1_n_0 ),
        .Q(data_q[4]),
        .R(rst));
  FDRE \data_q_reg[5] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[5]_i_1_n_0 ),
        .Q(data_q[5]),
        .R(rst));
  FDRE \data_q_reg[6] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[6]_i_1_n_0 ),
        .Q(data_q[6]),
        .R(rst));
  FDRE \data_q_reg[7] 
       (.C(clk),
        .CE(data_d),
        .D(\data_q[7]_i_2_n_0 ),
        .Q(data_q[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    dio_out_i_1
       (.I0(dio_out_i_2_n_0),
        .I1(data_q[0]),
        .I2(p_0_in__0),
        .I3(data_out_d),
        .I4(dio_out_i_3_n_0),
        .I5(dio_out),
        .O(dio_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dio_out_i_2
       (.I0(\sclk_q_reg_n_0_[2] ),
        .I1(\sclk_q_reg_n_0_[3] ),
        .I2(\sclk_q_reg_n_0_[1] ),
        .I3(\sclk_q_reg_n_0_[0] ),
        .I4(\sclk_q_reg_n_0_[4] ),
        .I5(\sclk_q_reg_n_0_[5] ),
        .O(dio_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0081000100000000)) 
    dio_out_i_3
       (.I0(\sclk_q_reg_n_0_[3] ),
        .I1(\sclk_q_reg_n_0_[4] ),
        .I2(\sclk_q_reg_n_0_[5] ),
        .I3(tm_clk),
        .I4(\sclk_q[5]_i_2_n_0 ),
        .I5(dio_out_i_4_n_0),
        .O(dio_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    dio_out_i_4
       (.I0(\sclk_q_reg_n_0_[0] ),
        .I1(\sclk_q_reg_n_0_[1] ),
        .I2(\sclk_q_reg_n_0_[3] ),
        .I3(\sclk_q_reg_n_0_[2] ),
        .O(dio_out_i_4_n_0));
  FDRE dio_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(dio_out_i_1_n_0),
        .Q(dio_out),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \instruction_step[5]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(counter_reg),
        .O(instruction_step0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \keys[6]_i_2 
       (.I0(tm_cs_i_4_n_0),
        .I1(tm_cs_reg[1]),
        .I2(tm_cs_reg[3]),
        .I3(tm_cs_reg[0]),
        .I4(tm_cs_reg[2]),
        .I5(tm_cs_reg[5]),
        .O(\instruction_step_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \keys[7]_i_2 
       (.I0(tm_cs_i_4_n_0),
        .I1(tm_cs_reg[1]),
        .I2(tm_cs_reg[3]),
        .I3(tm_cs_reg[0]),
        .I4(tm_cs_reg[2]),
        .I5(tm_cs_reg[5]),
        .O(\instruction_step_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \sclk_q[0]_i_1 
       (.I0(\sclk_q_reg_n_0_[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\sclk_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \sclk_q[1]_i_1 
       (.I0(\sclk_q_reg_n_0_[0] ),
        .I1(\sclk_q_reg_n_0_[1] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\sclk_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78787800)) 
    \sclk_q[2]_i_1 
       (.I0(\sclk_q_reg_n_0_[0] ),
        .I1(\sclk_q_reg_n_0_[1] ),
        .I2(\sclk_q_reg_n_0_[2] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\sclk_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F807F807F800000)) 
    \sclk_q[3]_i_1 
       (.I0(\sclk_q_reg_n_0_[2] ),
        .I1(\sclk_q_reg_n_0_[1] ),
        .I2(\sclk_q_reg_n_0_[0] ),
        .I3(\sclk_q_reg_n_0_[3] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\sclk_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \sclk_q[4]_i_1 
       (.I0(\sclk_q_reg_n_0_[3] ),
        .I1(\sclk_q_reg_n_0_[0] ),
        .I2(\sclk_q_reg_n_0_[1] ),
        .I3(\sclk_q_reg_n_0_[2] ),
        .I4(\sclk_q_reg_n_0_[4] ),
        .I5(\sclk_q[4]_i_2_n_0 ),
        .O(\sclk_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sclk_q[4]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\sclk_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF708F708F7080000)) 
    \sclk_q[5]_i_1 
       (.I0(\sclk_q_reg_n_0_[3] ),
        .I1(\sclk_q_reg_n_0_[4] ),
        .I2(\sclk_q[5]_i_2_n_0 ),
        .I3(\sclk_q_reg_n_0_[5] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(\sclk_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sclk_q[5]_i_2 
       (.I0(\sclk_q_reg_n_0_[0] ),
        .I1(\sclk_q_reg_n_0_[1] ),
        .I2(\sclk_q_reg_n_0_[2] ),
        .O(\sclk_q[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sclk_q[6]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(sclk_d));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC380)) 
    \sclk_q[6]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I1(p_0_in__0),
        .I2(\FSM_onehot_cur_state[2]_i_2_n_0 ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\sclk_q[6]_i_2_n_0 ));
  FDRE \sclk_q_reg[0] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[0]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[0] ),
        .R(rst));
  FDRE \sclk_q_reg[1] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[1]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[1] ),
        .R(rst));
  FDRE \sclk_q_reg[2] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[2]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[2] ),
        .R(rst));
  FDRE \sclk_q_reg[3] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[3]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[3] ),
        .R(rst));
  FDRE \sclk_q_reg[4] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[4]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[4] ),
        .R(rst));
  FDRE \sclk_q_reg[5] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[5]_i_1_n_0 ),
        .Q(\sclk_q_reg_n_0_[5] ),
        .R(rst));
  FDRE \sclk_q_reg[6] 
       (.C(clk),
        .CE(sclk_d),
        .D(\sclk_q[6]_i_2_n_0 ),
        .Q(p_0_in__0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sig_IOBUF_i_1
       (.I0(\data_q_reg[6]_0 ),
        .O(tm_rw_));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    tm_clk_INST_0
       (.I0(p_0_in__0),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(tm_clk));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    tm_cs_i_1
       (.I0(tm_cs_reg[5]),
        .I1(tm_cs_reg[1]),
        .I2(tm_cs_reg[3]),
        .I3(tm_cs_reg_0),
        .I4(tm_cs1_out),
        .I5(tm_cs),
        .O(\instruction_step_reg[5] ));
  LUT6 #(
    .INIT(64'h2025264000000000)) 
    tm_cs_i_3
       (.I0(tm_cs_reg[3]),
        .I1(tm_cs_reg[5]),
        .I2(tm_cs_reg[1]),
        .I3(tm_cs_reg[2]),
        .I4(tm_cs_reg[0]),
        .I5(tm_cs_i_4_n_0),
        .O(tm_cs1_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tm_cs_i_4
       (.I0(counter_reg),
        .I1(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I2(tm_cs_reg[4]),
        .O(tm_cs_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAEAAA00)) 
    tm_latch_i_1
       (.I0(tm_latch),
        .I1(counter_reg),
        .I2(tm_latch_reg_0),
        .I3(rst),
        .I4(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .O(tm_latch_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tm_out[7]_i_1 
       (.I0(\tm_out_reg[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I2(counter_reg),
        .I3(rst),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000E00)) 
    tm_rw_i_1
       (.I0(tm_cs_reg[3]),
        .I1(tm_rw_reg),
        .I2(tm_cs_reg[4]),
        .I3(instruction_step0),
        .I4(tm_rw_reg_0),
        .I5(\data_q_reg[6]_0 ),
        .O(\instruction_step_reg[3] ));
endmodule

(* ORIG_REF_NAME = "tm1638_demo" *) 
module design_1_tm1638_demo_0_0_tm1638_demo
   (tm_rw_reg_0,
    tm_clk,
    tm_cs,
    tm_dio,
    clk);
  output tm_rw_reg_0;
  output tm_clk;
  output tm_cs;
  inout tm_dio;
  input clk;

  wire clk;
  wire \counter[0]_i_2_n_0 ;
  wire [0:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [22:1]counter_reg__0;
  wire data11;
  wire data15;
  wire data5;
  wire data7;
  wire data9;
  wire dio_in;
  wire dio_out;
  wire g0_b0__0_n_0;
  wire g0_b0_n_0;
  wire instruction_step0;
  wire \instruction_step[2]_i_1_n_0 ;
  wire \instruction_step[3]_i_1_n_0 ;
  wire [5:0]instruction_step_reg;
  wire \keys[0]_i_1_n_0 ;
  wire \keys[1]_i_1_n_0 ;
  wire \keys[2]_i_1_n_0 ;
  wire \keys[3]_i_1_n_0 ;
  wire \keys[4]_i_1_n_0 ;
  wire \keys[5]_i_1_n_0 ;
  wire \keys[5]_i_2_n_0 ;
  wire \keys[6]_i_1_n_0 ;
  wire \keys[7]_i_1_n_0 ;
  wire \keys_reg_n_0_[0] ;
  wire \keys_reg_n_0_[1] ;
  wire \keys_reg_n_0_[2] ;
  wire \keys_reg_n_0_[3] ;
  wire \keys_reg_n_0_[4] ;
  wire \keys_reg_n_0_[5] ;
  wire \keys_reg_n_0_[6] ;
  wire \keys_reg_n_0_[7] ;
  wire \larson[0]_i_1_n_0 ;
  wire \larson[1]_i_1_n_0 ;
  wire \larson[2]_i_1_n_0 ;
  wire \larson[3]_i_1_n_0 ;
  wire \larson[4]_i_1_n_0 ;
  wire \larson[5]_i_1_n_0 ;
  wire \larson[6]_i_1_n_0 ;
  wire \larson[7]_i_2_n_0 ;
  wire \larson[7]_i_3_n_0 ;
  wire \larson[7]_i_4_n_0 ;
  wire \larson[7]_i_5_n_0 ;
  wire \larson[7]_i_6_n_0 ;
  wire \larson[7]_i_7_n_0 ;
  wire \larson[7]_i_8_n_0 ;
  wire larson_dir;
  wire larson_dir1;
  wire larson_dir_i_1_n_0;
  wire \larson_reg_n_0_[0] ;
  wire [5:0]p_0_in;
  wire p_0_in7_in;
  wire p_12_in;
  wire rst;
  wire tm_clk;
  wire tm_cs;
  wire tm_cs_i_2_n_0;
  wire [4:0]tm_data;
  wire tm_dio;
  wire tm_latch;
  wire [7:0]tm_out;
  wire \tm_out[0]_i_2_n_0 ;
  wire \tm_out[0]_i_3_n_0 ;
  wire \tm_out[0]_i_4_n_0 ;
  wire \tm_out[0]_i_5_n_0 ;
  wire \tm_out[0]_i_6_n_0 ;
  wire \tm_out[1]_i_2_n_0 ;
  wire \tm_out[1]_i_3_n_0 ;
  wire \tm_out[2]_i_2_n_0 ;
  wire \tm_out[2]_i_3_n_0 ;
  wire \tm_out[2]_i_4_n_0 ;
  wire \tm_out[2]_i_5_n_0 ;
  wire \tm_out[4]_i_2_n_0 ;
  wire \tm_out[4]_i_3_n_0 ;
  wire \tm_out[5]_i_2_n_0 ;
  wire \tm_out[5]_i_3_n_0 ;
  wire \tm_out[5]_i_4_n_0 ;
  wire \tm_out[6]_i_2_n_0 ;
  wire \tm_out[6]_i_3_n_0 ;
  wire \tm_out[6]_i_4_n_0 ;
  wire \tm_out[6]_i_5_n_0 ;
  wire \tm_out[7]_i_3_n_0 ;
  wire \tm_out[7]_i_4_n_0 ;
  wire \tm_out[7]_i_5_n_0 ;
  wire \tm_out[7]_i_6_n_0 ;
  wire \tm_out_reg_n_0_[0] ;
  wire \tm_out_reg_n_0_[1] ;
  wire \tm_out_reg_n_0_[2] ;
  wire \tm_out_reg_n_0_[3] ;
  wire \tm_out_reg_n_0_[4] ;
  wire \tm_out_reg_n_0_[5] ;
  wire \tm_out_reg_n_0_[6] ;
  wire \tm_out_reg_n_0_[7] ;
  wire tm_rw_;
  wire tm_rw_i_2_n_0;
  wire tm_rw_i_3_n_0;
  wire tm_rw_reg_0;
  wire u_tm1638_n_10;
  wire u_tm1638_n_11;
  wire u_tm1638_n_4;
  wire u_tm1638_n_6;
  wire u_tm1638_n_7;
  wire u_tm1638_n_8;
  wire [3:2]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[20]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg),
        .O(\counter[0]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg__0[3:1],\counter[0]_i_2_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg__0[10]),
        .R(rst));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg__0[11]),
        .R(rst));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg__0[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg__0[15:12]));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg__0[13]),
        .R(rst));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg__0[14]),
        .R(rst));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg__0[15]),
        .R(rst));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg__0[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg__0[19:16]));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg__0[17]),
        .R(rst));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg__0[18]),
        .R(rst));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg__0[19]),
        .R(rst));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg__0[1]),
        .R(rst));
  FDRE \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg__0[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [3:2],\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[20]_i_1_O_UNCONNECTED [3],\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({1'b0,counter_reg__0[22:20]}));
  FDRE \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg__0[21]),
        .R(rst));
  FDRE \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg__0[22]),
        .R(rst));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg__0[2]),
        .R(rst));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg__0[3]),
        .R(rst));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg__0[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg__0[7:4]));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg__0[5]),
        .R(rst));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg__0[6]),
        .R(rst));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg__0[7]),
        .R(rst));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg__0[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg__0[11:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg__0[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00000009FFFF22AC)) 
    g0_b0
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[2]),
        .I3(instruction_step_reg[3]),
        .I4(instruction_step_reg[4]),
        .I5(instruction_step_reg[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h00000009FFFF2004)) 
    g0_b0__0
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[2]),
        .I3(instruction_step_reg[3]),
        .I4(instruction_step_reg[4]),
        .I5(instruction_step_reg[5]),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \instruction_step[0]_i_1 
       (.I0(instruction_step_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \instruction_step[1]_i_1 
       (.I0(instruction_step_reg[1]),
        .I1(instruction_step_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \instruction_step[2]_i_1 
       (.I0(instruction_step_reg[2]),
        .I1(instruction_step_reg[0]),
        .I2(instruction_step_reg[1]),
        .O(\instruction_step[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \instruction_step[3]_i_1 
       (.I0(instruction_step_reg[3]),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[0]),
        .O(\instruction_step[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \instruction_step[4]_i_1 
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[3]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \instruction_step[5]_i_2 
       (.I0(instruction_step_reg[5]),
        .I1(instruction_step_reg[0]),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[3]),
        .I4(instruction_step_reg[2]),
        .I5(instruction_step_reg[4]),
        .O(p_0_in[5]));
  FDRE \instruction_step_reg[0] 
       (.C(clk),
        .CE(instruction_step0),
        .D(p_0_in[0]),
        .Q(instruction_step_reg[0]),
        .R(rst));
  FDRE \instruction_step_reg[1] 
       (.C(clk),
        .CE(instruction_step0),
        .D(p_0_in[1]),
        .Q(instruction_step_reg[1]),
        .R(rst));
  FDRE \instruction_step_reg[2] 
       (.C(clk),
        .CE(instruction_step0),
        .D(\instruction_step[2]_i_1_n_0 ),
        .Q(instruction_step_reg[2]),
        .R(rst));
  FDRE \instruction_step_reg[3] 
       (.C(clk),
        .CE(instruction_step0),
        .D(\instruction_step[3]_i_1_n_0 ),
        .Q(instruction_step_reg[3]),
        .R(rst));
  FDRE \instruction_step_reg[4] 
       (.C(clk),
        .CE(instruction_step0),
        .D(p_0_in[4]),
        .Q(instruction_step_reg[4]),
        .R(rst));
  FDRE \instruction_step_reg[5] 
       (.C(clk),
        .CE(instruction_step0),
        .D(p_0_in[5]),
        .Q(instruction_step_reg[5]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \keys[0]_i_1 
       (.I0(tm_data[4]),
        .I1(\keys[5]_i_2_n_0 ),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step0),
        .I5(\keys_reg_n_0_[0] ),
        .O(\keys[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \keys[1]_i_1 
       (.I0(tm_data[4]),
        .I1(\keys[5]_i_2_n_0 ),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step0),
        .I5(\keys_reg_n_0_[1] ),
        .O(\keys[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \keys[2]_i_1 
       (.I0(tm_data[4]),
        .I1(u_tm1638_n_6),
        .I2(\keys_reg_n_0_[2] ),
        .O(\keys[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \keys[3]_i_1 
       (.I0(tm_data[4]),
        .I1(u_tm1638_n_7),
        .I2(\keys_reg_n_0_[3] ),
        .O(\keys[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \keys[4]_i_1 
       (.I0(tm_data[0]),
        .I1(\keys[5]_i_2_n_0 ),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step0),
        .I5(\keys_reg_n_0_[4] ),
        .O(\keys[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \keys[5]_i_1 
       (.I0(tm_data[0]),
        .I1(\keys[5]_i_2_n_0 ),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step0),
        .I5(\keys_reg_n_0_[5] ),
        .O(\keys[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \keys[5]_i_2 
       (.I0(instruction_step_reg[5]),
        .I1(instruction_step_reg[3]),
        .I2(instruction_step_reg[4]),
        .I3(instruction_step_reg[0]),
        .O(\keys[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \keys[6]_i_1 
       (.I0(tm_data[0]),
        .I1(u_tm1638_n_6),
        .I2(\keys_reg_n_0_[6] ),
        .O(\keys[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \keys[7]_i_1 
       (.I0(tm_data[0]),
        .I1(u_tm1638_n_7),
        .I2(\keys_reg_n_0_[7] ),
        .O(\keys[7]_i_1_n_0 ));
  FDRE \keys_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[0]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[0] ),
        .R(rst));
  FDRE \keys_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[1]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[1] ),
        .R(rst));
  FDRE \keys_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[2]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[2] ),
        .R(rst));
  FDRE \keys_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[3]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[3] ),
        .R(rst));
  FDRE \keys_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[4]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[4] ),
        .R(rst));
  FDRE \keys_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[5]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[5] ),
        .R(rst));
  FDRE \keys_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[6]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[6] ),
        .R(rst));
  FDRE \keys_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[7]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[7] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[0]_i_1 
       (.I0(data15),
        .I1(larson_dir),
        .I2(p_12_in),
        .O(\larson[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[1]_i_1 
       (.I0(\larson_reg_n_0_[0] ),
        .I1(larson_dir),
        .I2(data5),
        .O(\larson[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[2]_i_1 
       (.I0(p_12_in),
        .I1(larson_dir),
        .I2(data7),
        .O(\larson[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[3]_i_1 
       (.I0(data5),
        .I1(larson_dir),
        .I2(data9),
        .O(\larson[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[4]_i_1 
       (.I0(data7),
        .I1(larson_dir),
        .I2(data11),
        .O(\larson[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[5]_i_1 
       (.I0(data9),
        .I1(larson_dir),
        .I2(p_0_in7_in),
        .O(\larson[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[6]_i_1 
       (.I0(data11),
        .I1(larson_dir),
        .I2(data15),
        .O(\larson[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \larson[7]_i_1 
       (.I0(\larson[7]_i_3_n_0 ),
        .I1(\larson[7]_i_4_n_0 ),
        .I2(\larson[7]_i_5_n_0 ),
        .I3(\larson[7]_i_6_n_0 ),
        .I4(\larson[7]_i_7_n_0 ),
        .I5(\larson[7]_i_8_n_0 ),
        .O(larson_dir1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \larson[7]_i_2 
       (.I0(p_0_in7_in),
        .I1(larson_dir),
        .I2(\larson_reg_n_0_[0] ),
        .O(\larson[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \larson[7]_i_3 
       (.I0(counter_reg__0[8]),
        .I1(counter_reg__0[21]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[9]),
        .O(\larson[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \larson[7]_i_4 
       (.I0(counter_reg__0[5]),
        .I1(counter_reg__0[15]),
        .I2(counter_reg__0[7]),
        .I3(counter_reg__0[17]),
        .O(\larson[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \larson[7]_i_5 
       (.I0(counter_reg__0[16]),
        .I1(counter_reg__0[12]),
        .I2(counter_reg__0[18]),
        .O(\larson[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \larson[7]_i_6 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[19]),
        .I2(counter_reg__0[14]),
        .I3(counter_reg),
        .O(\larson[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \larson[7]_i_7 
       (.I0(counter_reg__0[20]),
        .I1(counter_reg__0[22]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[13]),
        .O(\larson[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \larson[7]_i_8 
       (.I0(counter_reg__0[6]),
        .I1(counter_reg__0[11]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[10]),
        .O(\larson[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00007740)) 
    larson_dir_i_1
       (.I0(p_0_in7_in),
        .I1(larson_dir1),
        .I2(p_12_in),
        .I3(larson_dir),
        .I4(rst),
        .O(larson_dir_i_1_n_0));
  FDRE larson_dir_reg
       (.C(clk),
        .CE(1'b1),
        .D(larson_dir_i_1_n_0),
        .Q(larson_dir),
        .R(1'b0));
  FDRE \larson_reg[0] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[0]_i_1_n_0 ),
        .Q(\larson_reg_n_0_[0] ),
        .R(rst));
  FDRE \larson_reg[1] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[1]_i_1_n_0 ),
        .Q(p_12_in),
        .R(rst));
  FDRE \larson_reg[2] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[2]_i_1_n_0 ),
        .Q(data5),
        .R(rst));
  FDRE \larson_reg[3] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[3]_i_1_n_0 ),
        .Q(data7),
        .R(rst));
  FDSE \larson_reg[4] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[4]_i_1_n_0 ),
        .Q(data9),
        .S(rst));
  FDRE \larson_reg[5] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[5]_i_1_n_0 ),
        .Q(data11),
        .R(rst));
  FDRE \larson_reg[6] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[6]_i_1_n_0 ),
        .Q(p_0_in7_in),
        .R(rst));
  FDRE \larson_reg[7] 
       (.C(clk),
        .CE(larson_dir1),
        .D(\larson[7]_i_2_n_0 ),
        .Q(data15),
        .R(rst));
  FDRE #(
    .INIT(1'b1)) 
    rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rst),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF sig_IOBUF
       (.I(dio_out),
        .IO(tm_dio),
        .O(dio_in),
        .T(tm_rw_));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tm_cs_i_2
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[2]),
        .O(tm_cs_i_2_n_0));
  FDSE tm_cs_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_tm1638_n_11),
        .Q(tm_cs),
        .S(rst));
  FDRE tm_latch_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_tm1638_n_4),
        .Q(tm_latch),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF4F4F404)) 
    \tm_out[0]_i_1 
       (.I0(\tm_out[0]_i_2_n_0 ),
        .I1(instruction_step_reg[4]),
        .I2(instruction_step_reg[5]),
        .I3(data15),
        .I4(instruction_step_reg[1]),
        .O(tm_out[0]));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \tm_out[0]_i_2 
       (.I0(\tm_out[0]_i_3_n_0 ),
        .I1(instruction_step_reg[2]),
        .I2(\tm_out[0]_i_4_n_0 ),
        .I3(instruction_step_reg[3]),
        .I4(\tm_out[0]_i_5_n_0 ),
        .I5(\tm_out[0]_i_6_n_0 ),
        .O(\tm_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03030AFA03F3F)) 
    \tm_out[0]_i_3 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(p_0_in7_in),
        .I2(instruction_step_reg[1]),
        .I3(\keys_reg_n_0_[1] ),
        .I4(instruction_step_reg[0]),
        .I5(data11),
        .O(\tm_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03030AFA03F3F)) 
    \tm_out[0]_i_4 
       (.I0(\keys_reg_n_0_[2] ),
        .I1(data9),
        .I2(instruction_step_reg[1]),
        .I3(\keys_reg_n_0_[3] ),
        .I4(instruction_step_reg[0]),
        .I5(data7),
        .O(\tm_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0C0C000F05050)) 
    \tm_out[0]_i_5 
       (.I0(p_12_in),
        .I1(\keys_reg_n_0_[5] ),
        .I2(instruction_step_reg[2]),
        .I3(data5),
        .I4(instruction_step_reg[1]),
        .I5(instruction_step_reg[0]),
        .O(\tm_out[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h51551115)) 
    \tm_out[0]_i_6 
       (.I0(instruction_step_reg[2]),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[0]),
        .I3(\larson_reg_n_0_[0] ),
        .I4(\keys_reg_n_0_[6] ),
        .O(\tm_out[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAA0AA202)) 
    \tm_out[1]_i_1 
       (.I0(\tm_out[1]_i_2_n_0 ),
        .I1(instruction_step_reg[3]),
        .I2(instruction_step_reg[5]),
        .I3(instruction_step_reg[1]),
        .I4(instruction_step_reg[4]),
        .O(tm_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \tm_out[1]_i_2 
       (.I0(\tm_out[1]_i_3_n_0 ),
        .I1(instruction_step_reg[5]),
        .I2(instruction_step_reg[4]),
        .I3(\tm_out[2]_i_3_n_0 ),
        .I4(\tm_out[2]_i_2_n_0 ),
        .I5(\tm_out[2]_i_4_n_0 ),
        .O(\tm_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \tm_out[1]_i_3 
       (.I0(instruction_step_reg[3]),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[0]),
        .I4(\keys_reg_n_0_[6] ),
        .O(\tm_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \tm_out[2]_i_1 
       (.I0(\tm_out[2]_i_2_n_0 ),
        .I1(\tm_out[2]_i_3_n_0 ),
        .I2(\tm_out[5]_i_2_n_0 ),
        .I3(\tm_out[2]_i_4_n_0 ),
        .I4(\tm_out[4]_i_2_n_0 ),
        .I5(\tm_out[2]_i_5_n_0 ),
        .O(tm_out[2]));
  LUT6 #(
    .INIT(64'h1010000000000030)) 
    \tm_out[2]_i_2 
       (.I0(\keys_reg_n_0_[4] ),
        .I1(instruction_step_reg[3]),
        .I2(instruction_step_reg[0]),
        .I3(\keys_reg_n_0_[7] ),
        .I4(instruction_step_reg[1]),
        .I5(instruction_step_reg[2]),
        .O(\tm_out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \tm_out[2]_i_3 
       (.I0(instruction_step_reg[3]),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[0]),
        .I4(\keys_reg_n_0_[5] ),
        .O(\tm_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5030000000000000)) 
    \tm_out[2]_i_4 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(\keys_reg_n_0_[1] ),
        .I2(instruction_step_reg[0]),
        .I3(instruction_step_reg[1]),
        .I4(instruction_step_reg[2]),
        .I5(instruction_step_reg[3]),
        .O(\tm_out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tm_out[2]_i_5 
       (.I0(instruction_step_reg[1]),
        .I1(instruction_step_reg[5]),
        .O(\tm_out[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \tm_out[3]_i_1 
       (.I0(instruction_step_reg[1]),
        .I1(\tm_out[6]_i_2_n_0 ),
        .I2(instruction_step_reg[4]),
        .I3(instruction_step_reg[5]),
        .O(tm_out[3]));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \tm_out[4]_i_1 
       (.I0(\tm_out[4]_i_2_n_0 ),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[3]),
        .I3(tm_rw_i_2_n_0),
        .I4(\keys_reg_n_0_[2] ),
        .I5(\tm_out[4]_i_3_n_0 ),
        .O(tm_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tm_out[4]_i_2 
       (.I0(instruction_step_reg[4]),
        .I1(instruction_step_reg[5]),
        .O(\tm_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFFFFFFCFFF)) 
    \tm_out[4]_i_3 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(\keys_reg_n_0_[6] ),
        .I2(instruction_step_reg[0]),
        .I3(instruction_step_reg[1]),
        .I4(instruction_step_reg[2]),
        .I5(instruction_step_reg[3]),
        .O(\tm_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \tm_out[5]_i_1 
       (.I0(instruction_step_reg[5]),
        .I1(instruction_step_reg[4]),
        .I2(\tm_out[5]_i_2_n_0 ),
        .I3(\tm_out[5]_i_3_n_0 ),
        .I4(\tm_out[5]_i_4_n_0 ),
        .O(tm_out[5]));
  LUT6 #(
    .INIT(64'h0000000050300000)) 
    \tm_out[5]_i_2 
       (.I0(\keys_reg_n_0_[2] ),
        .I1(\keys_reg_n_0_[3] ),
        .I2(instruction_step_reg[0]),
        .I3(instruction_step_reg[1]),
        .I4(instruction_step_reg[3]),
        .I5(instruction_step_reg[2]),
        .O(\tm_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \tm_out[5]_i_3 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[3]),
        .I3(instruction_step_reg[1]),
        .I4(instruction_step_reg[0]),
        .O(\tm_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \tm_out[5]_i_4 
       (.I0(\keys_reg_n_0_[4] ),
        .I1(instruction_step_reg[2]),
        .I2(instruction_step_reg[1]),
        .I3(instruction_step_reg[0]),
        .I4(instruction_step_reg[3]),
        .O(\tm_out[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \tm_out[6]_i_1 
       (.I0(\tm_out[6]_i_2_n_0 ),
        .I1(\tm_out[6]_i_3_n_0 ),
        .I2(instruction_step_reg[5]),
        .O(tm_out[6]));
  LUT6 #(
    .INIT(64'h2222222222222022)) 
    \tm_out[6]_i_2 
       (.I0(\tm_out[4]_i_3_n_0 ),
        .I1(\tm_out[5]_i_2_n_0 ),
        .I2(instruction_step_reg[3]),
        .I3(instruction_step_reg[2]),
        .I4(\tm_out[6]_i_4_n_0 ),
        .I5(\keys_reg_n_0_[5] ),
        .O(\tm_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000003)) 
    \tm_out[6]_i_3 
       (.I0(\keys_reg_n_0_[4] ),
        .I1(instruction_step_reg[3]),
        .I2(instruction_step_reg[2]),
        .I3(instruction_step_reg[0]),
        .I4(instruction_step_reg[1]),
        .I5(\tm_out[6]_i_5_n_0 ),
        .O(\tm_out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tm_out[6]_i_4 
       (.I0(instruction_step_reg[1]),
        .I1(instruction_step_reg[0]),
        .O(\tm_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \tm_out[6]_i_5 
       (.I0(instruction_step_reg[1]),
        .I1(instruction_step_reg[5]),
        .I2(instruction_step_reg[4]),
        .O(\tm_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    \tm_out[7]_i_2 
       (.I0(instruction_step_reg[1]),
        .I1(\tm_out[7]_i_3_n_0 ),
        .I2(instruction_step_reg[3]),
        .I3(\tm_out[7]_i_4_n_0 ),
        .I4(instruction_step_reg[4]),
        .I5(instruction_step_reg[5]),
        .O(tm_out[7]));
  LUT6 #(
    .INIT(64'h1FDFFFFF1FDF0000)) 
    \tm_out[7]_i_3 
       (.I0(\keys_reg_n_0_[1] ),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[0]),
        .I3(\keys_reg_n_0_[0] ),
        .I4(instruction_step_reg[2]),
        .I5(\tm_out[7]_i_5_n_0 ),
        .O(\tm_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000777FFF7F)) 
    \tm_out[7]_i_4 
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[1]),
        .I2(\keys_reg_n_0_[6] ),
        .I3(instruction_step_reg[2]),
        .I4(\keys_reg_n_0_[4] ),
        .I5(\tm_out[7]_i_6_n_0 ),
        .O(\tm_out[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FDF)) 
    \tm_out[7]_i_5 
       (.I0(\keys_reg_n_0_[3] ),
        .I1(instruction_step_reg[1]),
        .I2(instruction_step_reg[0]),
        .I3(\keys_reg_n_0_[2] ),
        .O(\tm_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30002233)) 
    \tm_out[7]_i_6 
       (.I0(\keys_reg_n_0_[7] ),
        .I1(instruction_step_reg[1]),
        .I2(\keys_reg_n_0_[5] ),
        .I3(instruction_step_reg[0]),
        .I4(instruction_step_reg[2]),
        .O(\tm_out[7]_i_6_n_0 ));
  FDRE \tm_out_reg[0] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[0]),
        .Q(\tm_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tm_out_reg[1] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[1]),
        .Q(\tm_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tm_out_reg[2] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[2]),
        .Q(\tm_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tm_out_reg[3] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[3]),
        .Q(\tm_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tm_out_reg[4] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[4]),
        .Q(\tm_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tm_out_reg[5] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[5]),
        .Q(\tm_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tm_out_reg[6] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[6]),
        .Q(\tm_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tm_out_reg[7] 
       (.C(clk),
        .CE(u_tm1638_n_8),
        .D(tm_out[7]),
        .Q(\tm_out_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    tm_rw_i_2
       (.I0(instruction_step_reg[1]),
        .I1(instruction_step_reg[0]),
        .O(tm_rw_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hDFF9EFFD)) 
    tm_rw_i_3
       (.I0(instruction_step_reg[0]),
        .I1(instruction_step_reg[5]),
        .I2(instruction_step_reg[3]),
        .I3(instruction_step_reg[2]),
        .I4(instruction_step_reg[1]),
        .O(tm_rw_i_3_n_0));
  FDSE tm_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_tm1638_n_10),
        .Q(tm_rw_reg_0),
        .S(rst));
  design_1_tm1638_demo_0_0_tm1638 u_tm1638
       (.E(u_tm1638_n_8),
        .Q({\tm_out_reg_n_0_[7] ,\tm_out_reg_n_0_[6] ,\tm_out_reg_n_0_[5] ,\tm_out_reg_n_0_[4] ,\tm_out_reg_n_0_[3] ,\tm_out_reg_n_0_[2] ,\tm_out_reg_n_0_[1] ,\tm_out_reg_n_0_[0] }),
        .clk(clk),
        .counter_reg(counter_reg),
        .\data_out_q_reg[4]_0 ({tm_data[4],tm_data[0]}),
        .\data_q_reg[6]_0 (tm_rw_reg_0),
        .dio_in(dio_in),
        .dio_out(dio_out),
        .instruction_step0(instruction_step0),
        .\instruction_step_reg[1] (u_tm1638_n_6),
        .\instruction_step_reg[1]_0 (u_tm1638_n_7),
        .\instruction_step_reg[3] (u_tm1638_n_10),
        .\instruction_step_reg[5] (u_tm1638_n_11),
        .rst(rst),
        .tm_clk(tm_clk),
        .tm_cs(tm_cs),
        .tm_cs_reg(instruction_step_reg),
        .tm_cs_reg_0(tm_cs_i_2_n_0),
        .tm_latch(tm_latch),
        .tm_latch_reg(u_tm1638_n_4),
        .tm_latch_reg_0(g0_b0_n_0),
        .\tm_out_reg[0] (g0_b0__0_n_0),
        .tm_rw_(tm_rw_),
        .tm_rw_reg(tm_rw_i_2_n_0),
        .tm_rw_reg_0(tm_rw_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
