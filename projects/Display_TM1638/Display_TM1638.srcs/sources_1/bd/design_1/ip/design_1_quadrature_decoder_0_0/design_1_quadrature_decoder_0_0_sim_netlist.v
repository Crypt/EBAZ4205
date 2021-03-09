// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Tue Mar  9 20:56:06 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode funcsim
//               /home/david/Documents/GitHub/djrm-EBAZ4205/projects/Display_TM1638/Display_TM1638.srcs/sources_1/bd/design_1/ip/design_1_quadrature_decoder_0_0/design_1_quadrature_decoder_0_0_sim_netlist.v
// Design      : design_1_quadrature_decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_quadrature_decoder_0_0,quadrature_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "quadrature_decoder,Vivado 2020.2.1" *) 
(* NotValidForBitStream *)
module design_1_quadrature_decoder_0_0
   (clk,
    a,
    b,
    phase,
    set_origin_n,
    direction,
    update,
    value);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input a;
  input b;
  input phase;
  input set_origin_n;
  output direction;
  output update;
  output [31:0]value;

  wire \<const0> ;
  wire a;
  wire b;
  wire clk;
  wire direction;
  wire phase;
  wire set_origin_n;
  wire update;
  wire [13:0]\^value ;

  assign value[31] = \<const0> ;
  assign value[30] = \<const0> ;
  assign value[29] = \<const0> ;
  assign value[28] = \<const0> ;
  assign value[27] = \<const0> ;
  assign value[26] = \<const0> ;
  assign value[25] = \<const0> ;
  assign value[24] = \<const0> ;
  assign value[23] = \<const0> ;
  assign value[22] = \<const0> ;
  assign value[21] = \<const0> ;
  assign value[20] = \<const0> ;
  assign value[19] = \<const0> ;
  assign value[18] = \<const0> ;
  assign value[17] = \<const0> ;
  assign value[16] = \<const0> ;
  assign value[15] = \<const0> ;
  assign value[14] = \<const0> ;
  assign value[13:0] = \^value [13:0];
  GND GND
       (.G(\<const0> ));
  design_1_quadrature_decoder_0_0_quadrature_decoder inst
       (.a(a),
        .b(b),
        .clk(clk),
        .direction_reg_0(direction),
        .phase(phase),
        .set_origin_n(set_origin_n),
        .update(update),
        .value(\^value ));
endmodule

(* ORIG_REF_NAME = "quadrature_decoder" *) 
module design_1_quadrature_decoder_0_0_quadrature_decoder
   (direction_reg_0,
    value,
    update,
    clk,
    set_origin_n,
    a,
    b,
    phase);
  output direction_reg_0;
  output [13:0]value;
  output update;
  input clk;
  input set_origin_n;
  input a;
  input b;
  input phase;

  wire a;
  wire \a_new_reg_n_0_[0] ;
  wire a_prev_i_1_n_0;
  wire a_prev_reg_n_0;
  wire b;
  wire \b_new[0]_i_1_n_0 ;
  wire \b_new_reg_n_0_[0] ;
  wire b_prev;
  wire b_prev_i_1_n_0;
  wire clk;
  wire debounce_cnt;
  wire debounce_cnt0;
  wire \debounce_cnt[0]_i_4_n_0 ;
  wire \debounce_cnt[0]_i_5_n_0 ;
  wire \debounce_cnt[0]_i_6_n_0 ;
  wire \debounce_cnt[0]_i_7_n_0 ;
  wire \debounce_cnt[0]_i_8_n_0 ;
  wire [15:0]debounce_cnt_reg;
  wire \debounce_cnt_reg[0]_i_3_n_0 ;
  wire \debounce_cnt_reg[0]_i_3_n_1 ;
  wire \debounce_cnt_reg[0]_i_3_n_2 ;
  wire \debounce_cnt_reg[0]_i_3_n_3 ;
  wire \debounce_cnt_reg[0]_i_3_n_4 ;
  wire \debounce_cnt_reg[0]_i_3_n_5 ;
  wire \debounce_cnt_reg[0]_i_3_n_6 ;
  wire \debounce_cnt_reg[0]_i_3_n_7 ;
  wire \debounce_cnt_reg[12]_i_1_n_1 ;
  wire \debounce_cnt_reg[12]_i_1_n_2 ;
  wire \debounce_cnt_reg[12]_i_1_n_3 ;
  wire \debounce_cnt_reg[12]_i_1_n_4 ;
  wire \debounce_cnt_reg[12]_i_1_n_5 ;
  wire \debounce_cnt_reg[12]_i_1_n_6 ;
  wire \debounce_cnt_reg[12]_i_1_n_7 ;
  wire \debounce_cnt_reg[4]_i_1_n_0 ;
  wire \debounce_cnt_reg[4]_i_1_n_1 ;
  wire \debounce_cnt_reg[4]_i_1_n_2 ;
  wire \debounce_cnt_reg[4]_i_1_n_3 ;
  wire \debounce_cnt_reg[4]_i_1_n_4 ;
  wire \debounce_cnt_reg[4]_i_1_n_5 ;
  wire \debounce_cnt_reg[4]_i_1_n_6 ;
  wire \debounce_cnt_reg[4]_i_1_n_7 ;
  wire \debounce_cnt_reg[8]_i_1_n_0 ;
  wire \debounce_cnt_reg[8]_i_1_n_1 ;
  wire \debounce_cnt_reg[8]_i_1_n_2 ;
  wire \debounce_cnt_reg[8]_i_1_n_3 ;
  wire \debounce_cnt_reg[8]_i_1_n_4 ;
  wire \debounce_cnt_reg[8]_i_1_n_5 ;
  wire \debounce_cnt_reg[8]_i_1_n_6 ;
  wire \debounce_cnt_reg[8]_i_1_n_7 ;
  wire direction_i_1_n_0;
  wire direction_i_2_n_0;
  wire direction_i_3_n_0;
  wire direction_reg_0;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in2_in;
  wire p_0_in_0;
  wire [0:0]p_1_out;
  wire phase;
  wire position0;
  wire \position[0]_i_1_n_0 ;
  wire \position[10]_i_1_n_0 ;
  wire \position[12]_i_1_n_0 ;
  wire \position[12]_i_3_n_0 ;
  wire \position[12]_i_4_n_0 ;
  wire \position[12]_i_5_n_0 ;
  wire \position[12]_i_6_n_0 ;
  wire \position[13]_i_10_n_0 ;
  wire \position[13]_i_11_n_0 ;
  wire \position[13]_i_12_n_0 ;
  wire \position[13]_i_13_n_0 ;
  wire \position[13]_i_1_n_0 ;
  wire \position[13]_i_2_n_0 ;
  wire \position[13]_i_3_n_0 ;
  wire \position[13]_i_4_n_0 ;
  wire \position[13]_i_6_n_0 ;
  wire \position[13]_i_7_n_0 ;
  wire \position[13]_i_8_n_0 ;
  wire \position[13]_i_9_n_0 ;
  wire \position[1]_i_1_n_0 ;
  wire \position[2]_i_1_n_0 ;
  wire \position[3]_i_1_n_0 ;
  wire \position[4]_i_2_n_0 ;
  wire \position[4]_i_3_n_0 ;
  wire \position[4]_i_4_n_0 ;
  wire \position[4]_i_5_n_0 ;
  wire \position[7]_i_2_n_0 ;
  wire \position[7]_i_3_n_0 ;
  wire \position[7]_i_4_n_0 ;
  wire \position[7]_i_5_n_0 ;
  wire \position[8]_i_1_n_0 ;
  wire \position[9]_i_1_n_0 ;
  wire \position_reg[12]_i_2_n_0 ;
  wire \position_reg[12]_i_2_n_1 ;
  wire \position_reg[12]_i_2_n_2 ;
  wire \position_reg[12]_i_2_n_3 ;
  wire \position_reg[12]_i_2_n_4 ;
  wire \position_reg[12]_i_2_n_5 ;
  wire \position_reg[12]_i_2_n_6 ;
  wire \position_reg[12]_i_2_n_7 ;
  wire \position_reg[13]_i_5_n_7 ;
  wire \position_reg[4]_i_1_n_0 ;
  wire \position_reg[4]_i_1_n_1 ;
  wire \position_reg[4]_i_1_n_2 ;
  wire \position_reg[4]_i_1_n_3 ;
  wire \position_reg[4]_i_1_n_4 ;
  wire \position_reg[4]_i_1_n_5 ;
  wire \position_reg[4]_i_1_n_6 ;
  wire \position_reg[4]_i_1_n_7 ;
  wire \position_reg[7]_i_1_n_0 ;
  wire \position_reg[7]_i_1_n_1 ;
  wire \position_reg[7]_i_1_n_2 ;
  wire \position_reg[7]_i_1_n_3 ;
  wire \position_reg[7]_i_1_n_4 ;
  wire \position_reg[7]_i_1_n_5 ;
  wire \position_reg[7]_i_1_n_6 ;
  wire \position_reg[7]_i_1_n_7 ;
  wire \position_reg_n_0_[0] ;
  wire \position_reg_n_0_[10] ;
  wire \position_reg_n_0_[11] ;
  wire \position_reg_n_0_[12] ;
  wire \position_reg_n_0_[13] ;
  wire \position_reg_n_0_[1] ;
  wire \position_reg_n_0_[2] ;
  wire \position_reg_n_0_[3] ;
  wire \position_reg_n_0_[4] ;
  wire \position_reg_n_0_[5] ;
  wire \position_reg_n_0_[6] ;
  wire \position_reg_n_0_[7] ;
  wire \position_reg_n_0_[8] ;
  wire \position_reg_n_0_[9] ;
  wire set_origin_cnt;
  wire set_origin_cnt0;
  wire \set_origin_cnt[0]_i_4_n_0 ;
  wire \set_origin_cnt[0]_i_5_n_0 ;
  wire \set_origin_cnt[0]_i_6_n_0 ;
  wire \set_origin_cnt[0]_i_7_n_0 ;
  wire \set_origin_cnt[0]_i_8_n_0 ;
  wire \set_origin_cnt[0]_i_9_n_0 ;
  wire [18:0]set_origin_cnt_reg;
  wire \set_origin_cnt_reg[0]_i_3_n_0 ;
  wire \set_origin_cnt_reg[0]_i_3_n_1 ;
  wire \set_origin_cnt_reg[0]_i_3_n_2 ;
  wire \set_origin_cnt_reg[0]_i_3_n_3 ;
  wire \set_origin_cnt_reg[0]_i_3_n_4 ;
  wire \set_origin_cnt_reg[0]_i_3_n_5 ;
  wire \set_origin_cnt_reg[0]_i_3_n_6 ;
  wire \set_origin_cnt_reg[0]_i_3_n_7 ;
  wire \set_origin_cnt_reg[12]_i_1_n_0 ;
  wire \set_origin_cnt_reg[12]_i_1_n_1 ;
  wire \set_origin_cnt_reg[12]_i_1_n_2 ;
  wire \set_origin_cnt_reg[12]_i_1_n_3 ;
  wire \set_origin_cnt_reg[12]_i_1_n_4 ;
  wire \set_origin_cnt_reg[12]_i_1_n_5 ;
  wire \set_origin_cnt_reg[12]_i_1_n_6 ;
  wire \set_origin_cnt_reg[12]_i_1_n_7 ;
  wire \set_origin_cnt_reg[16]_i_1_n_2 ;
  wire \set_origin_cnt_reg[16]_i_1_n_3 ;
  wire \set_origin_cnt_reg[16]_i_1_n_5 ;
  wire \set_origin_cnt_reg[16]_i_1_n_6 ;
  wire \set_origin_cnt_reg[16]_i_1_n_7 ;
  wire \set_origin_cnt_reg[4]_i_1_n_0 ;
  wire \set_origin_cnt_reg[4]_i_1_n_1 ;
  wire \set_origin_cnt_reg[4]_i_1_n_2 ;
  wire \set_origin_cnt_reg[4]_i_1_n_3 ;
  wire \set_origin_cnt_reg[4]_i_1_n_4 ;
  wire \set_origin_cnt_reg[4]_i_1_n_5 ;
  wire \set_origin_cnt_reg[4]_i_1_n_6 ;
  wire \set_origin_cnt_reg[4]_i_1_n_7 ;
  wire \set_origin_cnt_reg[8]_i_1_n_0 ;
  wire \set_origin_cnt_reg[8]_i_1_n_1 ;
  wire \set_origin_cnt_reg[8]_i_1_n_2 ;
  wire \set_origin_cnt_reg[8]_i_1_n_3 ;
  wire \set_origin_cnt_reg[8]_i_1_n_4 ;
  wire \set_origin_cnt_reg[8]_i_1_n_5 ;
  wire \set_origin_cnt_reg[8]_i_1_n_6 ;
  wire \set_origin_cnt_reg[8]_i_1_n_7 ;
  wire set_origin_n;
  wire set_origin_n_int_i_1_n_0;
  wire set_origin_n_int_reg_n_0;
  wire \set_origin_n_new_reg_n_0_[0] ;
  wire update;
  wire update_i_1_n_0;
  wire [13:0]value;
  wire [3:3]\NLW_debounce_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_position_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_position_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_set_origin_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_set_origin_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \a_new[0]_i_1 
       (.I0(b),
        .O(p_1_out));
  FDRE \a_new_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\a_new_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \a_new_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_new_reg_n_0_[0] ),
        .Q(p_0_in_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF600009000)) 
    a_prev_i_1
       (.I0(\b_new_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\a_new_reg_n_0_[0] ),
        .I3(p_0_in_0),
        .I4(debounce_cnt),
        .I5(a_prev_reg_n_0),
        .O(a_prev_i_1_n_0));
  FDRE a_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(a_prev_i_1_n_0),
        .Q(a_prev_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \b_new[0]_i_1 
       (.I0(a),
        .O(\b_new[0]_i_1_n_0 ));
  FDRE \b_new_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_new[0]_i_1_n_0 ),
        .Q(\b_new_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \b_new_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_new_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFE00008008)) 
    b_prev_i_1
       (.I0(\b_new_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\a_new_reg_n_0_[0] ),
        .I3(p_0_in_0),
        .I4(debounce_cnt),
        .I5(b_prev),
        .O(b_prev_i_1_n_0));
  FDRE b_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(b_prev_i_1_n_0),
        .Q(b_prev),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \debounce_cnt[0]_i_1 
       (.I0(\b_new_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\a_new_reg_n_0_[0] ),
        .I3(p_0_in_0),
        .O(debounce_cnt0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_cnt[0]_i_2 
       (.I0(\debounce_cnt[0]_i_4_n_0 ),
        .I1(\debounce_cnt[0]_i_5_n_0 ),
        .I2(\debounce_cnt[0]_i_6_n_0 ),
        .I3(\debounce_cnt[0]_i_7_n_0 ),
        .O(debounce_cnt));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \debounce_cnt[0]_i_4 
       (.I0(debounce_cnt_reg[6]),
        .I1(debounce_cnt_reg[15]),
        .I2(debounce_cnt_reg[3]),
        .I3(debounce_cnt_reg[7]),
        .O(\debounce_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \debounce_cnt[0]_i_5 
       (.I0(debounce_cnt_reg[2]),
        .I1(debounce_cnt_reg[13]),
        .I2(debounce_cnt_reg[14]),
        .I3(debounce_cnt_reg[5]),
        .O(\debounce_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \debounce_cnt[0]_i_6 
       (.I0(debounce_cnt_reg[10]),
        .I1(debounce_cnt_reg[0]),
        .I2(debounce_cnt_reg[9]),
        .I3(debounce_cnt_reg[1]),
        .O(\debounce_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \debounce_cnt[0]_i_7 
       (.I0(debounce_cnt_reg[8]),
        .I1(debounce_cnt_reg[4]),
        .I2(debounce_cnt_reg[12]),
        .I3(debounce_cnt_reg[11]),
        .O(\debounce_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_cnt[0]_i_8 
       (.I0(debounce_cnt_reg[0]),
        .O(\debounce_cnt[0]_i_8_n_0 ));
  FDRE \debounce_cnt_reg[0] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[0]_i_3_n_7 ),
        .Q(debounce_cnt_reg[0]),
        .R(debounce_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \debounce_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\debounce_cnt_reg[0]_i_3_n_0 ,\debounce_cnt_reg[0]_i_3_n_1 ,\debounce_cnt_reg[0]_i_3_n_2 ,\debounce_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\debounce_cnt_reg[0]_i_3_n_4 ,\debounce_cnt_reg[0]_i_3_n_5 ,\debounce_cnt_reg[0]_i_3_n_6 ,\debounce_cnt_reg[0]_i_3_n_7 }),
        .S({debounce_cnt_reg[3:1],\debounce_cnt[0]_i_8_n_0 }));
  FDRE \debounce_cnt_reg[10] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[8]_i_1_n_5 ),
        .Q(debounce_cnt_reg[10]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[11] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[8]_i_1_n_4 ),
        .Q(debounce_cnt_reg[11]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[12] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[12]_i_1_n_7 ),
        .Q(debounce_cnt_reg[12]),
        .R(debounce_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \debounce_cnt_reg[12]_i_1 
       (.CI(\debounce_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_debounce_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\debounce_cnt_reg[12]_i_1_n_1 ,\debounce_cnt_reg[12]_i_1_n_2 ,\debounce_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_cnt_reg[12]_i_1_n_4 ,\debounce_cnt_reg[12]_i_1_n_5 ,\debounce_cnt_reg[12]_i_1_n_6 ,\debounce_cnt_reg[12]_i_1_n_7 }),
        .S(debounce_cnt_reg[15:12]));
  FDRE \debounce_cnt_reg[13] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[12]_i_1_n_6 ),
        .Q(debounce_cnt_reg[13]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[14] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[12]_i_1_n_5 ),
        .Q(debounce_cnt_reg[14]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[15] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[12]_i_1_n_4 ),
        .Q(debounce_cnt_reg[15]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[1] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[0]_i_3_n_6 ),
        .Q(debounce_cnt_reg[1]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[2] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[0]_i_3_n_5 ),
        .Q(debounce_cnt_reg[2]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[3] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[0]_i_3_n_4 ),
        .Q(debounce_cnt_reg[3]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[4] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[4]_i_1_n_7 ),
        .Q(debounce_cnt_reg[4]),
        .R(debounce_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \debounce_cnt_reg[4]_i_1 
       (.CI(\debounce_cnt_reg[0]_i_3_n_0 ),
        .CO({\debounce_cnt_reg[4]_i_1_n_0 ,\debounce_cnt_reg[4]_i_1_n_1 ,\debounce_cnt_reg[4]_i_1_n_2 ,\debounce_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_cnt_reg[4]_i_1_n_4 ,\debounce_cnt_reg[4]_i_1_n_5 ,\debounce_cnt_reg[4]_i_1_n_6 ,\debounce_cnt_reg[4]_i_1_n_7 }),
        .S(debounce_cnt_reg[7:4]));
  FDRE \debounce_cnt_reg[5] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[4]_i_1_n_6 ),
        .Q(debounce_cnt_reg[5]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[6] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[4]_i_1_n_5 ),
        .Q(debounce_cnt_reg[6]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[7] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[4]_i_1_n_4 ),
        .Q(debounce_cnt_reg[7]),
        .R(debounce_cnt0));
  FDRE \debounce_cnt_reg[8] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[8]_i_1_n_7 ),
        .Q(debounce_cnt_reg[8]),
        .R(debounce_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \debounce_cnt_reg[8]_i_1 
       (.CI(\debounce_cnt_reg[4]_i_1_n_0 ),
        .CO({\debounce_cnt_reg[8]_i_1_n_0 ,\debounce_cnt_reg[8]_i_1_n_1 ,\debounce_cnt_reg[8]_i_1_n_2 ,\debounce_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_cnt_reg[8]_i_1_n_4 ,\debounce_cnt_reg[8]_i_1_n_5 ,\debounce_cnt_reg[8]_i_1_n_6 ,\debounce_cnt_reg[8]_i_1_n_7 }),
        .S(debounce_cnt_reg[11:8]));
  FDRE \debounce_cnt_reg[9] 
       (.C(clk),
        .CE(debounce_cnt),
        .D(\debounce_cnt_reg[8]_i_1_n_6 ),
        .Q(debounce_cnt_reg[9]),
        .R(debounce_cnt0));
  LUT6 #(
    .INIT(64'hFFFF96FF00009600)) 
    direction_i_1
       (.I0(p_0_in_0),
        .I1(phase),
        .I2(b_prev),
        .I3(set_origin_n_int_reg_n_0),
        .I4(direction_i_2_n_0),
        .I5(direction_reg_0),
        .O(direction_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    direction_i_2
       (.I0(\debounce_cnt[0]_i_7_n_0 ),
        .I1(\debounce_cnt[0]_i_6_n_0 ),
        .I2(\debounce_cnt[0]_i_5_n_0 ),
        .I3(\debounce_cnt[0]_i_4_n_0 ),
        .I4(direction_i_3_n_0),
        .O(direction_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    direction_i_3
       (.I0(a_prev_reg_n_0),
        .I1(p_0_in_0),
        .I2(b_prev),
        .I3(p_0_in0_in),
        .O(direction_i_3_n_0));
  FDRE direction_reg
       (.C(clk),
        .CE(1'b1),
        .D(direction_i_1_n_0),
        .Q(direction_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \position[0]_i_1 
       (.I0(\position[13]_i_6_n_0 ),
        .I1(\position_reg_n_0_[0] ),
        .O(\position[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[10]_i_1 
       (.I0(\position_reg[12]_i_2_n_6 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33333333FBBBBBBB)) 
    \position[12]_i_1 
       (.I0(\position[13]_i_6_n_0 ),
        .I1(set_origin_n_int_reg_n_0),
        .I2(\position[13]_i_4_n_0 ),
        .I3(\position_reg_n_0_[13] ),
        .I4(direction_reg_0),
        .I5(direction_i_2_n_0),
        .O(\position[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[12]_i_3 
       (.I0(\position_reg_n_0_[11] ),
        .I1(\position_reg_n_0_[12] ),
        .O(\position[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[12]_i_4 
       (.I0(\position_reg_n_0_[10] ),
        .I1(\position_reg_n_0_[11] ),
        .O(\position[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[12]_i_5 
       (.I0(\position_reg_n_0_[9] ),
        .I1(\position_reg_n_0_[10] ),
        .O(\position[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[12]_i_6 
       (.I0(\position_reg_n_0_[8] ),
        .I1(\position_reg_n_0_[9] ),
        .O(\position[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \position[13]_i_1 
       (.I0(direction_i_2_n_0),
        .I1(direction_reg_0),
        .I2(\position_reg_n_0_[13] ),
        .I3(\position[13]_i_4_n_0 ),
        .I4(set_origin_n_int_reg_n_0),
        .O(\position[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[13]_i_10 
       (.I0(\position_reg_n_0_[12] ),
        .I1(\position_reg_n_0_[13] ),
        .O(\position[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[13]_i_11 
       (.I0(\position_reg_n_0_[5] ),
        .I1(\position_reg_n_0_[4] ),
        .I2(\position_reg_n_0_[12] ),
        .I3(\position_reg_n_0_[11] ),
        .O(\position[13]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[13]_i_12 
       (.I0(\position_reg_n_0_[7] ),
        .I1(\position_reg_n_0_[6] ),
        .I2(\position_reg_n_0_[13] ),
        .I3(\position_reg_n_0_[10] ),
        .O(\position[13]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[13]_i_13 
       (.I0(\position_reg_n_0_[8] ),
        .I1(\position_reg_n_0_[2] ),
        .I2(\position_reg_n_0_[0] ),
        .I3(\position_reg_n_0_[1] ),
        .O(\position[13]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \position[13]_i_2 
       (.I0(direction_i_2_n_0),
        .O(\position[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[13]_i_3 
       (.I0(\position_reg[13]_i_5_n_7 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAEAAAAAAA)) 
    \position[13]_i_4 
       (.I0(\position[13]_i_7_n_0 ),
        .I1(\position_reg_n_0_[10] ),
        .I2(\position_reg_n_0_[9] ),
        .I3(\position_reg_n_0_[8] ),
        .I4(\position[13]_i_8_n_0 ),
        .I5(\position[13]_i_9_n_0 ),
        .O(\position[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \position[13]_i_6 
       (.I0(\position[13]_i_11_n_0 ),
        .I1(\position[13]_i_12_n_0 ),
        .I2(\position[13]_i_13_n_0 ),
        .I3(direction_reg_0),
        .I4(\position_reg_n_0_[9] ),
        .I5(\position_reg_n_0_[3] ),
        .O(\position[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[13]_i_7 
       (.I0(\position_reg_n_0_[11] ),
        .I1(\position_reg_n_0_[12] ),
        .O(\position[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \position[13]_i_8 
       (.I0(\position_reg_n_0_[2] ),
        .I1(\position_reg_n_0_[1] ),
        .I2(\position_reg_n_0_[0] ),
        .I3(\position_reg_n_0_[3] ),
        .O(\position[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[13]_i_9 
       (.I0(\position_reg_n_0_[7] ),
        .I1(\position_reg_n_0_[6] ),
        .I2(\position_reg_n_0_[5] ),
        .I3(\position_reg_n_0_[4] ),
        .O(\position[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[1]_i_1 
       (.I0(\position_reg[4]_i_1_n_7 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[2]_i_1 
       (.I0(\position_reg[4]_i_1_n_6 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[3]_i_1 
       (.I0(\position_reg[4]_i_1_n_5 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[4]_i_2 
       (.I0(\position_reg_n_0_[3] ),
        .I1(\position_reg_n_0_[4] ),
        .O(\position[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[4]_i_3 
       (.I0(\position_reg_n_0_[2] ),
        .I1(\position_reg_n_0_[3] ),
        .O(\position[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[4]_i_4 
       (.I0(\position_reg_n_0_[1] ),
        .I1(\position_reg_n_0_[2] ),
        .O(\position[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[4]_i_5 
       (.I0(\position_reg_n_0_[1] ),
        .I1(direction_reg_0),
        .O(\position[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[7]_i_2 
       (.I0(\position_reg_n_0_[7] ),
        .I1(\position_reg_n_0_[8] ),
        .O(\position[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[7]_i_3 
       (.I0(\position_reg_n_0_[6] ),
        .I1(\position_reg_n_0_[7] ),
        .O(\position[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[7]_i_4 
       (.I0(\position_reg_n_0_[5] ),
        .I1(\position_reg_n_0_[6] ),
        .O(\position[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \position[7]_i_5 
       (.I0(\position_reg_n_0_[4] ),
        .I1(\position_reg_n_0_[5] ),
        .O(\position[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[8]_i_1 
       (.I0(\position_reg[7]_i_1_n_4 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \position[9]_i_1 
       (.I0(\position_reg[12]_i_2_n_7 ),
        .I1(\position[13]_i_6_n_0 ),
        .O(\position[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[0] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[0]_i_1_n_0 ),
        .Q(\position_reg_n_0_[0] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[10] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[10]_i_1_n_0 ),
        .Q(\position_reg_n_0_[10] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[11] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[12]_i_2_n_5 ),
        .Q(\position_reg_n_0_[11] ),
        .R(\position[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[12] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[12]_i_2_n_4 ),
        .Q(\position_reg_n_0_[12] ),
        .R(\position[12]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \position_reg[12]_i_2 
       (.CI(\position_reg[7]_i_1_n_0 ),
        .CO({\position_reg[12]_i_2_n_0 ,\position_reg[12]_i_2_n_1 ,\position_reg[12]_i_2_n_2 ,\position_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\position_reg_n_0_[11] ,\position_reg_n_0_[10] ,\position_reg_n_0_[9] ,\position_reg_n_0_[8] }),
        .O({\position_reg[12]_i_2_n_4 ,\position_reg[12]_i_2_n_5 ,\position_reg[12]_i_2_n_6 ,\position_reg[12]_i_2_n_7 }),
        .S({\position[12]_i_3_n_0 ,\position[12]_i_4_n_0 ,\position[12]_i_5_n_0 ,\position[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[13] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[13]_i_3_n_0 ),
        .Q(\position_reg_n_0_[13] ),
        .R(\position[13]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \position_reg[13]_i_5 
       (.CI(\position_reg[12]_i_2_n_0 ),
        .CO(\NLW_position_reg[13]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_position_reg[13]_i_5_O_UNCONNECTED [3:1],\position_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b0,\position[13]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[1] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[1]_i_1_n_0 ),
        .Q(\position_reg_n_0_[1] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[2] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[2]_i_1_n_0 ),
        .Q(\position_reg_n_0_[2] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[3] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[3]_i_1_n_0 ),
        .Q(\position_reg_n_0_[3] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[4] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[4]_i_1_n_4 ),
        .Q(\position_reg_n_0_[4] ),
        .R(\position[12]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \position_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\position_reg[4]_i_1_n_0 ,\position_reg[4]_i_1_n_1 ,\position_reg[4]_i_1_n_2 ,\position_reg[4]_i_1_n_3 }),
        .CYINIT(\position_reg_n_0_[0] ),
        .DI({\position_reg_n_0_[3] ,\position_reg_n_0_[2] ,\position_reg_n_0_[1] ,direction_reg_0}),
        .O({\position_reg[4]_i_1_n_4 ,\position_reg[4]_i_1_n_5 ,\position_reg[4]_i_1_n_6 ,\position_reg[4]_i_1_n_7 }),
        .S({\position[4]_i_2_n_0 ,\position[4]_i_3_n_0 ,\position[4]_i_4_n_0 ,\position[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[5] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[7]_i_1_n_7 ),
        .Q(\position_reg_n_0_[5] ),
        .R(\position[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[6] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[7]_i_1_n_6 ),
        .Q(\position_reg_n_0_[6] ),
        .R(\position[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[7] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg[7]_i_1_n_5 ),
        .Q(\position_reg_n_0_[7] ),
        .R(\position[12]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \position_reg[7]_i_1 
       (.CI(\position_reg[4]_i_1_n_0 ),
        .CO({\position_reg[7]_i_1_n_0 ,\position_reg[7]_i_1_n_1 ,\position_reg[7]_i_1_n_2 ,\position_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\position_reg_n_0_[7] ,\position_reg_n_0_[6] ,\position_reg_n_0_[5] ,\position_reg_n_0_[4] }),
        .O({\position_reg[7]_i_1_n_4 ,\position_reg[7]_i_1_n_5 ,\position_reg[7]_i_1_n_6 ,\position_reg[7]_i_1_n_7 }),
        .S({\position[7]_i_2_n_0 ,\position[7]_i_3_n_0 ,\position[7]_i_4_n_0 ,\position[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[8] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[8]_i_1_n_0 ),
        .Q(\position_reg_n_0_[8] ),
        .R(\position[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[9] 
       (.C(clk),
        .CE(\position[13]_i_2_n_0 ),
        .D(\position[9]_i_1_n_0 ),
        .Q(\position_reg_n_0_[9] ),
        .R(\position[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \set_origin_cnt[0]_i_1 
       (.I0(\set_origin_n_new_reg_n_0_[0] ),
        .I1(p_0_in2_in),
        .O(set_origin_cnt0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \set_origin_cnt[0]_i_2 
       (.I0(\set_origin_cnt[0]_i_4_n_0 ),
        .I1(\set_origin_cnt[0]_i_5_n_0 ),
        .I2(\set_origin_cnt[0]_i_6_n_0 ),
        .I3(\set_origin_cnt[0]_i_7_n_0 ),
        .I4(\set_origin_cnt[0]_i_8_n_0 ),
        .O(set_origin_cnt));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \set_origin_cnt[0]_i_4 
       (.I0(set_origin_cnt_reg[18]),
        .I1(set_origin_cnt_reg[11]),
        .I2(set_origin_cnt_reg[15]),
        .I3(set_origin_cnt_reg[8]),
        .O(\set_origin_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \set_origin_cnt[0]_i_5 
       (.I0(set_origin_cnt_reg[5]),
        .I1(set_origin_cnt_reg[3]),
        .I2(set_origin_cnt_reg[13]),
        .I3(set_origin_cnt_reg[0]),
        .O(\set_origin_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \set_origin_cnt[0]_i_6 
       (.I0(set_origin_cnt_reg[12]),
        .I1(set_origin_cnt_reg[1]),
        .I2(set_origin_cnt_reg[14]),
        .I3(set_origin_cnt_reg[9]),
        .O(\set_origin_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \set_origin_cnt[0]_i_7 
       (.I0(set_origin_cnt_reg[17]),
        .I1(set_origin_cnt_reg[2]),
        .I2(set_origin_cnt_reg[10]),
        .I3(set_origin_cnt_reg[6]),
        .O(\set_origin_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \set_origin_cnt[0]_i_8 
       (.I0(set_origin_cnt_reg[7]),
        .I1(set_origin_cnt_reg[16]),
        .I2(set_origin_cnt_reg[4]),
        .O(\set_origin_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \set_origin_cnt[0]_i_9 
       (.I0(set_origin_cnt_reg[0]),
        .O(\set_origin_cnt[0]_i_9_n_0 ));
  FDRE \set_origin_cnt_reg[0] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[0]_i_3_n_7 ),
        .Q(set_origin_cnt_reg[0]),
        .R(set_origin_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \set_origin_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\set_origin_cnt_reg[0]_i_3_n_0 ,\set_origin_cnt_reg[0]_i_3_n_1 ,\set_origin_cnt_reg[0]_i_3_n_2 ,\set_origin_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\set_origin_cnt_reg[0]_i_3_n_4 ,\set_origin_cnt_reg[0]_i_3_n_5 ,\set_origin_cnt_reg[0]_i_3_n_6 ,\set_origin_cnt_reg[0]_i_3_n_7 }),
        .S({set_origin_cnt_reg[3:1],\set_origin_cnt[0]_i_9_n_0 }));
  FDRE \set_origin_cnt_reg[10] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[8]_i_1_n_5 ),
        .Q(set_origin_cnt_reg[10]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[11] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[8]_i_1_n_4 ),
        .Q(set_origin_cnt_reg[11]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[12] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[12]_i_1_n_7 ),
        .Q(set_origin_cnt_reg[12]),
        .R(set_origin_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \set_origin_cnt_reg[12]_i_1 
       (.CI(\set_origin_cnt_reg[8]_i_1_n_0 ),
        .CO({\set_origin_cnt_reg[12]_i_1_n_0 ,\set_origin_cnt_reg[12]_i_1_n_1 ,\set_origin_cnt_reg[12]_i_1_n_2 ,\set_origin_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\set_origin_cnt_reg[12]_i_1_n_4 ,\set_origin_cnt_reg[12]_i_1_n_5 ,\set_origin_cnt_reg[12]_i_1_n_6 ,\set_origin_cnt_reg[12]_i_1_n_7 }),
        .S(set_origin_cnt_reg[15:12]));
  FDRE \set_origin_cnt_reg[13] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[12]_i_1_n_6 ),
        .Q(set_origin_cnt_reg[13]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[14] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[12]_i_1_n_5 ),
        .Q(set_origin_cnt_reg[14]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[15] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[12]_i_1_n_4 ),
        .Q(set_origin_cnt_reg[15]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[16] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[16]_i_1_n_7 ),
        .Q(set_origin_cnt_reg[16]),
        .R(set_origin_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \set_origin_cnt_reg[16]_i_1 
       (.CI(\set_origin_cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_set_origin_cnt_reg[16]_i_1_CO_UNCONNECTED [3:2],\set_origin_cnt_reg[16]_i_1_n_2 ,\set_origin_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_set_origin_cnt_reg[16]_i_1_O_UNCONNECTED [3],\set_origin_cnt_reg[16]_i_1_n_5 ,\set_origin_cnt_reg[16]_i_1_n_6 ,\set_origin_cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,set_origin_cnt_reg[18:16]}));
  FDRE \set_origin_cnt_reg[17] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[16]_i_1_n_6 ),
        .Q(set_origin_cnt_reg[17]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[18] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[16]_i_1_n_5 ),
        .Q(set_origin_cnt_reg[18]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[1] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[0]_i_3_n_6 ),
        .Q(set_origin_cnt_reg[1]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[2] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[0]_i_3_n_5 ),
        .Q(set_origin_cnt_reg[2]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[3] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[0]_i_3_n_4 ),
        .Q(set_origin_cnt_reg[3]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[4] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[4]_i_1_n_7 ),
        .Q(set_origin_cnt_reg[4]),
        .R(set_origin_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \set_origin_cnt_reg[4]_i_1 
       (.CI(\set_origin_cnt_reg[0]_i_3_n_0 ),
        .CO({\set_origin_cnt_reg[4]_i_1_n_0 ,\set_origin_cnt_reg[4]_i_1_n_1 ,\set_origin_cnt_reg[4]_i_1_n_2 ,\set_origin_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\set_origin_cnt_reg[4]_i_1_n_4 ,\set_origin_cnt_reg[4]_i_1_n_5 ,\set_origin_cnt_reg[4]_i_1_n_6 ,\set_origin_cnt_reg[4]_i_1_n_7 }),
        .S(set_origin_cnt_reg[7:4]));
  FDRE \set_origin_cnt_reg[5] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[4]_i_1_n_6 ),
        .Q(set_origin_cnt_reg[5]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[6] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[4]_i_1_n_5 ),
        .Q(set_origin_cnt_reg[6]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[7] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[4]_i_1_n_4 ),
        .Q(set_origin_cnt_reg[7]),
        .R(set_origin_cnt0));
  FDRE \set_origin_cnt_reg[8] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[8]_i_1_n_7 ),
        .Q(set_origin_cnt_reg[8]),
        .R(set_origin_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \set_origin_cnt_reg[8]_i_1 
       (.CI(\set_origin_cnt_reg[4]_i_1_n_0 ),
        .CO({\set_origin_cnt_reg[8]_i_1_n_0 ,\set_origin_cnt_reg[8]_i_1_n_1 ,\set_origin_cnt_reg[8]_i_1_n_2 ,\set_origin_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\set_origin_cnt_reg[8]_i_1_n_4 ,\set_origin_cnt_reg[8]_i_1_n_5 ,\set_origin_cnt_reg[8]_i_1_n_6 ,\set_origin_cnt_reg[8]_i_1_n_7 }),
        .S(set_origin_cnt_reg[11:8]));
  FDRE \set_origin_cnt_reg[9] 
       (.C(clk),
        .CE(set_origin_cnt),
        .D(\set_origin_cnt_reg[8]_i_1_n_6 ),
        .Q(set_origin_cnt_reg[9]),
        .R(set_origin_cnt0));
  LUT4 #(
    .INIT(16'hFE08)) 
    set_origin_n_int_i_1
       (.I0(p_0_in2_in),
        .I1(\set_origin_n_new_reg_n_0_[0] ),
        .I2(set_origin_cnt),
        .I3(set_origin_n_int_reg_n_0),
        .O(set_origin_n_int_i_1_n_0));
  FDRE set_origin_n_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_origin_n_int_i_1_n_0),
        .Q(set_origin_n_int_reg_n_0),
        .R(1'b0));
  FDRE \set_origin_n_new_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(set_origin_n),
        .Q(\set_origin_n_new_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \set_origin_n_new_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_origin_n_new_reg_n_0_[0] ),
        .Q(p_0_in2_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h14555514FFFFFFFF)) 
    update_i_1
       (.I0(debounce_cnt),
        .I1(p_0_in0_in),
        .I2(b_prev),
        .I3(p_0_in_0),
        .I4(a_prev_reg_n_0),
        .I5(set_origin_n_int_reg_n_0),
        .O(update_i_1_n_0));
  FDRE update_reg
       (.C(clk),
        .CE(1'b1),
        .D(update_i_1_n_0),
        .Q(update),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \value[13]_i_1 
       (.I0(set_origin_n_int_reg_n_0),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00006FF6)) 
    \value[13]_i_2 
       (.I0(a_prev_reg_n_0),
        .I1(p_0_in_0),
        .I2(b_prev),
        .I3(p_0_in0_in),
        .I4(debounce_cnt),
        .O(position0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[0] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[0] ),
        .Q(value[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[10] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[10] ),
        .Q(value[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[11] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[11] ),
        .Q(value[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[12] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[12] ),
        .Q(value[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[13] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[13] ),
        .Q(value[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[1] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[1] ),
        .Q(value[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[2] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[2] ),
        .Q(value[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[3] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[3] ),
        .Q(value[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[4] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[4] ),
        .Q(value[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[5] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[5] ),
        .Q(value[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[6] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[6] ),
        .Q(value[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[7] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[7] ),
        .Q(value[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[8] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[8] ),
        .Q(value[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[9] 
       (.C(clk),
        .CE(position0),
        .D(\position_reg_n_0_[9] ),
        .Q(value[9]),
        .R(p_0_in));
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
