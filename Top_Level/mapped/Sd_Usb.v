/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Tue Dec 15 21:12:25 2015
/////////////////////////////////////////////////////////////


module flex_counter_NUM_CNT_BITS16_1_DW01_dec_0 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;
  wire   n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;

  INVX2 U1 ( .A(n30), .Y(SUM[1]) );
  INVX2 U2 ( .A(n37), .Y(SUM[11]) );
  INVX2 U3 ( .A(n34), .Y(SUM[13]) );
  INVX2 U4 ( .A(n31), .Y(SUM[15]) );
  INVX2 U5 ( .A(n17), .Y(SUM[9]) );
  INVX2 U6 ( .A(n21), .Y(SUM[7]) );
  INVX2 U7 ( .A(n24), .Y(SUM[5]) );
  INVX2 U8 ( .A(n27), .Y(SUM[3]) );
  INVX2 U9 ( .A(A[10]), .Y(n9) );
  INVX2 U10 ( .A(A[12]), .Y(n10) );
  INVX2 U11 ( .A(A[14]), .Y(n11) );
  INVX2 U12 ( .A(A[8]), .Y(n12) );
  INVX2 U13 ( .A(A[6]), .Y(n13) );
  INVX2 U14 ( .A(A[4]), .Y(n14) );
  INVX2 U15 ( .A(A[2]), .Y(n15) );
  INVX2 U16 ( .A(A[0]), .Y(SUM[0]) );
  AOI21X1 U17 ( .A(n18), .B(A[9]), .C(n19), .Y(n17) );
  OAI21X1 U18 ( .A(n20), .B(n12), .C(n18), .Y(SUM[8]) );
  AOI21X1 U19 ( .A(n22), .B(A[7]), .C(n20), .Y(n21) );
  OAI21X1 U20 ( .A(n23), .B(n13), .C(n22), .Y(SUM[6]) );
  AOI21X1 U21 ( .A(n25), .B(A[5]), .C(n23), .Y(n24) );
  OAI21X1 U22 ( .A(n26), .B(n14), .C(n25), .Y(SUM[4]) );
  AOI21X1 U23 ( .A(n28), .B(A[3]), .C(n26), .Y(n27) );
  OAI21X1 U24 ( .A(n29), .B(n15), .C(n28), .Y(SUM[2]) );
  AOI21X1 U25 ( .A(A[0]), .B(A[1]), .C(n29), .Y(n30) );
  AOI21X1 U26 ( .A(n32), .B(A[15]), .C(SUM[16]), .Y(n31) );
  NOR2X1 U27 ( .A(n32), .B(A[15]), .Y(SUM[16]) );
  OAI21X1 U28 ( .A(n33), .B(n11), .C(n32), .Y(SUM[14]) );
  NAND2X1 U29 ( .A(n33), .B(n11), .Y(n32) );
  AOI21X1 U30 ( .A(n35), .B(A[13]), .C(n33), .Y(n34) );
  NOR2X1 U31 ( .A(n35), .B(A[13]), .Y(n33) );
  OAI21X1 U32 ( .A(n36), .B(n10), .C(n35), .Y(SUM[12]) );
  NAND2X1 U33 ( .A(n36), .B(n10), .Y(n35) );
  AOI21X1 U34 ( .A(n38), .B(A[11]), .C(n36), .Y(n37) );
  NOR2X1 U35 ( .A(n38), .B(A[11]), .Y(n36) );
  OAI21X1 U36 ( .A(n19), .B(n9), .C(n38), .Y(SUM[10]) );
  NAND2X1 U37 ( .A(n19), .B(n9), .Y(n38) );
  NOR2X1 U38 ( .A(n18), .B(A[9]), .Y(n19) );
  NAND2X1 U39 ( .A(n20), .B(n12), .Y(n18) );
  NOR2X1 U40 ( .A(n22), .B(A[7]), .Y(n20) );
  NAND2X1 U41 ( .A(n23), .B(n13), .Y(n22) );
  NOR2X1 U42 ( .A(n25), .B(A[5]), .Y(n23) );
  NAND2X1 U43 ( .A(n26), .B(n14), .Y(n25) );
  NOR2X1 U44 ( .A(n28), .B(A[3]), .Y(n26) );
  NAND2X1 U45 ( .A(n29), .B(n15), .Y(n28) );
  NOR2X1 U46 ( .A(A[1]), .B(A[0]), .Y(n29) );
endmodule


module flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n18,
         n19, n20, n21, n23, n24, n25, n27, n28, n29, n31, n33, n35, n36, n38,
         n39, n40, n41, n42, n43, n44, n46, n47, n48, n50, n52, n54, n55, n56,
         n57, n58, n59, n61, n62, n64, n65, n66, n68, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123;
  assign n12 = A[13];
  assign n16 = A[12];
  assign n21 = A[11];
  assign n25 = A[10];
  assign n31 = A[9];
  assign n35 = A[8];
  assign n40 = A[7];
  assign n44 = A[6];
  assign n50 = A[5];
  assign n54 = A[4];
  assign n59 = A[3];
  assign n62 = A[2];
  assign n66 = A[1];
  assign n68 = A[0];

  XNOR2X1 U4 ( .A(n8), .B(n7), .Y(SUM[14]) );
  NOR2X1 U5 ( .A(n1), .B(n5), .Y(n4) );
  NAND2X1 U6 ( .A(n2), .B(n6), .Y(n5) );
  NOR2X1 U7 ( .A(n7), .B(n11), .Y(n6) );
  NOR2X1 U10 ( .A(n1), .B(n9), .Y(n8) );
  NAND2X1 U11 ( .A(n10), .B(n121), .Y(n9) );
  NAND2X1 U13 ( .A(n12), .B(n16), .Y(n11) );
  NOR2X1 U17 ( .A(n1), .B(n15), .Y(n14) );
  NAND2X1 U18 ( .A(n16), .B(n121), .Y(n15) );
  NOR2X1 U22 ( .A(n19), .B(n1), .Y(n18) );
  NOR2X1 U24 ( .A(n116), .B(n28), .Y(n2) );
  NAND2X1 U25 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U29 ( .A(n24), .B(n1), .Y(n23) );
  NAND2X1 U30 ( .A(n25), .B(n29), .Y(n24) );
  NOR2X1 U34 ( .A(n112), .B(n1), .Y(n27) );
  NAND2X1 U37 ( .A(n31), .B(n35), .Y(n28) );
  NOR2X1 U41 ( .A(n36), .B(n1), .Y(n33) );
  XNOR2X1 U45 ( .A(n42), .B(n41), .Y(SUM[7]) );
  NOR2X1 U47 ( .A(n39), .B(n47), .Y(n38) );
  NAND2X1 U48 ( .A(n40), .B(n44), .Y(n39) );
  NOR2X1 U52 ( .A(n43), .B(n56), .Y(n42) );
  NAND2X1 U53 ( .A(n119), .B(n48), .Y(n43) );
  NOR2X1 U57 ( .A(n122), .B(n108), .Y(n46) );
  NAND2X1 U60 ( .A(n50), .B(n54), .Y(n47) );
  XOR2X1 U63 ( .A(n108), .B(n55), .Y(SUM[4]) );
  NOR2X1 U64 ( .A(n55), .B(n56), .Y(n52) );
  NOR2X1 U70 ( .A(n65), .B(n58), .Y(n57) );
  NAND2X1 U71 ( .A(n59), .B(n62), .Y(n58) );
  NAND2X1 U75 ( .A(n115), .B(n64), .Y(n61) );
  NAND2X1 U80 ( .A(n66), .B(n68), .Y(n65) );
  XNOR2X1 U87 ( .A(n52), .B(n105), .Y(SUM[5]) );
  INVX1 U88 ( .A(n50), .Y(n105) );
  XNOR2X1 U89 ( .A(n23), .B(n106), .Y(SUM[11]) );
  INVX1 U90 ( .A(n21), .Y(n106) );
  INVX1 U91 ( .A(n123), .Y(n107) );
  INVX2 U92 ( .A(A[15]), .Y(n113) );
  INVX2 U93 ( .A(n114), .Y(n115) );
  BUFX2 U94 ( .A(n56), .Y(n108) );
  XNOR2X1 U95 ( .A(n18), .B(n109), .Y(SUM[12]) );
  INVX1 U96 ( .A(n16), .Y(n109) );
  XNOR2X1 U97 ( .A(n33), .B(n110), .Y(SUM[9]) );
  INVX1 U98 ( .A(n31), .Y(n110) );
  XNOR2X1 U99 ( .A(n27), .B(n111), .Y(SUM[10]) );
  INVX1 U100 ( .A(n25), .Y(n111) );
  BUFX2 U101 ( .A(n28), .Y(n112) );
  INVX1 U102 ( .A(n65), .Y(n64) );
  XNOR2X1 U103 ( .A(n4), .B(n113), .Y(SUM[15]) );
  INVX1 U104 ( .A(n62), .Y(n114) );
  NAND2X1 U105 ( .A(n21), .B(n25), .Y(n116) );
  INVX1 U106 ( .A(SUM[0]), .Y(n117) );
  INVX1 U107 ( .A(n68), .Y(SUM[0]) );
  INVX1 U108 ( .A(n35), .Y(n36) );
  BUFX2 U109 ( .A(n66), .Y(n118) );
  BUFX2 U110 ( .A(n44), .Y(n119) );
  BUFX2 U111 ( .A(n59), .Y(n120) );
  INVX1 U112 ( .A(n11), .Y(n10) );
  NOR2X1 U113 ( .A(n20), .B(n28), .Y(n121) );
  XOR2X1 U114 ( .A(n107), .B(n36), .Y(SUM[8]) );
  XOR2X1 U115 ( .A(n14), .B(n12), .Y(SUM[13]) );
  XOR2X1 U116 ( .A(n46), .B(n119), .Y(SUM[6]) );
  XOR2X1 U117 ( .A(n64), .B(n115), .Y(SUM[2]) );
  XNOR2X1 U118 ( .A(n61), .B(n120), .Y(SUM[3]) );
  XOR2X1 U119 ( .A(n118), .B(n117), .Y(SUM[1]) );
  INVX1 U120 ( .A(n28), .Y(n29) );
  BUFX2 U121 ( .A(n47), .Y(n122) );
  INVX1 U122 ( .A(n2), .Y(n19) );
  INVX4 U123 ( .A(n123), .Y(n1) );
  INVX1 U124 ( .A(n54), .Y(n55) );
  INVX1 U125 ( .A(n57), .Y(n56) );
  INVX1 U126 ( .A(n47), .Y(n48) );
  AND2X2 U127 ( .A(n57), .B(n38), .Y(n123) );
  INVX1 U128 ( .A(n40), .Y(n41) );
  INVX2 U129 ( .A(A[14]), .Y(n7) );
endmodule


module flex_counter_NUM_CNT_BITS16_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n155, n156, next_flag, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, n108, n110, n112, n114, n116, n118,
         n120, n122, n124, n126, n128, n130, n132, n134, n136, n138, N46, N45,
         N44, N43, N41, N40, N39, N38, N35, N33, N32, N31, n2, n4, n5, n6, n7,
         n8, n9, n11, n12, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n117, n121, n125, n127, n129, n131,
         n133, n135, n137, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154;
  wire   [15:0] next_count;

  DFFSR \cur_count_reg[8]  ( .D(n124), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \cur_count_reg[6]  ( .D(n120), .CLK(clk), .R(n33), .S(1'b1), .Q(n155)
         );
  DFFSR \cur_count_reg[4]  ( .D(n116), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \cur_count_reg[3]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n156) );
  DFFSR \cur_count_reg[2]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[1]  ( .D(n110), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[0]  ( .D(n108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  flex_counter_NUM_CNT_BITS16_1_DW01_dec_0 sub_37 ( .A({1'b0, rollover_val}), 
        .SUM({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7}) );
  flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 add_35_aco ( .A({N46, N45, N44, N43, 
        n4, N41, N40, N39, N38, n5, n2, N35, n6, N33, N32, N31}), .SUM(
        next_count) );
  DFFSR \cur_count_reg[7]  ( .D(n122), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \cur_count_reg[5]  ( .D(n118), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \cur_count_reg[13]  ( .D(n134), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \cur_count_reg[11]  ( .D(n130), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \cur_count_reg[9]  ( .D(n126), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \cur_count_reg[10]  ( .D(n128), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \cur_count_reg[12]  ( .D(n132), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[12]) );
  DFFSR \cur_count_reg[14]  ( .D(n136), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \cur_count_reg[15]  ( .D(n138), .CLK(clk), .R(n33), .S(1'b1), .Q(
        count_out[15]) );
  INVX1 U3 ( .A(n117), .Y(count_out[3]) );
  INVX1 U4 ( .A(n141), .Y(n114) );
  INVX4 U5 ( .A(n28), .Y(N41) );
  INVX4 U6 ( .A(n135), .Y(n153) );
  INVX2 U8 ( .A(n121), .Y(n23) );
  INVX2 U9 ( .A(n101), .Y(n27) );
  INVX2 U10 ( .A(n9), .Y(count_out[6]) );
  NOR2X1 U11 ( .A(n104), .B(n29), .Y(n2) );
  NOR2X1 U12 ( .A(n102), .B(n97), .Y(n4) );
  NOR2X1 U13 ( .A(n30), .B(n103), .Y(n5) );
  NOR2X1 U14 ( .A(n29), .B(n117), .Y(n6) );
  INVX2 U15 ( .A(n7), .Y(n22) );
  INVX1 U16 ( .A(n145), .Y(n122) );
  INVX1 U17 ( .A(n143), .Y(n118) );
  INVX1 U18 ( .A(n146), .Y(n124) );
  INVX1 U19 ( .A(n142), .Y(n116) );
  MUX2X1 U20 ( .B(count_out[12]), .A(next_count[12]), .S(n26), .Y(n150) );
  INVX1 U21 ( .A(n148), .Y(n128) );
  INVX1 U22 ( .A(n149), .Y(n130) );
  INVX1 U23 ( .A(n147), .Y(n126) );
  INVX1 U24 ( .A(clear), .Y(n7) );
  INVX2 U25 ( .A(clear), .Y(n125) );
  INVX1 U26 ( .A(n22), .Y(n8) );
  INVX1 U27 ( .A(n155), .Y(n9) );
  NAND2X1 U28 ( .A(n88), .B(n87), .Y(n11) );
  INVX1 U29 ( .A(n144), .Y(n120) );
  INVX2 U30 ( .A(n62), .Y(n12) );
  INVX1 U40 ( .A(n156), .Y(n117) );
  INVX1 U41 ( .A(n11), .Y(n89) );
  INVX1 U42 ( .A(n155), .Y(n103) );
  AND2X2 U43 ( .A(n25), .B(n23), .Y(N33) );
  MUX2X1 U44 ( .B(count_out[15]), .A(next_count[15]), .S(n26), .Y(n154) );
  MUX2X1 U45 ( .B(count_out[13]), .A(next_count[13]), .S(n26), .Y(n151) );
  INVX4 U46 ( .A(n153), .Y(n26) );
  AND2X2 U47 ( .A(n32), .B(n24), .Y(N45) );
  INVX8 U48 ( .A(n94), .Y(n24) );
  INVX1 U49 ( .A(n30), .Y(n25) );
  MUX2X1 U50 ( .B(count_out[14]), .A(next_count[14]), .S(n26), .Y(n152) );
  INVX1 U51 ( .A(n150), .Y(n132) );
  AND2X2 U52 ( .A(n32), .B(n27), .Y(N38) );
  OR2X2 U53 ( .A(n102), .B(n98), .Y(n28) );
  INVX1 U54 ( .A(count_enable), .Y(n62) );
  NAND2X1 U55 ( .A(n125), .B(n31), .Y(n29) );
  NAND2X1 U56 ( .A(n31), .B(n125), .Y(n30) );
  INVX2 U57 ( .A(n34), .Y(n33) );
  INVX2 U58 ( .A(n_rst), .Y(n34) );
  INVX1 U59 ( .A(n151), .Y(n134) );
  AND2X2 U60 ( .A(count_enable), .B(n131), .Y(n31) );
  INVX1 U61 ( .A(n154), .Y(n138) );
  INVX4 U62 ( .A(n32), .Y(n102) );
  INVX1 U63 ( .A(n152), .Y(n136) );
  AND2X2 U64 ( .A(n125), .B(n31), .Y(n32) );
  XOR2X1 U65 ( .A(count_out[6]), .B(N13), .Y(n35) );
  NOR2X1 U66 ( .A(n35), .B(n22), .Y(n39) );
  XOR2X1 U67 ( .A(count_out[8]), .B(N15), .Y(n37) );
  XOR2X1 U68 ( .A(count_out[4]), .B(N11), .Y(n36) );
  NOR2X1 U69 ( .A(n37), .B(n36), .Y(n38) );
  NAND3X1 U70 ( .A(n39), .B(n12), .C(n38), .Y(n92) );
  XNOR2X1 U71 ( .A(count_out[1]), .B(N8), .Y(n41) );
  XNOR2X1 U72 ( .A(count_out[5]), .B(N12), .Y(n40) );
  NAND2X1 U73 ( .A(n41), .B(n40), .Y(n46) );
  XNOR2X1 U74 ( .A(count_out[9]), .B(N16), .Y(n44) );
  XNOR2X1 U75 ( .A(count_out[3]), .B(N10), .Y(n43) );
  INVX2 U76 ( .A(count_out[15]), .Y(n93) );
  XOR2X1 U77 ( .A(n93), .B(N22), .Y(n42) );
  NAND3X1 U78 ( .A(n44), .B(n43), .C(n42), .Y(n45) );
  NOR2X1 U79 ( .A(n46), .B(n45), .Y(n61) );
  XOR2X1 U80 ( .A(count_out[12]), .B(N19), .Y(n51) );
  XNOR2X1 U81 ( .A(count_out[0]), .B(N7), .Y(n49) );
  INVX2 U82 ( .A(N23), .Y(n48) );
  INVX2 U83 ( .A(count_out[7]), .Y(n101) );
  XOR2X1 U84 ( .A(n101), .B(N14), .Y(n47) );
  NAND3X1 U85 ( .A(n49), .B(n48), .C(n47), .Y(n50) );
  NOR2X1 U86 ( .A(n51), .B(n50), .Y(n60) );
  INVX2 U87 ( .A(count_out[2]), .Y(n121) );
  XOR2X1 U88 ( .A(n121), .B(N9), .Y(n53) );
  INVX2 U89 ( .A(count_out[11]), .Y(n97) );
  XOR2X1 U90 ( .A(n97), .B(N18), .Y(n52) );
  NAND2X1 U91 ( .A(n53), .B(n52), .Y(n58) );
  INVX2 U92 ( .A(count_out[10]), .Y(n98) );
  XOR2X1 U93 ( .A(n98), .B(N17), .Y(n56) );
  INVX2 U94 ( .A(count_out[13]), .Y(n95) );
  XOR2X1 U95 ( .A(n95), .B(N20), .Y(n55) );
  INVX2 U96 ( .A(count_out[14]), .Y(n94) );
  XOR2X1 U97 ( .A(n94), .B(N21), .Y(n54) );
  NAND3X1 U98 ( .A(n56), .B(n55), .C(n54), .Y(n57) );
  NOR2X1 U99 ( .A(n58), .B(n57), .Y(n59) );
  NAND3X1 U100 ( .A(n61), .B(n60), .C(n59), .Y(n91) );
  NAND2X1 U101 ( .A(n8), .B(n62), .Y(n135) );
  INVX2 U102 ( .A(count_out[5]), .Y(n104) );
  XOR2X1 U103 ( .A(n104), .B(rollover_val[5]), .Y(n67) );
  XOR2X1 U104 ( .A(rollover_val[6]), .B(n155), .Y(n64) );
  XOR2X1 U105 ( .A(rollover_val[7]), .B(count_out[7]), .Y(n63) );
  NOR2X1 U106 ( .A(n64), .B(n63), .Y(n66) );
  INVX2 U107 ( .A(count_out[4]), .Y(n105) );
  XOR2X1 U108 ( .A(n105), .B(rollover_val[4]), .Y(n65) );
  NAND3X1 U109 ( .A(n67), .B(n66), .C(n65), .Y(n74) );
  XOR2X1 U110 ( .A(rollover_val[3]), .B(n156), .Y(n69) );
  XOR2X1 U111 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n68) );
  NOR2X1 U112 ( .A(n69), .B(n68), .Y(n72) );
  XNOR2X1 U113 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n71) );
  XNOR2X1 U114 ( .A(count_out[1]), .B(rollover_val[1]), .Y(n70) );
  NAND3X1 U121 ( .A(n72), .B(n71), .C(n70), .Y(n73) );
  NOR2X1 U123 ( .A(n74), .B(n73), .Y(n88) );
  INVX2 U125 ( .A(count_out[12]), .Y(n96) );
  XOR2X1 U126 ( .A(n96), .B(rollover_val[12]), .Y(n79) );
  XOR2X1 U127 ( .A(rollover_val[15]), .B(count_out[15]), .Y(n76) );
  XOR2X1 U128 ( .A(rollover_val[14]), .B(count_out[14]), .Y(n75) );
  NOR2X1 U129 ( .A(n76), .B(n75), .Y(n78) );
  XOR2X1 U130 ( .A(n95), .B(rollover_val[13]), .Y(n77) );
  NAND3X1 U131 ( .A(n79), .B(n78), .C(n77), .Y(n86) );
  INVX2 U132 ( .A(count_out[9]), .Y(n99) );
  XOR2X1 U133 ( .A(n99), .B(rollover_val[9]), .Y(n84) );
  XOR2X1 U134 ( .A(rollover_val[10]), .B(count_out[10]), .Y(n81) );
  XOR2X1 U135 ( .A(rollover_val[11]), .B(count_out[11]), .Y(n80) );
  NOR2X1 U136 ( .A(n81), .B(n80), .Y(n83) );
  INVX2 U137 ( .A(count_out[8]), .Y(n100) );
  XOR2X1 U138 ( .A(n100), .B(rollover_val[8]), .Y(n82) );
  NAND3X1 U139 ( .A(n84), .B(n83), .C(n82), .Y(n85) );
  NOR2X1 U140 ( .A(n86), .B(n85), .Y(n87) );
  NAND2X1 U141 ( .A(n87), .B(n88), .Y(n131) );
  NAND2X1 U142 ( .A(n153), .B(n89), .Y(n90) );
  OAI21X1 U143 ( .A(n92), .B(n91), .C(n90), .Y(next_flag) );
  NOR2X1 U144 ( .A(n29), .B(n93), .Y(N46) );
  NOR2X1 U145 ( .A(n102), .B(n95), .Y(N44) );
  NOR2X1 U146 ( .A(n102), .B(n96), .Y(N43) );
  NOR2X1 U147 ( .A(n102), .B(n99), .Y(N40) );
  NOR2X1 U148 ( .A(n102), .B(n100), .Y(N39) );
  NOR2X1 U149 ( .A(n30), .B(n105), .Y(N35) );
  NAND2X1 U150 ( .A(n12), .B(n7), .Y(n129) );
  NAND2X1 U151 ( .A(count_out[1]), .B(n11), .Y(n127) );
  NOR2X1 U152 ( .A(n129), .B(n127), .Y(N32) );
  NAND3X1 U153 ( .A(count_out[0]), .B(n11), .C(n12), .Y(n133) );
  NOR2X1 U154 ( .A(n22), .B(n133), .Y(N31) );
  MUX2X1 U155 ( .B(next_count[0]), .A(count_out[0]), .S(n153), .Y(n137) );
  INVX2 U156 ( .A(n137), .Y(n108) );
  MUX2X1 U157 ( .B(next_count[1]), .A(count_out[1]), .S(n153), .Y(n139) );
  INVX2 U158 ( .A(n139), .Y(n110) );
  MUX2X1 U159 ( .B(next_count[2]), .A(count_out[2]), .S(n153), .Y(n140) );
  INVX2 U160 ( .A(n140), .Y(n112) );
  MUX2X1 U161 ( .B(next_count[3]), .A(count_out[3]), .S(n153), .Y(n141) );
  MUX2X1 U162 ( .B(next_count[4]), .A(count_out[4]), .S(n153), .Y(n142) );
  MUX2X1 U163 ( .B(next_count[5]), .A(count_out[5]), .S(n153), .Y(n143) );
  MUX2X1 U164 ( .B(next_count[6]), .A(count_out[6]), .S(n153), .Y(n144) );
  MUX2X1 U165 ( .B(next_count[7]), .A(count_out[7]), .S(n153), .Y(n145) );
  MUX2X1 U166 ( .B(next_count[8]), .A(count_out[8]), .S(n153), .Y(n146) );
  MUX2X1 U167 ( .B(next_count[9]), .A(count_out[9]), .S(n153), .Y(n147) );
  MUX2X1 U168 ( .B(next_count[10]), .A(count_out[10]), .S(n153), .Y(n148) );
  MUX2X1 U169 ( .B(next_count[11]), .A(count_out[11]), .S(n153), .Y(n149) );
endmodule


module flex_counter_NUM_CNT_BITS16_0_DW01_dec_0 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;
  wire   n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;

  INVX2 U1 ( .A(n30), .Y(SUM[1]) );
  INVX2 U2 ( .A(n37), .Y(SUM[11]) );
  INVX2 U3 ( .A(n34), .Y(SUM[13]) );
  INVX2 U4 ( .A(n31), .Y(SUM[15]) );
  INVX2 U5 ( .A(n17), .Y(SUM[9]) );
  INVX2 U6 ( .A(n21), .Y(SUM[7]) );
  INVX2 U7 ( .A(n24), .Y(SUM[5]) );
  INVX2 U8 ( .A(n27), .Y(SUM[3]) );
  INVX2 U9 ( .A(A[10]), .Y(n9) );
  INVX2 U10 ( .A(A[12]), .Y(n10) );
  INVX2 U11 ( .A(A[14]), .Y(n11) );
  INVX2 U12 ( .A(A[8]), .Y(n12) );
  INVX2 U13 ( .A(A[6]), .Y(n13) );
  INVX2 U14 ( .A(A[4]), .Y(n14) );
  INVX2 U15 ( .A(A[2]), .Y(n15) );
  INVX2 U16 ( .A(A[0]), .Y(SUM[0]) );
  AOI21X1 U17 ( .A(n18), .B(A[9]), .C(n19), .Y(n17) );
  OAI21X1 U18 ( .A(n20), .B(n12), .C(n18), .Y(SUM[8]) );
  AOI21X1 U19 ( .A(n22), .B(A[7]), .C(n20), .Y(n21) );
  OAI21X1 U20 ( .A(n23), .B(n13), .C(n22), .Y(SUM[6]) );
  AOI21X1 U21 ( .A(n25), .B(A[5]), .C(n23), .Y(n24) );
  OAI21X1 U22 ( .A(n26), .B(n14), .C(n25), .Y(SUM[4]) );
  AOI21X1 U23 ( .A(n28), .B(A[3]), .C(n26), .Y(n27) );
  OAI21X1 U24 ( .A(n29), .B(n15), .C(n28), .Y(SUM[2]) );
  AOI21X1 U25 ( .A(A[0]), .B(A[1]), .C(n29), .Y(n30) );
  AOI21X1 U26 ( .A(n32), .B(A[15]), .C(SUM[16]), .Y(n31) );
  NOR2X1 U27 ( .A(n32), .B(A[15]), .Y(SUM[16]) );
  OAI21X1 U28 ( .A(n33), .B(n11), .C(n32), .Y(SUM[14]) );
  NAND2X1 U29 ( .A(n33), .B(n11), .Y(n32) );
  AOI21X1 U30 ( .A(n35), .B(A[13]), .C(n33), .Y(n34) );
  NOR2X1 U31 ( .A(n35), .B(A[13]), .Y(n33) );
  OAI21X1 U32 ( .A(n36), .B(n10), .C(n35), .Y(SUM[12]) );
  NAND2X1 U33 ( .A(n36), .B(n10), .Y(n35) );
  AOI21X1 U34 ( .A(n38), .B(A[11]), .C(n36), .Y(n37) );
  NOR2X1 U35 ( .A(n38), .B(A[11]), .Y(n36) );
  OAI21X1 U36 ( .A(n19), .B(n9), .C(n38), .Y(SUM[10]) );
  NAND2X1 U37 ( .A(n19), .B(n9), .Y(n38) );
  NOR2X1 U38 ( .A(n18), .B(A[9]), .Y(n19) );
  NAND2X1 U39 ( .A(n20), .B(n12), .Y(n18) );
  NOR2X1 U40 ( .A(n22), .B(A[7]), .Y(n20) );
  NAND2X1 U41 ( .A(n23), .B(n13), .Y(n22) );
  NOR2X1 U42 ( .A(n25), .B(A[5]), .Y(n23) );
  NAND2X1 U43 ( .A(n26), .B(n14), .Y(n25) );
  NOR2X1 U44 ( .A(n28), .B(A[3]), .Y(n26) );
  NAND2X1 U45 ( .A(n29), .B(n15), .Y(n28) );
  NOR2X1 U46 ( .A(A[1]), .B(A[0]), .Y(n29) );
endmodule


module flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n2, n4, n5, n6, n7, n9, n10, n11, n12, n14, n15, n16, n18, n19, n20,
         n21, n23, n24, n25, n27, n28, n29, n31, n33, n35, n36, n38, n39, n40,
         n41, n42, n43, n44, n46, n48, n50, n52, n54, n55, n56, n57, n58, n59,
         n61, n62, n64, n65, n66, n68, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;
  assign n12 = A[13];
  assign n16 = A[12];
  assign n21 = A[11];
  assign n25 = A[10];
  assign n31 = A[9];
  assign n35 = A[8];
  assign n40 = A[7];
  assign n44 = A[6];
  assign n50 = A[5];
  assign n54 = A[4];
  assign n59 = A[3];
  assign n62 = A[2];
  assign n66 = A[1];
  assign n68 = A[0];

  NOR2X1 U5 ( .A(n111), .B(n5), .Y(n4) );
  NAND2X1 U6 ( .A(n6), .B(n2), .Y(n5) );
  NOR2X1 U7 ( .A(n7), .B(n11), .Y(n6) );
  NAND2X1 U11 ( .A(n10), .B(n138), .Y(n9) );
  NAND2X1 U13 ( .A(n12), .B(n16), .Y(n11) );
  NOR2X1 U17 ( .A(n135), .B(n15), .Y(n14) );
  NAND2X1 U18 ( .A(n138), .B(n16), .Y(n15) );
  NOR2X1 U22 ( .A(n134), .B(n19), .Y(n18) );
  NOR2X1 U24 ( .A(n20), .B(n28), .Y(n2) );
  NAND2X1 U25 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U29 ( .A(n24), .B(n135), .Y(n23) );
  NAND2X1 U30 ( .A(n119), .B(n29), .Y(n24) );
  NOR2X1 U34 ( .A(n132), .B(n117), .Y(n27) );
  NAND2X1 U37 ( .A(n35), .B(n31), .Y(n28) );
  NOR2X1 U41 ( .A(n36), .B(n111), .Y(n33) );
  XNOR2X1 U45 ( .A(n42), .B(n41), .Y(SUM[7]) );
  NOR2X1 U47 ( .A(n39), .B(n120), .Y(n38) );
  NAND2X1 U48 ( .A(n40), .B(n44), .Y(n39) );
  NOR2X1 U52 ( .A(n43), .B(n56), .Y(n42) );
  NAND2X1 U53 ( .A(n116), .B(n48), .Y(n43) );
  NOR2X1 U57 ( .A(n140), .B(n56), .Y(n46) );
  NOR2X1 U64 ( .A(n55), .B(n56), .Y(n52) );
  NOR2X1 U70 ( .A(n65), .B(n58), .Y(n57) );
  NAND2X1 U71 ( .A(n59), .B(n62), .Y(n58) );
  NAND2X1 U75 ( .A(n137), .B(n64), .Y(n61) );
  NAND2X1 U80 ( .A(n68), .B(n66), .Y(n65) );
  BUFX2 U87 ( .A(n64), .Y(n105) );
  INVX2 U88 ( .A(n112), .Y(n113) );
  INVX2 U89 ( .A(n114), .Y(n115) );
  NAND2X1 U90 ( .A(n110), .B(n107), .Y(n108) );
  NAND2X1 U91 ( .A(n106), .B(n7), .Y(n109) );
  NAND2X1 U92 ( .A(n108), .B(n109), .Y(SUM[14]) );
  INVX1 U93 ( .A(n110), .Y(n106) );
  INVX1 U94 ( .A(n7), .Y(n107) );
  OR2X2 U95 ( .A(n9), .B(n134), .Y(n110) );
  NAND2X1 U96 ( .A(n38), .B(n57), .Y(n111) );
  INVX1 U97 ( .A(n59), .Y(n112) );
  INVX1 U98 ( .A(n31), .Y(n114) );
  INVX1 U99 ( .A(n124), .Y(n116) );
  NAND2X1 U100 ( .A(n131), .B(n57), .Y(n117) );
  INVX1 U101 ( .A(n25), .Y(n118) );
  INVX1 U102 ( .A(n118), .Y(n119) );
  NAND2X1 U103 ( .A(n50), .B(n54), .Y(n120) );
  NOR2X1 U104 ( .A(n65), .B(n58), .Y(n121) );
  INVX2 U105 ( .A(A[15]), .Y(n128) );
  XNOR2X1 U106 ( .A(n122), .B(n55), .Y(SUM[4]) );
  INVX1 U107 ( .A(n56), .Y(n122) );
  XNOR2X1 U108 ( .A(n52), .B(n123), .Y(SUM[5]) );
  INVX1 U109 ( .A(n50), .Y(n123) );
  XNOR2X1 U110 ( .A(n46), .B(n124), .Y(SUM[6]) );
  INVX1 U111 ( .A(n44), .Y(n124) );
  XNOR2X1 U112 ( .A(n23), .B(n125), .Y(SUM[11]) );
  INVX1 U113 ( .A(n21), .Y(n125) );
  XNOR2X1 U114 ( .A(n27), .B(n118), .Y(SUM[10]) );
  XNOR2X1 U115 ( .A(n18), .B(n126), .Y(SUM[12]) );
  INVX8 U116 ( .A(n133), .Y(n126) );
  INVX1 U117 ( .A(n54), .Y(n55) );
  INVX1 U118 ( .A(n68), .Y(SUM[0]) );
  BUFX2 U119 ( .A(n12), .Y(n127) );
  XNOR2X1 U120 ( .A(n4), .B(n128), .Y(SUM[15]) );
  INVX1 U121 ( .A(n11), .Y(n10) );
  NAND2X1 U122 ( .A(n35), .B(n31), .Y(n129) );
  NAND2X1 U123 ( .A(n40), .B(n44), .Y(n130) );
  NOR2X1 U124 ( .A(n130), .B(n120), .Y(n131) );
  BUFX2 U125 ( .A(n28), .Y(n132) );
  BUFX2 U126 ( .A(n16), .Y(n133) );
  INVX1 U127 ( .A(n35), .Y(n36) );
  NAND2X1 U128 ( .A(n121), .B(n38), .Y(n134) );
  NAND2X1 U129 ( .A(n131), .B(n57), .Y(n135) );
  BUFX2 U130 ( .A(n66), .Y(n136) );
  INVX1 U131 ( .A(n65), .Y(n64) );
  BUFX2 U132 ( .A(n62), .Y(n137) );
  NOR2X1 U133 ( .A(n20), .B(n129), .Y(n138) );
  XOR2X1 U134 ( .A(n136), .B(n68), .Y(SUM[1]) );
  XOR2X1 U135 ( .A(n105), .B(n137), .Y(SUM[2]) );
  XNOR2X1 U136 ( .A(n61), .B(n113), .Y(SUM[3]) );
  XNOR2X1 U137 ( .A(n139), .B(n36), .Y(SUM[8]) );
  INVX1 U138 ( .A(n117), .Y(n139) );
  XOR2X1 U139 ( .A(n33), .B(n115), .Y(SUM[9]) );
  XOR2X1 U140 ( .A(n14), .B(n127), .Y(SUM[13]) );
  INVX1 U141 ( .A(n28), .Y(n29) );
  INVX1 U142 ( .A(n2), .Y(n19) );
  INVX1 U143 ( .A(n48), .Y(n140) );
  INVX1 U144 ( .A(n121), .Y(n56) );
  INVX1 U145 ( .A(n120), .Y(n48) );
  INVX1 U146 ( .A(n40), .Y(n41) );
  INVX2 U147 ( .A(A[14]), .Y(n7) );
endmodule


module flex_counter_NUM_CNT_BITS16_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, next_flag,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N46, N45, N44, N43, N42, N41, N39, N38, N37, N35, N34,
         N33, N32, N31, n1, n2, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n19, n20, n21, n23, n25, n28, n30, n32, n34, n35, n37,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n171, n173,
         n175, n177, n179, n181, n183, n185, n187, n189, n191, n193, n195,
         n197, n199;
  wire   [15:0] next_count;

  DFFSR \cur_count_reg[15]  ( .D(n169), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[15]) );
  DFFSR \cur_count_reg[14]  ( .D(n171), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \cur_count_reg[13]  ( .D(n173), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \cur_count_reg[12]  ( .D(n175), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[12]) );
  DFFSR \cur_count_reg[11]  ( .D(n177), .CLK(clk), .R(n40), .S(1'b1), .Q(n202)
         );
  DFFSR \cur_count_reg[10]  ( .D(n179), .CLK(clk), .R(n40), .S(1'b1), .Q(n203)
         );
  DFFSR \cur_count_reg[9]  ( .D(n181), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \cur_count_reg[8]  ( .D(n183), .CLK(clk), .R(n40), .S(1'b1), .Q(n204)
         );
  DFFSR \cur_count_reg[7]  ( .D(n185), .CLK(clk), .R(n40), .S(1'b1), .Q(n205)
         );
  DFFSR \cur_count_reg[6]  ( .D(n187), .CLK(clk), .R(n40), .S(1'b1), .Q(n206)
         );
  DFFSR \cur_count_reg[5]  ( .D(n189), .CLK(clk), .R(n40), .S(1'b1), .Q(n207)
         );
  DFFSR \cur_count_reg[4]  ( .D(n191), .CLK(clk), .R(n40), .S(1'b1), .Q(n208)
         );
  DFFSR \cur_count_reg[3]  ( .D(n193), .CLK(clk), .R(n40), .S(1'b1), .Q(n209)
         );
  DFFSR \cur_count_reg[2]  ( .D(n195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n210) );
  DFFSR \cur_count_reg[1]  ( .D(n197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n211) );
  DFFSR \cur_count_reg[0]  ( .D(n199), .CLK(clk), .R(n40), .S(1'b1), .Q(
        count_out[0]) );
  flex_counter_NUM_CNT_BITS16_0_DW01_dec_0 sub_37 ( .A({1'b0, rollover_val}), 
        .SUM({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7}) );
  flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 add_35_aco ( .A({N46, N45, N44, N43, 
        N42, N41, n10, N39, N38, N37, n5, N35, N34, N33, N32, N31}), .SUM(
        next_count) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n40), .S(1'b1), .Q(
        rollover_flag) );
  INVX1 U3 ( .A(n11), .Y(n99) );
  MUX2X1 U4 ( .B(n2), .A(next_count[6]), .S(n8), .Y(n158) );
  MUX2X1 U5 ( .B(count_out[5]), .A(next_count[5]), .S(n8), .Y(n157) );
  INVX4 U6 ( .A(n151), .Y(n167) );
  MUX2X1 U8 ( .B(count_out[7]), .A(next_count[7]), .S(n8), .Y(n159) );
  INVX8 U9 ( .A(n167), .Y(n8) );
  INVX1 U10 ( .A(n39), .Y(n1) );
  INVX2 U11 ( .A(n39), .Y(n140) );
  INVX2 U12 ( .A(n141), .Y(n2) );
  NAND3X1 U13 ( .A(n94), .B(n93), .C(n92), .Y(n4) );
  INVX2 U14 ( .A(n141), .Y(n12) );
  INVX2 U15 ( .A(n139), .Y(n15) );
  INVX1 U16 ( .A(n105), .Y(n16) );
  INVX1 U17 ( .A(n102), .Y(n17) );
  NOR2X1 U18 ( .A(n20), .B(n142), .Y(n5) );
  INVX1 U19 ( .A(n156), .Y(n191) );
  INVX1 U20 ( .A(n160), .Y(n183) );
  INVX1 U21 ( .A(n163), .Y(n177) );
  MUX2X1 U22 ( .B(n16), .A(next_count[9]), .S(n8), .Y(n161) );
  MUX2X1 U23 ( .B(n17), .A(next_count[12]), .S(n8), .Y(n164) );
  MUX2X1 U24 ( .B(count_out[13]), .A(next_count[13]), .S(n8), .Y(n165) );
  AND2X2 U26 ( .A(n13), .B(n15), .Y(N38) );
  INVX1 U27 ( .A(n39), .Y(n7) );
  INVX1 U28 ( .A(n161), .Y(n181) );
  MUX2X1 U29 ( .B(n11), .A(next_count[15]), .S(n8), .Y(n168) );
  INVX1 U30 ( .A(n4), .Y(n95) );
  MUX2X1 U31 ( .B(count_out[14]), .A(next_count[14]), .S(n8), .Y(n166) );
  INVX1 U32 ( .A(n146), .Y(n9) );
  NOR2X1 U33 ( .A(n105), .B(n1), .Y(n10) );
  BUFX4 U34 ( .A(count_out[15]), .Y(n11) );
  AND2X2 U35 ( .A(n13), .B(n2), .Y(N37) );
  INVX2 U36 ( .A(n20), .Y(n13) );
  INVX1 U37 ( .A(count_out[11]), .Y(n103) );
  INVX2 U38 ( .A(n69), .Y(n14) );
  INVX4 U39 ( .A(n37), .Y(count_out[1]) );
  INVX1 U40 ( .A(count_out[10]), .Y(n104) );
  INVX1 U41 ( .A(n162), .Y(n179) );
  BUFX4 U42 ( .A(n204), .Y(count_out[8]) );
  NAND2X1 U43 ( .A(n21), .B(n146), .Y(n19) );
  NAND2X1 U44 ( .A(n21), .B(n146), .Y(n20) );
  INVX2 U45 ( .A(n41), .Y(n40) );
  AND2X2 U46 ( .A(count_enable), .B(n149), .Y(n21) );
  INVX2 U47 ( .A(n_rst), .Y(n41) );
  INVX4 U48 ( .A(n25), .Y(count_out[11]) );
  INVX4 U49 ( .A(n32), .Y(count_out[4]) );
  BUFX4 U50 ( .A(n205), .Y(count_out[7]) );
  INVX4 U51 ( .A(n207), .Y(n23) );
  INVX8 U52 ( .A(n23), .Y(count_out[5]) );
  INVX2 U53 ( .A(n202), .Y(n25) );
  BUFX4 U54 ( .A(n203), .Y(count_out[10]) );
  INVX2 U55 ( .A(n209), .Y(n28) );
  INVX8 U56 ( .A(n28), .Y(count_out[3]) );
  INVX4 U57 ( .A(n210), .Y(n30) );
  INVX8 U58 ( .A(n30), .Y(count_out[2]) );
  INVX2 U59 ( .A(n208), .Y(n32) );
  INVX1 U60 ( .A(clear), .Y(n34) );
  INVX2 U61 ( .A(n206), .Y(n35) );
  INVX4 U62 ( .A(n35), .Y(count_out[6]) );
  INVX1 U63 ( .A(count_out[4]), .Y(n143) );
  INVX1 U64 ( .A(n164), .Y(n175) );
  INVX1 U65 ( .A(count_out[6]), .Y(n141) );
  INVX1 U66 ( .A(n152), .Y(n199) );
  INVX1 U67 ( .A(n165), .Y(n173) );
  INVX1 U68 ( .A(count_enable), .Y(n69) );
  INVX1 U69 ( .A(n159), .Y(n185) );
  INVX1 U70 ( .A(n157), .Y(n189) );
  INVX1 U71 ( .A(n158), .Y(n187) );
  INVX2 U72 ( .A(n211), .Y(n37) );
  INVX1 U73 ( .A(n153), .Y(n197) );
  INVX1 U74 ( .A(n166), .Y(n171) );
  INVX1 U75 ( .A(n168), .Y(n169) );
  AND2X2 U76 ( .A(n146), .B(n21), .Y(n39) );
  XOR2X1 U77 ( .A(n12), .B(N13), .Y(n42) );
  NOR2X1 U78 ( .A(n42), .B(n9), .Y(n46) );
  XOR2X1 U79 ( .A(count_out[8]), .B(N15), .Y(n44) );
  XOR2X1 U80 ( .A(count_out[4]), .B(N11), .Y(n43) );
  NOR2X1 U81 ( .A(n44), .B(n43), .Y(n45) );
  NAND3X1 U82 ( .A(n46), .B(n14), .C(n45), .Y(n98) );
  XNOR2X1 U83 ( .A(count_out[1]), .B(N8), .Y(n48) );
  XNOR2X1 U84 ( .A(count_out[5]), .B(N12), .Y(n47) );
  NAND2X1 U85 ( .A(n48), .B(n47), .Y(n53) );
  XNOR2X1 U86 ( .A(n16), .B(N16), .Y(n51) );
  XNOR2X1 U87 ( .A(count_out[3]), .B(N10), .Y(n50) );
  XOR2X1 U88 ( .A(n99), .B(N22), .Y(n49) );
  NAND3X1 U89 ( .A(n51), .B(n50), .C(n49), .Y(n52) );
  NOR2X1 U90 ( .A(n53), .B(n52), .Y(n68) );
  XOR2X1 U91 ( .A(n17), .B(N19), .Y(n58) );
  XNOR2X1 U92 ( .A(count_out[0]), .B(N7), .Y(n56) );
  INVX2 U93 ( .A(N23), .Y(n55) );
  INVX2 U94 ( .A(count_out[7]), .Y(n139) );
  XOR2X1 U95 ( .A(n139), .B(N14), .Y(n54) );
  NAND3X1 U96 ( .A(n56), .B(n55), .C(n54), .Y(n57) );
  NOR2X1 U97 ( .A(n58), .B(n57), .Y(n67) );
  INVX2 U98 ( .A(count_out[2]), .Y(n145) );
  XOR2X1 U99 ( .A(n145), .B(N9), .Y(n60) );
  XOR2X1 U100 ( .A(n103), .B(N18), .Y(n59) );
  NAND2X1 U101 ( .A(n60), .B(n59), .Y(n65) );
  XOR2X1 U102 ( .A(n104), .B(N17), .Y(n63) );
  INVX2 U103 ( .A(count_out[13]), .Y(n101) );
  XOR2X1 U104 ( .A(n101), .B(N20), .Y(n62) );
  INVX2 U105 ( .A(count_out[14]), .Y(n100) );
  XOR2X1 U106 ( .A(n100), .B(N21), .Y(n61) );
  NAND3X1 U107 ( .A(n63), .B(n62), .C(n61), .Y(n64) );
  NOR2X1 U108 ( .A(n65), .B(n64), .Y(n66) );
  NAND3X1 U109 ( .A(n68), .B(n67), .C(n66), .Y(n97) );
  INVX2 U110 ( .A(clear), .Y(n146) );
  NAND2X1 U111 ( .A(n34), .B(n69), .Y(n151) );
  XOR2X1 U112 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n71) );
  XOR2X1 U113 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n70) );
  NOR2X1 U114 ( .A(n71), .B(n70), .Y(n94) );
  INVX2 U115 ( .A(count_out[12]), .Y(n102) );
  XOR2X1 U132 ( .A(n102), .B(rollover_val[12]), .Y(n76) );
  XOR2X1 U133 ( .A(rollover_val[15]), .B(n11), .Y(n73) );
  XOR2X1 U134 ( .A(rollover_val[14]), .B(count_out[14]), .Y(n72) );
  NOR2X1 U135 ( .A(n73), .B(n72), .Y(n75) );
  XOR2X1 U136 ( .A(n101), .B(rollover_val[13]), .Y(n74) );
  NAND3X1 U137 ( .A(n76), .B(n75), .C(n74), .Y(n83) );
  INVX2 U138 ( .A(count_out[9]), .Y(n105) );
  XOR2X1 U139 ( .A(n105), .B(rollover_val[9]), .Y(n81) );
  XOR2X1 U140 ( .A(rollover_val[10]), .B(count_out[10]), .Y(n78) );
  XOR2X1 U141 ( .A(rollover_val[11]), .B(count_out[11]), .Y(n77) );
  NOR2X1 U142 ( .A(n78), .B(n77), .Y(n80) );
  INVX2 U143 ( .A(count_out[8]), .Y(n106) );
  XOR2X1 U144 ( .A(n106), .B(rollover_val[8]), .Y(n79) );
  NAND3X1 U145 ( .A(n81), .B(n80), .C(n79), .Y(n82) );
  NOR2X1 U146 ( .A(n83), .B(n82), .Y(n93) );
  XNOR2X1 U147 ( .A(count_out[1]), .B(rollover_val[1]), .Y(n85) );
  XNOR2X1 U148 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n84) );
  NAND2X1 U149 ( .A(n85), .B(n84), .Y(n91) );
  XOR2X1 U150 ( .A(count_out[4]), .B(rollover_val[4]), .Y(n90) );
  XNOR2X1 U151 ( .A(rollover_val[7]), .B(count_out[7]), .Y(n88) );
  XNOR2X1 U152 ( .A(rollover_val[6]), .B(count_out[6]), .Y(n87) );
  INVX2 U153 ( .A(count_out[5]), .Y(n142) );
  XOR2X1 U154 ( .A(n142), .B(rollover_val[5]), .Y(n86) );
  NAND3X1 U155 ( .A(n88), .B(n87), .C(n86), .Y(n89) );
  NOR3X1 U156 ( .A(n91), .B(n90), .C(n89), .Y(n92) );
  NAND3X1 U157 ( .A(n94), .B(n93), .C(n92), .Y(n149) );
  NAND2X1 U158 ( .A(n167), .B(n95), .Y(n96) );
  OAI21X1 U159 ( .A(n98), .B(n97), .C(n96), .Y(next_flag) );
  NOR2X1 U160 ( .A(n7), .B(n99), .Y(N46) );
  NOR2X1 U161 ( .A(n7), .B(n100), .Y(N45) );
  NOR2X1 U162 ( .A(n7), .B(n101), .Y(N44) );
  NOR2X1 U163 ( .A(n1), .B(n102), .Y(N43) );
  NOR2X1 U164 ( .A(n103), .B(n140), .Y(N42) );
  NOR2X1 U165 ( .A(n104), .B(n140), .Y(N41) );
  NOR2X1 U166 ( .A(n106), .B(n140), .Y(N39) );
  NOR2X1 U167 ( .A(n143), .B(n19), .Y(N35) );
  INVX2 U168 ( .A(count_out[3]), .Y(n144) );
  NOR2X1 U169 ( .A(n144), .B(n19), .Y(N34) );
  NOR2X1 U170 ( .A(n145), .B(n19), .Y(N33) );
  NAND2X1 U171 ( .A(n14), .B(n34), .Y(n148) );
  NAND2X1 U172 ( .A(count_out[1]), .B(n149), .Y(n147) );
  NOR2X1 U173 ( .A(n148), .B(n147), .Y(N32) );
  NAND3X1 U174 ( .A(count_out[0]), .B(count_enable), .C(n4), .Y(n150) );
  NOR2X1 U175 ( .A(clear), .B(n150), .Y(N31) );
  MUX2X1 U176 ( .B(next_count[0]), .A(count_out[0]), .S(n167), .Y(n152) );
  MUX2X1 U177 ( .B(next_count[1]), .A(count_out[1]), .S(n167), .Y(n153) );
  MUX2X1 U178 ( .B(next_count[2]), .A(count_out[2]), .S(n167), .Y(n154) );
  INVX2 U179 ( .A(n154), .Y(n195) );
  MUX2X1 U180 ( .B(next_count[3]), .A(count_out[3]), .S(n167), .Y(n155) );
  INVX2 U181 ( .A(n155), .Y(n193) );
  MUX2X1 U182 ( .B(next_count[4]), .A(count_out[4]), .S(n167), .Y(n156) );
  MUX2X1 U183 ( .B(next_count[8]), .A(count_out[8]), .S(n167), .Y(n160) );
  MUX2X1 U184 ( .B(next_count[10]), .A(count_out[10]), .S(n167), .Y(n162) );
  MUX2X1 U185 ( .B(next_count[11]), .A(count_out[11]), .S(n167), .Y(n163) );
endmodule


module mode_select_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n3, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;

  INVX2 U1 ( .A(n29), .Y(SUM[1]) );
  INVX2 U2 ( .A(n34), .Y(SUM[11]) );
  INVX2 U3 ( .A(n32), .Y(n3) );
  INVX2 U4 ( .A(n16), .Y(SUM[9]) );
  INVX2 U5 ( .A(n20), .Y(SUM[7]) );
  INVX2 U6 ( .A(n23), .Y(SUM[5]) );
  INVX2 U7 ( .A(n26), .Y(SUM[3]) );
  INVX2 U8 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U9 ( .A(A[8]), .Y(n9) );
  INVX2 U10 ( .A(A[13]), .Y(n10) );
  INVX2 U11 ( .A(A[12]), .Y(n11) );
  INVX2 U12 ( .A(A[10]), .Y(n12) );
  INVX2 U13 ( .A(A[6]), .Y(n13) );
  INVX2 U14 ( .A(A[4]), .Y(n14) );
  INVX2 U15 ( .A(A[2]), .Y(n15) );
  AOI21X1 U16 ( .A(n17), .B(A[9]), .C(n18), .Y(n16) );
  OAI21X1 U17 ( .A(n19), .B(n9), .C(n17), .Y(SUM[8]) );
  AOI21X1 U18 ( .A(n21), .B(A[7]), .C(n19), .Y(n20) );
  OAI21X1 U19 ( .A(n22), .B(n13), .C(n21), .Y(SUM[6]) );
  AOI21X1 U20 ( .A(n24), .B(A[5]), .C(n22), .Y(n23) );
  OAI21X1 U21 ( .A(n25), .B(n14), .C(n24), .Y(SUM[4]) );
  AOI21X1 U22 ( .A(n27), .B(A[3]), .C(n25), .Y(n26) );
  OAI21X1 U23 ( .A(n28), .B(n15), .C(n27), .Y(SUM[2]) );
  AOI21X1 U24 ( .A(A[0]), .B(A[1]), .C(n28), .Y(n29) );
  XOR2X1 U25 ( .A(A[15]), .B(n30), .Y(SUM[15]) );
  NOR2X1 U26 ( .A(A[14]), .B(n31), .Y(n30) );
  XNOR2X1 U27 ( .A(A[14]), .B(n31), .Y(SUM[14]) );
  OAI21X1 U28 ( .A(n3), .B(n10), .C(n31), .Y(SUM[13]) );
  NAND2X1 U29 ( .A(n3), .B(n10), .Y(n31) );
  OAI21X1 U30 ( .A(n33), .B(n11), .C(n32), .Y(SUM[12]) );
  NAND2X1 U31 ( .A(n33), .B(n11), .Y(n32) );
  AOI21X1 U32 ( .A(n35), .B(A[11]), .C(n33), .Y(n34) );
  NOR2X1 U33 ( .A(n35), .B(A[11]), .Y(n33) );
  OAI21X1 U34 ( .A(n18), .B(n12), .C(n35), .Y(SUM[10]) );
  NAND2X1 U35 ( .A(n18), .B(n12), .Y(n35) );
  NOR2X1 U36 ( .A(n17), .B(A[9]), .Y(n18) );
  NAND2X1 U37 ( .A(n19), .B(n9), .Y(n17) );
  NOR2X1 U38 ( .A(n21), .B(A[7]), .Y(n19) );
  NAND2X1 U39 ( .A(n22), .B(n13), .Y(n21) );
  NOR2X1 U40 ( .A(n24), .B(A[5]), .Y(n22) );
  NAND2X1 U41 ( .A(n25), .B(n14), .Y(n24) );
  NOR2X1 U42 ( .A(n27), .B(A[3]), .Y(n25) );
  NAND2X1 U43 ( .A(n28), .B(n15), .Y(n27) );
  NOR2X1 U44 ( .A(A[1]), .B(A[0]), .Y(n28) );
endmodule


module mode_select ( clk, n_rst, sd_read, sd_write, sd_addr_ready, sd_full, 
        rx_FIFO_empty, SDCS, cmd_check, rcv_fifo, byte_transf, edge_detect, 
        shift_enable, clear_byte, sd_done, sd_err, load_enable, w_enable, 
        r_enable, r_enable_o, SPI_select, rw_select, enable, cmd_out, 
        count_out, speed_o, addr_o );
  input [7:0] cmd_check;
  input [7:0] rcv_fifo;
  output [1:0] SPI_select;
  output [5:0] cmd_out;
  output [3:0] count_out;
  output [1:0] speed_o;
  output [31:0] addr_o;
  input clk, n_rst, sd_read, sd_write, sd_addr_ready, sd_full, rx_FIFO_empty,
         byte_transf, edge_detect, shift_enable;
  output SDCS, clear_byte, sd_done, sd_err, load_enable, w_enable, r_enable,
         r_enable_o, rw_select, enable;
  wire   n397, n398, clear, roll, clearCounter, byte_transfflip, N222, N365,
         N367, N368, N369, N371, n76, n77, n257, n269, n270, n271, n272, n273,
         n396, n1, n2, n3, n4, n5, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34, n35,
         n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n75, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         \cmd_out[1] , n392, n394;
  wire   [15:0] size;
  wire   [15:0] size_minus_one;
  wire   [15:4] counter;
  wire   [4:0] state;
  assign enable = 1'b1;
  assign cmd_out[5] = \cmd_out[1] ;
  assign cmd_out[2] = \cmd_out[1] ;
  assign cmd_out[1] = \cmd_out[1] ;

  DFFSR byte_transfflip_reg ( .D(n83), .CLK(clk), .R(n85), .S(1'b1), .Q(
        byte_transfflip) );
  LATCH \size_reg[0]  ( .CLK(n55), .D(rcv_fifo[0]), .Q(size[0]) );
  DFFSR \state_reg[4]  ( .D(n273), .CLK(clk), .R(n85), .S(1'b1), .Q(state[4])
         );
  DFFSR \state_reg[0]  ( .D(n272), .CLK(clk), .R(n85), .S(1'b1), .Q(state[0])
         );
  DFFSR \state_reg[1]  ( .D(n271), .CLK(clk), .R(n85), .S(1'b1), .Q(state[1])
         );
  DFFSR \state_reg[3]  ( .D(n269), .CLK(clk), .R(n85), .S(1'b1), .Q(state[3])
         );
  LATCH \size_reg[8]  ( .CLK(N371), .D(rcv_fifo[0]), .Q(size[8]) );
  LATCH \size_reg[15]  ( .CLK(N371), .D(rcv_fifo[7]), .Q(size[15]) );
  LATCH \size_reg[14]  ( .CLK(N371), .D(rcv_fifo[6]), .Q(size[14]) );
  LATCH \size_reg[13]  ( .CLK(N371), .D(rcv_fifo[5]), .Q(size[13]) );
  LATCH \size_reg[12]  ( .CLK(N371), .D(rcv_fifo[4]), .Q(size[12]) );
  LATCH \size_reg[11]  ( .CLK(N371), .D(rcv_fifo[3]), .Q(size[11]) );
  LATCH \size_reg[10]  ( .CLK(N371), .D(rcv_fifo[2]), .Q(size[10]) );
  LATCH \size_reg[9]  ( .CLK(N371), .D(rcv_fifo[1]), .Q(size[9]) );
  LATCH \size_reg[7]  ( .CLK(n55), .D(rcv_fifo[7]), .Q(size[7]) );
  LATCH \size_reg[6]  ( .CLK(n55), .D(rcv_fifo[6]), .Q(size[6]) );
  LATCH \size_reg[5]  ( .CLK(n55), .D(rcv_fifo[5]), .Q(size[5]) );
  LATCH \size_reg[4]  ( .CLK(n55), .D(rcv_fifo[4]), .Q(size[4]) );
  LATCH \size_reg[3]  ( .CLK(n55), .D(rcv_fifo[3]), .Q(size[3]) );
  LATCH \size_reg[2]  ( .CLK(n55), .D(rcv_fifo[2]), .Q(size[2]) );
  LATCH \size_reg[1]  ( .CLK(n55), .D(rcv_fifo[1]), .Q(size[1]) );
  LATCH \speed_reg[1]  ( .CLK(N365), .D(n392), .Q(speed_o[1]) );
  LATCH \speed_reg[0]  ( .CLK(N365), .D(N222), .Q(speed_o[0]) );
  LATCH \addr_reg[31]  ( .CLK(N369), .D(rcv_fifo[7]), .Q(addr_o[31]) );
  LATCH \addr_reg[30]  ( .CLK(N369), .D(rcv_fifo[6]), .Q(addr_o[30]) );
  LATCH \addr_reg[29]  ( .CLK(N369), .D(rcv_fifo[5]), .Q(addr_o[29]) );
  LATCH \addr_reg[28]  ( .CLK(N369), .D(rcv_fifo[4]), .Q(addr_o[28]) );
  LATCH \addr_reg[27]  ( .CLK(N369), .D(rcv_fifo[3]), .Q(addr_o[27]) );
  LATCH \addr_reg[26]  ( .CLK(N369), .D(rcv_fifo[2]), .Q(addr_o[26]) );
  LATCH \addr_reg[25]  ( .CLK(N369), .D(rcv_fifo[1]), .Q(addr_o[25]) );
  LATCH \addr_reg[24]  ( .CLK(N369), .D(rcv_fifo[0]), .Q(addr_o[24]) );
  LATCH \addr_reg[23]  ( .CLK(N368), .D(rcv_fifo[7]), .Q(addr_o[23]) );
  LATCH \addr_reg[22]  ( .CLK(N368), .D(rcv_fifo[6]), .Q(addr_o[22]) );
  LATCH \addr_reg[21]  ( .CLK(N368), .D(rcv_fifo[5]), .Q(addr_o[21]) );
  LATCH \addr_reg[20]  ( .CLK(N368), .D(rcv_fifo[4]), .Q(addr_o[20]) );
  LATCH \addr_reg[19]  ( .CLK(N368), .D(rcv_fifo[3]), .Q(addr_o[19]) );
  LATCH \addr_reg[18]  ( .CLK(N368), .D(rcv_fifo[2]), .Q(addr_o[18]) );
  LATCH \addr_reg[17]  ( .CLK(N368), .D(rcv_fifo[1]), .Q(addr_o[17]) );
  LATCH \addr_reg[16]  ( .CLK(N368), .D(rcv_fifo[0]), .Q(addr_o[16]) );
  LATCH \addr_reg[15]  ( .CLK(N367), .D(rcv_fifo[7]), .Q(addr_o[15]) );
  LATCH \addr_reg[14]  ( .CLK(N367), .D(rcv_fifo[6]), .Q(addr_o[14]) );
  LATCH \addr_reg[13]  ( .CLK(N367), .D(rcv_fifo[5]), .Q(addr_o[13]) );
  LATCH \addr_reg[12]  ( .CLK(N367), .D(rcv_fifo[4]), .Q(addr_o[12]) );
  LATCH \addr_reg[11]  ( .CLK(N367), .D(rcv_fifo[3]), .Q(addr_o[11]) );
  LATCH \addr_reg[10]  ( .CLK(N367), .D(rcv_fifo[2]), .Q(addr_o[10]) );
  LATCH \addr_reg[9]  ( .CLK(N367), .D(rcv_fifo[1]), .Q(addr_o[9]) );
  LATCH \addr_reg[8]  ( .CLK(N367), .D(rcv_fifo[0]), .Q(addr_o[8]) );
  LATCH \addr_reg[7]  ( .CLK(n62), .D(rcv_fifo[7]), .Q(addr_o[7]) );
  LATCH \addr_reg[6]  ( .CLK(n62), .D(rcv_fifo[6]), .Q(addr_o[6]) );
  LATCH \addr_reg[5]  ( .CLK(n62), .D(rcv_fifo[5]), .Q(addr_o[5]) );
  LATCH \addr_reg[4]  ( .CLK(n62), .D(rcv_fifo[4]), .Q(addr_o[4]) );
  LATCH \addr_reg[3]  ( .CLK(n62), .D(rcv_fifo[3]), .Q(addr_o[3]) );
  LATCH \addr_reg[2]  ( .CLK(n62), .D(rcv_fifo[2]), .Q(addr_o[2]) );
  LATCH \addr_reg[1]  ( .CLK(n62), .D(rcv_fifo[1]), .Q(addr_o[1]) );
  LATCH \addr_reg[0]  ( .CLK(n62), .D(rcv_fifo[0]), .Q(addr_o[0]) );
  NAND2X1 U87 ( .A(n76), .B(n77), .Y(rw_select) );
  NAND2X1 U275 ( .A(count_out[0]), .B(count_out[1]), .Y(n257) );
  flex_counter_NUM_CNT_BITS16_1 LoadFIFO ( .clk(clk), .n_rst(n85), .clear(
        clear), .count_enable(n388), .rollover_val(size_minus_one), 
        .rollover_flag(roll) );
  flex_counter_NUM_CNT_BITS16_0 Countstates ( .clk(clk), .n_rst(n85), .clear(
        clearCounter), .count_enable(n389), .rollover_val(size_minus_one), 
        .count_out({counter, count_out[3:2], n397, n398}) );
  mode_select_DW01_dec_0 sub_56 ( .A(size), .SUM(size_minus_one) );
  DFFSR \state_reg[2]  ( .D(n270), .CLK(clk), .R(n85), .S(1'b1), .Q(state[2])
         );
  OR2X2 U3 ( .A(n149), .B(n148), .Y(n171) );
  AND2X2 U5 ( .A(n301), .B(n377), .Y(n1) );
  INVX1 U6 ( .A(n1), .Y(n2) );
  INVX1 U11 ( .A(n13), .Y(n3) );
  BUFX2 U12 ( .A(n187), .Y(n4) );
  BUFX2 U13 ( .A(n298), .Y(n5) );
  INVX2 U14 ( .A(n27), .Y(cmd_out[3]) );
  NOR2X1 U15 ( .A(n156), .B(n394), .Y(n12) );
  INVX1 U16 ( .A(n12), .Y(cmd_out[4]) );
  INVX1 U17 ( .A(n394), .Y(n191) );
  INVX4 U18 ( .A(counter[7]), .Y(n313) );
  NAND2X1 U19 ( .A(n13), .B(n14), .Y(n15) );
  NAND2X1 U20 ( .A(n15), .B(n96), .Y(n97) );
  INVX1 U21 ( .A(n18), .Y(n13) );
  INVX2 U22 ( .A(n51), .Y(n14) );
  AND2X2 U23 ( .A(n81), .B(n79), .Y(n16) );
  INVX2 U24 ( .A(count_out[3]), .Y(n205) );
  BUFX2 U25 ( .A(n231), .Y(n17) );
  INVX2 U26 ( .A(n18), .Y(n168) );
  NAND2X1 U27 ( .A(n70), .B(n367), .Y(n18) );
  INVX2 U28 ( .A(n38), .Y(n66) );
  AND2X1 U29 ( .A(n106), .B(n310), .Y(n19) );
  AND2X1 U30 ( .A(n241), .B(n276), .Y(n20) );
  INVX2 U31 ( .A(sd_write), .Y(n241) );
  INVX2 U32 ( .A(n369), .Y(n21) );
  INVX4 U33 ( .A(n21), .Y(n22) );
  BUFX2 U34 ( .A(n50), .Y(n23) );
  INVX1 U35 ( .A(n65), .Y(n50) );
  INVX1 U36 ( .A(n227), .Y(n230) );
  INVX4 U37 ( .A(n115), .Y(n172) );
  INVX1 U38 ( .A(n377), .Y(n379) );
  INVX1 U39 ( .A(n39), .Y(n24) );
  INVX2 U40 ( .A(n329), .Y(n330) );
  BUFX2 U41 ( .A(n301), .Y(n25) );
  NAND3X1 U42 ( .A(n230), .B(n229), .C(n228), .Y(n26) );
  BUFX2 U43 ( .A(n191), .Y(n27) );
  BUFX2 U44 ( .A(n12), .Y(n28) );
  INVX1 U45 ( .A(n247), .Y(n238) );
  INVX1 U46 ( .A(n372), .Y(n376) );
  NOR2X1 U47 ( .A(n203), .B(n202), .Y(n29) );
  BUFX2 U48 ( .A(n267), .Y(n30) );
  AND2X2 U49 ( .A(n37), .B(n64), .Y(n31) );
  INVX1 U50 ( .A(n31), .Y(n146) );
  AND2X2 U51 ( .A(n266), .B(n265), .Y(n32) );
  INVX1 U52 ( .A(n32), .Y(n371) );
  OR2X2 U53 ( .A(n203), .B(n202), .Y(n255) );
  INVX2 U54 ( .A(n359), .Y(n38) );
  BUFX2 U55 ( .A(n396), .Y(SDCS) );
  INVX2 U56 ( .A(n328), .Y(n34) );
  NAND3X1 U57 ( .A(n188), .B(n28), .C(n4), .Y(n35) );
  AND2X2 U59 ( .A(n84), .B(n298), .Y(n37) );
  INVX1 U60 ( .A(n37), .Y(n145) );
  NAND2X1 U61 ( .A(n242), .B(n20), .Y(n246) );
  AND2X1 U62 ( .A(n66), .B(n342), .Y(n143) );
  INVX1 U63 ( .A(n342), .Y(n328) );
  INVX1 U64 ( .A(n48), .Y(n169) );
  INVX1 U65 ( .A(n186), .Y(n177) );
  INVX1 U66 ( .A(n335), .Y(n338) );
  INVX1 U67 ( .A(sd_addr_ready), .Y(n242) );
  INVX1 U68 ( .A(state[3]), .Y(n39) );
  OR2X2 U69 ( .A(n268), .B(n294), .Y(n329) );
  INVX1 U70 ( .A(n367), .Y(n40) );
  BUFX2 U71 ( .A(state[0]), .Y(n65) );
  INVX1 U72 ( .A(n323), .Y(n41) );
  INVX1 U73 ( .A(n41), .Y(n42) );
  NOR2X1 U74 ( .A(n108), .B(n43), .Y(n109) );
  NAND2X1 U75 ( .A(n205), .B(n398), .Y(n43) );
  AND2X2 U76 ( .A(n397), .B(count_out[2]), .Y(n60) );
  BUFX2 U77 ( .A(n397), .Y(count_out[1]) );
  INVX1 U78 ( .A(counter[10]), .Y(n196) );
  INVX1 U79 ( .A(counter[11]), .Y(n197) );
  INVX1 U80 ( .A(n181), .Y(n351) );
  AND2X2 U81 ( .A(n167), .B(n128), .Y(n45) );
  INVX1 U82 ( .A(n45), .Y(n163) );
  NAND2X1 U83 ( .A(n105), .B(n19), .Y(n111) );
  AND2X2 U84 ( .A(n166), .B(n73), .Y(n46) );
  INVX2 U85 ( .A(n46), .Y(n319) );
  INVX1 U86 ( .A(n127), .Y(n47) );
  INVX1 U88 ( .A(n127), .Y(n128) );
  AND2X2 U89 ( .A(n81), .B(n79), .Y(n48) );
  INVX2 U90 ( .A(n64), .Y(n49) );
  BUFX4 U91 ( .A(n80), .Y(n64) );
  NAND3X1 U92 ( .A(n84), .B(n298), .C(n81), .Y(n51) );
  INVX8 U93 ( .A(n78), .Y(n298) );
  AND2X2 U94 ( .A(n304), .B(count_out[2]), .Y(n61) );
  BUFX2 U95 ( .A(n84), .Y(n52) );
  BUFX4 U96 ( .A(state[4]), .Y(n84) );
  AND2X1 U97 ( .A(n141), .B(n73), .Y(n57) );
  OR2X2 U98 ( .A(n360), .B(n378), .Y(n326) );
  OR2X2 U99 ( .A(n231), .B(byte_transfflip), .Y(n233) );
  INVX1 U100 ( .A(n396), .Y(n53) );
  AND2X2 U101 ( .A(n368), .B(n34), .Y(n54) );
  AND2X2 U102 ( .A(n356), .B(n30), .Y(n55) );
  AND2X2 U103 ( .A(n79), .B(n68), .Y(n56) );
  AND2X2 U104 ( .A(n162), .B(n73), .Y(sd_err) );
  AND2X2 U105 ( .A(n81), .B(n84), .Y(n59) );
  NOR2X1 U106 ( .A(n257), .B(n210), .Y(n62) );
  INVX2 U107 ( .A(n86), .Y(n85) );
  INVX2 U108 ( .A(n_rst), .Y(n86) );
  AND2X2 U109 ( .A(n65), .B(n69), .Y(n73) );
  BUFX4 U110 ( .A(n80), .Y(n63) );
  INVX2 U111 ( .A(state[1]), .Y(n80) );
  INVX4 U112 ( .A(n82), .Y(n83) );
  INVX2 U113 ( .A(n83), .Y(n264) );
  INVX2 U114 ( .A(state[4]), .Y(n167) );
  INVX1 U115 ( .A(n83), .Y(n248) );
  INVX2 U116 ( .A(byte_transf), .Y(n82) );
  INVX2 U117 ( .A(n69), .Y(n70) );
  INVX1 U118 ( .A(shift_enable), .Y(n251) );
  INVX1 U119 ( .A(state[0]), .Y(n367) );
  INVX4 U120 ( .A(n63), .Y(n81) );
  AND2X2 U121 ( .A(n167), .B(n63), .Y(n67) );
  AND2X2 U122 ( .A(n63), .B(n167), .Y(n68) );
  INVX1 U123 ( .A(counter[6]), .Y(n195) );
  INVX2 U124 ( .A(state[3]), .Y(n69) );
  NAND2X1 U125 ( .A(n71), .B(n57), .Y(n72) );
  NAND2X1 U126 ( .A(n99), .B(n72), .Y(n389) );
  INVX1 U127 ( .A(n248), .Y(n71) );
  INVX1 U128 ( .A(n47), .Y(n101) );
  INVX4 U129 ( .A(n311), .Y(count_out[0]) );
  INVX2 U130 ( .A(state[2]), .Y(n75) );
  INVX4 U131 ( .A(n75), .Y(n78) );
  INVX2 U132 ( .A(n75), .Y(n79) );
  NAND2X1 U133 ( .A(n109), .B(n61), .Y(n110) );
  INVX1 U134 ( .A(counter[4]), .Y(n304) );
  INVX1 U135 ( .A(n398), .Y(n311) );
  INVX4 U136 ( .A(n88), .Y(n250) );
  NAND3X1 U137 ( .A(n298), .B(n64), .C(n84), .Y(n87) );
  INVX2 U138 ( .A(n87), .Y(n141) );
  NAND3X1 U139 ( .A(n64), .B(n167), .C(shift_enable), .Y(n92) );
  NAND2X1 U140 ( .A(n69), .B(n367), .Y(n88) );
  NAND2X1 U141 ( .A(n250), .B(n298), .Y(n91) );
  NOR2X1 U142 ( .A(n82), .B(n298), .Y(n90) );
  NOR2X1 U143 ( .A(n40), .B(n39), .Y(n89) );
  NAND3X1 U144 ( .A(n90), .B(n89), .C(n67), .Y(n155) );
  OAI21X1 U145 ( .A(n92), .B(n91), .C(n155), .Y(n98) );
  NAND3X1 U146 ( .A(n84), .B(n298), .C(n81), .Y(n112) );
  NAND2X1 U147 ( .A(n69), .B(n65), .Y(n127) );
  NOR2X1 U148 ( .A(n127), .B(n167), .Y(n95) );
  NOR2X1 U149 ( .A(n82), .B(n298), .Y(n94) );
  NAND3X1 U150 ( .A(n70), .B(n40), .C(n298), .Y(n93) );
  INVX2 U151 ( .A(n93), .Y(n152) );
  AOI22X1 U152 ( .A(n95), .B(n94), .C(n152), .D(n59), .Y(n96) );
  NOR2X1 U153 ( .A(n97), .B(n98), .Y(n99) );
  NAND3X1 U154 ( .A(n84), .B(n298), .C(n64), .Y(n100) );
  AOI21X1 U155 ( .A(n3), .B(n101), .C(n100), .Y(n114) );
  NOR2X1 U156 ( .A(counter[14]), .B(counter[15]), .Y(n106) );
  INVX2 U157 ( .A(counter[9]), .Y(n310) );
  INVX2 U158 ( .A(counter[5]), .Y(n314) );
  NOR2X1 U159 ( .A(counter[8]), .B(counter[7]), .Y(n102) );
  NAND3X1 U160 ( .A(n314), .B(n195), .C(n102), .Y(n104) );
  INVX2 U161 ( .A(n397), .Y(n213) );
  NAND2X1 U162 ( .A(n83), .B(n213), .Y(n103) );
  NOR2X1 U163 ( .A(n104), .B(n103), .Y(n105) );
  INVX2 U164 ( .A(counter[13]), .Y(n199) );
  INVX2 U165 ( .A(counter[12]), .Y(n198) );
  NOR2X1 U166 ( .A(counter[11]), .B(counter[10]), .Y(n107) );
  NAND3X1 U167 ( .A(n199), .B(n198), .C(n107), .Y(n108) );
  NOR2X1 U168 ( .A(n111), .B(n110), .Y(n113) );
  INVX2 U169 ( .A(n112), .Y(n166) );
  AOI21X1 U170 ( .A(n113), .B(n114), .C(n46), .Y(n126) );
  NAND2X1 U171 ( .A(n65), .B(n70), .Y(n147) );
  INVX2 U172 ( .A(n147), .Y(n180) );
  NAND2X1 U173 ( .A(n180), .B(n64), .Y(n117) );
  NAND3X1 U174 ( .A(n79), .B(n64), .C(n84), .Y(n115) );
  NAND3X1 U175 ( .A(n83), .B(n250), .C(n172), .Y(n116) );
  OAI21X1 U176 ( .A(n145), .B(n117), .C(n116), .Y(n118) );
  INVX2 U177 ( .A(n118), .Y(n159) );
  NAND2X1 U178 ( .A(n250), .B(n79), .Y(n121) );
  NAND2X1 U179 ( .A(n49), .B(n84), .Y(n120) );
  NOR2X1 U180 ( .A(n84), .B(n79), .Y(n119) );
  NAND3X1 U181 ( .A(n250), .B(n81), .C(n119), .Y(n231) );
  OAI21X1 U182 ( .A(n121), .B(n120), .C(n231), .Y(n124) );
  INVX2 U183 ( .A(edge_detect), .Y(n165) );
  NAND2X1 U184 ( .A(n45), .B(n48), .Y(n122) );
  NAND3X1 U185 ( .A(n67), .B(n298), .C(n73), .Y(n302) );
  OAI21X1 U186 ( .A(n165), .B(n122), .C(n302), .Y(n123) );
  NOR2X1 U187 ( .A(n123), .B(n124), .Y(n125) );
  NAND3X1 U188 ( .A(n126), .B(n159), .C(n125), .Y(clearCounter) );
  NAND2X1 U189 ( .A(n84), .B(n47), .Y(n181) );
  NAND2X1 U190 ( .A(n79), .B(n83), .Y(n130) );
  NOR2X1 U191 ( .A(n50), .B(n39), .Y(n129) );
  NAND3X1 U192 ( .A(n298), .B(n129), .C(n68), .Y(n359) );
  OAI21X1 U193 ( .A(n181), .B(n130), .C(n359), .Y(n388) );
  INVX2 U194 ( .A(counter[8]), .Y(n312) );
  NOR2X1 U195 ( .A(counter[6]), .B(counter[5]), .Y(n131) );
  NAND3X1 U196 ( .A(n313), .B(n312), .C(n131), .Y(n132) );
  NOR2X1 U197 ( .A(n60), .B(n132), .Y(n138) );
  NOR2X1 U198 ( .A(count_out[3]), .B(counter[4]), .Y(n137) );
  NOR2X1 U199 ( .A(counter[11]), .B(counter[10]), .Y(n133) );
  NAND3X1 U200 ( .A(n199), .B(n198), .C(n133), .Y(n135) );
  INVX2 U201 ( .A(counter[15]), .Y(n201) );
  INVX2 U202 ( .A(counter[14]), .Y(n200) );
  NAND3X1 U203 ( .A(n201), .B(n310), .C(n200), .Y(n134) );
  NOR2X1 U204 ( .A(n135), .B(n134), .Y(n136) );
  NAND3X1 U205 ( .A(n137), .B(n138), .C(n136), .Y(n139) );
  INVX2 U206 ( .A(n139), .Y(n323) );
  NAND2X1 U207 ( .A(n73), .B(n56), .Y(n173) );
  INVX2 U208 ( .A(n302), .Y(n396) );
  AOI21X1 U209 ( .A(n38), .B(roll), .C(n396), .Y(n140) );
  OAI21X1 U210 ( .A(n173), .B(n323), .C(n140), .Y(clear) );
  NAND2X1 U211 ( .A(n141), .B(n73), .Y(n369) );
  NAND2X1 U212 ( .A(n231), .B(n369), .Y(n156) );
  INVX2 U213 ( .A(n156), .Y(n144) );
  NAND2X1 U214 ( .A(n172), .B(n250), .Y(n232) );
  NAND2X1 U215 ( .A(n144), .B(n232), .Y(cmd_out[0]) );
  INVX2 U216 ( .A(n232), .Y(\cmd_out[1] ) );
  NAND3X1 U217 ( .A(n49), .B(n298), .C(n167), .Y(n142) );
  INVX2 U218 ( .A(n142), .Y(n162) );
  NAND2X1 U219 ( .A(n162), .B(n180), .Y(n289) );
  NAND2X1 U220 ( .A(n168), .B(n56), .Y(n342) );
  NAND3X1 U221 ( .A(n232), .B(n289), .C(n143), .Y(n394) );
  NAND2X1 U222 ( .A(n172), .B(n73), .Y(n374) );
  NAND2X1 U223 ( .A(n31), .B(n250), .Y(n377) );
  NAND2X1 U224 ( .A(n374), .B(n377), .Y(SPI_select[0]) );
  NAND2X1 U225 ( .A(n38), .B(roll), .Y(n158) );
  AND2X2 U226 ( .A(n158), .B(n34), .Y(n151) );
  NAND2X1 U227 ( .A(n166), .B(n168), .Y(n154) );
  INVX2 U228 ( .A(n154), .Y(n149) );
  NAND2X1 U229 ( .A(n168), .B(n31), .Y(n335) );
  OAI21X1 U230 ( .A(n147), .B(n146), .C(n335), .Y(n148) );
  NOR2X1 U231 ( .A(cmd_out[0]), .B(n171), .Y(n150) );
  NAND3X1 U232 ( .A(n289), .B(n151), .C(n150), .Y(SPI_select[1]) );
  NAND2X1 U233 ( .A(n152), .B(n59), .Y(n288) );
  NAND2X1 U234 ( .A(n168), .B(n162), .Y(n322) );
  NAND2X1 U235 ( .A(n288), .B(n322), .Y(r_enable_o) );
  NAND3X1 U236 ( .A(n83), .B(n73), .C(n172), .Y(n290) );
  INVX2 U237 ( .A(n290), .Y(r_enable) );
  NAND2X1 U238 ( .A(n83), .B(n16), .Y(n153) );
  OAI21X1 U239 ( .A(n181), .B(n153), .C(n359), .Y(w_enable) );
  NAND3X1 U240 ( .A(n155), .B(n290), .C(n154), .Y(n161) );
  NAND2X1 U241 ( .A(n335), .B(n289), .Y(n227) );
  AOI22X1 U242 ( .A(n83), .B(n227), .C(byte_transfflip), .D(n156), .Y(n157) );
  NAND3X1 U243 ( .A(n159), .B(n158), .C(n157), .Y(n160) );
  OR2X1 U244 ( .A(n161), .B(n160), .Y(load_enable) );
  NAND3X1 U245 ( .A(n48), .B(n180), .C(n167), .Y(n175) );
  INVX2 U246 ( .A(n175), .Y(sd_done) );
  NAND2X1 U247 ( .A(n168), .B(n172), .Y(n372) );
  OAI21X1 U248 ( .A(n169), .B(n163), .C(n372), .Y(n164) );
  INVX2 U249 ( .A(n164), .Y(n301) );
  NAND2X1 U250 ( .A(n301), .B(n377), .Y(n244) );
  NOR2X1 U251 ( .A(n165), .B(n1), .Y(clear_byte) );
  NAND2X1 U252 ( .A(n166), .B(n250), .Y(n341) );
  NAND3X1 U253 ( .A(n16), .B(n168), .C(n167), .Y(n280) );
  NAND3X1 U254 ( .A(n341), .B(n280), .C(n319), .Y(n179) );
  NAND2X1 U255 ( .A(n52), .B(n250), .Y(n182) );
  OAI21X1 U256 ( .A(n169), .B(n182), .C(n17), .Y(n170) );
  INVX2 U257 ( .A(n170), .Y(n382) );
  INVX2 U258 ( .A(n171), .Y(n325) );
  NAND2X1 U259 ( .A(n172), .B(n180), .Y(n228) );
  INVX2 U260 ( .A(n173), .Y(n324) );
  NOR2X1 U261 ( .A(n324), .B(sd_err), .Y(n174) );
  NAND3X1 U262 ( .A(n175), .B(n228), .C(n174), .Y(n176) );
  INVX2 U263 ( .A(n176), .Y(n363) );
  NAND3X1 U264 ( .A(n325), .B(n25), .C(n363), .Y(n186) );
  NAND2X1 U265 ( .A(n56), .B(n250), .Y(n208) );
  NAND3X1 U266 ( .A(n382), .B(n177), .C(n208), .Y(n178) );
  NOR2X1 U267 ( .A(n179), .B(n178), .Y(n76) );
  NAND2X1 U268 ( .A(n180), .B(n56), .Y(n229) );
  INVX2 U269 ( .A(SPI_select[0]), .Y(n189) );
  INVX2 U270 ( .A(n182), .Y(n183) );
  NOR2X1 U271 ( .A(n351), .B(n183), .Y(n184) );
  NAND3X1 U272 ( .A(n184), .B(n280), .C(n53), .Y(n185) );
  NOR2X1 U273 ( .A(r_enable_o), .B(n185), .Y(n188) );
  INVX2 U274 ( .A(n229), .Y(n284) );
  NOR2X1 U276 ( .A(n284), .B(n186), .Y(n187) );
  NAND3X1 U277 ( .A(n188), .B(n187), .C(n12), .Y(n266) );
  NAND3X1 U278 ( .A(n229), .B(n189), .C(n35), .Y(n193) );
  INVX2 U279 ( .A(r_enable_o), .Y(n190) );
  NAND3X1 U280 ( .A(n53), .B(n27), .C(n190), .Y(n192) );
  NOR2X1 U281 ( .A(n193), .B(n192), .Y(n77) );
  NOR2X1 U282 ( .A(counter[8]), .B(counter[9]), .Y(n194) );
  NAND3X1 U283 ( .A(n195), .B(n313), .C(n194), .Y(n207) );
  NAND3X1 U284 ( .A(n198), .B(n197), .C(n196), .Y(n203) );
  NAND3X1 U285 ( .A(n201), .B(n200), .C(n199), .Y(n202) );
  NOR2X1 U286 ( .A(counter[5]), .B(counter[4]), .Y(n204) );
  NAND3X1 U287 ( .A(n204), .B(n205), .C(n29), .Y(n206) );
  OR2X1 U288 ( .A(n207), .B(n206), .Y(n223) );
  INVX2 U289 ( .A(n223), .Y(n209) );
  INVX2 U290 ( .A(n208), .Y(n356) );
  NAND3X1 U291 ( .A(n309), .B(n209), .C(n356), .Y(n210) );
  INVX2 U292 ( .A(n210), .Y(n214) );
  NAND3X1 U293 ( .A(n214), .B(count_out[1]), .C(n311), .Y(n211) );
  INVX2 U294 ( .A(n211), .Y(N367) );
  NAND3X1 U295 ( .A(n214), .B(count_out[0]), .C(n213), .Y(n212) );
  INVX2 U296 ( .A(n212), .Y(N368) );
  NAND3X1 U297 ( .A(n214), .B(n213), .C(n311), .Y(n215) );
  INVX2 U298 ( .A(n215), .Y(N369) );
  NAND3X1 U299 ( .A(cmd_check[3]), .B(cmd_check[4]), .C(cmd_check[2]), .Y(n217) );
  NAND3X1 U300 ( .A(cmd_check[6]), .B(cmd_check[7]), .C(cmd_check[5]), .Y(n216) );
  OR2X1 U301 ( .A(n217), .B(n216), .Y(n345) );
  INVX2 U302 ( .A(n345), .Y(n219) );
  NAND2X1 U303 ( .A(cmd_check[0]), .B(cmd_check[1]), .Y(n346) );
  INVX2 U304 ( .A(n346), .Y(n281) );
  NOR2X1 U305 ( .A(n281), .B(n228), .Y(n218) );
  NAND3X1 U306 ( .A(n219), .B(n83), .C(n218), .Y(n220) );
  INVX2 U307 ( .A(n220), .Y(N365) );
  INVX2 U308 ( .A(cmd_check[0]), .Y(n221) );
  NOR2X1 U309 ( .A(cmd_check[1]), .B(n221), .Y(N222) );
  NAND2X1 U310 ( .A(cmd_check[1]), .B(n221), .Y(n279) );
  INVX2 U311 ( .A(n279), .Y(n392) );
  NOR2X1 U312 ( .A(count_out[1]), .B(n223), .Y(n222) );
  NAND3X1 U313 ( .A(count_out[0]), .B(count_out[2]), .C(n222), .Y(n343) );
  INVX2 U314 ( .A(n343), .Y(n267) );
  INVX2 U315 ( .A(count_out[2]), .Y(n309) );
  NOR2X1 U316 ( .A(n309), .B(n223), .Y(n225) );
  NOR2X1 U317 ( .A(count_out[1]), .B(count_out[0]), .Y(n224) );
  NAND3X1 U318 ( .A(n225), .B(n356), .C(n224), .Y(n226) );
  INVX2 U319 ( .A(n226), .Y(N371) );
  NAND3X1 U320 ( .A(n230), .B(n229), .C(n228), .Y(n247) );
  NOR2X1 U321 ( .A(n2), .B(n247), .Y(n236) );
  NAND3X1 U322 ( .A(n232), .B(n22), .C(n233), .Y(n243) );
  NAND2X1 U323 ( .A(n233), .B(n83), .Y(n234) );
  NAND2X1 U324 ( .A(n243), .B(n234), .Y(n235) );
  NAND2X1 U325 ( .A(n235), .B(n236), .Y(n240) );
  INVX2 U326 ( .A(n243), .Y(n237) );
  NAND3X1 U327 ( .A(edge_detect), .B(n237), .C(n238), .Y(n239) );
  AOI21X1 U328 ( .A(n239), .B(n240), .C(SDCS), .Y(n254) );
  INVX2 U329 ( .A(sd_read), .Y(n276) );
  NOR2X1 U330 ( .A(n244), .B(n243), .Y(n245) );
  NAND2X1 U331 ( .A(n246), .B(n245), .Y(n249) );
  MUX2X1 U332 ( .B(n249), .A(n248), .S(n26), .Y(n253) );
  NAND3X1 U333 ( .A(n250), .B(n298), .C(n67), .Y(n305) );
  NAND2X1 U334 ( .A(n306), .B(n251), .Y(n252) );
  OAI21X1 U335 ( .A(n254), .B(n253), .C(n252), .Y(n294) );
  NOR2X1 U336 ( .A(counter[9]), .B(n255), .Y(n256) );
  NAND3X1 U337 ( .A(n60), .B(count_out[0]), .C(n256), .Y(n261) );
  NAND3X1 U338 ( .A(counter[5]), .B(counter[4]), .C(count_out[3]), .Y(n259) );
  NAND3X1 U339 ( .A(counter[8]), .B(counter[7]), .C(counter[6]), .Y(n258) );
  OR2X1 U340 ( .A(n259), .B(n258), .Y(n260) );
  INVX2 U341 ( .A(roll), .Y(n291) );
  OAI21X1 U342 ( .A(n261), .B(n260), .C(n291), .Y(n262) );
  NAND2X1 U343 ( .A(n83), .B(n262), .Y(n348) );
  NAND2X1 U344 ( .A(n351), .B(n16), .Y(n274) );
  NAND2X1 U345 ( .A(n374), .B(n274), .Y(n263) );
  AOI22X1 U346 ( .A(n282), .B(n264), .C(n348), .D(n263), .Y(n265) );
  OAI21X1 U347 ( .A(n267), .B(n22), .C(n32), .Y(n268) );
  INVX2 U348 ( .A(n329), .Y(n368) );
  NOR2X1 U349 ( .A(sd_write), .B(n53), .Y(n277) );
  INVX2 U350 ( .A(n274), .Y(n275) );
  AOI22X1 U351 ( .A(n277), .B(n276), .C(n275), .D(roll), .Y(n278) );
  OAI21X1 U352 ( .A(n343), .B(n335), .C(n278), .Y(n296) );
  NOR2X1 U353 ( .A(n264), .B(n279), .Y(n283) );
  INVX2 U354 ( .A(n341), .Y(n282) );
  INVX2 U355 ( .A(n280), .Y(n344) );
  AOI22X1 U356 ( .A(n283), .B(n282), .C(n344), .D(n281), .Y(n286) );
  NOR2X1 U357 ( .A(n284), .B(\cmd_out[1] ), .Y(n285) );
  OAI21X1 U358 ( .A(n286), .B(n345), .C(n285), .Y(n287) );
  INVX2 U359 ( .A(n287), .Y(n381) );
  INVX2 U360 ( .A(n288), .Y(n292) );
  OAI21X1 U361 ( .A(n291), .B(n290), .C(n289), .Y(n299) );
  NOR2X1 U362 ( .A(n292), .B(n299), .Y(n293) );
  NAND3X1 U363 ( .A(n381), .B(n25), .C(n293), .Y(n295) );
  INVX2 U364 ( .A(n294), .Y(n383) );
  OAI21X1 U365 ( .A(n296), .B(n295), .C(n383), .Y(n297) );
  OAI21X1 U366 ( .A(n5), .B(n54), .C(n297), .Y(n270) );
  INVX2 U367 ( .A(n299), .Y(n300) );
  OAI21X1 U368 ( .A(rx_FIFO_empty), .B(n66), .C(n300), .Y(n327) );
  OAI21X1 U369 ( .A(n53), .B(n241), .C(n25), .Y(n303) );
  AOI21X1 U370 ( .A(roll), .B(w_enable), .C(n303), .Y(n321) );
  NAND3X1 U371 ( .A(count_out[1]), .B(n29), .C(n304), .Y(n308) );
  INVX2 U372 ( .A(n305), .Y(n306) );
  NAND3X1 U373 ( .A(counter[6]), .B(n306), .C(count_out[3]), .Y(n307) );
  NOR2X1 U374 ( .A(n308), .B(n307), .Y(n318) );
  NAND3X1 U375 ( .A(n311), .B(n310), .C(n309), .Y(n316) );
  NAND3X1 U376 ( .A(n314), .B(n313), .C(n312), .Y(n315) );
  NOR2X1 U377 ( .A(n316), .B(n315), .Y(n317) );
  NAND2X1 U378 ( .A(n318), .B(n317), .Y(n373) );
  AND2X2 U379 ( .A(n373), .B(n319), .Y(n320) );
  NAND3X1 U380 ( .A(n322), .B(n321), .C(n320), .Y(n360) );
  NAND2X1 U381 ( .A(n324), .B(n42), .Y(n336) );
  NAND2X1 U382 ( .A(n325), .B(n336), .Y(n378) );
  OAI21X1 U383 ( .A(n327), .B(n326), .C(n383), .Y(n334) );
  NAND2X1 U384 ( .A(n328), .B(n343), .Y(n331) );
  NAND2X1 U385 ( .A(n331), .B(n330), .Y(n332) );
  NAND2X1 U386 ( .A(n332), .B(n24), .Y(n333) );
  NAND2X1 U387 ( .A(n334), .B(n333), .Y(n269) );
  NAND2X1 U388 ( .A(sd_read), .B(SDCS), .Y(n340) );
  INVX2 U389 ( .A(n336), .Y(n337) );
  AOI21X1 U390 ( .A(n338), .B(n343), .C(n337), .Y(n339) );
  OAI21X1 U391 ( .A(sd_write), .B(n340), .C(n339), .Y(n354) );
  OAI22X1 U392 ( .A(n343), .B(n34), .C(n264), .D(n341), .Y(n350) );
  OAI21X1 U393 ( .A(n346), .B(n345), .C(n344), .Y(n347) );
  OAI21X1 U394 ( .A(n374), .B(n348), .C(n347), .Y(n349) );
  OR2X1 U395 ( .A(n350), .B(n349), .Y(n361) );
  AOI21X1 U396 ( .A(n351), .B(n49), .C(n361), .Y(n352) );
  NAND3X1 U397 ( .A(n66), .B(n377), .C(n352), .Y(n353) );
  OAI21X1 U398 ( .A(n354), .B(n353), .C(n383), .Y(n355) );
  OAI21X1 U399 ( .A(n64), .B(n54), .C(n355), .Y(n271) );
  INVX2 U400 ( .A(rx_FIFO_empty), .Y(n358) );
  NOR2X1 U401 ( .A(n356), .B(\cmd_out[1] ), .Y(n357) );
  OAI21X1 U402 ( .A(n66), .B(n358), .C(n357), .Y(n365) );
  NOR2X1 U403 ( .A(n361), .B(n360), .Y(n362) );
  NAND3X1 U404 ( .A(n382), .B(n363), .C(n362), .Y(n364) );
  OAI21X1 U405 ( .A(n365), .B(n364), .C(n383), .Y(n366) );
  OAI21X1 U406 ( .A(n330), .B(n23), .C(n366), .Y(n272) );
  NAND2X1 U407 ( .A(n383), .B(n22), .Y(n370) );
  OAI21X1 U408 ( .A(n371), .B(n370), .C(n52), .Y(n387) );
  OAI21X1 U409 ( .A(roll), .B(n374), .C(n373), .Y(n375) );
  OR2X1 U410 ( .A(n376), .B(n375), .Y(n385) );
  NOR2X1 U411 ( .A(n379), .B(n378), .Y(n380) );
  NAND3X1 U412 ( .A(n382), .B(n381), .C(n380), .Y(n384) );
  OAI21X1 U413 ( .A(n385), .B(n384), .C(n383), .Y(n386) );
  NAND2X1 U414 ( .A(n387), .B(n386), .Y(n273) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_3_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;

  INVX2 U1 ( .A(n26), .Y(SUM[1]) );
  INVX2 U2 ( .A(n27), .Y(SUM[11]) );
  INVX2 U3 ( .A(n13), .Y(SUM[9]) );
  INVX2 U4 ( .A(n17), .Y(SUM[7]) );
  INVX2 U5 ( .A(n20), .Y(SUM[5]) );
  INVX2 U6 ( .A(n23), .Y(SUM[3]) );
  INVX2 U7 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U8 ( .A(A[2]), .Y(n8) );
  INVX2 U9 ( .A(A[4]), .Y(n9) );
  INVX2 U10 ( .A(A[6]), .Y(n10) );
  INVX2 U11 ( .A(A[8]), .Y(n11) );
  INVX2 U12 ( .A(A[10]), .Y(n12) );
  AOI21X1 U13 ( .A(n14), .B(A[9]), .C(n15), .Y(n13) );
  OAI21X1 U14 ( .A(n16), .B(n11), .C(n14), .Y(SUM[8]) );
  AOI21X1 U15 ( .A(n18), .B(A[7]), .C(n16), .Y(n17) );
  OAI21X1 U16 ( .A(n19), .B(n10), .C(n18), .Y(SUM[6]) );
  AOI21X1 U17 ( .A(n21), .B(A[5]), .C(n19), .Y(n20) );
  OAI21X1 U18 ( .A(n22), .B(n9), .C(n21), .Y(SUM[4]) );
  AOI21X1 U19 ( .A(n24), .B(A[3]), .C(n22), .Y(n23) );
  OAI21X1 U20 ( .A(n25), .B(n8), .C(n24), .Y(SUM[2]) );
  AOI21X1 U21 ( .A(A[0]), .B(A[1]), .C(n25), .Y(n26) );
  AOI21X1 U22 ( .A(n28), .B(A[11]), .C(SUM[12]), .Y(n27) );
  NOR2X1 U23 ( .A(n28), .B(A[11]), .Y(SUM[12]) );
  OAI21X1 U24 ( .A(n15), .B(n12), .C(n28), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n15), .B(n12), .Y(n28) );
  NOR2X1 U26 ( .A(n14), .B(A[9]), .Y(n15) );
  NAND2X1 U27 ( .A(n16), .B(n11), .Y(n14) );
  NOR2X1 U28 ( .A(n18), .B(A[7]), .Y(n16) );
  NAND2X1 U29 ( .A(n19), .B(n10), .Y(n18) );
  NOR2X1 U30 ( .A(n21), .B(A[5]), .Y(n19) );
  NAND2X1 U31 ( .A(n22), .B(n9), .Y(n21) );
  NOR2X1 U32 ( .A(n24), .B(A[3]), .Y(n22) );
  NAND2X1 U33 ( .A(n25), .B(n8), .Y(n24) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n25) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_3_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n19,
         n20, n21, n23, n24, n25, n27, n28, n29, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n41, n42, n43, n45, n74;
  assign n9 = A[9];
  assign n13 = A[8];
  assign n17 = A[7];
  assign n21 = A[6];
  assign n27 = A[5];
  assign n31 = A[4];
  assign n36 = A[3];
  assign n39 = A[2];
  assign n43 = A[1];
  assign n45 = A[0];

  XNOR2X1 U1 ( .A(n3), .B(n2), .Y(SUM[11]) );
  XNOR2X1 U3 ( .A(n7), .B(n6), .Y(SUM[10]) );
  NOR2X1 U4 ( .A(n74), .B(n1), .Y(n3) );
  XNOR2X1 U8 ( .A(n11), .B(n10), .Y(SUM[9]) );
  NOR2X1 U9 ( .A(n8), .B(n1), .Y(n7) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XOR2X1 U13 ( .A(n1), .B(n14), .Y(SUM[8]) );
  NOR2X1 U14 ( .A(n14), .B(n1), .Y(n11) );
  NAND2X1 U19 ( .A(n34), .B(n15), .Y(n1) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n17), .B(n21), .Y(n16) );
  NOR2X1 U25 ( .A(n20), .B(n33), .Y(n19) );
  NAND2X1 U26 ( .A(n21), .B(n25), .Y(n20) );
  XNOR2X1 U29 ( .A(n29), .B(n28), .Y(SUM[5]) );
  NOR2X1 U30 ( .A(n24), .B(n33), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  XOR2X1 U36 ( .A(n33), .B(n32), .Y(SUM[4]) );
  NOR2X1 U37 ( .A(n32), .B(n33), .Y(n29) );
  XOR2X1 U41 ( .A(n38), .B(n37), .Y(SUM[3]) );
  NOR2X1 U43 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n35) );
  NAND2X1 U48 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  INVX1 U60 ( .A(n36), .Y(n37) );
  INVX1 U61 ( .A(n13), .Y(n14) );
  INVX1 U62 ( .A(n9), .Y(n10) );
  INVX1 U63 ( .A(n27), .Y(n28) );
  XOR2X1 U64 ( .A(n23), .B(n21), .Y(SUM[6]) );
  XOR2X1 U65 ( .A(n41), .B(n39), .Y(SUM[2]) );
  OR2X1 U66 ( .A(n6), .B(n8), .Y(n74) );
  XOR2X1 U67 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XOR2X1 U68 ( .A(n19), .B(n17), .Y(SUM[7]) );
  INVX2 U69 ( .A(A[10]), .Y(n6) );
  INVX2 U70 ( .A(n42), .Y(n41) );
  INVX2 U71 ( .A(n34), .Y(n33) );
  INVX2 U72 ( .A(n31), .Y(n32) );
  INVX2 U73 ( .A(n24), .Y(n25) );
  INVX2 U74 ( .A(A[11]), .Y(n2) );
  INVX2 U75 ( .A(n45), .Y(SUM[0]) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_3 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n115, n116, n117, n118, next_flag, N7, N8, N9, N10, N11, N12, N13,
         N14, N15, N16, N17, N18, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n61, n62, n63, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n1, n2, n4, n5, n6, n7, n8, n9,
         n10, n11, n25, n26, n27, n28, n31, n33, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n107, n108, n109, n110,
         n111, n112, n113, n114;

  NOR2X1 U49 ( .A(n62), .B(n63), .Y(n61) );
  XNOR2X1 U50 ( .A(n114), .B(N40), .Y(n63) );
  XNOR2X1 U51 ( .A(n113), .B(N32), .Y(n62) );
  flex_counter_stuff_NUM_CNT_BITS12_3_DW01_dec_0 sub_37 ( .A({1'b0, 
        rollover_val}), .SUM({N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31}) );
  flex_counter_stuff_NUM_CNT_BITS12_3_DW01_inc_1 add_35 ( .A({count_out[11:10], 
        n2, count_out[8], n5, count_out[6], n4, count_out[4:2], n6, 
        count_out[0]}), .SUM({N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7}) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \cur_count_reg[1]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[9]  ( .D(n97), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \cur_count_reg[11]  ( .D(n95), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \cur_count_reg[10]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \cur_count_reg[8]  ( .D(n98), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \cur_count_reg[7]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \cur_count_reg[6]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n115) );
  DFFSR \cur_count_reg[5]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \cur_count_reg[4]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n116) );
  DFFSR \cur_count_reg[3]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[2]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n117) );
  DFFSR \cur_count_reg[0]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n118) );
  NAND2X1 U3 ( .A(n35), .B(n77), .Y(n1) );
  BUFX2 U4 ( .A(count_out[9]), .Y(n2) );
  BUFX2 U5 ( .A(count_out[5]), .Y(n4) );
  INVX2 U6 ( .A(count_out[7]), .Y(n85) );
  INVX2 U7 ( .A(count_out[1]), .Y(n113) );
  INVX1 U9 ( .A(n85), .Y(n5) );
  INVX2 U10 ( .A(n113), .Y(n6) );
  BUFX2 U11 ( .A(n25), .Y(n7) );
  BUFX2 U12 ( .A(n25), .Y(n8) );
  BUFX2 U13 ( .A(n25), .Y(n9) );
  INVX4 U14 ( .A(n1), .Y(n10) );
  INVX8 U15 ( .A(n10), .Y(n11) );
  NOR3X1 U29 ( .A(n26), .B(n27), .C(n28), .Y(n25) );
  INVX8 U30 ( .A(n78), .Y(n26) );
  INVX8 U31 ( .A(n77), .Y(n27) );
  AND2X2 U32 ( .A(n35), .B(n77), .Y(n28) );
  INVX4 U33 ( .A(n31), .Y(count_out[4]) );
  BUFX4 U34 ( .A(n115), .Y(count_out[6]) );
  BUFX4 U35 ( .A(n117), .Y(count_out[2]) );
  INVX2 U36 ( .A(n116), .Y(n31) );
  INVX2 U37 ( .A(n118), .Y(n33) );
  INVX8 U38 ( .A(n33), .Y(count_out[0]) );
  INVX2 U39 ( .A(count_out[9]), .Y(n114) );
  INVX2 U40 ( .A(count_enable), .Y(n35) );
  INVX2 U41 ( .A(clear), .Y(n77) );
  XOR2X1 U42 ( .A(n85), .B(rollover_val[7]), .Y(n38) );
  INVX2 U43 ( .A(count_out[8]), .Y(n83) );
  XOR2X1 U44 ( .A(n83), .B(rollover_val[8]), .Y(n37) );
  INVX2 U45 ( .A(count_out[6]), .Y(n87) );
  XOR2X1 U46 ( .A(n87), .B(rollover_val[6]), .Y(n36) );
  NAND3X1 U47 ( .A(n38), .B(n37), .C(n36), .Y(n43) );
  INVX2 U48 ( .A(count_out[10]), .Y(n80) );
  XOR2X1 U52 ( .A(n80), .B(rollover_val[10]), .Y(n41) );
  INVX2 U53 ( .A(count_out[11]), .Y(n110) );
  XOR2X1 U54 ( .A(n110), .B(rollover_val[11]), .Y(n40) );
  XOR2X1 U55 ( .A(n114), .B(rollover_val[9]), .Y(n39) );
  NAND3X1 U56 ( .A(n41), .B(n40), .C(n39), .Y(n42) );
  NOR2X1 U57 ( .A(n43), .B(n42), .Y(n53) );
  XOR2X1 U58 ( .A(n113), .B(rollover_val[1]), .Y(n46) );
  INVX2 U59 ( .A(count_out[2]), .Y(n107) );
  XOR2X1 U60 ( .A(n107), .B(rollover_val[2]), .Y(n45) );
  INVX2 U61 ( .A(count_out[0]), .Y(n112) );
  XOR2X1 U62 ( .A(n112), .B(rollover_val[0]), .Y(n44) );
  NAND3X1 U63 ( .A(n46), .B(n45), .C(n44), .Y(n51) );
  INVX2 U64 ( .A(count_out[4]), .Y(n91) );
  XOR2X1 U65 ( .A(n91), .B(rollover_val[4]), .Y(n49) );
  INVX2 U66 ( .A(count_out[5]), .Y(n89) );
  XOR2X1 U67 ( .A(n89), .B(rollover_val[5]), .Y(n48) );
  INVX2 U68 ( .A(count_out[3]), .Y(n93) );
  XOR2X1 U69 ( .A(n93), .B(rollover_val[3]), .Y(n47) );
  NAND3X1 U70 ( .A(n49), .B(n48), .C(n47), .Y(n50) );
  NOR2X1 U71 ( .A(n51), .B(n50), .Y(n52) );
  NAND2X1 U72 ( .A(n53), .B(n52), .Y(n78) );
  XOR2X1 U73 ( .A(n87), .B(N37), .Y(n55) );
  XOR2X1 U74 ( .A(n110), .B(N42), .Y(n54) );
  NAND2X1 U75 ( .A(n55), .B(n54), .Y(n59) );
  XOR2X1 U76 ( .A(n85), .B(N38), .Y(n57) );
  XOR2X1 U77 ( .A(n89), .B(N36), .Y(n56) );
  NAND2X1 U78 ( .A(n57), .B(n56), .Y(n58) );
  NOR2X1 U79 ( .A(n59), .B(n58), .Y(n75) );
  XOR2X1 U80 ( .A(n83), .B(N39), .Y(n64) );
  XOR2X1 U81 ( .A(n80), .B(N41), .Y(n60) );
  NAND2X1 U82 ( .A(n64), .B(n60), .Y(n65) );
  NOR2X1 U83 ( .A(N43), .B(n65), .Y(n74) );
  XOR2X1 U84 ( .A(n107), .B(N33), .Y(n68) );
  XOR2X1 U85 ( .A(n93), .B(N34), .Y(n67) );
  XOR2X1 U86 ( .A(n112), .B(N31), .Y(n66) );
  NAND3X1 U87 ( .A(n68), .B(n67), .C(n66), .Y(n72) );
  XOR2X1 U88 ( .A(count_out[4]), .B(N35), .Y(n69) );
  NOR2X1 U89 ( .A(clear), .B(n69), .Y(n70) );
  NAND3X1 U90 ( .A(count_enable), .B(n61), .C(n70), .Y(n71) );
  NOR2X1 U91 ( .A(n72), .B(n71), .Y(n73) );
  NAND3X1 U92 ( .A(n75), .B(n74), .C(n73), .Y(n76) );
  OAI21X1 U93 ( .A(n11), .B(n78), .C(n76), .Y(next_flag) );
  NAND2X1 U94 ( .A(n9), .B(N17), .Y(n79) );
  OAI21X1 U95 ( .A(n11), .B(n80), .C(n79), .Y(n96) );
  NAND2X1 U96 ( .A(N16), .B(n7), .Y(n81) );
  OAI21X1 U97 ( .A(n114), .B(n11), .C(n81), .Y(n97) );
  NAND2X1 U98 ( .A(n9), .B(N15), .Y(n82) );
  OAI21X1 U99 ( .A(n11), .B(n83), .C(n82), .Y(n98) );
  NAND2X1 U100 ( .A(n7), .B(N14), .Y(n84) );
  OAI21X1 U101 ( .A(n11), .B(n85), .C(n84), .Y(n99) );
  NAND2X1 U102 ( .A(N13), .B(n7), .Y(n86) );
  OAI21X1 U103 ( .A(n11), .B(n87), .C(n86), .Y(n100) );
  NAND2X1 U104 ( .A(N12), .B(n8), .Y(n88) );
  OAI21X1 U105 ( .A(n11), .B(n89), .C(n88), .Y(n101) );
  NAND2X1 U106 ( .A(N11), .B(n8), .Y(n90) );
  OAI21X1 U107 ( .A(n11), .B(n91), .C(n90), .Y(n102) );
  NAND2X1 U108 ( .A(N10), .B(n9), .Y(n92) );
  OAI21X1 U109 ( .A(n11), .B(n93), .C(n92), .Y(n103) );
  NAND2X1 U110 ( .A(N9), .B(n8), .Y(n94) );
  OAI21X1 U111 ( .A(n11), .B(n107), .C(n94), .Y(n104) );
  NAND2X1 U112 ( .A(n7), .B(N8), .Y(n108) );
  OAI21X1 U113 ( .A(n113), .B(n11), .C(n108), .Y(n105) );
  NAND2X1 U114 ( .A(n9), .B(N18), .Y(n109) );
  OAI21X1 U115 ( .A(n11), .B(n110), .C(n109), .Y(n95) );
  NAND2X1 U116 ( .A(N7), .B(n8), .Y(n111) );
  OAI21X1 U117 ( .A(n11), .B(n112), .C(n111), .Y(n106) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_2_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;

  INVX2 U1 ( .A(n26), .Y(SUM[1]) );
  INVX2 U2 ( .A(n27), .Y(SUM[11]) );
  INVX2 U3 ( .A(n13), .Y(SUM[9]) );
  INVX2 U4 ( .A(n17), .Y(SUM[7]) );
  INVX2 U5 ( .A(n20), .Y(SUM[5]) );
  INVX2 U6 ( .A(n23), .Y(SUM[3]) );
  INVX2 U7 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U8 ( .A(A[2]), .Y(n8) );
  INVX2 U9 ( .A(A[4]), .Y(n9) );
  INVX2 U10 ( .A(A[6]), .Y(n10) );
  INVX2 U11 ( .A(A[8]), .Y(n11) );
  INVX2 U12 ( .A(A[10]), .Y(n12) );
  AOI21X1 U13 ( .A(n14), .B(A[9]), .C(n15), .Y(n13) );
  OAI21X1 U14 ( .A(n16), .B(n11), .C(n14), .Y(SUM[8]) );
  AOI21X1 U15 ( .A(n18), .B(A[7]), .C(n16), .Y(n17) );
  OAI21X1 U16 ( .A(n19), .B(n10), .C(n18), .Y(SUM[6]) );
  AOI21X1 U17 ( .A(n21), .B(A[5]), .C(n19), .Y(n20) );
  OAI21X1 U18 ( .A(n22), .B(n9), .C(n21), .Y(SUM[4]) );
  AOI21X1 U19 ( .A(n24), .B(A[3]), .C(n22), .Y(n23) );
  OAI21X1 U20 ( .A(n25), .B(n8), .C(n24), .Y(SUM[2]) );
  AOI21X1 U21 ( .A(A[0]), .B(A[1]), .C(n25), .Y(n26) );
  AOI21X1 U22 ( .A(n28), .B(A[11]), .C(SUM[12]), .Y(n27) );
  NOR2X1 U23 ( .A(n28), .B(A[11]), .Y(SUM[12]) );
  OAI21X1 U24 ( .A(n15), .B(n12), .C(n28), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n15), .B(n12), .Y(n28) );
  NOR2X1 U26 ( .A(n14), .B(A[9]), .Y(n15) );
  NAND2X1 U27 ( .A(n16), .B(n11), .Y(n14) );
  NOR2X1 U28 ( .A(n18), .B(A[7]), .Y(n16) );
  NAND2X1 U29 ( .A(n19), .B(n10), .Y(n18) );
  NOR2X1 U30 ( .A(n21), .B(A[5]), .Y(n19) );
  NAND2X1 U31 ( .A(n22), .B(n9), .Y(n21) );
  NOR2X1 U32 ( .A(n24), .B(A[3]), .Y(n22) );
  NAND2X1 U33 ( .A(n25), .B(n8), .Y(n24) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n25) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_2_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n3, n6, n7, n8, n9, n11, n13, n14, n15, n16, n17, n19, n20, n21,
         n23, n24, n25, n27, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n41, n42, n43, n45, n74;
  assign n9 = A[9];
  assign n13 = A[8];
  assign n17 = A[7];
  assign n21 = A[6];
  assign n27 = A[5];
  assign n31 = A[4];
  assign n36 = A[3];
  assign n39 = A[2];
  assign n43 = A[1];
  assign n45 = A[0];

  XNOR2X1 U3 ( .A(n7), .B(n6), .Y(SUM[10]) );
  NOR2X1 U4 ( .A(n74), .B(n1), .Y(n3) );
  NOR2X1 U9 ( .A(n8), .B(n1), .Y(n7) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XOR2X1 U13 ( .A(n1), .B(n14), .Y(SUM[8]) );
  NOR2X1 U14 ( .A(n14), .B(n1), .Y(n11) );
  NAND2X1 U19 ( .A(n34), .B(n15), .Y(n1) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n17), .B(n21), .Y(n16) );
  NOR2X1 U25 ( .A(n20), .B(n33), .Y(n19) );
  NAND2X1 U26 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U30 ( .A(n24), .B(n33), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  XOR2X1 U36 ( .A(n33), .B(n32), .Y(SUM[4]) );
  NOR2X1 U37 ( .A(n32), .B(n33), .Y(n29) );
  XOR2X1 U41 ( .A(n38), .B(n37), .Y(SUM[3]) );
  NOR2X1 U43 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n35) );
  NAND2X1 U48 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  INVX1 U60 ( .A(A[10]), .Y(n6) );
  INVX1 U61 ( .A(n36), .Y(n37) );
  XOR2X1 U62 ( .A(n23), .B(n21), .Y(SUM[6]) );
  XOR2X1 U63 ( .A(n41), .B(n39), .Y(SUM[2]) );
  XOR2X1 U64 ( .A(n11), .B(n9), .Y(SUM[9]) );
  XOR2X1 U65 ( .A(n29), .B(n27), .Y(SUM[5]) );
  OR2X1 U66 ( .A(n6), .B(n8), .Y(n74) );
  XOR2X1 U67 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XOR2X1 U68 ( .A(n19), .B(n17), .Y(SUM[7]) );
  XOR2X1 U69 ( .A(n3), .B(A[11]), .Y(SUM[11]) );
  INVX2 U70 ( .A(n42), .Y(n41) );
  INVX2 U71 ( .A(n34), .Y(n33) );
  INVX2 U72 ( .A(n31), .Y(n32) );
  INVX2 U73 ( .A(n24), .Y(n25) );
  INVX2 U74 ( .A(n13), .Y(n14) );
  INVX2 U75 ( .A(n45), .Y(SUM[0]) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_2 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n141, n142, n143, n144, n145, n146, n147, n148, next_flag, N7, N8, N9,
         N10, N11, N12, N13, N14, N15, N16, N17, N18, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, n1, n2, n5, n7, n13, n27, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127;

  DFFSR \cur_count_reg[0]  ( .D(n113), .CLK(clk), .R(n30), .S(1'b1), .Q(n148)
         );
  DFFSR \cur_count_reg[11]  ( .D(n124), .CLK(clk), .R(n30), .S(1'b1), .Q(n141)
         );
  DFFSR \cur_count_reg[1]  ( .D(n114), .CLK(clk), .R(n30), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[2]  ( .D(n115), .CLK(clk), .R(n30), .S(1'b1), .Q(n147)
         );
  DFFSR \cur_count_reg[3]  ( .D(n116), .CLK(clk), .R(n30), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[4]  ( .D(n117), .CLK(clk), .R(n30), .S(1'b1), .Q(n146)
         );
  DFFSR \cur_count_reg[5]  ( .D(n118), .CLK(clk), .R(n30), .S(1'b1), .Q(n145)
         );
  DFFSR \cur_count_reg[6]  ( .D(n119), .CLK(clk), .R(n30), .S(1'b1), .Q(n144)
         );
  DFFSR \cur_count_reg[7]  ( .D(n120), .CLK(clk), .R(n30), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \cur_count_reg[8]  ( .D(n121), .CLK(clk), .R(n30), .S(1'b1), .Q(n143)
         );
  DFFSR \cur_count_reg[9]  ( .D(n122), .CLK(clk), .R(n30), .S(1'b1), .Q(n142)
         );
  DFFSR \cur_count_reg[10]  ( .D(n123), .CLK(clk), .R(n30), .S(1'b1), .Q(
        count_out[10]) );
  NOR2X1 U49 ( .A(n126), .B(n125), .Y(n127) );
  XNOR2X1 U50 ( .A(n112), .B(N40), .Y(n125) );
  XNOR2X1 U51 ( .A(n111), .B(N32), .Y(n126) );
  flex_counter_stuff_NUM_CNT_BITS12_2_DW01_dec_0 sub_37 ( .A({1'b0, 
        rollover_val}), .SUM({N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31}) );
  flex_counter_stuff_NUM_CNT_BITS12_2_DW01_inc_1 add_35 ( .A({count_out[11:8], 
        n2, count_out[6:2], n1, count_out[0]}), .SUM({N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7}) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  INVX4 U3 ( .A(n7), .Y(n29) );
  INVX2 U17 ( .A(n111), .Y(n1) );
  INVX2 U18 ( .A(count_out[1]), .Y(n111) );
  INVX1 U19 ( .A(count_out[3]), .Y(n90) );
  BUFX2 U20 ( .A(count_out[7]), .Y(n2) );
  INVX1 U21 ( .A(count_out[7]), .Y(n82) );
  INVX2 U23 ( .A(n141), .Y(n5) );
  INVX4 U24 ( .A(n5), .Y(count_out[11]) );
  INVX2 U25 ( .A(n31), .Y(n30) );
  INVX2 U26 ( .A(n_rst), .Y(n31) );
  NOR2X1 U27 ( .A(count_enable), .B(clear), .Y(n7) );
  INVX4 U28 ( .A(n27), .Y(count_out[0]) );
  INVX4 U29 ( .A(n13), .Y(count_out[4]) );
  BUFX4 U30 ( .A(n143), .Y(count_out[8]) );
  BUFX4 U31 ( .A(n142), .Y(count_out[9]) );
  BUFX4 U32 ( .A(n145), .Y(count_out[5]) );
  BUFX4 U33 ( .A(n144), .Y(count_out[6]) );
  BUFX4 U34 ( .A(n147), .Y(count_out[2]) );
  INVX2 U35 ( .A(n146), .Y(n13) );
  INVX2 U36 ( .A(n148), .Y(n27) );
  INVX4 U37 ( .A(n75), .Y(n108) );
  INVX2 U38 ( .A(count_out[9]), .Y(n112) );
  INVX2 U39 ( .A(clear), .Y(n73) );
  XOR2X1 U40 ( .A(n82), .B(rollover_val[7]), .Y(n34) );
  INVX2 U41 ( .A(count_out[8]), .Y(n80) );
  XOR2X1 U42 ( .A(n80), .B(rollover_val[8]), .Y(n33) );
  INVX2 U43 ( .A(count_out[6]), .Y(n84) );
  XOR2X1 U44 ( .A(n84), .B(rollover_val[6]), .Y(n32) );
  NAND3X1 U45 ( .A(n34), .B(n33), .C(n32), .Y(n39) );
  INVX2 U46 ( .A(count_out[10]), .Y(n77) );
  XOR2X1 U47 ( .A(n77), .B(rollover_val[10]), .Y(n37) );
  INVX2 U48 ( .A(count_out[11]), .Y(n107) );
  XOR2X1 U52 ( .A(n107), .B(rollover_val[11]), .Y(n36) );
  XOR2X1 U53 ( .A(n112), .B(rollover_val[9]), .Y(n35) );
  NAND3X1 U54 ( .A(n37), .B(n36), .C(n35), .Y(n38) );
  NOR2X1 U55 ( .A(n39), .B(n38), .Y(n49) );
  XOR2X1 U56 ( .A(n111), .B(rollover_val[1]), .Y(n42) );
  INVX2 U57 ( .A(count_out[2]), .Y(n92) );
  XOR2X1 U58 ( .A(n92), .B(rollover_val[2]), .Y(n41) );
  INVX2 U59 ( .A(count_out[0]), .Y(n110) );
  XOR2X1 U60 ( .A(n110), .B(rollover_val[0]), .Y(n40) );
  NAND3X1 U61 ( .A(n42), .B(n41), .C(n40), .Y(n47) );
  INVX2 U62 ( .A(count_out[4]), .Y(n88) );
  XOR2X1 U63 ( .A(n88), .B(rollover_val[4]), .Y(n45) );
  INVX2 U64 ( .A(count_out[5]), .Y(n86) );
  XOR2X1 U65 ( .A(n86), .B(rollover_val[5]), .Y(n44) );
  XOR2X1 U66 ( .A(n90), .B(rollover_val[3]), .Y(n43) );
  NAND3X1 U67 ( .A(n45), .B(n44), .C(n43), .Y(n46) );
  NOR2X1 U68 ( .A(n47), .B(n46), .Y(n48) );
  NAND2X1 U69 ( .A(n49), .B(n48), .Y(n74) );
  XOR2X1 U70 ( .A(n84), .B(N37), .Y(n51) );
  XOR2X1 U71 ( .A(n107), .B(N42), .Y(n50) );
  NAND2X1 U72 ( .A(n51), .B(n50), .Y(n55) );
  XOR2X1 U73 ( .A(n82), .B(N38), .Y(n53) );
  XOR2X1 U74 ( .A(n86), .B(N36), .Y(n52) );
  NAND2X1 U75 ( .A(n53), .B(n52), .Y(n54) );
  NOR2X1 U76 ( .A(n55), .B(n54), .Y(n71) );
  XOR2X1 U77 ( .A(n80), .B(N39), .Y(n57) );
  XOR2X1 U78 ( .A(n77), .B(N41), .Y(n56) );
  NAND2X1 U79 ( .A(n57), .B(n56), .Y(n58) );
  NOR2X1 U80 ( .A(N43), .B(n58), .Y(n70) );
  XOR2X1 U81 ( .A(n92), .B(N33), .Y(n64) );
  XOR2X1 U82 ( .A(n90), .B(N34), .Y(n60) );
  XOR2X1 U83 ( .A(n110), .B(N31), .Y(n59) );
  NAND3X1 U84 ( .A(n64), .B(n60), .C(n59), .Y(n68) );
  XOR2X1 U85 ( .A(count_out[4]), .B(N35), .Y(n65) );
  NOR2X1 U86 ( .A(clear), .B(n65), .Y(n66) );
  NAND3X1 U87 ( .A(count_enable), .B(n127), .C(n66), .Y(n67) );
  NOR2X1 U88 ( .A(n68), .B(n67), .Y(n69) );
  NAND3X1 U89 ( .A(n71), .B(n70), .C(n69), .Y(n72) );
  OAI21X1 U90 ( .A(n29), .B(n74), .C(n72), .Y(next_flag) );
  NAND3X1 U91 ( .A(n74), .B(n73), .C(n29), .Y(n75) );
  NAND2X1 U92 ( .A(N17), .B(n108), .Y(n76) );
  OAI21X1 U93 ( .A(n29), .B(n77), .C(n76), .Y(n123) );
  NAND2X1 U94 ( .A(N16), .B(n108), .Y(n78) );
  OAI21X1 U95 ( .A(n112), .B(n29), .C(n78), .Y(n122) );
  NAND2X1 U96 ( .A(N15), .B(n108), .Y(n79) );
  OAI21X1 U97 ( .A(n29), .B(n80), .C(n79), .Y(n121) );
  NAND2X1 U98 ( .A(N14), .B(n108), .Y(n81) );
  OAI21X1 U99 ( .A(n29), .B(n82), .C(n81), .Y(n120) );
  NAND2X1 U100 ( .A(N13), .B(n108), .Y(n83) );
  OAI21X1 U101 ( .A(n29), .B(n84), .C(n83), .Y(n119) );
  NAND2X1 U102 ( .A(N12), .B(n108), .Y(n85) );
  OAI21X1 U103 ( .A(n29), .B(n86), .C(n85), .Y(n118) );
  NAND2X1 U104 ( .A(N11), .B(n108), .Y(n87) );
  OAI21X1 U105 ( .A(n29), .B(n88), .C(n87), .Y(n117) );
  NAND2X1 U106 ( .A(N10), .B(n108), .Y(n89) );
  OAI21X1 U107 ( .A(n29), .B(n90), .C(n89), .Y(n116) );
  NAND2X1 U108 ( .A(N9), .B(n108), .Y(n91) );
  OAI21X1 U109 ( .A(n29), .B(n92), .C(n91), .Y(n115) );
  NAND2X1 U110 ( .A(N8), .B(n108), .Y(n93) );
  OAI21X1 U111 ( .A(n111), .B(n29), .C(n93), .Y(n114) );
  NAND2X1 U112 ( .A(N18), .B(n108), .Y(n94) );
  OAI21X1 U113 ( .A(n29), .B(n107), .C(n94), .Y(n124) );
  NAND2X1 U114 ( .A(N7), .B(n108), .Y(n109) );
  OAI21X1 U115 ( .A(n29), .B(n110), .C(n109), .Y(n113) );
endmodule


module myfifo_1_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(SUM[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module myfifo_1 ( clk, n_rst, r_enable, w_enable, clear, data_i, sram_o, 
        sram_i, data_o, addr, full, empty );
  input [7:0] data_i;
  input [7:0] sram_o;
  output [7:0] sram_i;
  output [7:0] data_o;
  output [11:0] addr;
  input clk, n_rst, r_enable, w_enable, clear;
  output full, empty;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56;
  wire   [11:0] writeptr;
  wire   [11:0] readptr;
  assign sram_i[7] = data_i[7];
  assign sram_i[6] = data_i[6];
  assign sram_i[5] = data_i[5];
  assign sram_i[4] = data_i[4];
  assign sram_i[3] = data_i[3];
  assign sram_i[2] = data_i[2];
  assign sram_i[1] = data_i[1];
  assign sram_i[0] = data_i[0];
  assign data_o[7] = sram_o[7];
  assign data_o[6] = sram_o[6];
  assign data_o[5] = sram_o[5];
  assign data_o[4] = sram_o[4];
  assign data_o[3] = sram_o[3];
  assign data_o[2] = sram_o[2];
  assign data_o[1] = sram_o[1];
  assign data_o[0] = sram_o[0];

  AND2X2 U4 ( .A(n25), .B(n26), .Y(full) );
  NOR2X1 U20 ( .A(n27), .B(n28), .Y(n26) );
  NAND3X1 U21 ( .A(n29), .B(n30), .C(n31), .Y(n28) );
  XNOR2X1 U22 ( .A(writeptr[0]), .B(N2), .Y(n31) );
  XNOR2X1 U23 ( .A(n12), .B(N3), .Y(n30) );
  XNOR2X1 U24 ( .A(writeptr[2]), .B(N4), .Y(n29) );
  NAND3X1 U25 ( .A(n32), .B(n33), .C(n34), .Y(n27) );
  NOR2X1 U26 ( .A(N14), .B(n35), .Y(n34) );
  XOR2X1 U27 ( .A(writeptr[5]), .B(N7), .Y(n35) );
  XNOR2X1 U28 ( .A(n1), .B(N5), .Y(n33) );
  XNOR2X1 U29 ( .A(writeptr[4]), .B(N6), .Y(n32) );
  NOR2X1 U30 ( .A(n36), .B(n37), .Y(n25) );
  NAND3X1 U31 ( .A(n38), .B(n39), .C(n40), .Y(n37) );
  XNOR2X1 U32 ( .A(n15), .B(N9), .Y(n40) );
  XNOR2X1 U33 ( .A(writeptr[11]), .B(N13), .Y(n39) );
  XNOR2X1 U34 ( .A(writeptr[6]), .B(N8), .Y(n38) );
  NAND3X1 U35 ( .A(n41), .B(n42), .C(n43), .Y(n36) );
  XNOR2X1 U36 ( .A(n4), .B(N12), .Y(n43) );
  XNOR2X1 U37 ( .A(writeptr[8]), .B(N10), .Y(n42) );
  XNOR2X1 U38 ( .A(writeptr[9]), .B(N11), .Y(n41) );
  AOI22X1 U57 ( .A(writeptr[9]), .B(n17), .C(n16), .D(n9), .Y(n62) );
  AOI22X1 U58 ( .A(writeptr[8]), .B(n17), .C(n16), .D(n8), .Y(n63) );
  AOI22X1 U59 ( .A(n15), .B(n17), .C(n16), .D(n14), .Y(n64) );
  AOI22X1 U60 ( .A(writeptr[6]), .B(n17), .C(n16), .D(readptr[6]), .Y(n65) );
  AOI22X1 U61 ( .A(writeptr[5]), .B(n17), .C(n16), .D(n10), .Y(n66) );
  AOI22X1 U62 ( .A(writeptr[4]), .B(n17), .C(n16), .D(readptr[4]), .Y(n67) );
  AOI22X1 U63 ( .A(n1), .B(n17), .C(n16), .D(n7), .Y(n68) );
  AOI22X1 U64 ( .A(writeptr[2]), .B(n17), .C(n16), .D(readptr[2]), .Y(n69) );
  AOI22X1 U65 ( .A(n12), .B(n17), .C(n16), .D(n6), .Y(n70) );
  AOI22X1 U66 ( .A(writeptr[11]), .B(n17), .C(n16), .D(n5), .Y(n71) );
  AOI22X1 U67 ( .A(n4), .B(n17), .C(n16), .D(n3), .Y(n72) );
  AOI22X1 U68 ( .A(writeptr[0]), .B(n17), .C(n16), .D(readptr[0]), .Y(n73) );
  flex_counter_stuff_NUM_CNT_BITS12_3 ReadCnt ( .clk(clk), .n_rst(n18), 
        .clear(clear), .count_enable(r_enable), .rollover_val({1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .count_out(readptr) );
  flex_counter_stuff_NUM_CNT_BITS12_2 WriteCnt ( .clk(clk), .n_rst(n18), 
        .clear(clear), .count_enable(w_enable), .rollover_val({1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .count_out(writeptr) );
  myfifo_1_DW01_inc_0 add_34 ( .A({1'b0, n5, n3, n9, n8, n14, readptr[6], n10, 
        readptr[4], n2, readptr[2], n6, readptr[0]}), .SUM({N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  BUFX2 U5 ( .A(n13), .Y(n1) );
  XNOR2X1 U6 ( .A(n14), .B(n15), .Y(n50) );
  BUFX4 U7 ( .A(readptr[8]), .Y(n8) );
  BUFX2 U8 ( .A(n7), .Y(n2) );
  INVX1 U9 ( .A(n16), .Y(n17) );
  INVX1 U10 ( .A(w_enable), .Y(n16) );
  BUFX2 U11 ( .A(writeptr[1]), .Y(n12) );
  BUFX4 U12 ( .A(readptr[10]), .Y(n3) );
  BUFX2 U13 ( .A(readptr[3]), .Y(n7) );
  BUFX4 U14 ( .A(readptr[9]), .Y(n9) );
  BUFX4 U15 ( .A(readptr[5]), .Y(n10) );
  BUFX2 U16 ( .A(readptr[1]), .Y(n6) );
  BUFX4 U17 ( .A(writeptr[10]), .Y(n4) );
  BUFX2 U18 ( .A(writeptr[3]), .Y(n13) );
  BUFX2 U19 ( .A(readptr[11]), .Y(n5) );
  BUFX4 U39 ( .A(readptr[7]), .Y(n14) );
  BUFX4 U40 ( .A(writeptr[7]), .Y(n15) );
  INVX2 U41 ( .A(n19), .Y(n18) );
  INVX2 U42 ( .A(n_rst), .Y(n19) );
  XNOR2X1 U43 ( .A(n10), .B(writeptr[5]), .Y(n22) );
  XNOR2X1 U44 ( .A(n7), .B(n13), .Y(n21) );
  XNOR2X1 U45 ( .A(readptr[4]), .B(writeptr[4]), .Y(n20) );
  NAND3X1 U46 ( .A(n22), .B(n20), .C(n21), .Y(n46) );
  XNOR2X1 U47 ( .A(readptr[2]), .B(writeptr[2]), .Y(n44) );
  XNOR2X1 U48 ( .A(readptr[0]), .B(writeptr[0]), .Y(n24) );
  XNOR2X1 U49 ( .A(n6), .B(n12), .Y(n23) );
  NAND3X1 U50 ( .A(n44), .B(n24), .C(n23), .Y(n45) );
  NOR2X1 U51 ( .A(n46), .B(n45), .Y(n56) );
  XNOR2X1 U52 ( .A(readptr[11]), .B(writeptr[11]), .Y(n49) );
  XNOR2X1 U53 ( .A(n9), .B(writeptr[9]), .Y(n48) );
  XNOR2X1 U54 ( .A(n3), .B(n4), .Y(n47) );
  NAND3X1 U55 ( .A(n49), .B(n48), .C(n47), .Y(n54) );
  XNOR2X1 U56 ( .A(n8), .B(writeptr[8]), .Y(n52) );
  XNOR2X1 U69 ( .A(readptr[6]), .B(writeptr[6]), .Y(n51) );
  NAND3X1 U70 ( .A(n50), .B(n51), .C(n52), .Y(n53) );
  NOR2X1 U71 ( .A(n54), .B(n53), .Y(n55) );
  AND2X2 U72 ( .A(n56), .B(n55), .Y(empty) );
  INVX2 U73 ( .A(n73), .Y(addr[0]) );
  INVX2 U74 ( .A(n72), .Y(addr[10]) );
  INVX2 U75 ( .A(n71), .Y(addr[11]) );
  INVX2 U76 ( .A(n70), .Y(addr[1]) );
  INVX2 U77 ( .A(n69), .Y(addr[2]) );
  INVX2 U78 ( .A(n68), .Y(addr[3]) );
  INVX2 U79 ( .A(n67), .Y(addr[4]) );
  INVX2 U80 ( .A(n66), .Y(addr[5]) );
  INVX2 U81 ( .A(n65), .Y(addr[6]) );
  INVX2 U82 ( .A(n64), .Y(addr[7]) );
  INVX2 U83 ( .A(n63), .Y(addr[8]) );
  INVX2 U84 ( .A(n62), .Y(addr[9]) );
endmodule


module flex_counter_stuff_5 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N17, N19, n27, n28, n29, n30, n31, n32, n33, n53, n54, n55,
         n56, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n34, n35, n36, n37, n38, n39;

  DFFSR \cur_count_reg[0]  ( .D(n56), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[2]  ( .D(n54), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[1]  ( .D(n55), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  NAND3X1 U19 ( .A(n29), .B(n30), .C(n31), .Y(n28) );
  XNOR2X1 U21 ( .A(count_out[2]), .B(N17), .Y(n30) );
  NAND3X1 U23 ( .A(n32), .B(count_enable), .C(n33), .Y(n27) );
  NOR2X1 U24 ( .A(clear), .B(N19), .Y(n33) );
  XOR2X1 U8 ( .A(count_out[1]), .B(n35), .Y(n31) );
  XOR2X1 U9 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n29) );
  XOR2X1 U10 ( .A(count_out[3]), .B(n38), .Y(n32) );
  XOR2X1 U11 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n2) );
  XOR2X1 U12 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n1) );
  NOR2X1 U13 ( .A(n2), .B(n1), .Y(n5) );
  XNOR2X1 U14 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n4) );
  XNOR2X1 U15 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n3) );
  NAND3X1 U16 ( .A(n5), .B(n4), .C(n3), .Y(n8) );
  INVX2 U17 ( .A(count_enable), .Y(n6) );
  INVX2 U18 ( .A(clear), .Y(n7) );
  NAND2X1 U20 ( .A(n6), .B(n7), .Y(n26) );
  OAI22X1 U22 ( .A(n8), .B(n26), .C(n28), .D(n27), .Y(next_flag) );
  NAND2X1 U25 ( .A(n8), .B(n7), .Y(n12) );
  INVX2 U26 ( .A(n12), .Y(n25) );
  NAND3X1 U27 ( .A(count_out[0]), .B(n25), .C(n26), .Y(n10) );
  OAI21X1 U28 ( .A(count_out[0]), .B(n12), .C(n26), .Y(n9) );
  INVX2 U29 ( .A(n9), .Y(n11) );
  MUX2X1 U30 ( .B(n10), .A(n11), .S(count_out[1]), .Y(n55) );
  INVX2 U31 ( .A(n10), .Y(n21) );
  NAND3X1 U32 ( .A(count_out[2]), .B(count_out[1]), .C(n21), .Y(n20) );
  INVX2 U33 ( .A(count_out[2]), .Y(n18) );
  OAI21X1 U34 ( .A(count_out[1]), .B(n12), .C(n11), .Y(n22) );
  AOI21X1 U35 ( .A(n25), .B(n18), .C(n22), .Y(n19) );
  MUX2X1 U36 ( .B(n20), .A(n19), .S(count_out[3]), .Y(n53) );
  NAND2X1 U37 ( .A(count_out[1]), .B(n21), .Y(n24) );
  INVX2 U38 ( .A(n22), .Y(n23) );
  MUX2X1 U39 ( .B(n24), .A(n23), .S(count_out[2]), .Y(n54) );
  NAND2X1 U40 ( .A(n25), .B(n26), .Y(n34) );
  MUX2X1 U41 ( .B(n34), .A(n26), .S(count_out[0]), .Y(n56) );
  NOR2X1 U42 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n36) );
  AOI21X1 U43 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n36), .Y(n35) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n37) );
  OAI21X1 U45 ( .A(n36), .B(n39), .C(n37), .Y(N17) );
  NOR2X1 U46 ( .A(n37), .B(rollover_val[3]), .Y(N19) );
  AOI21X1 U47 ( .A(n37), .B(rollover_val[3]), .C(N19), .Y(n38) );
  INVX2 U48 ( .A(rollover_val[2]), .Y(n39) );
endmodule


module flex_counter_stuff_4 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48;

  DFFSR \cur_count_reg[0]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[2]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[1]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  NAND2X1 U8 ( .A(n25), .B(n28), .Y(n1) );
  AND2X2 U9 ( .A(n29), .B(n28), .Y(n2) );
  INVX2 U10 ( .A(n30), .Y(n3) );
  INVX1 U11 ( .A(n30), .Y(n32) );
  INVX1 U12 ( .A(n38), .Y(n39) );
  XNOR2X1 U13 ( .A(count_out[1]), .B(n43), .Y(n5) );
  XOR2X1 U14 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n4) );
  INVX1 U15 ( .A(count_enable), .Y(n25) );
  INVX2 U16 ( .A(rollover_val[2]), .Y(n19) );
  NAND2X1 U17 ( .A(n44), .B(n19), .Y(n9) );
  NOR2X1 U18 ( .A(clear), .B(n5), .Y(n6) );
  OAI21X1 U19 ( .A(rollover_val[3]), .B(n9), .C(n6), .Y(n27) );
  INVX2 U20 ( .A(n9), .Y(n7) );
  INVX2 U21 ( .A(rollover_val[3]), .Y(n20) );
  NOR2X1 U22 ( .A(n7), .B(n20), .Y(n8) );
  XOR2X1 U23 ( .A(count_out[3]), .B(n8), .Y(n12) );
  OAI21X1 U24 ( .A(n44), .B(n19), .C(n9), .Y(n10) );
  XOR2X1 U25 ( .A(n10), .B(count_out[2]), .Y(n11) );
  NOR2X1 U26 ( .A(n12), .B(n11), .Y(n18) );
  NAND3X1 U27 ( .A(count_enable), .B(n4), .C(n18), .Y(n26) );
  XOR2X1 U28 ( .A(n19), .B(count_out[2]), .Y(n24) );
  XOR2X1 U29 ( .A(n20), .B(count_out[3]), .Y(n23) );
  XOR2X1 U30 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n21) );
  NOR2X1 U31 ( .A(n21), .B(n4), .Y(n22) );
  NAND3X1 U32 ( .A(n24), .B(n23), .C(n22), .Y(n29) );
  INVX2 U33 ( .A(clear), .Y(n28) );
  NAND2X1 U34 ( .A(n25), .B(n28), .Y(n41) );
  OAI22X1 U35 ( .A(n27), .B(n26), .C(n29), .D(n1), .Y(next_flag) );
  NAND2X1 U36 ( .A(n29), .B(n28), .Y(n33) );
  NAND3X1 U37 ( .A(count_out[0]), .B(n41), .C(n2), .Y(n31) );
  OAI21X1 U38 ( .A(count_out[0]), .B(n33), .C(n41), .Y(n30) );
  MUX2X1 U39 ( .B(n31), .A(n32), .S(count_out[1]), .Y(n46) );
  INVX2 U40 ( .A(n31), .Y(n37) );
  NAND3X1 U41 ( .A(count_out[2]), .B(count_out[1]), .C(n37), .Y(n36) );
  INVX2 U42 ( .A(count_out[2]), .Y(n34) );
  OAI21X1 U43 ( .A(count_out[1]), .B(n33), .C(n3), .Y(n38) );
  AOI21X1 U44 ( .A(n2), .B(n34), .C(n38), .Y(n35) );
  MUX2X1 U45 ( .B(n36), .A(n35), .S(count_out[3]), .Y(n48) );
  NAND2X1 U46 ( .A(count_out[1]), .B(n37), .Y(n40) );
  MUX2X1 U47 ( .B(n40), .A(n39), .S(count_out[2]), .Y(n47) );
  NAND2X1 U48 ( .A(n2), .B(n41), .Y(n42) );
  MUX2X1 U49 ( .B(n42), .A(n1), .S(count_out[0]), .Y(n45) );
  NOR2X1 U50 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n44) );
  AOI21X1 U51 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n44), .Y(n43) );
endmodule


module timerSD ( clk, n_rst, clear_byte, enable, speed, SDCLK, shift_enable, 
        byte_received );
  input [1:0] speed;
  input clk, n_rst, clear_byte, enable;
  output SDCLK, shift_enable, byte_received;
  wire   N12, N15, N16, _0_net_, n14, n15, n16, n18, n20, n21, n22, n23, n1,
         n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [3:0] count;
  wire   [3:0] smallCount;
  wire   [3:0] half;

  LATCH \smallCount_reg[2]  ( .CLK(N12), .D(N16), .Q(smallCount[2]) );
  LATCH \smallCount_reg[0]  ( .CLK(N12), .D(N15), .Q(smallCount[0]) );
  LATCH \half_reg[1]  ( .CLK(N12), .D(n8), .Q(half[1]) );
  LATCH \half_reg[0]  ( .CLK(N12), .D(n9), .Q(half[0]) );
  OAI21X1 U17 ( .A(n14), .B(n15), .C(n16), .Y(SDCLK) );
  OAI21X1 U22 ( .A(half[1]), .B(n6), .C(n21), .Y(n20) );
  OAI21X1 U23 ( .A(count[1]), .B(n7), .C(n22), .Y(n21) );
  NAND2X1 U24 ( .A(half[0]), .B(n4), .Y(n22) );
  NAND3X1 U25 ( .A(clk), .B(speed[1]), .C(count[0]), .Y(n15) );
  NAND3X1 U26 ( .A(n6), .B(n5), .C(n23), .Y(n14) );
  NOR2X1 U27 ( .A(speed[0]), .B(count[3]), .Y(n23) );
  NOR2X1 U28 ( .A(speed[1]), .B(speed[0]), .Y(N16) );
  NOR2X1 U29 ( .A(speed[1]), .B(n9), .Y(N15) );
  NAND2X1 U30 ( .A(speed[0]), .B(speed[1]), .Y(N12) );
  flex_counter_stuff_5 smallCounter ( .clk(clk), .n_rst(n1), .clear(1'b0), 
        .count_enable(enable), .rollover_val({1'b0, smallCount[2], 1'b1, 
        smallCount[0]}), .count_out(count), .rollover_flag(shift_enable) );
  flex_counter_stuff_4 bigCounter ( .clk(clk), .n_rst(n1), .clear(_0_net_), 
        .count_enable(shift_enable), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(byte_received) );
  OR2X2 U3 ( .A(count[3]), .B(n18), .Y(n16) );
  INVX2 U4 ( .A(n2), .Y(n1) );
  INVX2 U5 ( .A(n_rst), .Y(n2) );
  OR2X2 U6 ( .A(byte_received), .B(clear_byte), .Y(_0_net_) );
  INVX2 U9 ( .A(n20), .Y(n3) );
  INVX2 U10 ( .A(count[0]), .Y(n4) );
  INVX2 U11 ( .A(count[2]), .Y(n5) );
  INVX2 U12 ( .A(count[1]), .Y(n6) );
  INVX2 U13 ( .A(half[1]), .Y(n7) );
  INVX2 U14 ( .A(speed[1]), .Y(n8) );
  INVX2 U15 ( .A(speed[0]), .Y(n9) );
  NAND2X1 U16 ( .A(n5), .B(n3), .Y(n18) );
endmodule


module flex_pts_sr_NUM_BITS8 ( n_rst, shift_enable, load_enable, clk, 
        parallel_in, serial_out );
  input [7:0] parallel_in;
  input n_rst, shift_enable, load_enable, clk;
  output serial_out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n1, n2, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n36,
         n37, n38;
  wire   [6:0] temp1;

  DFFSR \temp1_reg[7]  ( .D(n28), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        serial_out) );
  DFFSR \temp1_reg[6]  ( .D(n29), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[6])
         );
  DFFSR \temp1_reg[5]  ( .D(n30), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[5])
         );
  DFFSR \temp1_reg[4]  ( .D(n31), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[4])
         );
  DFFSR \temp1_reg[3]  ( .D(n32), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[3])
         );
  DFFSR \temp1_reg[2]  ( .D(n33), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[2])
         );
  DFFSR \temp1_reg[1]  ( .D(n34), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[1])
         );
  DFFSR \temp1_reg[0]  ( .D(n35), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[0])
         );
  BUFX2 U3 ( .A(n36), .Y(n1) );
  BUFX4 U4 ( .A(n36), .Y(n2) );
  INVX4 U5 ( .A(n38), .Y(n24) );
  OR2X2 U14 ( .A(shift_enable), .B(load_enable), .Y(n11) );
  INVX2 U15 ( .A(load_enable), .Y(n27) );
  INVX2 U16 ( .A(parallel_in[7]), .Y(n13) );
  NAND2X1 U17 ( .A(n11), .B(n27), .Y(n38) );
  INVX2 U18 ( .A(n11), .Y(n36) );
  AOI22X1 U19 ( .A(temp1[6]), .B(n24), .C(serial_out), .D(n2), .Y(n12) );
  OAI21X1 U20 ( .A(n27), .B(n13), .C(n12), .Y(n28) );
  INVX2 U21 ( .A(parallel_in[6]), .Y(n15) );
  AOI22X1 U22 ( .A(temp1[5]), .B(n24), .C(temp1[6]), .D(n2), .Y(n14) );
  OAI21X1 U23 ( .A(n27), .B(n15), .C(n14), .Y(n29) );
  INVX2 U24 ( .A(parallel_in[5]), .Y(n17) );
  AOI22X1 U25 ( .A(temp1[4]), .B(n24), .C(temp1[5]), .D(n2), .Y(n16) );
  OAI21X1 U26 ( .A(n27), .B(n17), .C(n16), .Y(n30) );
  INVX2 U27 ( .A(parallel_in[4]), .Y(n19) );
  AOI22X1 U28 ( .A(temp1[3]), .B(n24), .C(temp1[4]), .D(n2), .Y(n18) );
  OAI21X1 U29 ( .A(n27), .B(n19), .C(n18), .Y(n31) );
  INVX2 U30 ( .A(parallel_in[3]), .Y(n21) );
  AOI22X1 U31 ( .A(temp1[2]), .B(n24), .C(temp1[3]), .D(n2), .Y(n20) );
  OAI21X1 U32 ( .A(n27), .B(n21), .C(n20), .Y(n32) );
  INVX2 U33 ( .A(parallel_in[2]), .Y(n23) );
  AOI22X1 U34 ( .A(temp1[1]), .B(n24), .C(temp1[2]), .D(n2), .Y(n22) );
  OAI21X1 U35 ( .A(n27), .B(n23), .C(n22), .Y(n33) );
  INVX2 U36 ( .A(parallel_in[1]), .Y(n26) );
  AOI22X1 U37 ( .A(temp1[0]), .B(n24), .C(temp1[1]), .D(n2), .Y(n25) );
  OAI21X1 U38 ( .A(n27), .B(n26), .C(n25), .Y(n34) );
  MUX2X1 U39 ( .B(parallel_in[0]), .A(temp1[0]), .S(n1), .Y(n37) );
  NAND2X1 U40 ( .A(n38), .B(n37), .Y(n35) );
endmodule


module flex_stp_sr_NUM_BITS8 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in;
  wire   n3, n10, n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n4, n5, n6,
         n7, n8, n9, n27, n28;

  DFFSR \out_tmp_reg[0]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \out_tmp_reg[1]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \out_tmp_reg[2]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \out_tmp_reg[3]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \out_tmp_reg[4]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \out_tmp_reg[5]  ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \out_tmp_reg[6]  ( .D(n14), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \out_tmp_reg[7]  ( .D(n12), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  OAI21X1 U2 ( .A(n27), .B(n28), .C(n3), .Y(n12) );
  NAND2X1 U3 ( .A(parallel_out[7]), .B(n28), .Y(n3) );
  OAI22X1 U4 ( .A(n2), .B(n27), .C(n28), .D(n9), .Y(n14) );
  OAI22X1 U6 ( .A(n2), .B(n9), .C(n28), .D(n8), .Y(n16) );
  OAI22X1 U8 ( .A(n2), .B(n8), .C(n28), .D(n7), .Y(n18) );
  OAI22X1 U10 ( .A(n2), .B(n7), .C(n28), .D(n6), .Y(n20) );
  OAI22X1 U12 ( .A(n2), .B(n6), .C(n28), .D(n5), .Y(n22) );
  OAI22X1 U14 ( .A(n2), .B(n5), .C(n28), .D(n4), .Y(n24) );
  OAI21X1 U17 ( .A(n2), .B(n4), .C(n10), .Y(n26) );
  NAND2X1 U18 ( .A(serial_in), .B(n2), .Y(n10) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX1 U7 ( .A(shift_enable), .Y(n1) );
  INVX2 U9 ( .A(parallel_out[0]), .Y(n4) );
  INVX2 U11 ( .A(parallel_out[1]), .Y(n5) );
  INVX2 U13 ( .A(parallel_out[2]), .Y(n6) );
  INVX2 U15 ( .A(parallel_out[3]), .Y(n7) );
  INVX2 U16 ( .A(parallel_out[4]), .Y(n8) );
  INVX2 U19 ( .A(parallel_out[5]), .Y(n9) );
  INVX2 U28 ( .A(parallel_out[6]), .Y(n27) );
  INVX2 U29 ( .A(n2), .Y(n28) );
endmodule


module spi_shift ( clk, n_rst, fifo_data, sddi, line_select, command_in, 
        shift_enable, byte_received, load_enable, data_out, sddo );
  input [7:0] fifo_data;
  input [1:0] line_select;
  input [7:0] command_in;
  output [7:0] data_out;
  input clk, n_rst, sddi, shift_enable, byte_received, load_enable;
  output sddo;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [7:0] data_in;

  flex_pts_sr_NUM_BITS8 shift_out ( .n_rst(n_rst), .shift_enable(shift_enable), 
        .load_enable(load_enable), .clk(clk), .parallel_in(data_in), 
        .serial_out(sddo) );
  flex_stp_sr_NUM_BITS8 shift_in ( .clk(clk), .n_rst(n_rst), .shift_enable(
        shift_enable), .serial_in(sddi), .parallel_out(data_out) );
  XOR2X1 U1 ( .A(n4), .B(line_select[0]), .Y(n1) );
  INVX4 U2 ( .A(line_select[1]), .Y(n4) );
  AND2X2 U3 ( .A(line_select[0]), .B(n4), .Y(n2) );
  INVX2 U4 ( .A(line_select[0]), .Y(n3) );
  NAND2X1 U5 ( .A(line_select[1]), .B(n3), .Y(n22) );
  INVX2 U6 ( .A(command_in[0]), .Y(n6) );
  XOR2X1 U7 ( .A(n4), .B(line_select[0]), .Y(n19) );
  AOI22X1 U8 ( .A(fifo_data[0]), .B(n2), .C(n19), .D(data_out[0]), .Y(n5) );
  OAI21X1 U9 ( .A(n22), .B(n6), .C(n5), .Y(data_in[0]) );
  INVX2 U10 ( .A(command_in[1]), .Y(n8) );
  AOI22X1 U11 ( .A(fifo_data[1]), .B(n2), .C(n19), .D(data_out[1]), .Y(n7) );
  OAI21X1 U12 ( .A(n22), .B(n8), .C(n7), .Y(data_in[1]) );
  INVX2 U13 ( .A(command_in[2]), .Y(n10) );
  AOI22X1 U14 ( .A(fifo_data[2]), .B(n2), .C(n19), .D(data_out[2]), .Y(n9) );
  OAI21X1 U15 ( .A(n22), .B(n10), .C(n9), .Y(data_in[2]) );
  INVX2 U16 ( .A(command_in[3]), .Y(n12) );
  AOI22X1 U17 ( .A(fifo_data[3]), .B(n2), .C(n19), .D(data_out[3]), .Y(n11) );
  OAI21X1 U18 ( .A(n22), .B(n12), .C(n11), .Y(data_in[3]) );
  INVX2 U19 ( .A(command_in[4]), .Y(n14) );
  AOI22X1 U20 ( .A(fifo_data[4]), .B(n2), .C(n1), .D(data_out[4]), .Y(n13) );
  OAI21X1 U21 ( .A(n22), .B(n14), .C(n13), .Y(data_in[4]) );
  INVX2 U22 ( .A(command_in[5]), .Y(n16) );
  AOI22X1 U23 ( .A(fifo_data[5]), .B(n2), .C(n1), .D(data_out[5]), .Y(n15) );
  OAI21X1 U24 ( .A(n22), .B(n16), .C(n15), .Y(data_in[5]) );
  INVX2 U25 ( .A(command_in[6]), .Y(n18) );
  AOI22X1 U26 ( .A(fifo_data[6]), .B(n2), .C(n1), .D(data_out[6]), .Y(n17) );
  OAI21X1 U27 ( .A(n22), .B(n18), .C(n17), .Y(data_in[6]) );
  INVX2 U28 ( .A(command_in[7]), .Y(n21) );
  AOI22X1 U29 ( .A(fifo_data[7]), .B(n2), .C(n1), .D(data_out[7]), .Y(n20) );
  OAI21X1 U30 ( .A(n22), .B(n21), .C(n20), .Y(data_in[7]) );
endmodule


module command_store ( cmd_select, counter, address, cmd );
  input [5:0] cmd_select;
  input [3:0] counter;
  input [31:0] address;
  output [7:0] cmd;
  wire   N116, N117, N118, N119, N120, N121, N122, N123, N124, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  LATCH \cmd_reg[7]  ( .CLK(N116), .D(N124), .Q(cmd[7]) );
  LATCH \cmd_reg[6]  ( .CLK(N116), .D(N123), .Q(cmd[6]) );
  LATCH \cmd_reg[5]  ( .CLK(N116), .D(N122), .Q(cmd[5]) );
  LATCH \cmd_reg[4]  ( .CLK(N116), .D(N121), .Q(cmd[4]) );
  LATCH \cmd_reg[3]  ( .CLK(N116), .D(N120), .Q(cmd[3]) );
  LATCH \cmd_reg[2]  ( .CLK(N116), .D(N119), .Q(cmd[2]) );
  LATCH \cmd_reg[1]  ( .CLK(N116), .D(N118), .Q(cmd[1]) );
  LATCH \cmd_reg[0]  ( .CLK(N116), .D(N117), .Q(cmd[0]) );
  AND2X2 U3 ( .A(n34), .B(n35), .Y(n30) );
  AND2X2 U4 ( .A(n41), .B(n42), .Y(n39) );
  AND2X2 U5 ( .A(n60), .B(n61), .Y(n59) );
  AND2X2 U6 ( .A(n17), .B(n79), .Y(n78) );
  OAI21X1 U30 ( .A(n24), .B(n25), .C(n26), .Y(N124) );
  NOR2X1 U31 ( .A(n7), .B(n27), .Y(n26) );
  AOI21X1 U32 ( .A(n28), .B(n29), .C(n13), .Y(n27) );
  AOI22X1 U33 ( .A(address[7]), .B(n8), .C(address[15]), .D(n3), .Y(n29) );
  AOI22X1 U34 ( .A(address[23]), .B(n1), .C(address[31]), .D(n2), .Y(n28) );
  OAI21X1 U35 ( .A(n13), .B(n30), .C(n31), .Y(N123) );
  AOI21X1 U36 ( .A(n4), .B(n32), .C(n33), .Y(n31) );
  AOI21X1 U37 ( .A(address[14]), .B(n3), .C(n36), .Y(n35) );
  OAI21X1 U38 ( .A(n37), .B(n23), .C(n38), .Y(n36) );
  AOI22X1 U39 ( .A(address[22]), .B(n1), .C(address[30]), .D(n2), .Y(n34) );
  OAI21X1 U40 ( .A(n13), .B(n39), .C(n40), .Y(N122) );
  NOR2X1 U41 ( .A(n33), .B(n7), .Y(n40) );
  AOI22X1 U42 ( .A(address[5]), .B(n8), .C(address[13]), .D(n3), .Y(n42) );
  AOI22X1 U43 ( .A(address[21]), .B(n1), .C(address[29]), .D(n2), .Y(n41) );
  OAI21X1 U44 ( .A(n24), .B(n25), .C(n43), .Y(N121) );
  AOI21X1 U45 ( .A(n44), .B(n45), .C(n33), .Y(n43) );
  NAND3X1 U46 ( .A(n46), .B(n47), .C(n48), .Y(n44) );
  AOI22X1 U47 ( .A(address[20]), .B(n1), .C(address[28]), .D(n2), .Y(n48) );
  NAND2X1 U48 ( .A(address[12]), .B(n3), .Y(n47) );
  AOI21X1 U49 ( .A(address[4]), .B(n8), .C(n4), .Y(n46) );
  NAND2X1 U50 ( .A(n49), .B(n50), .Y(N120) );
  AOI21X1 U51 ( .A(n51), .B(n45), .C(n52), .Y(n50) );
  OAI21X1 U52 ( .A(n16), .B(n53), .C(n54), .Y(n52) );
  NAND2X1 U53 ( .A(n12), .B(n11), .Y(n53) );
  NAND2X1 U54 ( .A(n55), .B(n56), .Y(n51) );
  AOI22X1 U55 ( .A(address[3]), .B(n8), .C(address[11]), .D(n3), .Y(n56) );
  AOI22X1 U56 ( .A(address[19]), .B(n1), .C(address[27]), .D(n2), .Y(n55) );
  AOI21X1 U57 ( .A(n57), .B(n4), .C(n58), .Y(n49) );
  OAI21X1 U58 ( .A(n13), .B(n59), .C(n9), .Y(N119) );
  AOI22X1 U59 ( .A(address[2]), .B(n8), .C(address[10]), .D(n3), .Y(n61) );
  AOI22X1 U60 ( .A(address[18]), .B(n1), .C(address[26]), .D(n2), .Y(n60) );
  NAND2X1 U61 ( .A(n62), .B(n10), .Y(N118) );
  OAI21X1 U62 ( .A(n16), .B(n24), .C(n18), .Y(n58) );
  NOR2X1 U63 ( .A(n7), .B(n63), .Y(n62) );
  AOI21X1 U64 ( .A(n64), .B(n65), .C(n13), .Y(n63) );
  AOI22X1 U65 ( .A(address[1]), .B(n8), .C(address[9]), .D(n3), .Y(n65) );
  AOI22X1 U66 ( .A(address[17]), .B(n1), .C(address[25]), .D(n2), .Y(n64) );
  NAND3X1 U67 ( .A(n68), .B(n12), .C(counter[2]), .Y(n54) );
  NAND3X1 U68 ( .A(n69), .B(n70), .C(n9), .Y(N117) );
  OAI21X1 U69 ( .A(n15), .B(n24), .C(n18), .Y(n71) );
  NAND3X1 U70 ( .A(counter[0]), .B(n68), .C(counter[1]), .Y(n70) );
  OAI21X1 U71 ( .A(n72), .B(n73), .C(n45), .Y(n69) );
  OAI21X1 U72 ( .A(n66), .B(n21), .C(n5), .Y(n73) );
  OAI21X1 U73 ( .A(n67), .B(n22), .C(n74), .Y(n72) );
  AOI22X1 U74 ( .A(address[0]), .B(n8), .C(address[8]), .D(n3), .Y(n74) );
  NAND3X1 U75 ( .A(n76), .B(n18), .C(n15), .Y(N116) );
  NAND2X1 U76 ( .A(n25), .B(n16), .Y(n32) );
  NOR2X1 U77 ( .A(n77), .B(cmd_select[4]), .Y(n68) );
  NAND3X1 U78 ( .A(n20), .B(n19), .C(n78), .Y(n25) );
  NOR2X1 U79 ( .A(n80), .B(n81), .Y(n33) );
  NAND3X1 U80 ( .A(cmd_select[2]), .B(cmd_select[1]), .C(cmd_select[5]), .Y(
        n81) );
  NAND3X1 U81 ( .A(cmd_select[0]), .B(cmd_select[3]), .C(cmd_select[4]), .Y(
        n80) );
  OAI21X1 U82 ( .A(n82), .B(n83), .C(n84), .Y(n76) );
  NOR2X1 U83 ( .A(counter[3]), .B(n13), .Y(n84) );
  OAI21X1 U84 ( .A(n85), .B(n86), .C(n14), .Y(n45) );
  NOR2X1 U85 ( .A(n19), .B(n77), .Y(n57) );
  NAND3X1 U86 ( .A(n79), .B(n17), .C(cmd_select[3]), .Y(n77) );
  NAND2X1 U87 ( .A(cmd_select[4]), .B(cmd_select[0]), .Y(n86) );
  NAND2X1 U88 ( .A(n79), .B(n20), .Y(n85) );
  NOR3X1 U89 ( .A(cmd_select[2]), .B(cmd_select[5]), .C(cmd_select[1]), .Y(n79) );
  NAND2X1 U90 ( .A(n5), .B(n37), .Y(n83) );
  NAND3X1 U91 ( .A(n12), .B(n11), .C(counter[2]), .Y(n37) );
  OAI21X1 U92 ( .A(counter[1]), .B(n24), .C(n38), .Y(n87) );
  NAND3X1 U93 ( .A(n11), .B(n6), .C(n12), .Y(n38) );
  NAND2X1 U94 ( .A(counter[0]), .B(counter[2]), .Y(n24) );
  NAND3X1 U95 ( .A(n67), .B(n66), .C(n75), .Y(n82) );
  NAND3X1 U96 ( .A(counter[0]), .B(n6), .C(counter[1]), .Y(n75) );
  NAND3X1 U97 ( .A(n11), .B(n6), .C(counter[0]), .Y(n66) );
  NAND3X1 U98 ( .A(n12), .B(n6), .C(counter[1]), .Y(n67) );
  INVX1 U7 ( .A(cmd_select[0]), .Y(n17) );
  INVX1 U8 ( .A(cmd_select[3]), .Y(n20) );
  INVX1 U9 ( .A(cmd_select[4]), .Y(n19) );
  INVX1 U10 ( .A(counter[0]), .Y(n12) );
  INVX1 U11 ( .A(counter[1]), .Y(n11) );
  INVX2 U12 ( .A(n67), .Y(n1) );
  INVX2 U13 ( .A(n66), .Y(n2) );
  INVX2 U14 ( .A(n75), .Y(n3) );
  INVX2 U15 ( .A(n38), .Y(n4) );
  INVX2 U16 ( .A(n87), .Y(n5) );
  INVX2 U17 ( .A(counter[2]), .Y(n6) );
  INVX2 U18 ( .A(n54), .Y(n7) );
  INVX2 U19 ( .A(n37), .Y(n8) );
  INVX2 U20 ( .A(n71), .Y(n9) );
  INVX2 U21 ( .A(n58), .Y(n10) );
  INVX2 U22 ( .A(n45), .Y(n13) );
  INVX2 U23 ( .A(n57), .Y(n14) );
  INVX2 U24 ( .A(n32), .Y(n15) );
  INVX2 U25 ( .A(n68), .Y(n16) );
  INVX2 U26 ( .A(n33), .Y(n18) );
  INVX2 U27 ( .A(address[24]), .Y(n21) );
  INVX2 U28 ( .A(address[16]), .Y(n22) );
  INVX2 U29 ( .A(address[6]), .Y(n23) );
endmodule


module edge_detect_1 ( clk, n_rst, d_plus, d_edge );
  input clk, n_rst, d_plus;
  output d_edge;
  wire   past_d_plus, N0;

  DFFSR past_d_plus_reg ( .D(d_plus), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        past_d_plus) );
  DFFSR cur_d_edge_reg ( .D(N0), .CLK(clk), .R(n_rst), .S(1'b1), .Q(d_edge) );
  XOR2X1 U5 ( .A(past_d_plus), .B(d_plus), .Y(N0) );
endmodule


module sd_interface ( clk, n_rst, sd_read, sd_write, sd_addr_ready, fifo_in, 
        tx_r_enable, test_data_fromFIFO, rx_FIFO_empty, sd_done, sd_err, 
        fifo_out, r_enable_o, test_r_enable, test_w_enable, test_data_toFIFO, 
        sd_FIFO_empty, sram_addr, SDCS, SDCLK, SDDI, SDDO );
  input [7:0] fifo_in;
  input [7:0] test_data_fromFIFO;
  output [7:0] fifo_out;
  output [7:0] test_data_toFIFO;
  output [11:0] sram_addr;
  input clk, n_rst, sd_read, sd_write, sd_addr_ready, tx_r_enable,
         rx_FIFO_empty, SDDI;
  output sd_done, sd_err, r_enable_o, test_r_enable, test_w_enable,
         sd_FIFO_empty, SDCS, SDCLK, SDDO;
  wire   r_enable, full, clear_byte, byte_transf, edge_detect, shift_enable,
         load_enable, rw_select, n10, n11, n12, n13, n14, n15, n16, n17, n1,
         n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:0] data_o;
  wire   [1:0] speed;
  wire   [1:0] SPI_select;
  wire   [5:0] cmd_out;
  wire   [3:0] counter;
  wire   [31:0] addr;
  wire   [7:0] actual_cmd;

  AOI22X1 U10 ( .A(data_o[7]), .B(n1), .C(rw_select), .D(fifo_in[7]), .Y(n10)
         );
  AOI22X1 U11 ( .A(data_o[6]), .B(n1), .C(fifo_in[6]), .D(rw_select), .Y(n11)
         );
  AOI22X1 U12 ( .A(data_o[5]), .B(n1), .C(fifo_in[5]), .D(rw_select), .Y(n12)
         );
  AOI22X1 U13 ( .A(data_o[4]), .B(n1), .C(fifo_in[4]), .D(rw_select), .Y(n13)
         );
  AOI22X1 U14 ( .A(data_o[3]), .B(n1), .C(fifo_in[3]), .D(rw_select), .Y(n14)
         );
  AOI22X1 U15 ( .A(data_o[2]), .B(n1), .C(fifo_in[2]), .D(rw_select), .Y(n15)
         );
  AOI22X1 U16 ( .A(data_o[1]), .B(n1), .C(fifo_in[1]), .D(rw_select), .Y(n16)
         );
  AOI22X1 U17 ( .A(data_o[0]), .B(n1), .C(fifo_in[0]), .D(rw_select), .Y(n17)
         );
  mode_select SDController ( .clk(clk), .n_rst(n_rst), .sd_read(sd_read), 
        .sd_write(sd_write), .sd_addr_ready(sd_addr_ready), .sd_full(full), 
        .rx_FIFO_empty(rx_FIFO_empty), .SDCS(SDCS), .cmd_check(data_o), 
        .rcv_fifo(fifo_in), .byte_transf(byte_transf), .edge_detect(
        edge_detect), .shift_enable(shift_enable), .clear_byte(clear_byte), 
        .sd_done(sd_done), .sd_err(sd_err), .load_enable(load_enable), 
        .w_enable(test_w_enable), .r_enable(r_enable), .r_enable_o(r_enable_o), 
        .SPI_select(SPI_select), .rw_select(rw_select), .cmd_out(cmd_out), 
        .count_out(counter), .speed_o(speed), .addr_o(addr) );
  myfifo_1 myFIFO ( .clk(clk), .n_rst(n_rst), .r_enable(test_r_enable), 
        .w_enable(test_w_enable), .clear(1'b0), .data_i({n9, n8, n7, n6, n5, 
        n4, n3, n2}), .sram_o(test_data_fromFIFO), .sram_i(test_data_toFIFO), 
        .data_o(fifo_out), .addr(sram_addr), .full(full), .empty(sd_FIFO_empty) );
  timerSD myTimer ( .clk(clk), .n_rst(n_rst), .clear_byte(clear_byte), 
        .enable(1'b1), .speed(speed), .SDCLK(SDCLK), .shift_enable(
        shift_enable), .byte_received(byte_transf) );
  spi_shift ShiftRegister ( .clk(clk), .n_rst(n_rst), .fifo_data(fifo_out), 
        .sddi(SDDI), .line_select(SPI_select), .command_in(actual_cmd), 
        .shift_enable(shift_enable), .byte_received(byte_transf), 
        .load_enable(load_enable), .data_out(data_o), .sddo(SDDO) );
  command_store Bank ( .cmd_select(cmd_out), .counter(counter), .address(addr), 
        .cmd(actual_cmd) );
  edge_detect_1 eDetect ( .clk(clk), .n_rst(n_rst), .d_plus(SDDI), .d_edge(
        edge_detect) );
  INVX2 U1 ( .A(rw_select), .Y(n1) );
  OR2X2 U2 ( .A(tx_r_enable), .B(r_enable), .Y(test_r_enable) );
  INVX2 U4 ( .A(n17), .Y(n2) );
  INVX2 U5 ( .A(n16), .Y(n3) );
  INVX2 U6 ( .A(n15), .Y(n4) );
  INVX2 U7 ( .A(n14), .Y(n5) );
  INVX2 U8 ( .A(n13), .Y(n6) );
  INVX2 U9 ( .A(n12), .Y(n7) );
  INVX2 U18 ( .A(n11), .Y(n8) );
  INVX2 U19 ( .A(n10), .Y(n9) );
endmodule


module tcu ( clk, n_rst, tx_transmit, tx_send_good, tx_send_bad, load_enable, 
        empty, crc_value, data, sending, sd_enable, load_enable_g, tx_done, 
        tx_err, eop, crc_sync_rst );
  input [15:0] crc_value;
  output [7:0] data;
  input clk, n_rst, tx_transmit, tx_send_good, tx_send_bad, load_enable, empty;
  output sending, sd_enable, load_enable_g, tx_done, tx_err, eop, crc_sync_rst;
  wire   N86, N87, N125, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n1, n2, n3, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129;
  wire   [4:0] current_state;
  wire   [4:0] store_state;
  assign tx_err = 1'b0;

  LATCH \store_state_reg[0]  ( .CLK(N125), .D(N86), .Q(store_state[0]) );
  DFFSR \current_state_reg[0]  ( .D(n152), .CLK(clk), .R(n28), .S(1'b1), .Q(
        current_state[0]) );
  DFFSR \current_state_reg[3]  ( .D(n149), .CLK(clk), .R(n28), .S(1'b1), .Q(
        current_state[3]) );
  DFFSR \current_state_reg[2]  ( .D(n150), .CLK(clk), .R(n28), .S(1'b1), .Q(
        current_state[2]) );
  DFFSR \current_state_reg[1]  ( .D(n151), .CLK(clk), .R(n28), .S(1'b1), .Q(
        current_state[1]) );
  LATCH \store_state_reg[1]  ( .CLK(N125), .D(N87), .Q(store_state[1]) );
  DFFSR \reg_data_reg[5]  ( .D(n142), .CLK(clk), .R(n28), .S(1'b1), .Q(data[5]) );
  DFFSR \reg_data_reg[2]  ( .D(n145), .CLK(clk), .R(n28), .S(1'b1), .Q(data[2]) );
  DFFSR \reg_data_reg[6]  ( .D(n148), .CLK(clk), .R(n28), .S(1'b1), .Q(data[6]) );
  DFFSR \reg_data_reg[1]  ( .D(n146), .CLK(clk), .R(n28), .S(1'b1), .Q(data[1]) );
  DFFSR \reg_data_reg[7]  ( .D(n129), .CLK(clk), .R(n28), .S(1'b1), .Q(data[7]) );
  DFFSR \reg_data_reg[3]  ( .D(n144), .CLK(clk), .R(n28), .S(1'b1), .Q(data[3]) );
  DFFSR \reg_data_reg[4]  ( .D(n143), .CLK(clk), .R(n28), .S(1'b1), .Q(data[4]) );
  DFFSR \reg_data_reg[0]  ( .D(n147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data[0]) );
  NAND2X1 U3 ( .A(n66), .B(n65), .Y(n126) );
  NOR2X1 U4 ( .A(n66), .B(n79), .Y(sending) );
  INVX2 U5 ( .A(n30), .Y(n127) );
  NAND2X1 U6 ( .A(n106), .B(n127), .Y(eop) );
  INVX2 U7 ( .A(n72), .Y(tx_done) );
  NAND2X1 U8 ( .A(n91), .B(n74), .Y(sd_enable) );
  NAND2X1 U9 ( .A(n34), .B(n66), .Y(n35) );
  INVX2 U10 ( .A(n87), .Y(n88) );
  INVX2 U11 ( .A(n97), .Y(n98) );
  INVX2 U12 ( .A(n110), .Y(n111) );
  INVX2 U13 ( .A(n123), .Y(n124) );
  OR2X2 U14 ( .A(empty), .B(n104), .Y(n91) );
  BUFX2 U19 ( .A(n61), .Y(n1) );
  BUFX4 U20 ( .A(n61), .Y(n2) );
  AND2X2 U21 ( .A(current_state[1]), .B(current_state[2]), .Y(n25) );
  INVX1 U22 ( .A(n32), .Y(n3) );
  INVX4 U31 ( .A(n36), .Y(n59) );
  AND2X1 U32 ( .A(n59), .B(n52), .Y(n19) );
  AND2X1 U33 ( .A(n23), .B(n27), .Y(load_enable_g) );
  AND2X1 U34 ( .A(current_state[1]), .B(n70), .Y(n22) );
  AND2X1 U35 ( .A(current_state[3]), .B(current_state[0]), .Y(n27) );
  AND2X2 U36 ( .A(n112), .B(n74), .Y(n16) );
  AND2X2 U37 ( .A(n72), .B(n104), .Y(n73) );
  INVX2 U38 ( .A(n29), .Y(n28) );
  AND2X2 U39 ( .A(n37), .B(n59), .Y(n17) );
  AND2X2 U40 ( .A(n114), .B(n59), .Y(n18) );
  AND2X2 U41 ( .A(n70), .B(n32), .Y(n20) );
  AND2X2 U42 ( .A(n122), .B(n69), .Y(n21) );
  INVX2 U43 ( .A(n_rst), .Y(n29) );
  AND2X2 U44 ( .A(current_state[2]), .B(n32), .Y(n23) );
  AND2X2 U45 ( .A(current_state[0]), .B(n69), .Y(n24) );
  INVX2 U46 ( .A(current_state[0]), .Y(n122) );
  INVX2 U47 ( .A(current_state[3]), .Y(n69) );
  NAND2X1 U48 ( .A(n25), .B(n21), .Y(n33) );
  INVX2 U49 ( .A(n33), .Y(n30) );
  INVX2 U50 ( .A(n127), .Y(crc_sync_rst) );
  NAND2X1 U51 ( .A(n24), .B(n25), .Y(n106) );
  NAND2X1 U52 ( .A(current_state[3]), .B(n122), .Y(n31) );
  INVX2 U53 ( .A(n31), .Y(n76) );
  NAND2X1 U54 ( .A(n76), .B(n25), .Y(n72) );
  INVX2 U55 ( .A(current_state[1]), .Y(n32) );
  NAND2X1 U56 ( .A(n76), .B(n23), .Y(n104) );
  INVX2 U57 ( .A(current_state[2]), .Y(n70) );
  NAND2X1 U58 ( .A(n76), .B(n20), .Y(n74) );
  NAND2X1 U59 ( .A(n21), .B(n20), .Y(n81) );
  INVX2 U60 ( .A(n81), .Y(n66) );
  NAND2X1 U61 ( .A(n106), .B(n33), .Y(n79) );
  INVX2 U62 ( .A(n74), .Y(n114) );
  NAND2X1 U63 ( .A(n27), .B(n20), .Y(n112) );
  INVX2 U64 ( .A(tx_send_good), .Y(n68) );
  INVX2 U65 ( .A(tx_transmit), .Y(n128) );
  INVX2 U66 ( .A(tx_send_bad), .Y(n67) );
  NAND3X1 U67 ( .A(n68), .B(n128), .C(n67), .Y(n65) );
  INVX2 U68 ( .A(n65), .Y(n34) );
  OAI21X1 U69 ( .A(load_enable), .B(n16), .C(n35), .Y(n36) );
  INVX2 U70 ( .A(n112), .Y(n37) );
  AOI22X1 U71 ( .A(crc_value[8]), .B(n18), .C(crc_value[0]), .D(n17), .Y(n41)
         );
  NAND2X1 U72 ( .A(n22), .B(n21), .Y(n42) );
  NAND2X1 U73 ( .A(n22), .B(n24), .Y(n116) );
  NAND2X1 U74 ( .A(n42), .B(n116), .Y(n85) );
  INVX2 U75 ( .A(n85), .Y(n77) );
  NAND2X1 U76 ( .A(n24), .B(n20), .Y(n118) );
  NAND2X1 U77 ( .A(n77), .B(n118), .Y(n52) );
  INVX2 U78 ( .A(n52), .Y(n38) );
  NAND2X1 U79 ( .A(n38), .B(n16), .Y(n39) );
  OAI21X1 U80 ( .A(n66), .B(n39), .C(n59), .Y(n61) );
  AOI22X1 U81 ( .A(data[0]), .B(n1), .C(n59), .D(n85), .Y(n40) );
  NAND2X1 U82 ( .A(n41), .B(n40), .Y(n147) );
  NAND2X1 U83 ( .A(crc_value[11]), .B(n18), .Y(n46) );
  INVX2 U84 ( .A(n118), .Y(n101) );
  INVX2 U85 ( .A(n42), .Y(n43) );
  OAI21X1 U86 ( .A(n101), .B(n43), .C(n59), .Y(n45) );
  AOI22X1 U87 ( .A(crc_value[3]), .B(n17), .C(data[3]), .D(n1), .Y(n44) );
  NAND3X1 U88 ( .A(n46), .B(n45), .C(n44), .Y(n144) );
  INVX2 U89 ( .A(n2), .Y(n51) );
  INVX2 U90 ( .A(data[1]), .Y(n48) );
  AOI22X1 U91 ( .A(crc_value[9]), .B(n18), .C(crc_value[1]), .D(n17), .Y(n47)
         );
  OAI21X1 U92 ( .A(n51), .B(n48), .C(n47), .Y(n146) );
  INVX2 U93 ( .A(data[6]), .Y(n50) );
  AOI22X1 U94 ( .A(crc_value[14]), .B(n18), .C(crc_value[6]), .D(n17), .Y(n49)
         );
  OAI21X1 U95 ( .A(n51), .B(n50), .C(n49), .Y(n148) );
  AOI21X1 U96 ( .A(crc_value[10]), .B(n18), .C(n19), .Y(n54) );
  AOI22X1 U97 ( .A(crc_value[2]), .B(n17), .C(data[2]), .D(n2), .Y(n53) );
  NAND2X1 U98 ( .A(n54), .B(n53), .Y(n145) );
  AOI22X1 U99 ( .A(crc_value[12]), .B(n18), .C(crc_value[4]), .D(n17), .Y(n56)
         );
  AOI22X1 U100 ( .A(data[4]), .B(n2), .C(n101), .D(n59), .Y(n55) );
  NAND2X1 U101 ( .A(n56), .B(n55), .Y(n143) );
  AOI21X1 U102 ( .A(crc_value[13]), .B(n18), .C(n19), .Y(n58) );
  AOI22X1 U103 ( .A(crc_value[5]), .B(n17), .C(data[5]), .D(n2), .Y(n57) );
  NAND2X1 U104 ( .A(n58), .B(n57), .Y(n142) );
  NAND2X1 U105 ( .A(crc_value[15]), .B(n18), .Y(n64) );
  INVX2 U106 ( .A(n116), .Y(n60) );
  OAI21X1 U107 ( .A(n66), .B(n60), .C(n59), .Y(n63) );
  AOI22X1 U108 ( .A(crc_value[7]), .B(n17), .C(data[7]), .D(n1), .Y(n62) );
  NAND3X1 U109 ( .A(n64), .B(n63), .C(n62), .Y(n129) );
  INVX2 U110 ( .A(n126), .Y(N125) );
  AOI21X1 U111 ( .A(n68), .B(n67), .C(tx_transmit), .Y(N87) );
  AOI21X1 U112 ( .A(store_state[1]), .B(load_enable_g), .C(eop), .Y(n89) );
  NAND2X1 U113 ( .A(n22), .B(n27), .Y(n107) );
  OAI21X1 U114 ( .A(n70), .B(n69), .C(current_state[0]), .Y(n71) );
  NAND2X1 U115 ( .A(n23), .B(n21), .Y(n94) );
  OAI21X1 U116 ( .A(n3), .B(n71), .C(n94), .Y(n84) );
  NOR2X1 U117 ( .A(load_enable_g), .B(n84), .Y(n75) );
  NAND3X1 U118 ( .A(n75), .B(n74), .C(n73), .Y(n78) );
  NAND2X1 U119 ( .A(n76), .B(n22), .Y(n100) );
  NAND3X1 U120 ( .A(n77), .B(n107), .C(n100), .Y(n90) );
  NOR2X1 U121 ( .A(n78), .B(n90), .Y(n82) );
  INVX2 U122 ( .A(n79), .Y(n80) );
  NAND3X1 U123 ( .A(n82), .B(n81), .C(n80), .Y(n105) );
  OAI21X1 U124 ( .A(load_enable), .B(n107), .C(n105), .Y(n83) );
  INVX2 U125 ( .A(n83), .Y(n119) );
  MUX2X1 U126 ( .B(n85), .A(n84), .S(load_enable), .Y(n86) );
  NAND3X1 U127 ( .A(n119), .B(n86), .C(n100), .Y(n87) );
  NAND2X1 U128 ( .A(n89), .B(n88), .Y(n151) );
  INVX2 U129 ( .A(eop), .Y(n99) );
  INVX2 U130 ( .A(n90), .Y(n93) );
  INVX2 U131 ( .A(load_enable), .Y(n92) );
  OAI21X1 U132 ( .A(n93), .B(n92), .C(n91), .Y(n96) );
  NAND2X1 U133 ( .A(n24), .B(n23), .Y(n113) );
  NAND3X1 U134 ( .A(n113), .B(n94), .C(n105), .Y(n95) );
  OR2X1 U135 ( .A(n96), .B(n95), .Y(n97) );
  NAND3X1 U136 ( .A(n126), .B(n99), .C(n98), .Y(n150) );
  INVX2 U137 ( .A(n100), .Y(n102) );
  MUX2X1 U138 ( .B(n102), .A(n101), .S(load_enable), .Y(n103) );
  NAND3X1 U139 ( .A(n105), .B(n104), .C(n103), .Y(n109) );
  NAND3X1 U140 ( .A(n16), .B(n107), .C(n106), .Y(n108) );
  OR2X1 U141 ( .A(n109), .B(n108), .Y(n110) );
  NAND2X1 U142 ( .A(n126), .B(n111), .Y(n149) );
  NAND2X1 U143 ( .A(n113), .B(n112), .Y(n115) );
  MUX2X1 U144 ( .B(n115), .A(n114), .S(load_enable), .Y(n117) );
  NAND2X1 U145 ( .A(n117), .B(n116), .Y(n121) );
  NAND2X1 U146 ( .A(n119), .B(n118), .Y(n120) );
  NOR2X1 U147 ( .A(n121), .B(n120), .Y(n123) );
  AOI21X1 U148 ( .A(store_state[0]), .B(load_enable_g), .C(n124), .Y(n125) );
  NAND3X1 U149 ( .A(n127), .B(n126), .C(n125), .Y(n152) );
  OAI21X1 U150 ( .A(n67), .B(tx_send_good), .C(n128), .Y(N86) );
endmodule


module flex_counter_NUM_CNT_BITS4_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, n40, n42, n44, n46, n1, n2, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n39, n41, n43, n45,
         n47, n48, n49, n50, n51, n52, n53, n54, n55;

  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \cur_count_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[1]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  BUFX2 U3 ( .A(n9), .Y(n1) );
  INVX1 U4 ( .A(n34), .Y(n2) );
  INVX1 U5 ( .A(clear), .Y(n30) );
  NAND2X1 U10 ( .A(n36), .B(n9), .Y(n7) );
  INVX1 U11 ( .A(n21), .Y(n8) );
  INVX1 U12 ( .A(n2), .Y(n43) );
  INVX1 U13 ( .A(count_enable), .Y(n21) );
  INVX1 U14 ( .A(count_out[2]), .Y(n39) );
  MUX2X1 U15 ( .B(n31), .A(n1), .S(n50), .Y(n40) );
  XNOR2X1 U16 ( .A(n47), .B(n7), .Y(n37) );
  AND2X2 U17 ( .A(count_out[0]), .B(n34), .Y(n9) );
  XNOR2X1 U18 ( .A(n31), .B(rollover_val[0]), .Y(n10) );
  INVX2 U19 ( .A(rollover_val[2]), .Y(n22) );
  NAND2X1 U20 ( .A(n55), .B(n22), .Y(n16) );
  INVX2 U21 ( .A(count_out[1]), .Y(n33) );
  XOR2X1 U22 ( .A(n33), .B(n54), .Y(n11) );
  NOR2X1 U23 ( .A(clear), .B(n11), .Y(n12) );
  OAI21X1 U24 ( .A(rollover_val[3]), .B(n16), .C(n12), .Y(n28) );
  INVX2 U25 ( .A(count_out[0]), .Y(n31) );
  INVX2 U26 ( .A(n16), .Y(n14) );
  INVX2 U27 ( .A(rollover_val[3]), .Y(n13) );
  NOR2X1 U28 ( .A(n14), .B(n13), .Y(n15) );
  XOR2X1 U29 ( .A(count_out[3]), .B(n15), .Y(n19) );
  OAI21X1 U30 ( .A(n55), .B(n22), .C(n16), .Y(n17) );
  XOR2X1 U31 ( .A(n17), .B(count_out[2]), .Y(n18) );
  NOR2X1 U32 ( .A(n19), .B(n18), .Y(n20) );
  NAND3X1 U33 ( .A(n8), .B(n10), .C(n20), .Y(n27) );
  NAND2X1 U34 ( .A(n21), .B(n30), .Y(n50) );
  XOR2X1 U36 ( .A(n33), .B(rollover_val[1]), .Y(n26) );
  XOR2X1 U37 ( .A(n22), .B(count_out[2]), .Y(n25) );
  XOR2X1 U38 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n23) );
  NOR2X1 U39 ( .A(n23), .B(n10), .Y(n24) );
  NAND3X1 U40 ( .A(n26), .B(n25), .C(n24), .Y(n29) );
  OAI22X1 U41 ( .A(n28), .B(n27), .C(n50), .D(n29), .Y(next_flag) );
  NAND3X1 U42 ( .A(n29), .B(n30), .C(count_enable), .Y(n41) );
  INVX2 U43 ( .A(n41), .Y(n34) );
  NAND2X1 U44 ( .A(count_out[1]), .B(n34), .Y(n35) );
  XOR2X1 U45 ( .A(n35), .B(n9), .Y(n32) );
  OAI21X1 U46 ( .A(n50), .B(n33), .C(n32), .Y(n42) );
  NAND2X1 U47 ( .A(count_out[2]), .B(n34), .Y(n47) );
  INVX2 U48 ( .A(n35), .Y(n36) );
  NAND2X1 U49 ( .A(n36), .B(n9), .Y(n45) );
  OAI21X1 U50 ( .A(n50), .B(n39), .C(n37), .Y(n44) );
  NAND2X1 U51 ( .A(n43), .B(count_out[3]), .Y(n49) );
  NOR2X1 U52 ( .A(n47), .B(n45), .Y(n48) );
  XOR2X1 U53 ( .A(n48), .B(n49), .Y(n53) );
  INVX2 U54 ( .A(n50), .Y(n51) );
  NAND2X1 U55 ( .A(count_out[3]), .B(n51), .Y(n52) );
  NAND2X1 U56 ( .A(n52), .B(n53), .Y(n46) );
  NOR2X1 U57 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n55) );
  AOI21X1 U58 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n55), .Y(n54) );
endmodule


module flex_counter_NUM_CNT_BITS4_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n47, n48, n49, n50,
         n51, n52, n54, n56, n58;

  DFFSR \cur_count_reg[3]  ( .D(n52), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[2]  ( .D(n54), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[1]  ( .D(n56), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[0]  ( .D(n58), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  NAND2X1 U3 ( .A(n30), .B(n3), .Y(n1) );
  INVX1 U5 ( .A(count_out[2]), .Y(n32) );
  MUX2X1 U6 ( .B(n25), .A(n3), .S(n38), .Y(n58) );
  XNOR2X1 U7 ( .A(n35), .B(n1), .Y(n31) );
  AND2X2 U8 ( .A(count_out[0]), .B(n28), .Y(n3) );
  XNOR2X1 U9 ( .A(n25), .B(rollover_val[0]), .Y(n4) );
  INVX2 U10 ( .A(rollover_val[2]), .Y(n16) );
  NAND2X1 U11 ( .A(n51), .B(n16), .Y(n10) );
  INVX2 U12 ( .A(count_out[1]), .Y(n27) );
  XOR2X1 U13 ( .A(n27), .B(n50), .Y(n5) );
  NOR2X1 U14 ( .A(clear), .B(n5), .Y(n6) );
  OAI21X1 U15 ( .A(rollover_val[3]), .B(n10), .C(n6), .Y(n22) );
  INVX2 U16 ( .A(count_out[0]), .Y(n25) );
  INVX2 U17 ( .A(n10), .Y(n8) );
  INVX2 U18 ( .A(rollover_val[3]), .Y(n7) );
  NOR2X1 U19 ( .A(n8), .B(n7), .Y(n9) );
  XOR2X1 U20 ( .A(count_out[3]), .B(n9), .Y(n13) );
  OAI21X1 U21 ( .A(n51), .B(n16), .C(n10), .Y(n11) );
  XOR2X1 U22 ( .A(n11), .B(count_out[2]), .Y(n12) );
  NOR2X1 U23 ( .A(n13), .B(n12), .Y(n14) );
  NAND3X1 U24 ( .A(count_enable), .B(n4), .C(n14), .Y(n21) );
  INVX2 U25 ( .A(count_enable), .Y(n15) );
  INVX2 U26 ( .A(clear), .Y(n24) );
  NAND2X1 U27 ( .A(n15), .B(n24), .Y(n38) );
  XOR2X1 U28 ( .A(n27), .B(rollover_val[1]), .Y(n20) );
  XOR2X1 U29 ( .A(n16), .B(count_out[2]), .Y(n19) );
  XOR2X1 U30 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n17) );
  NOR2X1 U31 ( .A(n17), .B(n4), .Y(n18) );
  NAND3X1 U32 ( .A(n20), .B(n19), .C(n18), .Y(n23) );
  OAI22X1 U33 ( .A(n22), .B(n21), .C(n38), .D(n23), .Y(next_flag) );
  NAND3X1 U34 ( .A(count_enable), .B(n24), .C(n23), .Y(n33) );
  INVX2 U35 ( .A(n33), .Y(n28) );
  NAND2X1 U40 ( .A(count_out[1]), .B(n28), .Y(n29) );
  XOR2X1 U41 ( .A(n29), .B(n3), .Y(n26) );
  OAI21X1 U42 ( .A(n38), .B(n27), .C(n26), .Y(n56) );
  NAND2X1 U43 ( .A(count_out[2]), .B(n28), .Y(n35) );
  INVX2 U44 ( .A(n29), .Y(n30) );
  NAND2X1 U45 ( .A(n30), .B(n3), .Y(n34) );
  OAI21X1 U46 ( .A(n38), .B(n32), .C(n31), .Y(n54) );
  NAND2X1 U47 ( .A(n28), .B(count_out[3]), .Y(n37) );
  NOR2X1 U48 ( .A(n35), .B(n34), .Y(n36) );
  XOR2X1 U49 ( .A(n36), .B(n37), .Y(n49) );
  INVX2 U50 ( .A(n38), .Y(n47) );
  NAND2X1 U51 ( .A(count_out[3]), .B(n47), .Y(n48) );
  NAND2X1 U52 ( .A(n49), .B(n48), .Y(n52) );
  NOR2X1 U53 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n51) );
  AOI21X1 U54 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n51), .Y(n50) );
endmodule


module timerTX ( clk, n_rst, sending, stop_clock, sd_enable, load_enable_g, 
        stop_clock_shift_enable, load_enable_sd, shift_enable_sd, shift_enable, 
        load_enable );
  input clk, n_rst, sending, stop_clock, sd_enable, load_enable_g,
         stop_clock_shift_enable;
  output load_enable_sd, shift_enable_sd, shift_enable, load_enable;
  wire   _1_net_, _3_net_, _4_net_, N0, N1, N2, n1, n2, n3, n4, n5, n6, n7, n8,
         n9;
  wire   [3:0] count_out_shift;
  assign shift_enable = N0;
  assign shift_enable_sd = N1;
  assign load_enable_sd = N2;

  flex_counter_NUM_CNT_BITS4_1 shift_enable_gen ( .clk(clk), .n_rst(n1), 
        .clear(n9), .count_enable(_1_net_), .rollover_val({1'b1, 1'b0, 1'b0, 
        1'b0}), .count_out(count_out_shift) );
  flex_counter_NUM_CNT_BITS4_0 load_enable_gen ( .clk(clk), .n_rst(n1), 
        .clear(_3_net_), .count_enable(_4_net_), .rollover_val({1'b1, 1'b0, 
        1'b0, 1'b0}), .rollover_flag(load_enable) );
  AND2X2 U3 ( .A(load_enable), .B(sd_enable), .Y(N2) );
  INVX1 U4 ( .A(sd_enable), .Y(n7) );
  INVX1 U5 ( .A(N0), .Y(n6) );
  INVX1 U6 ( .A(sending), .Y(n9) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U8 ( .A(n_rst), .Y(n2) );
  NOR2X1 U9 ( .A(count_out_shift[3]), .B(count_out_shift[2]), .Y(n3) );
  NAND3X1 U10 ( .A(count_out_shift[0]), .B(count_out_shift[1]), .C(n3), .Y(n5)
         );
  NOR2X1 U11 ( .A(stop_clock_shift_enable), .B(n5), .Y(_4_net_) );
  INVX2 U12 ( .A(load_enable), .Y(n8) );
  NAND2X1 U13 ( .A(sending), .B(n8), .Y(_3_net_) );
  NOR2X1 U14 ( .A(stop_clock), .B(n9), .Y(_1_net_) );
  INVX2 U15 ( .A(stop_clock_shift_enable), .Y(n4) );
  NAND2X1 U16 ( .A(n5), .B(n4), .Y(N0) );
  NOR2X1 U17 ( .A(n6), .B(n7), .Y(N1) );
endmodule


module flex_pts_tx ( clk, n_rst, shift_enable, load_enable, parallel_in, 
        stop_clock_shift_enable, serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable, stop_clock_shift_enable;
  output serial_out;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n41, n42, n43;
  wire   [6:0] Q_out;

  DFFSR \Q_out_reg[5]  ( .D(n35), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[5])
         );
  DFFSR \Q_out_reg[6]  ( .D(n34), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[6])
         );
  DFFSR \Q_out_reg[4]  ( .D(n36), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[4])
         );
  DFFSR \Q_out_reg[3]  ( .D(n37), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[3])
         );
  DFFSR \Q_out_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[0])
         );
  DFFSR \Q_out_reg[2]  ( .D(n38), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[2])
         );
  DFFSR \Q_out_reg[7]  ( .D(n33), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        serial_out) );
  DFFSR \Q_out_reg[1]  ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q_out[1])
         );
  INVX1 U2 ( .A(shift_enable), .Y(n10) );
  INVX2 U11 ( .A(stop_clock_shift_enable), .Y(n11) );
  INVX2 U12 ( .A(load_enable), .Y(n9) );
  NAND3X1 U13 ( .A(shift_enable), .B(n11), .C(n9), .Y(n15) );
  NAND2X1 U14 ( .A(load_enable), .B(n10), .Y(n13) );
  NAND3X1 U15 ( .A(shift_enable), .B(load_enable), .C(n11), .Y(n14) );
  NAND3X1 U16 ( .A(n15), .B(n13), .C(n14), .Y(n12) );
  INVX2 U17 ( .A(n12), .Y(n31) );
  INVX2 U18 ( .A(n13), .Y(n30) );
  AOI22X1 U19 ( .A(serial_out), .B(n31), .C(parallel_in[7]), .D(n30), .Y(n17)
         );
  INVX2 U20 ( .A(n14), .Y(n41) );
  INVX2 U21 ( .A(n15), .Y(n32) );
  AOI22X1 U22 ( .A(parallel_in[6]), .B(n41), .C(Q_out[6]), .D(n32), .Y(n16) );
  NAND2X1 U23 ( .A(n17), .B(n16), .Y(n33) );
  AOI22X1 U24 ( .A(Q_out[6]), .B(n31), .C(parallel_in[6]), .D(n30), .Y(n19) );
  AOI22X1 U25 ( .A(parallel_in[5]), .B(n41), .C(Q_out[5]), .D(n32), .Y(n18) );
  NAND2X1 U26 ( .A(n19), .B(n18), .Y(n34) );
  AOI22X1 U27 ( .A(Q_out[5]), .B(n31), .C(parallel_in[5]), .D(n30), .Y(n21) );
  AOI22X1 U28 ( .A(parallel_in[4]), .B(n41), .C(Q_out[4]), .D(n32), .Y(n20) );
  NAND2X1 U29 ( .A(n21), .B(n20), .Y(n35) );
  AOI22X1 U30 ( .A(Q_out[4]), .B(n31), .C(parallel_in[4]), .D(n30), .Y(n23) );
  AOI22X1 U31 ( .A(parallel_in[3]), .B(n41), .C(Q_out[3]), .D(n32), .Y(n22) );
  NAND2X1 U32 ( .A(n23), .B(n22), .Y(n36) );
  AOI22X1 U33 ( .A(Q_out[3]), .B(n31), .C(parallel_in[3]), .D(n30), .Y(n25) );
  AOI22X1 U34 ( .A(parallel_in[2]), .B(n41), .C(Q_out[2]), .D(n32), .Y(n24) );
  NAND2X1 U35 ( .A(n25), .B(n24), .Y(n37) );
  AOI22X1 U36 ( .A(Q_out[2]), .B(n31), .C(parallel_in[2]), .D(n30), .Y(n27) );
  AOI22X1 U37 ( .A(parallel_in[1]), .B(n41), .C(Q_out[1]), .D(n32), .Y(n26) );
  NAND2X1 U38 ( .A(n27), .B(n26), .Y(n38) );
  AOI22X1 U39 ( .A(Q_out[1]), .B(n31), .C(parallel_in[1]), .D(n30), .Y(n29) );
  AOI22X1 U40 ( .A(n41), .B(parallel_in[0]), .C(n32), .D(Q_out[0]), .Y(n28) );
  NAND2X1 U41 ( .A(n29), .B(n28), .Y(n39) );
  AOI22X1 U42 ( .A(Q_out[0]), .B(n31), .C(parallel_in[0]), .D(n30), .Y(n43) );
  AOI22X1 U43 ( .A(parallel_in[7]), .B(n41), .C(serial_out), .D(n32), .Y(n42)
         );
  NAND2X1 U44 ( .A(n43), .B(n42), .Y(n40) );
endmodule


module flex_counter_stuff_3 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N17, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47;

  DFFSR \cur_count_reg[0]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[2]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[1]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  NAND2X1 U8 ( .A(n8), .B(n24), .Y(n1) );
  NAND2X1 U9 ( .A(n8), .B(n24), .Y(n2) );
  XNOR2X1 U10 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n9) );
  XNOR2X1 U11 ( .A(count_out[1]), .B(n40), .Y(n10) );
  XOR2X1 U12 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n4) );
  INVX2 U13 ( .A(n9), .Y(n3) );
  NOR2X1 U14 ( .A(n4), .B(n3), .Y(n7) );
  XNOR2X1 U15 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n6) );
  INVX2 U16 ( .A(count_out[2]), .Y(n30) );
  XOR2X1 U17 ( .A(n30), .B(rollover_val[2]), .Y(n5) );
  NAND3X1 U18 ( .A(n7), .B(n6), .C(n5), .Y(n25) );
  INVX2 U19 ( .A(count_enable), .Y(n8) );
  INVX2 U20 ( .A(clear), .Y(n24) );
  NAND2X1 U21 ( .A(n8), .B(n24), .Y(n38) );
  NOR2X1 U22 ( .A(n9), .B(n8), .Y(n22) );
  NOR2X1 U23 ( .A(clear), .B(n10), .Y(n21) );
  XOR2X1 U24 ( .A(N17), .B(count_out[2]), .Y(n19) );
  NAND2X1 U25 ( .A(rollover_val[3]), .B(n42), .Y(n11) );
  XOR2X1 U26 ( .A(n11), .B(count_out[3]), .Y(n12) );
  OAI21X1 U27 ( .A(rollover_val[3]), .B(n42), .C(n12), .Y(n18) );
  NOR2X1 U28 ( .A(n19), .B(n18), .Y(n20) );
  NAND3X1 U29 ( .A(n22), .B(n21), .C(n20), .Y(n23) );
  OAI21X1 U30 ( .A(n25), .B(n2), .C(n23), .Y(next_flag) );
  NAND2X1 U31 ( .A(n25), .B(n24), .Y(n29) );
  INVX2 U32 ( .A(n29), .Y(n37) );
  NAND3X1 U33 ( .A(count_out[0]), .B(n37), .C(n2), .Y(n27) );
  OAI21X1 U34 ( .A(count_out[0]), .B(n29), .C(n38), .Y(n26) );
  INVX2 U35 ( .A(n26), .Y(n28) );
  MUX2X1 U36 ( .B(n27), .A(n28), .S(count_out[1]), .Y(n45) );
  INVX2 U37 ( .A(n27), .Y(n33) );
  NAND3X1 U38 ( .A(count_out[2]), .B(count_out[1]), .C(n33), .Y(n32) );
  OAI21X1 U39 ( .A(count_out[1]), .B(n29), .C(n28), .Y(n34) );
  AOI21X1 U40 ( .A(n37), .B(n30), .C(n34), .Y(n31) );
  MUX2X1 U41 ( .B(n32), .A(n31), .S(count_out[3]), .Y(n47) );
  NAND2X1 U42 ( .A(count_out[1]), .B(n33), .Y(n36) );
  INVX2 U43 ( .A(n34), .Y(n35) );
  MUX2X1 U44 ( .B(n36), .A(n35), .S(count_out[2]), .Y(n46) );
  NAND2X1 U45 ( .A(n37), .B(n1), .Y(n39) );
  MUX2X1 U46 ( .B(n39), .A(n1), .S(count_out[0]), .Y(n44) );
  NOR2X1 U47 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n41) );
  AOI21X1 U48 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n41), .Y(n40) );
  NAND2X1 U49 ( .A(n41), .B(n43), .Y(n42) );
  OAI21X1 U50 ( .A(n41), .B(n43), .C(n42), .Y(N17) );
  INVX2 U51 ( .A(rollover_val[2]), .Y(n43) );
endmodule


module flex_counter_stuff_2 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N17, N18, N19, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n15, n18, n19, n20, n21, n22, n23, n24, n25, n26, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  DFFSR \cur_count_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[2]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[1]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  NAND3X1 U19 ( .A(n48), .B(n47), .C(n46), .Y(n49) );
  XNOR2X1 U21 ( .A(count_out[2]), .B(N17), .Y(n47) );
  NAND3X1 U23 ( .A(n45), .B(count_enable), .C(n44), .Y(n50) );
  NOR2X1 U24 ( .A(clear), .B(N19), .Y(n44) );
  XNOR2X1 U25 ( .A(count_out[3]), .B(N18), .Y(n45) );
  DFFSR \cur_count_reg[3]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  XOR2X1 U8 ( .A(count_out[1]), .B(n35), .Y(n46) );
  XOR2X1 U9 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n48) );
  XOR2X1 U10 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n3) );
  XOR2X1 U11 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n2) );
  NOR2X1 U12 ( .A(n3), .B(n2), .Y(n6) );
  XNOR2X1 U13 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n5) );
  XNOR2X1 U14 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n4) );
  NAND3X1 U15 ( .A(n6), .B(n5), .C(n4), .Y(n9) );
  INVX2 U16 ( .A(count_enable), .Y(n7) );
  INVX2 U17 ( .A(clear), .Y(n8) );
  NAND2X1 U18 ( .A(n7), .B(n8), .Y(n26) );
  OAI22X1 U20 ( .A(n9), .B(n26), .C(n49), .D(n50), .Y(next_flag) );
  NAND2X1 U22 ( .A(n9), .B(n8), .Y(n15) );
  INVX2 U26 ( .A(n15), .Y(n25) );
  NAND3X1 U27 ( .A(count_out[0]), .B(n25), .C(n26), .Y(n11) );
  OAI21X1 U28 ( .A(count_out[0]), .B(n15), .C(n26), .Y(n10) );
  INVX2 U29 ( .A(n10), .Y(n12) );
  MUX2X1 U30 ( .B(n11), .A(n12), .S(count_out[1]), .Y(n41) );
  INVX2 U31 ( .A(n11), .Y(n21) );
  NAND3X1 U32 ( .A(count_out[2]), .B(count_out[1]), .C(n21), .Y(n20) );
  INVX2 U33 ( .A(count_out[2]), .Y(n18) );
  OAI21X1 U34 ( .A(count_out[1]), .B(n15), .C(n12), .Y(n22) );
  AOI21X1 U35 ( .A(n25), .B(n18), .C(n22), .Y(n19) );
  MUX2X1 U36 ( .B(n20), .A(n19), .S(count_out[3]), .Y(n43) );
  NAND2X1 U37 ( .A(count_out[1]), .B(n21), .Y(n24) );
  INVX2 U38 ( .A(n22), .Y(n23) );
  MUX2X1 U39 ( .B(n24), .A(n23), .S(count_out[2]), .Y(n42) );
  NAND2X1 U40 ( .A(n25), .B(n26), .Y(n34) );
  MUX2X1 U41 ( .B(n34), .A(n26), .S(count_out[0]), .Y(n40) );
  NOR2X1 U42 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n36) );
  AOI21X1 U43 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n36), .Y(n35) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n37) );
  OAI21X1 U45 ( .A(n36), .B(n39), .C(n37), .Y(N17) );
  NOR2X1 U46 ( .A(n37), .B(rollover_val[3]), .Y(N19) );
  AOI21X1 U47 ( .A(n37), .B(rollover_val[3]), .C(N19), .Y(n38) );
  INVX2 U48 ( .A(rollover_val[2]), .Y(n39) );
  INVX2 U49 ( .A(n38), .Y(N18) );
endmodule


module bit_stuffer ( clk, n_rst, serial_in, shift_enable, 
        stop_clock_shift_enable, d_orig, stop_clock );
  input clk, n_rst, serial_in, shift_enable;
  output stop_clock_shift_enable, d_orig, stop_clock;
  wire   _1_net_, stop_prep, cnt_clear, cnt_done, \cur_state[1] , n9, n12, n13,
         n2, n3, n4, n5, n7, n8;
  wire   [3:0] count_out_value;
  assign stop_clock = \cur_state[1] ;

  DFFSR \cur_state_reg[1]  ( .D(n12), .CLK(clk), .R(n2), .S(1'b1), .Q(
        \cur_state[1] ) );
  OAI21X1 U14 ( .A(n7), .B(\cur_state[1] ), .C(n9), .Y(n12) );
  NOR2X1 U18 ( .A(\cur_state[1] ), .B(n7), .Y(cnt_clear) );
  flex_counter_stuff_3 GENERATE_STOP_CLOCK ( .clk(clk), .n_rst(n2), .clear(n13), .count_enable(_1_net_), .rollover_val({1'b0, 1'b1, 1'b1, 1'b0}), .count_out(
        count_out_value), .rollover_flag(stop_prep) );
  flex_counter_stuff_2 CLOCKS ( .clk(clk), .n_rst(n2), .clear(cnt_clear), 
        .count_enable(\cur_state[1] ), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(cnt_done) );
  INVX2 U4 ( .A(n3), .Y(n2) );
  INVX2 U5 ( .A(n_rst), .Y(n3) );
  NOR2X1 U6 ( .A(count_out_value[3]), .B(count_out_value[0]), .Y(n4) );
  NAND3X1 U7 ( .A(n4), .B(count_out_value[2]), .C(count_out_value[1]), .Y(n5)
         );
  NAND2X1 U8 ( .A(serial_in), .B(n5), .Y(n13) );
  INVX2 U9 ( .A(n13), .Y(d_orig) );
  AND2X2 U10 ( .A(shift_enable), .B(d_orig), .Y(_1_net_) );
  INVX2 U11 ( .A(n5), .Y(stop_clock_shift_enable) );
  INVX2 U12 ( .A(stop_prep), .Y(n7) );
  INVX2 U13 ( .A(cnt_done), .Y(n8) );
  NAND2X1 U15 ( .A(n8), .B(\cur_state[1] ), .Y(n9) );
endmodule


module encode ( clk, n_rst, d_orig, shift_enable, eop, sending, d_plus, 
        d_minus );
  input clk, n_rst, d_orig, shift_enable, eop, sending;
  output d_plus, d_minus;
  wire   pre_d_plus, n2, n3, n4, n5;

  DFFSR pre_d_plus_reg ( .D(n5), .CLK(clk), .R(n_rst), .S(1'b1), .Q(pre_d_plus) );
  INVX2 U4 ( .A(d_orig), .Y(n2) );
  NAND2X1 U5 ( .A(shift_enable), .B(n2), .Y(n3) );
  XOR2X1 U6 ( .A(n3), .B(pre_d_plus), .Y(n4) );
  INVX2 U7 ( .A(n4), .Y(n5) );
  AOI21X1 U8 ( .A(n5), .B(sending), .C(eop), .Y(d_minus) );
  AOI21X1 U9 ( .A(sending), .B(n4), .C(eop), .Y(d_plus) );
endmodule


module crc_16bit_gen ( clk, n_rst, shift_enable_sd, serial_in, 
        stop_clock_shift_enable, crc_sync_rst, parallel_out );
  output [15:0] parallel_out;
  input clk, n_rst, shift_enable_sd, serial_in, stop_clock_shift_enable,
         crc_sync_rst;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n54, n55, n56;

  DFFSR \out_tmp_reg[0]  ( .D(n53), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[0]) );
  DFFSR \out_tmp_reg[1]  ( .D(n52), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[1]) );
  DFFSR \out_tmp_reg[2]  ( .D(n51), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[2]) );
  DFFSR \out_tmp_reg[3]  ( .D(n50), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[3]) );
  DFFSR \out_tmp_reg[4]  ( .D(n49), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[4]) );
  DFFSR \out_tmp_reg[5]  ( .D(n48), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[5]) );
  DFFSR \out_tmp_reg[6]  ( .D(n47), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[6]) );
  DFFSR \out_tmp_reg[7]  ( .D(n46), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[7]) );
  DFFSR \out_tmp_reg[8]  ( .D(n45), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[8]) );
  DFFSR \out_tmp_reg[9]  ( .D(n44), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[9]) );
  DFFSR \out_tmp_reg[10]  ( .D(n43), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[10]) );
  DFFSR \out_tmp_reg[11]  ( .D(n42), .CLK(clk), .R(1'b1), .S(n17), .Q(
        parallel_out[11]) );
  DFFSR \out_tmp_reg[12]  ( .D(n41), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[12]) );
  DFFSR \out_tmp_reg[13]  ( .D(n40), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[13]) );
  DFFSR \out_tmp_reg[14]  ( .D(n39), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[14]) );
  DFFSR \out_tmp_reg[15]  ( .D(n38), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[15]) );
  INVX2 U18 ( .A(n18), .Y(n17) );
  INVX2 U19 ( .A(n_rst), .Y(n18) );
  INVX4 U20 ( .A(n21), .Y(n54) );
  INVX2 U21 ( .A(stop_clock_shift_enable), .Y(n19) );
  NAND2X1 U22 ( .A(shift_enable_sd), .B(n19), .Y(n21) );
  INVX2 U23 ( .A(parallel_out[14]), .Y(n22) );
  NOR2X1 U24 ( .A(n21), .B(n22), .Y(n20) );
  XOR2X1 U25 ( .A(parallel_out[15]), .B(n20), .Y(n38) );
  INVX2 U26 ( .A(parallel_out[13]), .Y(n23) );
  MUX2X1 U27 ( .B(n22), .A(n23), .S(n54), .Y(n39) );
  INVX2 U28 ( .A(parallel_out[12]), .Y(n24) );
  MUX2X1 U29 ( .B(n23), .A(n24), .S(n54), .Y(n40) );
  INVX2 U30 ( .A(parallel_out[11]), .Y(n25) );
  MUX2X1 U31 ( .B(n24), .A(n25), .S(n54), .Y(n41) );
  INVX2 U32 ( .A(parallel_out[10]), .Y(n26) );
  MUX2X1 U33 ( .B(n25), .A(n26), .S(n54), .Y(n42) );
  INVX2 U34 ( .A(parallel_out[9]), .Y(n27) );
  MUX2X1 U35 ( .B(n26), .A(n27), .S(n54), .Y(n43) );
  INVX2 U36 ( .A(parallel_out[8]), .Y(n28) );
  MUX2X1 U37 ( .B(n27), .A(n28), .S(n54), .Y(n44) );
  INVX2 U38 ( .A(parallel_out[7]), .Y(n29) );
  MUX2X1 U39 ( .B(n28), .A(n29), .S(n54), .Y(n45) );
  INVX2 U40 ( .A(parallel_out[6]), .Y(n30) );
  MUX2X1 U41 ( .B(n29), .A(n30), .S(n54), .Y(n46) );
  INVX2 U42 ( .A(parallel_out[5]), .Y(n31) );
  MUX2X1 U43 ( .B(n30), .A(n31), .S(n54), .Y(n47) );
  INVX2 U44 ( .A(parallel_out[4]), .Y(n32) );
  MUX2X1 U45 ( .B(n31), .A(n32), .S(n54), .Y(n48) );
  INVX2 U46 ( .A(parallel_out[3]), .Y(n33) );
  MUX2X1 U47 ( .B(n32), .A(n33), .S(n54), .Y(n49) );
  INVX2 U48 ( .A(parallel_out[2]), .Y(n35) );
  MUX2X1 U49 ( .B(n33), .A(n35), .S(n54), .Y(n50) );
  INVX2 U50 ( .A(parallel_out[15]), .Y(n37) );
  XOR2X1 U51 ( .A(n37), .B(parallel_out[1]), .Y(n34) );
  MUX2X1 U52 ( .B(n35), .A(n34), .S(n54), .Y(n51) );
  INVX2 U53 ( .A(parallel_out[1]), .Y(n36) );
  INVX2 U54 ( .A(parallel_out[0]), .Y(n56) );
  MUX2X1 U55 ( .B(n36), .A(n56), .S(n54), .Y(n52) );
  XOR2X1 U56 ( .A(n37), .B(serial_in), .Y(n55) );
  MUX2X1 U57 ( .B(n56), .A(n55), .S(n54), .Y(n53) );
endmodule


module usb_transmitter ( clk, n_rst, tx_transmit, tx_send_good, tx_send_bad, 
        empty, sd_data, load_enable_sd, d_plus, tx_done, tx_err, d_minus );
  input [7:0] sd_data;
  input clk, n_rst, tx_transmit, tx_send_good, tx_send_bad, empty;
  output load_enable_sd, d_plus, tx_done, tx_err, d_minus;
  wire   load_enable, sending, sd_enable, load_enable_g, eop, crc_sync_rst,
         stop_clock, shift_enable, stop_clock_shift_enable, shift_enable_sd,
         _0_net_, serial_in, d_orig, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [15:0] crc_value;
  wire   [7:0] tcu_data;
  assign tx_err = 1'b0;

  tcu TCU ( .clk(clk), .n_rst(n_rst), .tx_transmit(tx_transmit), 
        .tx_send_good(tx_send_good), .tx_send_bad(tx_send_bad), .load_enable(
        load_enable), .empty(empty), .crc_value(crc_value), .data(tcu_data), 
        .sending(sending), .sd_enable(sd_enable), .load_enable_g(load_enable_g), .tx_done(tx_done), .eop(eop), .crc_sync_rst(crc_sync_rst) );
  timerTX SHIFT_ENABLE_GEN ( .clk(clk), .n_rst(n_rst), .sending(sending), 
        .stop_clock(stop_clock), .sd_enable(sd_enable), .load_enable_g(
        load_enable_g), .stop_clock_shift_enable(stop_clock_shift_enable), 
        .load_enable_sd(load_enable_sd), .shift_enable_sd(shift_enable_sd), 
        .shift_enable(shift_enable), .load_enable(load_enable) );
  flex_pts_tx SHIFT_REGISTER ( .clk(clk), .n_rst(n_rst), .shift_enable(
        shift_enable), .load_enable(_0_net_), .parallel_in({n18, n17, n16, n15, 
        n14, n13, n12, n11}), .stop_clock_shift_enable(stop_clock_shift_enable), .serial_out(serial_in) );
  bit_stuffer STOP_CLOCK_GEN ( .clk(clk), .n_rst(n_rst), .serial_in(serial_in), 
        .shift_enable(shift_enable), .stop_clock_shift_enable(
        stop_clock_shift_enable), .d_orig(d_orig), .stop_clock(stop_clock) );
  encode ENCODER ( .clk(clk), .n_rst(n_rst), .d_orig(d_orig), .shift_enable(
        shift_enable), .eop(eop), .sending(n1), .d_plus(d_plus), .d_minus(
        d_minus) );
  crc_16bit_gen CRC_GENERATOR ( .clk(clk), .n_rst(n_rst), .shift_enable_sd(
        shift_enable_sd), .serial_in(serial_in), .stop_clock_shift_enable(
        stop_clock_shift_enable), .crc_sync_rst(crc_sync_rst), .parallel_out(
        crc_value) );
  BUFX2 U1 ( .A(sending), .Y(n1) );
  BUFX2 U2 ( .A(load_enable_sd), .Y(n2) );
  OR2X2 U3 ( .A(load_enable), .B(load_enable_g), .Y(_0_net_) );
  MUX2X1 U4 ( .B(tcu_data[0]), .A(sd_data[0]), .S(n2), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n11) );
  MUX2X1 U6 ( .B(tcu_data[1]), .A(sd_data[1]), .S(n2), .Y(n4) );
  INVX2 U7 ( .A(n4), .Y(n12) );
  MUX2X1 U8 ( .B(tcu_data[2]), .A(sd_data[2]), .S(n2), .Y(n5) );
  INVX2 U9 ( .A(n5), .Y(n13) );
  MUX2X1 U10 ( .B(tcu_data[3]), .A(sd_data[3]), .S(n2), .Y(n6) );
  INVX2 U11 ( .A(n6), .Y(n14) );
  MUX2X1 U12 ( .B(tcu_data[4]), .A(sd_data[4]), .S(n2), .Y(n7) );
  INVX2 U13 ( .A(n7), .Y(n15) );
  MUX2X1 U14 ( .B(tcu_data[5]), .A(sd_data[5]), .S(n2), .Y(n8) );
  INVX2 U15 ( .A(n8), .Y(n16) );
  MUX2X1 U16 ( .B(tcu_data[6]), .A(sd_data[6]), .S(n2), .Y(n9) );
  INVX2 U17 ( .A(n9), .Y(n17) );
  MUX2X1 U18 ( .B(tcu_data[7]), .A(sd_data[7]), .S(n2), .Y(n10) );
  INVX2 U19 ( .A(n10), .Y(n18) );
endmodule


module sync_1 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   Q1;

  DFFSR Q1_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q1) );
  DFFSR Q2_reg ( .D(Q1), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out) );
endmodule


module sync_0 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   Q1;

  DFFSR Q1_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(Q1) );
  DFFSR Q2_reg ( .D(Q1), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out) );
endmodule


module decode ( clk, n_rst, d_plus, shift_enable, eop, d_orig );
  input clk, n_rst, d_plus, shift_enable, eop;
  output d_orig;
  wire   cur_d, cur_stored, n5, n6, n7, n3, n4;

  DFFSR cur_d_reg ( .D(n3), .CLK(clk), .R(1'b1), .S(n_rst), .Q(cur_d) );
  DFFSR cur_stored_reg ( .D(n7), .CLK(clk), .R(1'b1), .S(n_rst), .Q(cur_stored) );
  AOI21X1 U7 ( .A(eop), .B(shift_enable), .C(d_plus), .Y(n5) );
  OAI21X1 U8 ( .A(shift_enable), .B(n4), .C(n6), .Y(n7) );
  OAI21X1 U9 ( .A(d_plus), .B(eop), .C(shift_enable), .Y(n6) );
  XNOR2X1 U5 ( .A(cur_stored), .B(cur_d), .Y(d_orig) );
  INVX2 U6 ( .A(n5), .Y(n3) );
  INVX2 U10 ( .A(cur_stored), .Y(n4) );
endmodule


module edge_detect_0 ( clk, n_rst, d_plus, d_edge );
  input clk, n_rst, d_plus;
  output d_edge;
  wire   past_d_plus, N0;

  DFFSR past_d_plus_reg ( .D(d_plus), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        past_d_plus) );
  DFFSR cur_d_edge_reg ( .D(N0), .CLK(clk), .R(n_rst), .S(1'b1), .Q(d_edge) );
  XOR2X1 U5 ( .A(past_d_plus), .B(d_plus), .Y(N0) );
endmodule


module eop_detect ( d_plus, d_minus, eop );
  input d_plus, d_minus;
  output eop;


  NOR2X1 U1 ( .A(d_plus), .B(d_minus), .Y(eop) );
endmodule


module flex_counter_1 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, n40, n42, n44, n46, n1, n2, n3, n4, n5, n6, n7, n8, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n43, n45,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68;

  DFFSR \cur_count_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \cur_count_reg[1]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[3]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  BUFX4 U3 ( .A(n24), .Y(n25) );
  AND2X2 U4 ( .A(n27), .B(n39), .Y(n1) );
  INVX1 U5 ( .A(n1), .Y(n26) );
  BUFX2 U6 ( .A(n21), .Y(n2) );
  INVX1 U7 ( .A(clear), .Y(n3) );
  INVX2 U8 ( .A(n17), .Y(n14) );
  MUX2X1 U9 ( .B(n25), .A(n52), .S(n66), .Y(n40) );
  INVX1 U10 ( .A(n65), .Y(n66) );
  AND2X2 U11 ( .A(n1), .B(n41), .Y(n8) );
  BUFX2 U12 ( .A(n1), .Y(n4) );
  INVX1 U13 ( .A(n27), .Y(n5) );
  INVX1 U14 ( .A(n5), .Y(n6) );
  XOR2X1 U15 ( .A(n25), .B(n7), .Y(n53) );
  NAND2X1 U16 ( .A(n19), .B(n22), .Y(n7) );
  INVX4 U17 ( .A(rollover_val[2]), .Y(n41) );
  INVX1 U18 ( .A(n60), .Y(n61) );
  OR2X2 U24 ( .A(n59), .B(n60), .Y(n63) );
  XOR2X1 U25 ( .A(n64), .B(n14), .Y(n68) );
  AND2X1 U26 ( .A(n19), .B(n22), .Y(n15) );
  AND2X1 U27 ( .A(n19), .B(n22), .Y(n57) );
  AND2X2 U28 ( .A(n56), .B(count_out[1]), .Y(n19) );
  INVX1 U29 ( .A(n55), .Y(n16) );
  INVX2 U30 ( .A(clear), .Y(n55) );
  AND2X2 U31 ( .A(n61), .B(count_out[3]), .Y(n17) );
  NAND3X1 U32 ( .A(n48), .B(n47), .C(n45), .Y(n18) );
  INVX1 U33 ( .A(rollover_val[0]), .Y(n27) );
  NAND2X1 U34 ( .A(n57), .B(n24), .Y(n20) );
  INVX1 U35 ( .A(count_out[2]), .Y(n59) );
  INVX1 U36 ( .A(count_out[1]), .Y(n54) );
  XNOR2X1 U37 ( .A(rollover_val[0]), .B(n52), .Y(n21) );
  XNOR2X1 U38 ( .A(n62), .B(n63), .Y(n58) );
  AND2X2 U39 ( .A(n3), .B(count_enable), .Y(n22) );
  INVX2 U40 ( .A(n51), .Y(n24) );
  INVX1 U41 ( .A(n31), .Y(n23) );
  INVX1 U42 ( .A(rollover_val[3]), .Y(n31) );
  INVX2 U43 ( .A(rollover_val[1]), .Y(n39) );
  NAND2X1 U44 ( .A(n41), .B(n1), .Y(n33) );
  OAI21X1 U45 ( .A(n6), .B(n39), .C(n26), .Y(n28) );
  XOR2X1 U46 ( .A(n28), .B(count_out[1]), .Y(n29) );
  NOR2X1 U47 ( .A(n16), .B(n29), .Y(n30) );
  OAI21X1 U48 ( .A(n23), .B(n33), .C(n30), .Y(n50) );
  INVX2 U49 ( .A(count_out[0]), .Y(n52) );
  NOR2X1 U50 ( .A(n31), .B(n8), .Y(n32) );
  XOR2X1 U51 ( .A(count_out[3]), .B(n32), .Y(n36) );
  OAI21X1 U52 ( .A(n4), .B(n41), .C(n33), .Y(n34) );
  XOR2X1 U53 ( .A(n34), .B(count_out[2]), .Y(n35) );
  NOR2X1 U54 ( .A(n35), .B(n36), .Y(n37) );
  NAND3X1 U55 ( .A(count_enable), .B(n2), .C(n37), .Y(n49) );
  INVX2 U56 ( .A(count_enable), .Y(n38) );
  NAND2X1 U57 ( .A(n38), .B(n55), .Y(n65) );
  XOR2X1 U58 ( .A(n39), .B(count_out[1]), .Y(n48) );
  XOR2X1 U59 ( .A(n41), .B(count_out[2]), .Y(n47) );
  XOR2X1 U60 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n43) );
  NOR2X1 U61 ( .A(n43), .B(n21), .Y(n45) );
  NAND3X1 U62 ( .A(n48), .B(n47), .C(n45), .Y(n56) );
  OAI22X1 U63 ( .A(n49), .B(n50), .C(n65), .D(n18), .Y(next_flag) );
  NAND3X1 U64 ( .A(count_out[0]), .B(n22), .C(n18), .Y(n51) );
  OAI21X1 U65 ( .A(n65), .B(n54), .C(n53), .Y(n42) );
  NAND2X1 U66 ( .A(n55), .B(n56), .Y(n60) );
  NAND2X1 U67 ( .A(n15), .B(n24), .Y(n62) );
  OAI21X1 U68 ( .A(n65), .B(n59), .C(n58), .Y(n44) );
  NOR2X1 U69 ( .A(n63), .B(n20), .Y(n64) );
  NAND2X1 U70 ( .A(count_out[3]), .B(n66), .Y(n67) );
  NAND2X1 U71 ( .A(n67), .B(n68), .Y(n46) );
endmodule


module flex_counter_0 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n60, n62, n64;

  DFFSR \cur_count_reg[3]  ( .D(n58), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[2]  ( .D(n60), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[1]  ( .D(n62), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[0]  ( .D(n64), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  BUFX2 U3 ( .A(count_out[3]), .Y(n1) );
  AND2X2 U4 ( .A(n5), .B(n31), .Y(n2) );
  INVX2 U5 ( .A(n2), .Y(n53) );
  MUX2X1 U6 ( .B(n10), .A(n32), .S(n2), .Y(n64) );
  XOR2X1 U7 ( .A(n52), .B(n3), .Y(n55) );
  AND2X2 U8 ( .A(n1), .B(n9), .Y(n3) );
  INVX2 U9 ( .A(n8), .Y(n50) );
  INVX1 U10 ( .A(count_out[2]), .Y(n49) );
  AND2X2 U11 ( .A(count_out[2]), .B(n12), .Y(n8) );
  BUFX2 U12 ( .A(n51), .Y(n4) );
  BUFX4 U13 ( .A(n47), .Y(n5) );
  NAND2X1 U14 ( .A(n2), .B(n6), .Y(n7) );
  NAND2X1 U15 ( .A(n7), .B(n34), .Y(n62) );
  INVX1 U16 ( .A(n35), .Y(n6) );
  NOR3X1 U17 ( .A(n13), .B(n5), .C(clear), .Y(n9) );
  INVX2 U18 ( .A(n36), .Y(n13) );
  AND2X2 U19 ( .A(n9), .B(count_out[0]), .Y(n10) );
  XNOR2X1 U20 ( .A(n32), .B(rollover_val[0]), .Y(n11) );
  NOR3X1 U21 ( .A(n13), .B(n5), .C(clear), .Y(n12) );
  INVX1 U22 ( .A(count_enable), .Y(n47) );
  INVX1 U23 ( .A(clear), .Y(n31) );
  INVX2 U24 ( .A(rollover_val[2]), .Y(n24) );
  NAND2X1 U25 ( .A(n57), .B(n24), .Y(n19) );
  INVX2 U26 ( .A(count_out[1]), .Y(n35) );
  XOR2X1 U27 ( .A(n35), .B(n56), .Y(n14) );
  NOR2X1 U28 ( .A(clear), .B(n14), .Y(n15) );
  OAI21X1 U29 ( .A(rollover_val[3]), .B(n19), .C(n15), .Y(n30) );
  INVX2 U30 ( .A(count_out[0]), .Y(n32) );
  INVX2 U31 ( .A(n19), .Y(n17) );
  INVX2 U32 ( .A(rollover_val[3]), .Y(n16) );
  NOR2X1 U33 ( .A(n17), .B(n16), .Y(n18) );
  XOR2X1 U34 ( .A(n1), .B(n18), .Y(n22) );
  OAI21X1 U40 ( .A(n57), .B(n24), .C(n19), .Y(n20) );
  XOR2X1 U41 ( .A(n20), .B(count_out[2]), .Y(n21) );
  NOR2X1 U42 ( .A(n22), .B(n21), .Y(n23) );
  NAND3X1 U43 ( .A(count_enable), .B(n11), .C(n23), .Y(n29) );
  XOR2X1 U44 ( .A(n35), .B(rollover_val[1]), .Y(n28) );
  XOR2X1 U45 ( .A(n24), .B(count_out[2]), .Y(n27) );
  XOR2X1 U46 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n25) );
  NOR2X1 U47 ( .A(n25), .B(n11), .Y(n26) );
  NAND3X1 U48 ( .A(n28), .B(n27), .C(n26), .Y(n36) );
  OAI22X1 U49 ( .A(n30), .B(n29), .C(n53), .D(n36), .Y(next_flag) );
  NAND2X1 U50 ( .A(n9), .B(count_out[1]), .Y(n33) );
  XOR2X1 U51 ( .A(n10), .B(n33), .Y(n34) );
  NAND3X1 U52 ( .A(count_out[0]), .B(n36), .C(count_out[1]), .Y(n37) );
  NOR3X1 U53 ( .A(clear), .B(n37), .C(n5), .Y(n51) );
  XOR2X1 U54 ( .A(n50), .B(n4), .Y(n48) );
  OAI21X1 U55 ( .A(n53), .B(n49), .C(n48), .Y(n60) );
  NAND2X1 U56 ( .A(n51), .B(n8), .Y(n52) );
  NAND2X1 U57 ( .A(n1), .B(n2), .Y(n54) );
  NAND2X1 U58 ( .A(n54), .B(n55), .Y(n58) );
  NOR2X1 U59 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n57) );
  AOI21X1 U60 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n57), .Y(n56) );
endmodule


module timerRX ( clk, n_rst, d_edge, rcving, bit_cnt, shift_stop, shift_enable, 
        byte_received, field_received );
  input [3:0] bit_cnt;
  input clk, n_rst, d_edge, rcving, shift_stop;
  output shift_enable, byte_received, field_received;
  wire   _1_net_, flag_temp, clear_temp, n1, n2, n3, n5, n6, n7, n8, n9, n10,
         n11, n12, n14;
  wire   [3:0] useless;
  wire   [3:0] clk_count;

  flex_counter_1 BITS ( .clk(clk), .n_rst(n_rst), .clear(n14), .count_enable(
        _1_net_), .rollover_val(bit_cnt), .count_out(useless), .rollover_flag(
        flag_temp) );
  flex_counter_0 CLKS ( .clk(clk), .n_rst(n_rst), .clear(clear_temp), 
        .count_enable(rcving), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .count_out(clk_count) );
  INVX1 U3 ( .A(d_edge), .Y(n2) );
  INVX4 U4 ( .A(n1), .Y(clear_temp) );
  AND2X2 U5 ( .A(n2), .B(rcving), .Y(n1) );
  INVX1 U6 ( .A(n5), .Y(n3) );
  INVX4 U7 ( .A(n3), .Y(shift_enable) );
  AND2X2 U8 ( .A(n7), .B(n8), .Y(n5) );
  INVX1 U9 ( .A(n5), .Y(n9) );
  NAND2X1 U10 ( .A(clk_count[0]), .B(clk_count[1]), .Y(n6) );
  INVX2 U11 ( .A(n6), .Y(n7) );
  INVX2 U12 ( .A(rcving), .Y(n14) );
  NOR2X1 U13 ( .A(clk_count[3]), .B(clk_count[2]), .Y(n8) );
  NOR2X1 U14 ( .A(shift_stop), .B(n9), .Y(_1_net_) );
  AND2X2 U15 ( .A(flag_temp), .B(shift_enable), .Y(field_received) );
  NAND2X1 U16 ( .A(useless[3]), .B(n5), .Y(n10) );
  NOR2X1 U17 ( .A(useless[0]), .B(n10), .Y(n12) );
  NOR2X1 U18 ( .A(useless[2]), .B(useless[1]), .Y(n11) );
  AND2X2 U19 ( .A(n12), .B(n11), .Y(byte_received) );
endmodule


module flex_counter_stuff_1 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N17, N19, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;

  DFFSR \cur_count_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \cur_count_reg[0]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  XOR2X1 U8 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n4) );
  INVX2 U9 ( .A(count_out[2]), .Y(n27) );
  XOR2X1 U10 ( .A(n27), .B(N17), .Y(n6) );
  INVX2 U11 ( .A(clear), .Y(n21) );
  INVX2 U12 ( .A(N19), .Y(n5) );
  NAND3X1 U13 ( .A(n6), .B(n21), .C(n5), .Y(n20) );
  INVX2 U14 ( .A(count_out[3]), .Y(n11) );
  XOR2X1 U15 ( .A(n11), .B(n40), .Y(n9) );
  INVX2 U16 ( .A(count_out[1]), .Y(n7) );
  XOR2X1 U17 ( .A(n7), .B(n37), .Y(n8) );
  NOR2X1 U18 ( .A(n9), .B(n8), .Y(n10) );
  NAND3X1 U19 ( .A(count_enable), .B(n4), .C(n10), .Y(n19) );
  XOR2X1 U20 ( .A(n27), .B(rollover_val[2]), .Y(n17) );
  XOR2X1 U21 ( .A(n11), .B(rollover_val[3]), .Y(n14) );
  XOR2X1 U22 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n12) );
  NOR2X1 U23 ( .A(n12), .B(n4), .Y(n13) );
  NAND3X1 U24 ( .A(n17), .B(n14), .C(n13), .Y(n22) );
  INVX2 U25 ( .A(count_enable), .Y(n18) );
  NAND2X1 U26 ( .A(n18), .B(n21), .Y(n35) );
  OAI22X1 U27 ( .A(n20), .B(n19), .C(n22), .D(n35), .Y(next_flag) );
  NAND2X1 U28 ( .A(n22), .B(n21), .Y(n26) );
  INVX2 U29 ( .A(n26), .Y(n34) );
  NAND3X1 U30 ( .A(count_out[0]), .B(n34), .C(n35), .Y(n24) );
  OAI21X1 U31 ( .A(count_out[0]), .B(n26), .C(n35), .Y(n23) );
  INVX2 U32 ( .A(n23), .Y(n25) );
  MUX2X1 U33 ( .B(n24), .A(n25), .S(count_out[1]), .Y(n43) );
  INVX2 U34 ( .A(n24), .Y(n30) );
  NAND3X1 U35 ( .A(count_out[2]), .B(count_out[1]), .C(n30), .Y(n29) );
  OAI21X1 U36 ( .A(count_out[1]), .B(n26), .C(n25), .Y(n31) );
  AOI21X1 U37 ( .A(n34), .B(n27), .C(n31), .Y(n28) );
  MUX2X1 U38 ( .B(n29), .A(n28), .S(count_out[3]), .Y(n45) );
  NAND2X1 U39 ( .A(count_out[1]), .B(n30), .Y(n33) );
  INVX2 U40 ( .A(n31), .Y(n32) );
  MUX2X1 U41 ( .B(n33), .A(n32), .S(count_out[2]), .Y(n44) );
  NAND2X1 U42 ( .A(n34), .B(n35), .Y(n36) );
  MUX2X1 U43 ( .B(n36), .A(n35), .S(count_out[0]), .Y(n42) );
  NOR2X1 U44 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n38) );
  AOI21X1 U45 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n38), .Y(n37) );
  NAND2X1 U46 ( .A(n38), .B(n41), .Y(n39) );
  OAI21X1 U47 ( .A(n38), .B(n41), .C(n39), .Y(N17) );
  NOR2X1 U48 ( .A(n39), .B(rollover_val[3]), .Y(N19) );
  AOI21X1 U49 ( .A(n39), .B(rollover_val[3]), .C(N19), .Y(n40) );
  INVX2 U50 ( .A(rollover_val[2]), .Y(n41) );
endmodule


module flex_counter_stuff_0 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N15, N17, N19, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  DFFSR \cur_count_reg[2]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[1]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  NAND3X1 U19 ( .A(n48), .B(n47), .C(n46), .Y(n49) );
  XNOR2X1 U21 ( .A(count_out[2]), .B(N17), .Y(n47) );
  XNOR2X1 U22 ( .A(count_out[0]), .B(N15), .Y(n48) );
  NAND3X1 U23 ( .A(n45), .B(count_enable), .C(n44), .Y(n50) );
  NOR2X1 U24 ( .A(clear), .B(N19), .Y(n44) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \cur_count_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[3]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  XOR2X1 U8 ( .A(count_out[1]), .B(n35), .Y(n46) );
  XOR2X1 U9 ( .A(count_out[3]), .B(n38), .Y(n45) );
  XOR2X1 U10 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n5) );
  XOR2X1 U11 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n4) );
  NOR2X1 U12 ( .A(n5), .B(n4), .Y(n8) );
  XNOR2X1 U13 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n7) );
  XNOR2X1 U14 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n6) );
  NAND3X1 U15 ( .A(n8), .B(n7), .C(n6), .Y(n11) );
  INVX2 U16 ( .A(count_enable), .Y(n9) );
  INVX2 U17 ( .A(clear), .Y(n10) );
  NAND2X1 U18 ( .A(n9), .B(n10), .Y(n26) );
  OAI22X1 U20 ( .A(n11), .B(n26), .C(n49), .D(n50), .Y(next_flag) );
  NAND2X1 U25 ( .A(n11), .B(n10), .Y(n17) );
  INVX2 U26 ( .A(n17), .Y(n25) );
  NAND3X1 U27 ( .A(count_out[0]), .B(n25), .C(n26), .Y(n13) );
  OAI21X1 U28 ( .A(count_out[0]), .B(n17), .C(n26), .Y(n12) );
  INVX2 U29 ( .A(n12), .Y(n15) );
  MUX2X1 U30 ( .B(n13), .A(n15), .S(count_out[1]), .Y(n41) );
  INVX2 U31 ( .A(n13), .Y(n21) );
  NAND3X1 U32 ( .A(count_out[2]), .B(count_out[1]), .C(n21), .Y(n20) );
  INVX2 U33 ( .A(count_out[2]), .Y(n18) );
  OAI21X1 U34 ( .A(count_out[1]), .B(n17), .C(n15), .Y(n22) );
  AOI21X1 U35 ( .A(n25), .B(n18), .C(n22), .Y(n19) );
  MUX2X1 U36 ( .B(n20), .A(n19), .S(count_out[3]), .Y(n43) );
  NAND2X1 U37 ( .A(count_out[1]), .B(n21), .Y(n24) );
  INVX2 U38 ( .A(n22), .Y(n23) );
  MUX2X1 U39 ( .B(n24), .A(n23), .S(count_out[2]), .Y(n42) );
  NAND2X1 U40 ( .A(n25), .B(n26), .Y(n34) );
  MUX2X1 U41 ( .B(n34), .A(n26), .S(count_out[0]), .Y(n40) );
  NOR2X1 U42 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n36) );
  AOI21X1 U43 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n36), .Y(n35) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n37) );
  OAI21X1 U45 ( .A(n36), .B(n39), .C(n37), .Y(N17) );
  NOR2X1 U46 ( .A(n37), .B(rollover_val[3]), .Y(N19) );
  AOI21X1 U47 ( .A(n37), .B(rollover_val[3]), .C(N19), .Y(n38) );
  INVX2 U48 ( .A(rollover_val[2]), .Y(n39) );
  INVX2 U49 ( .A(rollover_val[0]), .Y(N15) );
endmodule


module bit_unstuff ( clk, n_rst, d_orig, d_edge, shift_enable, shift_stop );
  input clk, n_rst, d_orig, d_edge, shift_enable;
  output shift_stop;
  wire   \cur_state[1] , stop_prep, cnt_done, cnt_clear, _0_net_, n7, n9, n2,
         n3, n4, n5;
  assign shift_stop = \cur_state[1] ;

  DFFSR \cur_state_reg[1]  ( .D(n9), .CLK(clk), .R(n2), .S(1'b1), .Q(
        \cur_state[1] ) );
  OAI21X1 U12 ( .A(n4), .B(\cur_state[1] ), .C(n7), .Y(n9) );
  NOR2X1 U15 ( .A(\cur_state[1] ), .B(n4), .Y(cnt_clear) );
  flex_counter_stuff_1 ONES ( .clk(clk), .n_rst(n2), .clear(d_edge), 
        .count_enable(_0_net_), .rollover_val({1'b0, 1'b1, 1'b1, 1'b0}), 
        .rollover_flag(stop_prep) );
  flex_counter_stuff_0 CLKS ( .clk(clk), .n_rst(n2), .clear(cnt_clear), 
        .count_enable(\cur_state[1] ), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(cnt_done) );
  INVX2 U4 ( .A(n3), .Y(n2) );
  INVX2 U5 ( .A(n_rst), .Y(n3) );
  AND2X2 U6 ( .A(shift_enable), .B(d_orig), .Y(_0_net_) );
  INVX2 U7 ( .A(stop_prep), .Y(n4) );
  INVX2 U8 ( .A(cnt_done), .Y(n5) );
  NAND2X1 U9 ( .A(n5), .B(\cur_state[1] ), .Y(n7) );
endmodule


module crc_check_5bit ( clk, n_rst, shift_enable, serial_in, eop, shift_stop, 
        crc_rcv, sync_rst, parallel_out );
  output [4:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in, eop, shift_stop, crc_rcv,
         sync_rst;
  wire   n20, n21, n22, n23, n24, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n25, n26;

  DFFSR \out_tmp_reg[0]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \out_tmp_reg[1]  ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \out_tmp_reg[2]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \out_tmp_reg[3]  ( .D(n21), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \out_tmp_reg[4]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  NOR2X1 U8 ( .A(n11), .B(n10), .Y(n6) );
  NOR2X1 U9 ( .A(n11), .B(n10), .Y(n7) );
  INVX1 U10 ( .A(crc_rcv), .Y(n12) );
  OAI21X1 U11 ( .A(crc_rcv), .B(sync_rst), .C(shift_enable), .Y(n11) );
  INVX2 U12 ( .A(eop), .Y(n9) );
  INVX2 U13 ( .A(shift_stop), .Y(n8) );
  NAND2X1 U14 ( .A(n9), .B(n8), .Y(n10) );
  NOR2X1 U15 ( .A(n11), .B(n10), .Y(n18) );
  NAND2X1 U16 ( .A(n7), .B(n12), .Y(n26) );
  MUX2X1 U17 ( .B(parallel_out[4]), .A(parallel_out[3]), .S(n18), .Y(n13) );
  NAND2X1 U18 ( .A(n26), .B(n13), .Y(n20) );
  MUX2X1 U19 ( .B(parallel_out[3]), .A(parallel_out[2]), .S(n7), .Y(n14) );
  NAND2X1 U20 ( .A(n26), .B(n14), .Y(n21) );
  XOR2X1 U21 ( .A(parallel_out[1]), .B(parallel_out[4]), .Y(n15) );
  MUX2X1 U22 ( .B(parallel_out[2]), .A(n15), .S(n18), .Y(n16) );
  NAND2X1 U23 ( .A(n26), .B(n16), .Y(n22) );
  MUX2X1 U24 ( .B(parallel_out[1]), .A(parallel_out[0]), .S(n6), .Y(n17) );
  NAND2X1 U25 ( .A(n26), .B(n17), .Y(n23) );
  XOR2X1 U26 ( .A(serial_in), .B(parallel_out[4]), .Y(n19) );
  MUX2X1 U27 ( .B(parallel_out[0]), .A(n19), .S(n6), .Y(n25) );
  NAND2X1 U28 ( .A(n26), .B(n25), .Y(n24) );
endmodule


module crc_check_16bit ( clk, n_rst, shift_enable, serial_in, eop, shift_stop, 
        crc_rcv, sync_rst, parallel_out );
  output [15:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in, eop, shift_stop, crc_rcv,
         sync_rst;
  wire   n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45;

  DFFSR \out_tmp_reg[0]  ( .D(n70), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[0]) );
  DFFSR \out_tmp_reg[1]  ( .D(n69), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[1]) );
  DFFSR \out_tmp_reg[2]  ( .D(n68), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[2]) );
  DFFSR \out_tmp_reg[3]  ( .D(n67), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[3]) );
  DFFSR \out_tmp_reg[4]  ( .D(n66), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[4]) );
  DFFSR \out_tmp_reg[5]  ( .D(n65), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[5]) );
  DFFSR \out_tmp_reg[6]  ( .D(n64), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[6]) );
  DFFSR \out_tmp_reg[7]  ( .D(n63), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[7]) );
  DFFSR \out_tmp_reg[8]  ( .D(n62), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[8]) );
  DFFSR \out_tmp_reg[9]  ( .D(n61), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[9]) );
  DFFSR \out_tmp_reg[10]  ( .D(n60), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[10]) );
  DFFSR \out_tmp_reg[11]  ( .D(n59), .CLK(clk), .R(1'b1), .S(n20), .Q(
        parallel_out[11]) );
  DFFSR \out_tmp_reg[12]  ( .D(n58), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[12]) );
  DFFSR \out_tmp_reg[13]  ( .D(n57), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[13]) );
  DFFSR \out_tmp_reg[14]  ( .D(n56), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[14]) );
  DFFSR \out_tmp_reg[15]  ( .D(n55), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[15]) );
  INVX4 U19 ( .A(n24), .Y(n17) );
  INVX1 U20 ( .A(n24), .Y(n43) );
  OR2X2 U21 ( .A(n22), .B(n23), .Y(n24) );
  INVX2 U22 ( .A(n21), .Y(n20) );
  AND2X2 U23 ( .A(n43), .B(n25), .Y(n18) );
  INVX2 U24 ( .A(n_rst), .Y(n21) );
  INVX1 U25 ( .A(crc_rcv), .Y(n25) );
  INVX8 U26 ( .A(n18), .Y(n19) );
  OR2X1 U27 ( .A(eop), .B(shift_stop), .Y(n23) );
  OAI21X1 U28 ( .A(sync_rst), .B(crc_rcv), .C(shift_enable), .Y(n22) );
  NAND2X1 U29 ( .A(parallel_out[14]), .B(n43), .Y(n26) );
  XOR2X1 U30 ( .A(n26), .B(parallel_out[15]), .Y(n27) );
  NAND2X1 U31 ( .A(n19), .B(n27), .Y(n55) );
  MUX2X1 U32 ( .B(parallel_out[14]), .A(parallel_out[13]), .S(n17), .Y(n28) );
  NAND2X1 U33 ( .A(n19), .B(n28), .Y(n56) );
  MUX2X1 U34 ( .B(parallel_out[13]), .A(parallel_out[12]), .S(n17), .Y(n29) );
  NAND2X1 U35 ( .A(n19), .B(n29), .Y(n57) );
  MUX2X1 U36 ( .B(parallel_out[12]), .A(parallel_out[11]), .S(n17), .Y(n30) );
  NAND2X1 U37 ( .A(n19), .B(n30), .Y(n58) );
  MUX2X1 U38 ( .B(parallel_out[11]), .A(parallel_out[10]), .S(n17), .Y(n31) );
  NAND2X1 U39 ( .A(n19), .B(n31), .Y(n59) );
  MUX2X1 U40 ( .B(parallel_out[10]), .A(parallel_out[9]), .S(n17), .Y(n32) );
  NAND2X1 U41 ( .A(n19), .B(n32), .Y(n60) );
  MUX2X1 U42 ( .B(parallel_out[9]), .A(parallel_out[8]), .S(n17), .Y(n33) );
  NAND2X1 U43 ( .A(n19), .B(n33), .Y(n61) );
  MUX2X1 U44 ( .B(parallel_out[8]), .A(parallel_out[7]), .S(n17), .Y(n34) );
  NAND2X1 U45 ( .A(n19), .B(n34), .Y(n62) );
  MUX2X1 U46 ( .B(parallel_out[7]), .A(parallel_out[6]), .S(n17), .Y(n35) );
  NAND2X1 U47 ( .A(n19), .B(n35), .Y(n63) );
  MUX2X1 U48 ( .B(parallel_out[6]), .A(parallel_out[5]), .S(n17), .Y(n36) );
  NAND2X1 U49 ( .A(n19), .B(n36), .Y(n64) );
  MUX2X1 U50 ( .B(parallel_out[5]), .A(parallel_out[4]), .S(n17), .Y(n37) );
  NAND2X1 U51 ( .A(n19), .B(n37), .Y(n65) );
  MUX2X1 U52 ( .B(parallel_out[4]), .A(parallel_out[3]), .S(n17), .Y(n38) );
  NAND2X1 U53 ( .A(n19), .B(n38), .Y(n66) );
  MUX2X1 U54 ( .B(parallel_out[3]), .A(parallel_out[2]), .S(n17), .Y(n39) );
  NAND2X1 U55 ( .A(n19), .B(n39), .Y(n67) );
  XOR2X1 U56 ( .A(parallel_out[1]), .B(parallel_out[15]), .Y(n40) );
  MUX2X1 U57 ( .B(parallel_out[2]), .A(n40), .S(n17), .Y(n41) );
  NAND2X1 U58 ( .A(n19), .B(n41), .Y(n68) );
  MUX2X1 U59 ( .B(parallel_out[1]), .A(parallel_out[0]), .S(n17), .Y(n42) );
  NAND2X1 U60 ( .A(n19), .B(n42), .Y(n69) );
  XOR2X1 U61 ( .A(serial_in), .B(parallel_out[15]), .Y(n44) );
  MUX2X1 U62 ( .B(parallel_out[0]), .A(n44), .S(n17), .Y(n45) );
  NAND2X1 U63 ( .A(n19), .B(n45), .Y(n70) );
endmodule


module rcu ( clk, n_rst, d_edge, eop, shift_enable, rcv_data, crc5_data, 
        crc16_data, byte_received, field_received, sync_rst, pid, rcving, 
        w_enable, r_error, crc_rcv, pid_rdy, bit_cnt, packet_done, clear );
  input [7:0] rcv_data;
  input [4:0] crc5_data;
  input [15:0] crc16_data;
  output [3:0] pid;
  output [3:0] bit_cnt;
  output [1:0] packet_done;
  input clk, n_rst, d_edge, eop, shift_enable, byte_received, field_received;
  output sync_rst, rcving, w_enable, r_error, crc_rcv, pid_rdy, clear;
  wire   n404, N751, N752, N753, N754, N755, N756, N757, N758, N759, N760,
         N761, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n205, n206, n207, n208,
         n209, n211, n212, n330, n331, n332, n333, n334, n335, n1, n2, n3, n4,
         n11, n12, n13, n15, n16, n17, n18, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n210, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n397, n402, n403;
  wire   [6:0] cur_state;
  wire   [6:0] valid_addr;

  DFFSR \cur_state_reg[0]  ( .D(n335), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        cur_state[0]) );
  DFFSR \cur_state_reg[5]  ( .D(n330), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[5]) );
  DFFSR \cur_state_reg[3]  ( .D(n332), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        cur_state[3]) );
  DFFSR \cur_state_reg[2]  ( .D(n333), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        cur_state[2]) );
  DFFSR \cur_state_reg[4]  ( .D(n331), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[4]) );
  DFFSR \cur_state_reg[1]  ( .D(n334), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        cur_state[1]) );
  INVX2 U12 ( .A(pid[0]), .Y(n78) );
  INVX2 U13 ( .A(pid[1]), .Y(n80) );
  INVX2 U14 ( .A(pid[2]), .Y(n82) );
  INVX2 U15 ( .A(pid[3]), .Y(n84) );
  INVX2 U16 ( .A(valid_addr[3]), .Y(n92) );
  INVX2 U17 ( .A(valid_addr[4]), .Y(n94) );
  INVX2 U23 ( .A(valid_addr[6]), .Y(n98) );
  INVX2 U24 ( .A(valid_addr[5]), .Y(n96) );
  INVX2 U25 ( .A(valid_addr[1]), .Y(n88) );
  INVX2 U26 ( .A(valid_addr[2]), .Y(n90) );
  INVX2 U27 ( .A(valid_addr[0]), .Y(n86) );
  OAI21X1 U110 ( .A(1'b1), .B(n78), .C(n79), .Y(pid[0]) );
  NAND2X1 U111 ( .A(N758), .B(1'b1), .Y(n79) );
  OAI21X1 U112 ( .A(1'b1), .B(n80), .C(n81), .Y(pid[1]) );
  NAND2X1 U113 ( .A(N759), .B(1'b1), .Y(n81) );
  OAI21X1 U114 ( .A(1'b1), .B(n82), .C(n83), .Y(pid[2]) );
  NAND2X1 U115 ( .A(N760), .B(1'b1), .Y(n83) );
  OAI21X1 U116 ( .A(1'b1), .B(n84), .C(n85), .Y(pid[3]) );
  NAND2X1 U117 ( .A(N761), .B(1'b1), .Y(n85) );
  OAI21X1 U118 ( .A(1'b1), .B(n86), .C(n87), .Y(valid_addr[0]) );
  NAND2X1 U119 ( .A(N751), .B(1'b1), .Y(n87) );
  OAI21X1 U120 ( .A(1'b1), .B(n88), .C(n89), .Y(valid_addr[1]) );
  NAND2X1 U121 ( .A(N752), .B(1'b1), .Y(n89) );
  OAI21X1 U122 ( .A(1'b1), .B(n90), .C(n91), .Y(valid_addr[2]) );
  NAND2X1 U123 ( .A(N753), .B(1'b1), .Y(n91) );
  OAI21X1 U124 ( .A(1'b1), .B(n92), .C(n93), .Y(valid_addr[3]) );
  NAND2X1 U125 ( .A(N754), .B(1'b1), .Y(n93) );
  OAI21X1 U126 ( .A(1'b1), .B(n94), .C(n95), .Y(valid_addr[4]) );
  NAND2X1 U127 ( .A(N755), .B(1'b1), .Y(n95) );
  OAI21X1 U128 ( .A(1'b1), .B(n96), .C(n97), .Y(valid_addr[5]) );
  NAND2X1 U129 ( .A(N756), .B(1'b1), .Y(n97) );
  OAI21X1 U130 ( .A(1'b1), .B(n98), .C(n99), .Y(valid_addr[6]) );
  NAND2X1 U131 ( .A(N757), .B(1'b1), .Y(n99) );
  XOR2X1 U195 ( .A(n98), .B(n20), .Y(n207) );
  XOR2X1 U196 ( .A(n96), .B(rcv_data[6]), .Y(n206) );
  XOR2X1 U197 ( .A(n88), .B(rcv_data[2]), .Y(n205) );
  XOR2X1 U200 ( .A(valid_addr[4]), .B(rcv_data[5]), .Y(n212) );
  XOR2X1 U201 ( .A(valid_addr[3]), .B(rcv_data[4]), .Y(n211) );
  XOR2X1 U202 ( .A(n90), .B(n18), .Y(n209) );
  XOR2X1 U203 ( .A(n86), .B(rcv_data[1]), .Y(n208) );
  INVX1 U4 ( .A(n391), .Y(n226) );
  INVX1 U11 ( .A(n318), .Y(n308) );
  BUFX2 U18 ( .A(n315), .Y(n1) );
  INVX1 U19 ( .A(n218), .Y(n2) );
  AND2X2 U20 ( .A(n243), .B(n267), .Y(n3) );
  INVX1 U21 ( .A(n3), .Y(n292) );
  BUFX2 U22 ( .A(n16), .Y(n4) );
  BUFX2 U28 ( .A(n74), .Y(n11) );
  BUFX2 U29 ( .A(n69), .Y(n12) );
  INVX1 U30 ( .A(cur_state[0]), .Y(n13) );
  INVX1 U31 ( .A(cur_state[0]), .Y(n393) );
  INVX1 U32 ( .A(cur_state[5]), .Y(n15) );
  INVX1 U33 ( .A(cur_state[5]), .Y(n36) );
  INVX2 U34 ( .A(cur_state[1]), .Y(n403) );
  AND2X2 U35 ( .A(n35), .B(n242), .Y(n16) );
  OR2X1 U36 ( .A(n340), .B(n341), .Y(n17) );
  BUFX4 U37 ( .A(rcv_data[3]), .Y(n18) );
  NAND2X1 U38 ( .A(n232), .B(n321), .Y(clear) );
  AND2X2 U39 ( .A(n69), .B(n147), .Y(n46) );
  BUFX4 U40 ( .A(rcv_data[7]), .Y(n20) );
  INVX1 U41 ( .A(n77), .Y(n21) );
  INVX1 U42 ( .A(n21), .Y(n22) );
  INVX1 U43 ( .A(n397), .Y(n152) );
  INVX1 U44 ( .A(cur_state[5]), .Y(n101) );
  INVX2 U45 ( .A(n115), .Y(n75) );
  BUFX4 U46 ( .A(n392), .Y(n23) );
  INVX1 U47 ( .A(n117), .Y(n24) );
  BUFX4 U48 ( .A(n290), .Y(n25) );
  INVX2 U49 ( .A(n33), .Y(n26) );
  INVX2 U50 ( .A(n192), .Y(n33) );
  INVX1 U51 ( .A(n123), .Y(n27) );
  INVX2 U52 ( .A(n325), .Y(n28) );
  INVX2 U53 ( .A(n181), .Y(n325) );
  INVX2 U54 ( .A(n39), .Y(n29) );
  INVX2 U55 ( .A(n402), .Y(n39) );
  INVX2 U56 ( .A(n100), .Y(n30) );
  AND2X2 U57 ( .A(n110), .B(n69), .Y(n47) );
  INVX2 U58 ( .A(n403), .Y(n31) );
  INVX1 U59 ( .A(n31), .Y(n32) );
  NAND2X1 U60 ( .A(n34), .B(n357), .Y(n35) );
  INVX1 U61 ( .A(n148), .Y(n34) );
  AND2X1 U62 ( .A(n129), .B(n243), .Y(n130) );
  BUFX4 U63 ( .A(n102), .Y(n37) );
  INVX1 U64 ( .A(n210), .Y(n327) );
  NOR2X1 U65 ( .A(n342), .B(n17), .Y(n344) );
  NAND2X1 U66 ( .A(n11), .B(n357), .Y(n38) );
  AND2X2 U67 ( .A(n131), .B(n374), .Y(n42) );
  BUFX2 U68 ( .A(n397), .Y(crc_rcv) );
  OR2X2 U69 ( .A(n125), .B(n126), .Y(bit_cnt[2]) );
  INVX2 U70 ( .A(n357), .Y(n108) );
  AND2X2 U71 ( .A(n42), .B(n3), .Y(n41) );
  AND2X2 U72 ( .A(n358), .B(n309), .Y(n43) );
  INVX2 U73 ( .A(n57), .Y(n64) );
  AND2X2 U74 ( .A(n403), .B(n13), .Y(n44) );
  AND2X2 U75 ( .A(cur_state[3]), .B(n101), .Y(n45) );
  MUX2X1 U76 ( .B(n30), .A(n394), .S(n23), .Y(n335) );
  MUX2X1 U77 ( .B(n367), .A(n368), .S(n366), .Y(n379) );
  BUFX2 U78 ( .A(n39), .Y(n66) );
  NOR2X1 U79 ( .A(n37), .B(n32), .Y(n48) );
  NAND3X1 U80 ( .A(n68), .B(n29), .C(n48), .Y(n54) );
  NAND3X1 U81 ( .A(n100), .B(n63), .C(n12), .Y(n53) );
  NAND2X1 U82 ( .A(pid[0]), .B(n53), .Y(n49) );
  OAI21X1 U83 ( .A(n53), .B(n269), .C(n49), .Y(N758) );
  NAND2X1 U84 ( .A(pid[1]), .B(n53), .Y(n50) );
  OAI21X1 U85 ( .A(n53), .B(n271), .C(n50), .Y(N759) );
  NAND2X1 U86 ( .A(pid[2]), .B(n53), .Y(n51) );
  OAI21X1 U87 ( .A(n53), .B(n270), .C(n51), .Y(N760) );
  NAND2X1 U88 ( .A(pid[3]), .B(n53), .Y(n52) );
  OAI21X1 U89 ( .A(n53), .B(n65), .C(n52), .Y(N761) );
  NOR3X1 U90 ( .A(n54), .B(n100), .C(n12), .Y(n57) );
  AOI22X1 U91 ( .A(rcv_data[1]), .B(n57), .C(valid_addr[0]), .D(n64), .Y(n55)
         );
  INVX1 U92 ( .A(n55), .Y(N751) );
  AOI22X1 U93 ( .A(rcv_data[2]), .B(n57), .C(valid_addr[1]), .D(n64), .Y(n56)
         );
  INVX1 U94 ( .A(n56), .Y(N752) );
  AOI22X1 U95 ( .A(n18), .B(n57), .C(valid_addr[2]), .D(n64), .Y(n58) );
  INVX1 U96 ( .A(n58), .Y(N753) );
  NAND2X1 U97 ( .A(valid_addr[3]), .B(n64), .Y(n59) );
  OAI21X1 U98 ( .A(n64), .B(n269), .C(n59), .Y(N754) );
  NAND2X1 U99 ( .A(valid_addr[4]), .B(n64), .Y(n60) );
  OAI21X1 U100 ( .A(n64), .B(n271), .C(n60), .Y(N755) );
  NAND2X1 U101 ( .A(valid_addr[5]), .B(n64), .Y(n61) );
  OAI21X1 U102 ( .A(n64), .B(n270), .C(n61), .Y(N756) );
  NAND2X1 U103 ( .A(valid_addr[6]), .B(n64), .Y(n62) );
  OAI21X1 U104 ( .A(n64), .B(n65), .C(n62), .Y(N757) );
  INVX2 U105 ( .A(n54), .Y(n63) );
  INVX2 U106 ( .A(n20), .Y(n65) );
  INVX1 U107 ( .A(n137), .Y(n104) );
  INVX2 U108 ( .A(n15), .Y(n102) );
  INVX1 U109 ( .A(n251), .Y(n338) );
  BUFX2 U132 ( .A(cur_state[2]), .Y(n67) );
  BUFX2 U133 ( .A(cur_state[2]), .Y(n68) );
  BUFX4 U134 ( .A(cur_state[4]), .Y(n69) );
  BUFX2 U135 ( .A(n373), .Y(n76) );
  INVX1 U136 ( .A(n141), .Y(n70) );
  INVX1 U137 ( .A(n70), .Y(n71) );
  INVX2 U138 ( .A(n116), .Y(n73) );
  INVX1 U139 ( .A(n136), .Y(n72) );
  INVX1 U140 ( .A(n267), .Y(n123) );
  INVX1 U141 ( .A(n129), .Y(n142) );
  AND2X2 U142 ( .A(n110), .B(n146), .Y(n74) );
  AND2X2 U143 ( .A(n299), .B(n251), .Y(n77) );
  INVX1 U144 ( .A(n77), .Y(n121) );
  INVX1 U145 ( .A(n393), .Y(n100) );
  INVX2 U146 ( .A(n67), .Y(n307) );
  BUFX2 U147 ( .A(n299), .Y(n103) );
  INVX2 U148 ( .A(n128), .Y(n141) );
  INVX1 U149 ( .A(n373), .Y(n183) );
  NOR2X1 U150 ( .A(n296), .B(n105), .Y(n138) );
  NAND2X1 U151 ( .A(n77), .B(n104), .Y(n105) );
  INVX1 U152 ( .A(n257), .Y(n258) );
  INVX1 U153 ( .A(n324), .Y(n106) );
  BUFX2 U154 ( .A(n278), .Y(n107) );
  INVX2 U155 ( .A(cur_state[4]), .Y(n146) );
  INVX1 U156 ( .A(n228), .Y(n324) );
  INVX4 U157 ( .A(n180), .Y(n357) );
  OR2X2 U158 ( .A(n128), .B(n108), .Y(n278) );
  INVX1 U159 ( .A(rcving), .Y(n176) );
  INVX4 U160 ( .A(n365), .Y(n192) );
  INVX4 U161 ( .A(n197), .Y(n149) );
  INVX2 U162 ( .A(cur_state[3]), .Y(n402) );
  NAND3X1 U163 ( .A(n402), .B(n36), .C(n67), .Y(n109) );
  INVX2 U164 ( .A(n109), .Y(n110) );
  NAND2X1 U165 ( .A(n11), .B(n44), .Y(n232) );
  NAND2X1 U166 ( .A(n31), .B(n393), .Y(n365) );
  NAND2X1 U167 ( .A(n47), .B(n192), .Y(n321) );
  NAND2X1 U168 ( .A(n232), .B(n321), .Y(n404) );
  NOR2X1 U169 ( .A(n69), .B(n68), .Y(n112) );
  NAND3X1 U170 ( .A(n37), .B(n66), .C(n112), .Y(n190) );
  NAND3X1 U171 ( .A(n102), .B(n402), .C(n146), .Y(n113) );
  INVX2 U172 ( .A(n113), .Y(n127) );
  NAND2X1 U173 ( .A(n68), .B(n127), .Y(n364) );
  NAND2X1 U174 ( .A(n190), .B(n364), .Y(n114) );
  NAND2X1 U175 ( .A(n44), .B(n114), .Y(n253) );
  INVX2 U176 ( .A(n253), .Y(packet_done[0]) );
  NAND2X1 U177 ( .A(cur_state[0]), .B(n403), .Y(n197) );
  NAND2X1 U178 ( .A(n149), .B(n114), .Y(n174) );
  INVX2 U179 ( .A(n174), .Y(packet_done[1]) );
  NAND3X1 U180 ( .A(n307), .B(n69), .C(n45), .Y(n115) );
  NAND2X1 U181 ( .A(n75), .B(n192), .Y(n373) );
  NAND2X1 U182 ( .A(n149), .B(n74), .Y(n290) );
  INVX2 U183 ( .A(n290), .Y(n122) );
  NOR2X1 U184 ( .A(n183), .B(n122), .Y(n120) );
  NAND3X1 U185 ( .A(n68), .B(n69), .C(n45), .Y(n116) );
  NAND2X1 U186 ( .A(cur_state[0]), .B(cur_state[1]), .Y(n180) );
  OAI21X1 U187 ( .A(n73), .B(n75), .C(n357), .Y(n181) );
  NAND2X1 U188 ( .A(n74), .B(n192), .Y(n299) );
  NAND2X1 U189 ( .A(n73), .B(n149), .Y(n251) );
  NOR2X1 U190 ( .A(n325), .B(n121), .Y(n119) );
  NAND3X1 U191 ( .A(n146), .B(n307), .C(n45), .Y(n117) );
  INVX2 U192 ( .A(n117), .Y(n173) );
  NAND2X1 U193 ( .A(n173), .B(n44), .Y(n374) );
  NAND2X1 U194 ( .A(n73), .B(n44), .Y(n267) );
  AND2X2 U198 ( .A(n374), .B(n27), .Y(n118) );
  NAND3X1 U199 ( .A(n120), .B(n119), .C(n118), .Y(bit_cnt[0]) );
  NOR2X1 U204 ( .A(n123), .B(n122), .Y(n124) );
  NAND3X1 U205 ( .A(n22), .B(n76), .C(n124), .Y(bit_cnt[1]) );
  NAND2X1 U206 ( .A(n11), .B(n357), .Y(n131) );
  NAND3X1 U207 ( .A(n77), .B(n25), .C(n42), .Y(n125) );
  NAND2X1 U208 ( .A(n73), .B(n192), .Y(n243) );
  NAND2X1 U209 ( .A(n3), .B(n28), .Y(n126) );
  NOR2X1 U210 ( .A(n126), .B(n125), .Y(bit_cnt[3]) );
  NAND2X1 U211 ( .A(n357), .B(n47), .Y(n383) );
  INVX2 U212 ( .A(n383), .Y(pid_rdy) );
  NAND2X1 U213 ( .A(n127), .B(n307), .Y(n128) );
  NAND2X1 U214 ( .A(n141), .B(n192), .Y(n145) );
  NAND3X1 U215 ( .A(n68), .B(n146), .C(n45), .Y(n185) );
  INVX2 U216 ( .A(n185), .Y(n136) );
  NAND2X1 U217 ( .A(n136), .B(n192), .Y(n129) );
  NAND3X1 U218 ( .A(n38), .B(n145), .C(n130), .Y(n133) );
  NAND2X1 U219 ( .A(n141), .B(n44), .Y(n257) );
  NAND3X1 U220 ( .A(n257), .B(n374), .C(n290), .Y(n132) );
  NOR2X1 U221 ( .A(n132), .B(n133), .Y(n139) );
  NAND2X1 U222 ( .A(n173), .B(n192), .Y(n375) );
  INVX2 U223 ( .A(n375), .Y(n135) );
  NAND2X1 U224 ( .A(n24), .B(n149), .Y(n203) );
  NAND2X1 U225 ( .A(n136), .B(n44), .Y(n229) );
  NAND3X1 U226 ( .A(n373), .B(n229), .C(n203), .Y(n134) );
  NOR2X1 U227 ( .A(n135), .B(n134), .Y(n315) );
  NAND2X1 U228 ( .A(n75), .B(n44), .Y(n228) );
  NAND2X1 U229 ( .A(n278), .B(n228), .Y(n296) );
  NAND2X1 U230 ( .A(n136), .B(n149), .Y(n240) );
  NAND3X1 U231 ( .A(n267), .B(n240), .C(n181), .Y(n137) );
  NAND3X1 U232 ( .A(n315), .B(n139), .C(n138), .Y(n397) );
  NAND3X1 U233 ( .A(n29), .B(n36), .C(n307), .Y(n140) );
  INVX2 U234 ( .A(n140), .Y(n147) );
  NAND2X1 U235 ( .A(n149), .B(n46), .Y(n254) );
  NAND2X1 U236 ( .A(n71), .B(n149), .Y(n210) );
  NOR2X1 U237 ( .A(n327), .B(n142), .Y(n144) );
  AND2X2 U238 ( .A(n375), .B(n174), .Y(n143) );
  NAND3X1 U239 ( .A(n254), .B(n144), .C(n143), .Y(r_error) );
  INVX2 U240 ( .A(n145), .Y(w_enable) );
  NAND2X1 U241 ( .A(n147), .B(n146), .Y(n148) );
  NAND2X1 U242 ( .A(n47), .B(n149), .Y(n242) );
  INVX2 U243 ( .A(n148), .Y(n193) );
  NAND2X1 U244 ( .A(n193), .B(n149), .Y(n227) );
  NAND2X1 U245 ( .A(n16), .B(n227), .Y(n195) );
  NOR2X1 U246 ( .A(n404), .B(n195), .Y(n154) );
  NAND2X1 U247 ( .A(n26), .B(n193), .Y(n372) );
  NAND2X1 U248 ( .A(n75), .B(n149), .Y(n336) );
  NAND3X1 U249 ( .A(n372), .B(n336), .C(n383), .Y(n151) );
  NAND2X1 U250 ( .A(n47), .B(n44), .Y(n359) );
  NAND2X1 U251 ( .A(n357), .B(n46), .Y(n277) );
  NAND3X1 U252 ( .A(n359), .B(n210), .C(n277), .Y(n150) );
  NOR2X1 U253 ( .A(n151), .B(n150), .Y(n153) );
  NAND3X1 U254 ( .A(n154), .B(n153), .C(n152), .Y(rcving) );
  NAND2X1 U255 ( .A(n16), .B(n383), .Y(sync_rst) );
  XOR2X1 U256 ( .A(n20), .B(n18), .Y(n155) );
  NAND2X1 U257 ( .A(rcv_data[2]), .B(n155), .Y(n159) );
  INVX2 U258 ( .A(n159), .Y(n158) );
  NOR2X1 U259 ( .A(rcv_data[0]), .B(rcv_data[5]), .Y(n156) );
  NAND3X1 U260 ( .A(rcv_data[1]), .B(rcv_data[4]), .C(n156), .Y(n157) );
  INVX2 U261 ( .A(n157), .Y(n234) );
  INVX2 U262 ( .A(rcv_data[6]), .Y(n270) );
  NAND3X1 U263 ( .A(n158), .B(n234), .C(n270), .Y(n287) );
  INVX2 U264 ( .A(rcv_data[5]), .Y(n271) );
  INVX2 U265 ( .A(rcv_data[0]), .Y(n273) );
  NOR2X1 U266 ( .A(n271), .B(n273), .Y(n162) );
  INVX2 U267 ( .A(rcv_data[2]), .Y(n164) );
  INVX2 U268 ( .A(rcv_data[3]), .Y(n166) );
  NAND3X1 U269 ( .A(n20), .B(n164), .C(n166), .Y(n233) );
  MUX2X1 U270 ( .B(n159), .A(n233), .S(rcv_data[6]), .Y(n161) );
  NOR2X1 U271 ( .A(rcv_data[1]), .B(rcv_data[4]), .Y(n160) );
  NAND3X1 U272 ( .A(n162), .B(n161), .C(n160), .Y(n384) );
  NAND2X1 U273 ( .A(n287), .B(n384), .Y(n172) );
  INVX2 U274 ( .A(rcv_data[1]), .Y(n272) );
  NOR2X1 U275 ( .A(n20), .B(rcv_data[6]), .Y(n163) );
  NAND3X1 U276 ( .A(n273), .B(n272), .C(n163), .Y(n170) );
  NOR2X1 U277 ( .A(n164), .B(n166), .Y(n165) );
  NAND3X1 U278 ( .A(rcv_data[4]), .B(rcv_data[5]), .C(n165), .Y(n169) );
  NOR2X1 U279 ( .A(n270), .B(n166), .Y(n168) );
  NOR2X1 U280 ( .A(n20), .B(rcv_data[2]), .Y(n167) );
  NAND3X1 U281 ( .A(n168), .B(n234), .C(n167), .Y(n237) );
  OAI21X1 U282 ( .A(n170), .B(n169), .C(n237), .Y(n171) );
  OR2X1 U283 ( .A(n172), .B(n171), .Y(n244) );
  NAND2X1 U284 ( .A(n24), .B(n357), .Y(n191) );
  NAND2X1 U285 ( .A(n44), .B(n46), .Y(n179) );
  NAND3X1 U286 ( .A(n191), .B(n364), .C(n179), .Y(n178) );
  OAI21X1 U287 ( .A(n180), .B(n72), .C(n174), .Y(n175) );
  INVX2 U288 ( .A(n175), .Y(n281) );
  NAND3X1 U289 ( .A(n281), .B(n176), .C(n253), .Y(n177) );
  OAI22X1 U290 ( .A(n383), .B(n244), .C(n178), .D(n177), .Y(n391) );
  INVX2 U291 ( .A(n179), .Y(n188) );
  NAND2X1 U292 ( .A(n180), .B(n33), .Y(n309) );
  INVX2 U293 ( .A(n309), .Y(n186) );
  NAND3X1 U294 ( .A(n28), .B(n25), .C(n41), .Y(n220) );
  INVX2 U295 ( .A(field_received), .Y(n182) );
  OAI21X1 U296 ( .A(n183), .B(n220), .C(n182), .Y(n184) );
  OAI21X1 U297 ( .A(n186), .B(n72), .C(n184), .Y(n187) );
  NOR2X1 U298 ( .A(n188), .B(n187), .Y(n189) );
  NAND3X1 U299 ( .A(n191), .B(n190), .C(n189), .Y(n225) );
  AOI22X1 U300 ( .A(n44), .B(n193), .C(n26), .D(n46), .Y(n194) );
  NAND2X1 U301 ( .A(n194), .B(n254), .Y(n381) );
  NOR2X1 U302 ( .A(packet_done[0]), .B(n381), .Y(n219) );
  INVX2 U303 ( .A(n277), .Y(n196) );
  INVX2 U304 ( .A(byte_received), .Y(n201) );
  OAI21X1 U305 ( .A(n196), .B(n195), .C(n201), .Y(n217) );
  INVX2 U306 ( .A(d_edge), .Y(n199) );
  NOR2X1 U307 ( .A(n197), .B(n364), .Y(n198) );
  OAI21X1 U308 ( .A(eop), .B(n199), .C(n198), .Y(n200) );
  INVX2 U309 ( .A(n200), .Y(n213) );
  AOI21X1 U310 ( .A(n324), .B(n201), .C(n213), .Y(n202) );
  OAI21X1 U311 ( .A(shift_enable), .B(n107), .C(n202), .Y(n215) );
  NAND3X1 U312 ( .A(n336), .B(n257), .C(n203), .Y(n204) );
  INVX2 U313 ( .A(n204), .Y(n303) );
  NAND3X1 U314 ( .A(n303), .B(n210), .C(n375), .Y(n214) );
  NAND2X1 U315 ( .A(shift_enable), .B(eop), .Y(n260) );
  OAI22X1 U316 ( .A(n215), .B(n214), .C(n213), .D(n260), .Y(n216) );
  NAND2X1 U317 ( .A(n217), .B(n216), .Y(n223) );
  INVX2 U318 ( .A(n223), .Y(n218) );
  NAND3X1 U319 ( .A(n219), .B(n240), .C(n218), .Y(n224) );
  INVX2 U320 ( .A(n220), .Y(n221) );
  NAND3X1 U321 ( .A(d_edge), .B(n221), .C(n76), .Y(n222) );
  OAI22X1 U322 ( .A(n225), .B(n224), .C(n2), .D(n222), .Y(n392) );
  NAND2X1 U323 ( .A(n226), .B(n392), .Y(n318) );
  INVX2 U324 ( .A(n260), .Y(n297) );
  OAI21X1 U325 ( .A(n297), .B(n106), .C(n227), .Y(n239) );
  INVX2 U326 ( .A(n229), .Y(n367) );
  NAND2X1 U327 ( .A(crc5_data[0]), .B(crc5_data[1]), .Y(n231) );
  NAND3X1 U328 ( .A(crc5_data[3]), .B(crc5_data[4]), .C(crc5_data[2]), .Y(n230) );
  OR2X1 U329 ( .A(n231), .B(n230), .Y(n366) );
  INVX2 U330 ( .A(n232), .Y(n295) );
  INVX2 U331 ( .A(n233), .Y(n274) );
  NAND3X1 U332 ( .A(rcv_data[6]), .B(n274), .C(n234), .Y(n293) );
  NAND2X1 U333 ( .A(n295), .B(n293), .Y(n311) );
  INVX2 U334 ( .A(n311), .Y(n235) );
  AOI21X1 U335 ( .A(n367), .B(n366), .C(n235), .Y(n236) );
  OAI21X1 U336 ( .A(n383), .B(n237), .C(n236), .Y(n238) );
  OR2X1 U337 ( .A(n239), .B(n238), .Y(n265) );
  NAND3X1 U338 ( .A(n372), .B(n25), .C(n103), .Y(n263) );
  NAND3X1 U339 ( .A(n243), .B(n242), .C(n240), .Y(n256) );
  INVX2 U340 ( .A(n244), .Y(n322) );
  NAND2X1 U341 ( .A(n209), .B(n205), .Y(n246) );
  NAND2X1 U342 ( .A(n206), .B(n207), .Y(n245) );
  NOR2X1 U343 ( .A(n246), .B(n245), .Y(n250) );
  INVX2 U344 ( .A(n211), .Y(n247) );
  NAND2X1 U345 ( .A(n208), .B(n247), .Y(n248) );
  NOR2X1 U346 ( .A(n212), .B(n248), .Y(n249) );
  NAND2X1 U347 ( .A(n250), .B(n249), .Y(n337) );
  INVX2 U348 ( .A(n337), .Y(n252) );
  NAND2X1 U349 ( .A(n252), .B(n338), .Y(n313) );
  OAI21X1 U350 ( .A(n322), .B(n321), .C(n313), .Y(n286) );
  NAND3X1 U351 ( .A(n254), .B(n253), .C(n76), .Y(n255) );
  NOR3X1 U352 ( .A(n256), .B(n286), .C(n255), .Y(n268) );
  NOR2X1 U353 ( .A(n258), .B(w_enable), .Y(n259) );
  OAI21X1 U354 ( .A(n260), .B(n107), .C(n259), .Y(n326) );
  INVX2 U355 ( .A(n326), .Y(n261) );
  NAND3X1 U356 ( .A(n375), .B(n261), .C(n268), .Y(n262) );
  OR2X1 U357 ( .A(n262), .B(n263), .Y(n264) );
  OAI21X1 U358 ( .A(n265), .B(n264), .C(n23), .Y(n266) );
  OAI21X1 U359 ( .A(n32), .B(n308), .C(n266), .Y(n334) );
  NAND2X1 U360 ( .A(n27), .B(n268), .Y(n283) );
  INVX2 U361 ( .A(rcv_data[4]), .Y(n269) );
  NAND3X1 U362 ( .A(n271), .B(n270), .C(n269), .Y(n276) );
  NAND3X1 U363 ( .A(n274), .B(n273), .C(n272), .Y(n275) );
  OR2X1 U364 ( .A(n276), .B(n275), .Y(n371) );
  OAI21X1 U365 ( .A(n371), .B(n359), .C(n277), .Y(n301) );
  INVX2 U366 ( .A(n301), .Y(n280) );
  OAI22X1 U367 ( .A(n322), .B(n383), .C(eop), .D(n107), .Y(n279) );
  INVX2 U368 ( .A(n279), .Y(n314) );
  NAND3X1 U369 ( .A(n281), .B(n280), .C(n314), .Y(n282) );
  OAI21X1 U370 ( .A(n283), .B(n282), .C(n23), .Y(n285) );
  NAND2X1 U371 ( .A(n12), .B(n318), .Y(n284) );
  NAND2X1 U372 ( .A(n285), .B(n284), .Y(n331) );
  INVX2 U373 ( .A(n286), .Y(n291) );
  INVX2 U374 ( .A(n287), .Y(n288) );
  AOI21X1 U375 ( .A(n288), .B(pid_rdy), .C(n367), .Y(n289) );
  NAND3X1 U376 ( .A(n291), .B(n25), .C(n289), .Y(n305) );
  NOR2X1 U377 ( .A(n327), .B(n292), .Y(n300) );
  INVX2 U378 ( .A(n293), .Y(n294) );
  AOI22X1 U379 ( .A(n297), .B(n296), .C(n295), .D(n294), .Y(n298) );
  NAND3X1 U380 ( .A(n300), .B(n103), .C(n298), .Y(n387) );
  NOR2X1 U381 ( .A(n387), .B(n301), .Y(n302) );
  NAND3X1 U382 ( .A(n303), .B(n4), .C(n302), .Y(n304) );
  OAI21X1 U383 ( .A(n305), .B(n304), .C(n23), .Y(n306) );
  OAI21X1 U384 ( .A(n307), .B(n308), .C(n306), .Y(n333) );
  INVX2 U385 ( .A(n372), .Y(n310) );
  INVX2 U386 ( .A(n364), .Y(n358) );
  AOI21X1 U387 ( .A(n310), .B(n371), .C(n43), .Y(n312) );
  NAND3X1 U388 ( .A(n313), .B(n312), .C(n311), .Y(n317) );
  NAND3X1 U389 ( .A(n1), .B(n41), .C(n314), .Y(n316) );
  OAI21X1 U390 ( .A(n317), .B(n316), .C(n23), .Y(n320) );
  NAND2X1 U391 ( .A(n318), .B(n66), .Y(n319) );
  NAND2X1 U392 ( .A(n320), .B(n319), .Y(n332) );
  NAND2X1 U393 ( .A(n37), .B(n391), .Y(n345) );
  INVX2 U394 ( .A(n321), .Y(n369) );
  AOI21X1 U395 ( .A(n369), .B(n322), .C(n43), .Y(n323) );
  NAND2X1 U396 ( .A(n323), .B(n392), .Y(n342) );
  NOR2X1 U397 ( .A(n325), .B(n324), .Y(n329) );
  NOR2X1 U398 ( .A(n327), .B(n326), .Y(n328) );
  NAND3X1 U399 ( .A(n336), .B(n329), .C(n328), .Y(n341) );
  INVX2 U400 ( .A(n371), .Y(n339) );
  NAND2X1 U401 ( .A(n338), .B(n337), .Y(n346) );
  OAI21X1 U402 ( .A(n359), .B(n339), .C(n346), .Y(n340) );
  NOR2X1 U403 ( .A(n37), .B(n23), .Y(n343) );
  AOI21X1 U404 ( .A(n345), .B(n344), .C(n343), .Y(n330) );
  INVX2 U405 ( .A(n346), .Y(n363) );
  AND2X2 U406 ( .A(crc16_data[8]), .B(crc16_data[9]), .Y(n347) );
  NAND3X1 U407 ( .A(crc16_data[10]), .B(crc16_data[11]), .C(n347), .Y(n350) );
  AND2X2 U408 ( .A(crc16_data[12]), .B(crc16_data[13]), .Y(n348) );
  NAND3X1 U409 ( .A(crc16_data[14]), .B(crc16_data[15]), .C(n348), .Y(n349) );
  NOR2X1 U410 ( .A(n350), .B(n349), .Y(n356) );
  AND2X2 U411 ( .A(crc16_data[0]), .B(crc16_data[1]), .Y(n351) );
  NAND3X1 U412 ( .A(crc16_data[2]), .B(crc16_data[3]), .C(n351), .Y(n354) );
  AND2X2 U413 ( .A(crc16_data[4]), .B(crc16_data[5]), .Y(n352) );
  NAND3X1 U414 ( .A(crc16_data[6]), .B(crc16_data[7]), .C(n352), .Y(n353) );
  NOR2X1 U415 ( .A(n354), .B(n353), .Y(n355) );
  AND2X2 U416 ( .A(n356), .B(n355), .Y(n361) );
  NAND2X1 U417 ( .A(n358), .B(n357), .Y(n360) );
  OAI21X1 U418 ( .A(n361), .B(n360), .C(n359), .Y(n362) );
  NOR2X1 U419 ( .A(n363), .B(n362), .Y(n380) );
  NOR2X1 U420 ( .A(n33), .B(n364), .Y(n368) );
  NOR2X1 U421 ( .A(n369), .B(w_enable), .Y(n370) );
  OAI21X1 U422 ( .A(n372), .B(n371), .C(n370), .Y(n377) );
  NAND3X1 U423 ( .A(n375), .B(n374), .C(n76), .Y(n376) );
  NOR2X1 U424 ( .A(n377), .B(n376), .Y(n378) );
  NAND3X1 U425 ( .A(n380), .B(n379), .C(n378), .Y(n386) );
  NOR2X1 U426 ( .A(packet_done[1]), .B(n381), .Y(n382) );
  OAI21X1 U427 ( .A(n384), .B(n383), .C(n382), .Y(n385) );
  NOR2X1 U428 ( .A(n386), .B(n385), .Y(n389) );
  INVX2 U429 ( .A(n387), .Y(n388) );
  NAND2X1 U430 ( .A(n389), .B(n388), .Y(n390) );
  AOI21X1 U431 ( .A(n100), .B(n391), .C(n390), .Y(n394) );
endmodule


module flex_stp_sr_NUM_BITS8_SHIFT_MSB0 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n27, n28;

  DFFSR \out_tmp_reg[7]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[7]) );
  DFFSR \out_tmp_reg[6]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[6]) );
  DFFSR \out_tmp_reg[5]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[5]) );
  DFFSR \out_tmp_reg[4]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[4]) );
  DFFSR \out_tmp_reg[3]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[3]) );
  DFFSR \out_tmp_reg[2]  ( .D(n16), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[2]) );
  DFFSR \out_tmp_reg[1]  ( .D(n14), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[1]) );
  DFFSR \out_tmp_reg[0]  ( .D(n12), .CLK(clk), .R(1'b1), .S(n2), .Q(
        parallel_out[0]) );
  OAI21X1 U17 ( .A(n1), .B(n28), .C(n10), .Y(n26) );
  NAND2X1 U18 ( .A(serial_in), .B(n1), .Y(n10) );
  INVX2 U2 ( .A(n3), .Y(n2) );
  INVX2 U3 ( .A(n_rst), .Y(n3) );
  BUFX4 U4 ( .A(shift_enable), .Y(n1) );
  INVX2 U5 ( .A(parallel_out[7]), .Y(n28) );
  INVX2 U6 ( .A(parallel_out[0]), .Y(n4) );
  INVX2 U7 ( .A(parallel_out[1]), .Y(n5) );
  MUX2X1 U8 ( .B(n4), .A(n5), .S(n1), .Y(n12) );
  INVX2 U9 ( .A(parallel_out[2]), .Y(n6) );
  MUX2X1 U10 ( .B(n5), .A(n6), .S(n1), .Y(n14) );
  INVX2 U11 ( .A(parallel_out[3]), .Y(n7) );
  MUX2X1 U12 ( .B(n6), .A(n7), .S(n1), .Y(n16) );
  INVX2 U13 ( .A(parallel_out[4]), .Y(n8) );
  MUX2X1 U14 ( .B(n7), .A(n8), .S(n1), .Y(n18) );
  INVX2 U15 ( .A(parallel_out[5]), .Y(n9) );
  MUX2X1 U16 ( .B(n8), .A(n9), .S(n1), .Y(n20) );
  INVX2 U19 ( .A(parallel_out[6]), .Y(n27) );
  MUX2X1 U28 ( .B(n9), .A(n27), .S(n1), .Y(n22) );
  MUX2X1 U29 ( .B(n27), .A(n28), .S(n1), .Y(n24) );
endmodule


module shift_register ( clk, n_rst, shift_enable, d_orig, shift_stop, rcv_data
 );
  output [7:0] rcv_data;
  input clk, n_rst, shift_enable, d_orig, shift_stop;
  wire   _0_net_, n1;

  flex_stp_sr_NUM_BITS8_SHIFT_MSB0 FSS ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(_0_net_), .serial_in(d_orig), .parallel_out(rcv_data) );
  INVX1 U1 ( .A(shift_enable), .Y(n1) );
  NOR2X1 U2 ( .A(shift_stop), .B(n1), .Y(_0_net_) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_1_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;

  INVX2 U1 ( .A(n26), .Y(SUM[1]) );
  INVX2 U2 ( .A(n27), .Y(SUM[11]) );
  INVX2 U3 ( .A(n13), .Y(SUM[9]) );
  INVX2 U4 ( .A(n17), .Y(SUM[7]) );
  INVX2 U5 ( .A(n20), .Y(SUM[5]) );
  INVX2 U6 ( .A(n23), .Y(SUM[3]) );
  INVX2 U7 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U8 ( .A(A[2]), .Y(n8) );
  INVX2 U9 ( .A(A[4]), .Y(n9) );
  INVX2 U10 ( .A(A[6]), .Y(n10) );
  INVX2 U11 ( .A(A[8]), .Y(n11) );
  INVX2 U12 ( .A(A[10]), .Y(n12) );
  AOI21X1 U13 ( .A(n14), .B(A[9]), .C(n15), .Y(n13) );
  OAI21X1 U14 ( .A(n16), .B(n11), .C(n14), .Y(SUM[8]) );
  AOI21X1 U15 ( .A(n18), .B(A[7]), .C(n16), .Y(n17) );
  OAI21X1 U16 ( .A(n19), .B(n10), .C(n18), .Y(SUM[6]) );
  AOI21X1 U17 ( .A(n21), .B(A[5]), .C(n19), .Y(n20) );
  OAI21X1 U18 ( .A(n22), .B(n9), .C(n21), .Y(SUM[4]) );
  AOI21X1 U19 ( .A(n24), .B(A[3]), .C(n22), .Y(n23) );
  OAI21X1 U20 ( .A(n25), .B(n8), .C(n24), .Y(SUM[2]) );
  AOI21X1 U21 ( .A(A[0]), .B(A[1]), .C(n25), .Y(n26) );
  AOI21X1 U22 ( .A(n28), .B(A[11]), .C(SUM[12]), .Y(n27) );
  NOR2X1 U23 ( .A(n28), .B(A[11]), .Y(SUM[12]) );
  OAI21X1 U24 ( .A(n15), .B(n12), .C(n28), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n15), .B(n12), .Y(n28) );
  NOR2X1 U26 ( .A(n14), .B(A[9]), .Y(n15) );
  NAND2X1 U27 ( .A(n16), .B(n11), .Y(n14) );
  NOR2X1 U28 ( .A(n18), .B(A[7]), .Y(n16) );
  NAND2X1 U29 ( .A(n19), .B(n10), .Y(n18) );
  NOR2X1 U30 ( .A(n21), .B(A[5]), .Y(n19) );
  NAND2X1 U31 ( .A(n22), .B(n9), .Y(n21) );
  NOR2X1 U32 ( .A(n24), .B(A[3]), .Y(n22) );
  NAND2X1 U33 ( .A(n25), .B(n8), .Y(n24) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n25) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_1_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n3, n6, n7, n8, n9, n11, n13, n14, n15, n16, n17, n19, n20, n21,
         n23, n24, n25, n27, n29, n31, n32, n33, n34, n35, n36, n38, n39, n41,
         n42, n43, n45, n74;
  assign n9 = A[9];
  assign n13 = A[8];
  assign n17 = A[7];
  assign n21 = A[6];
  assign n27 = A[5];
  assign n31 = A[4];
  assign n36 = A[3];
  assign n39 = A[2];
  assign n43 = A[1];
  assign n45 = A[0];

  XNOR2X1 U3 ( .A(n7), .B(n6), .Y(SUM[10]) );
  NOR2X1 U4 ( .A(n74), .B(n1), .Y(n3) );
  NOR2X1 U9 ( .A(n8), .B(n1), .Y(n7) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XOR2X1 U13 ( .A(n1), .B(n14), .Y(SUM[8]) );
  NOR2X1 U14 ( .A(n14), .B(n1), .Y(n11) );
  NAND2X1 U19 ( .A(n34), .B(n15), .Y(n1) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n17), .B(n21), .Y(n16) );
  NOR2X1 U25 ( .A(n20), .B(n33), .Y(n19) );
  NAND2X1 U26 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U30 ( .A(n24), .B(n33), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  XOR2X1 U36 ( .A(n33), .B(n32), .Y(SUM[4]) );
  NOR2X1 U37 ( .A(n32), .B(n33), .Y(n29) );
  NOR2X1 U43 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n35) );
  NAND2X1 U48 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  OR2X1 U60 ( .A(n6), .B(n8), .Y(n74) );
  XOR2X1 U61 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XOR2X1 U62 ( .A(n23), .B(n21), .Y(SUM[6]) );
  XOR2X1 U63 ( .A(n41), .B(n39), .Y(SUM[2]) );
  XOR2X1 U64 ( .A(n11), .B(n9), .Y(SUM[9]) );
  XOR2X1 U65 ( .A(n19), .B(n17), .Y(SUM[7]) );
  XOR2X1 U66 ( .A(n29), .B(n27), .Y(SUM[5]) );
  XOR2X1 U67 ( .A(n3), .B(A[11]), .Y(SUM[11]) );
  XNOR2X1 U68 ( .A(n38), .B(n36), .Y(SUM[3]) );
  INVX2 U69 ( .A(A[10]), .Y(n6) );
  INVX2 U70 ( .A(n42), .Y(n41) );
  INVX2 U71 ( .A(n34), .Y(n33) );
  INVX2 U72 ( .A(n31), .Y(n32) );
  INVX2 U73 ( .A(n24), .Y(n25) );
  INVX2 U74 ( .A(n13), .Y(n14) );
  INVX2 U75 ( .A(n45), .Y(SUM[0]) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, n2,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n101, n102, n103, n104, n105, n106, n107,
         n108, n109;

  DFFSR \cur_count_reg[0]  ( .D(n89), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[11]  ( .D(n106), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \cur_count_reg[1]  ( .D(n90), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[2]  ( .D(n91), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n92), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[4]  ( .D(n93), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \cur_count_reg[5]  ( .D(n94), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \cur_count_reg[6]  ( .D(n101), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \cur_count_reg[7]  ( .D(n102), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \cur_count_reg[8]  ( .D(n103), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \cur_count_reg[9]  ( .D(n104), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \cur_count_reg[10]  ( .D(n105), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[10]) );
  NOR2X1 U49 ( .A(n108), .B(n107), .Y(n109) );
  XNOR2X1 U50 ( .A(n88), .B(N40), .Y(n107) );
  XNOR2X1 U51 ( .A(n87), .B(N32), .Y(n108) );
  flex_counter_stuff_NUM_CNT_BITS12_1_DW01_dec_0 sub_37 ( .A({1'b0, 
        rollover_val}), .SUM({N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31}) );
  flex_counter_stuff_NUM_CNT_BITS12_1_DW01_inc_1 add_35 ( .A(count_out), .SUM(
        {N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  INVX1 U3 ( .A(clear), .Y(n58) );
  INVX1 U18 ( .A(count_enable), .Y(n7) );
  AND2X2 U19 ( .A(n7), .B(n58), .Y(n2) );
  INVX2 U20 ( .A(n6), .Y(n5) );
  INVX2 U21 ( .A(n_rst), .Y(n6) );
  INVX8 U22 ( .A(n2), .Y(n4) );
  INVX4 U23 ( .A(n60), .Y(n84) );
  INVX2 U24 ( .A(count_out[1]), .Y(n87) );
  INVX2 U25 ( .A(count_out[9]), .Y(n88) );
  INVX2 U26 ( .A(count_out[7]), .Y(n70) );
  XOR2X1 U27 ( .A(n70), .B(rollover_val[7]), .Y(n10) );
  INVX2 U28 ( .A(count_out[8]), .Y(n68) );
  XOR2X1 U29 ( .A(n68), .B(rollover_val[8]), .Y(n9) );
  INVX2 U30 ( .A(count_out[6]), .Y(n72) );
  XOR2X1 U31 ( .A(n72), .B(rollover_val[6]), .Y(n8) );
  NAND3X1 U32 ( .A(n10), .B(n9), .C(n8), .Y(n27) );
  INVX2 U33 ( .A(count_out[10]), .Y(n65) );
  XOR2X1 U34 ( .A(n65), .B(rollover_val[10]), .Y(n13) );
  INVX2 U35 ( .A(count_out[11]), .Y(n83) );
  XOR2X1 U36 ( .A(n83), .B(rollover_val[11]), .Y(n12) );
  XOR2X1 U37 ( .A(n88), .B(rollover_val[9]), .Y(n11) );
  NAND3X1 U38 ( .A(n13), .B(n12), .C(n11), .Y(n26) );
  NOR2X1 U39 ( .A(n27), .B(n26), .Y(n37) );
  XOR2X1 U40 ( .A(n87), .B(rollover_val[1]), .Y(n30) );
  INVX2 U41 ( .A(count_out[2]), .Y(n80) );
  XOR2X1 U42 ( .A(n80), .B(rollover_val[2]), .Y(n29) );
  INVX2 U43 ( .A(count_out[0]), .Y(n86) );
  XOR2X1 U44 ( .A(n86), .B(rollover_val[0]), .Y(n28) );
  NAND3X1 U45 ( .A(n30), .B(n29), .C(n28), .Y(n35) );
  INVX2 U46 ( .A(count_out[4]), .Y(n76) );
  XOR2X1 U47 ( .A(n76), .B(rollover_val[4]), .Y(n33) );
  INVX2 U48 ( .A(count_out[5]), .Y(n74) );
  XOR2X1 U52 ( .A(n74), .B(rollover_val[5]), .Y(n32) );
  INVX2 U53 ( .A(count_out[3]), .Y(n78) );
  XOR2X1 U54 ( .A(n78), .B(rollover_val[3]), .Y(n31) );
  NAND3X1 U55 ( .A(n33), .B(n32), .C(n31), .Y(n34) );
  NOR2X1 U56 ( .A(n35), .B(n34), .Y(n36) );
  NAND2X1 U57 ( .A(n37), .B(n36), .Y(n59) );
  XOR2X1 U58 ( .A(n72), .B(N37), .Y(n39) );
  XOR2X1 U59 ( .A(n83), .B(N42), .Y(n38) );
  NAND2X1 U60 ( .A(n39), .B(n38), .Y(n43) );
  XOR2X1 U61 ( .A(n70), .B(N38), .Y(n41) );
  XOR2X1 U62 ( .A(n74), .B(N36), .Y(n40) );
  NAND2X1 U63 ( .A(n41), .B(n40), .Y(n42) );
  NOR2X1 U64 ( .A(n43), .B(n42), .Y(n56) );
  XOR2X1 U65 ( .A(n68), .B(N39), .Y(n45) );
  XOR2X1 U66 ( .A(n65), .B(N41), .Y(n44) );
  NAND2X1 U67 ( .A(n45), .B(n44), .Y(n46) );
  NOR2X1 U68 ( .A(N43), .B(n46), .Y(n55) );
  XOR2X1 U69 ( .A(n80), .B(N33), .Y(n49) );
  XOR2X1 U70 ( .A(n78), .B(N34), .Y(n48) );
  XOR2X1 U71 ( .A(n86), .B(N31), .Y(n47) );
  NAND3X1 U72 ( .A(n49), .B(n48), .C(n47), .Y(n53) );
  XOR2X1 U73 ( .A(count_out[4]), .B(N35), .Y(n50) );
  NOR2X1 U74 ( .A(clear), .B(n50), .Y(n51) );
  NAND3X1 U75 ( .A(count_enable), .B(n109), .C(n51), .Y(n52) );
  NOR2X1 U76 ( .A(n53), .B(n52), .Y(n54) );
  NAND3X1 U77 ( .A(n56), .B(n55), .C(n54), .Y(n57) );
  OAI21X1 U78 ( .A(n4), .B(n59), .C(n57), .Y(next_flag) );
  NAND3X1 U79 ( .A(n59), .B(n58), .C(n4), .Y(n60) );
  NAND2X1 U80 ( .A(N17), .B(n84), .Y(n64) );
  OAI21X1 U81 ( .A(n4), .B(n65), .C(n64), .Y(n105) );
  NAND2X1 U82 ( .A(N16), .B(n84), .Y(n66) );
  OAI21X1 U83 ( .A(n88), .B(n4), .C(n66), .Y(n104) );
  NAND2X1 U84 ( .A(N15), .B(n84), .Y(n67) );
  OAI21X1 U85 ( .A(n4), .B(n68), .C(n67), .Y(n103) );
  NAND2X1 U86 ( .A(N14), .B(n84), .Y(n69) );
  OAI21X1 U87 ( .A(n4), .B(n70), .C(n69), .Y(n102) );
  NAND2X1 U88 ( .A(N13), .B(n84), .Y(n71) );
  OAI21X1 U89 ( .A(n4), .B(n72), .C(n71), .Y(n101) );
  NAND2X1 U90 ( .A(N12), .B(n84), .Y(n73) );
  OAI21X1 U91 ( .A(n4), .B(n74), .C(n73), .Y(n94) );
  NAND2X1 U92 ( .A(N11), .B(n84), .Y(n75) );
  OAI21X1 U93 ( .A(n4), .B(n76), .C(n75), .Y(n93) );
  NAND2X1 U94 ( .A(N10), .B(n84), .Y(n77) );
  OAI21X1 U95 ( .A(n4), .B(n78), .C(n77), .Y(n92) );
  NAND2X1 U96 ( .A(N9), .B(n84), .Y(n79) );
  OAI21X1 U97 ( .A(n4), .B(n80), .C(n79), .Y(n91) );
  NAND2X1 U98 ( .A(N8), .B(n84), .Y(n81) );
  OAI21X1 U99 ( .A(n87), .B(n4), .C(n81), .Y(n90) );
  NAND2X1 U100 ( .A(N18), .B(n84), .Y(n82) );
  OAI21X1 U101 ( .A(n4), .B(n83), .C(n82), .Y(n106) );
  NAND2X1 U102 ( .A(N7), .B(n84), .Y(n85) );
  OAI21X1 U103 ( .A(n4), .B(n86), .C(n85), .Y(n89) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_0_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;

  INVX2 U1 ( .A(n26), .Y(SUM[1]) );
  INVX2 U2 ( .A(n27), .Y(SUM[11]) );
  INVX2 U3 ( .A(n13), .Y(SUM[9]) );
  INVX2 U4 ( .A(n17), .Y(SUM[7]) );
  INVX2 U5 ( .A(n20), .Y(SUM[5]) );
  INVX2 U6 ( .A(n23), .Y(SUM[3]) );
  INVX2 U7 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U8 ( .A(A[2]), .Y(n8) );
  INVX2 U9 ( .A(A[4]), .Y(n9) );
  INVX2 U10 ( .A(A[6]), .Y(n10) );
  INVX2 U11 ( .A(A[8]), .Y(n11) );
  INVX2 U12 ( .A(A[10]), .Y(n12) );
  AOI21X1 U13 ( .A(n14), .B(A[9]), .C(n15), .Y(n13) );
  OAI21X1 U14 ( .A(n16), .B(n11), .C(n14), .Y(SUM[8]) );
  AOI21X1 U15 ( .A(n18), .B(A[7]), .C(n16), .Y(n17) );
  OAI21X1 U16 ( .A(n19), .B(n10), .C(n18), .Y(SUM[6]) );
  AOI21X1 U17 ( .A(n21), .B(A[5]), .C(n19), .Y(n20) );
  OAI21X1 U18 ( .A(n22), .B(n9), .C(n21), .Y(SUM[4]) );
  AOI21X1 U19 ( .A(n24), .B(A[3]), .C(n22), .Y(n23) );
  OAI21X1 U20 ( .A(n25), .B(n8), .C(n24), .Y(SUM[2]) );
  AOI21X1 U21 ( .A(A[0]), .B(A[1]), .C(n25), .Y(n26) );
  AOI21X1 U22 ( .A(n28), .B(A[11]), .C(SUM[12]), .Y(n27) );
  NOR2X1 U23 ( .A(n28), .B(A[11]), .Y(SUM[12]) );
  OAI21X1 U24 ( .A(n15), .B(n12), .C(n28), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n15), .B(n12), .Y(n28) );
  NOR2X1 U26 ( .A(n14), .B(A[9]), .Y(n15) );
  NAND2X1 U27 ( .A(n16), .B(n11), .Y(n14) );
  NOR2X1 U28 ( .A(n18), .B(A[7]), .Y(n16) );
  NAND2X1 U29 ( .A(n19), .B(n10), .Y(n18) );
  NOR2X1 U30 ( .A(n21), .B(A[5]), .Y(n19) );
  NAND2X1 U31 ( .A(n22), .B(n9), .Y(n21) );
  NOR2X1 U32 ( .A(n24), .B(A[3]), .Y(n22) );
  NAND2X1 U33 ( .A(n25), .B(n8), .Y(n24) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n25) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_0_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n3, n6, n7, n8, n9, n11, n13, n14, n15, n16, n17, n19, n20, n21,
         n23, n24, n25, n27, n29, n31, n32, n33, n34, n35, n36, n38, n39, n41,
         n42, n43, n45, n74;
  assign n9 = A[9];
  assign n13 = A[8];
  assign n17 = A[7];
  assign n21 = A[6];
  assign n27 = A[5];
  assign n31 = A[4];
  assign n36 = A[3];
  assign n39 = A[2];
  assign n43 = A[1];
  assign n45 = A[0];

  XNOR2X1 U3 ( .A(n7), .B(n6), .Y(SUM[10]) );
  NOR2X1 U4 ( .A(n74), .B(n1), .Y(n3) );
  NOR2X1 U9 ( .A(n8), .B(n1), .Y(n7) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XOR2X1 U13 ( .A(n1), .B(n14), .Y(SUM[8]) );
  NOR2X1 U14 ( .A(n14), .B(n1), .Y(n11) );
  NAND2X1 U19 ( .A(n34), .B(n15), .Y(n1) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n17), .B(n21), .Y(n16) );
  NOR2X1 U25 ( .A(n20), .B(n33), .Y(n19) );
  NAND2X1 U26 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U30 ( .A(n24), .B(n33), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  XOR2X1 U36 ( .A(n33), .B(n32), .Y(SUM[4]) );
  NOR2X1 U37 ( .A(n32), .B(n33), .Y(n29) );
  NOR2X1 U43 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n35) );
  NAND2X1 U48 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  OR2X1 U60 ( .A(n6), .B(n8), .Y(n74) );
  XOR2X1 U61 ( .A(n23), .B(n21), .Y(SUM[6]) );
  XOR2X1 U62 ( .A(n41), .B(n39), .Y(SUM[2]) );
  XNOR2X1 U63 ( .A(n38), .B(n36), .Y(SUM[3]) );
  XOR2X1 U64 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XOR2X1 U65 ( .A(n11), .B(n9), .Y(SUM[9]) );
  XOR2X1 U66 ( .A(n19), .B(n17), .Y(SUM[7]) );
  XOR2X1 U67 ( .A(n29), .B(n27), .Y(SUM[5]) );
  XOR2X1 U68 ( .A(n3), .B(A[11]), .Y(SUM[11]) );
  INVX2 U69 ( .A(A[10]), .Y(n6) );
  INVX2 U70 ( .A(n42), .Y(n41) );
  INVX2 U71 ( .A(n34), .Y(n33) );
  INVX2 U72 ( .A(n31), .Y(n32) );
  INVX2 U73 ( .A(n24), .Y(n25) );
  INVX2 U74 ( .A(n13), .Y(n14) );
  INVX2 U75 ( .A(n45), .Y(SUM[0]) );
endmodule


module flex_counter_stuff_NUM_CNT_BITS12_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, n2,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n101, n102, n103, n104, n105, n106, n107,
         n108, n109;

  DFFSR \cur_count_reg[0]  ( .D(n89), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \cur_count_reg[11]  ( .D(n106), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \cur_count_reg[1]  ( .D(n90), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \cur_count_reg[2]  ( .D(n91), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \cur_count_reg[3]  ( .D(n92), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \cur_count_reg[4]  ( .D(n93), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \cur_count_reg[5]  ( .D(n94), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \cur_count_reg[6]  ( .D(n101), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \cur_count_reg[7]  ( .D(n102), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \cur_count_reg[8]  ( .D(n103), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \cur_count_reg[9]  ( .D(n104), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \cur_count_reg[10]  ( .D(n105), .CLK(clk), .R(n5), .S(1'b1), .Q(
        count_out[10]) );
  NOR2X1 U49 ( .A(n108), .B(n107), .Y(n109) );
  XNOR2X1 U50 ( .A(n88), .B(N40), .Y(n107) );
  XNOR2X1 U51 ( .A(n87), .B(N32), .Y(n108) );
  flex_counter_stuff_NUM_CNT_BITS12_0_DW01_dec_0 sub_37 ( .A({1'b0, 
        rollover_val}), .SUM({N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31}) );
  flex_counter_stuff_NUM_CNT_BITS12_0_DW01_inc_1 add_35 ( .A(count_out), .SUM(
        {N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  DFFSR cur_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  INVX1 U3 ( .A(clear), .Y(n58) );
  AND2X2 U18 ( .A(n7), .B(n58), .Y(n2) );
  INVX2 U19 ( .A(n6), .Y(n5) );
  INVX2 U20 ( .A(n_rst), .Y(n6) );
  INVX8 U21 ( .A(n2), .Y(n4) );
  INVX4 U22 ( .A(n60), .Y(n84) );
  INVX2 U23 ( .A(count_out[1]), .Y(n87) );
  INVX2 U24 ( .A(count_out[9]), .Y(n88) );
  INVX2 U25 ( .A(count_enable), .Y(n7) );
  INVX2 U26 ( .A(count_out[7]), .Y(n70) );
  XOR2X1 U27 ( .A(n70), .B(rollover_val[7]), .Y(n10) );
  INVX2 U28 ( .A(count_out[8]), .Y(n68) );
  XOR2X1 U29 ( .A(n68), .B(rollover_val[8]), .Y(n9) );
  INVX2 U30 ( .A(count_out[6]), .Y(n72) );
  XOR2X1 U31 ( .A(n72), .B(rollover_val[6]), .Y(n8) );
  NAND3X1 U32 ( .A(n10), .B(n9), .C(n8), .Y(n27) );
  INVX2 U33 ( .A(count_out[10]), .Y(n65) );
  XOR2X1 U34 ( .A(n65), .B(rollover_val[10]), .Y(n13) );
  INVX2 U35 ( .A(count_out[11]), .Y(n83) );
  XOR2X1 U36 ( .A(n83), .B(rollover_val[11]), .Y(n12) );
  XOR2X1 U37 ( .A(n88), .B(rollover_val[9]), .Y(n11) );
  NAND3X1 U38 ( .A(n13), .B(n12), .C(n11), .Y(n26) );
  NOR2X1 U39 ( .A(n27), .B(n26), .Y(n37) );
  XOR2X1 U40 ( .A(n87), .B(rollover_val[1]), .Y(n30) );
  INVX2 U41 ( .A(count_out[2]), .Y(n80) );
  XOR2X1 U42 ( .A(n80), .B(rollover_val[2]), .Y(n29) );
  INVX2 U43 ( .A(count_out[0]), .Y(n86) );
  XOR2X1 U44 ( .A(n86), .B(rollover_val[0]), .Y(n28) );
  NAND3X1 U45 ( .A(n30), .B(n29), .C(n28), .Y(n35) );
  INVX2 U46 ( .A(count_out[4]), .Y(n76) );
  XOR2X1 U47 ( .A(n76), .B(rollover_val[4]), .Y(n33) );
  INVX2 U48 ( .A(count_out[5]), .Y(n74) );
  XOR2X1 U52 ( .A(n74), .B(rollover_val[5]), .Y(n32) );
  INVX2 U53 ( .A(count_out[3]), .Y(n78) );
  XOR2X1 U54 ( .A(n78), .B(rollover_val[3]), .Y(n31) );
  NAND3X1 U55 ( .A(n33), .B(n32), .C(n31), .Y(n34) );
  NOR2X1 U56 ( .A(n35), .B(n34), .Y(n36) );
  NAND2X1 U57 ( .A(n37), .B(n36), .Y(n59) );
  XOR2X1 U58 ( .A(n72), .B(N37), .Y(n39) );
  XOR2X1 U59 ( .A(n83), .B(N42), .Y(n38) );
  NAND2X1 U60 ( .A(n39), .B(n38), .Y(n43) );
  XOR2X1 U61 ( .A(n70), .B(N38), .Y(n41) );
  XOR2X1 U62 ( .A(n74), .B(N36), .Y(n40) );
  NAND2X1 U63 ( .A(n41), .B(n40), .Y(n42) );
  NOR2X1 U64 ( .A(n43), .B(n42), .Y(n56) );
  XOR2X1 U65 ( .A(n68), .B(N39), .Y(n45) );
  XOR2X1 U66 ( .A(n65), .B(N41), .Y(n44) );
  NAND2X1 U67 ( .A(n45), .B(n44), .Y(n46) );
  NOR2X1 U68 ( .A(N43), .B(n46), .Y(n55) );
  XOR2X1 U69 ( .A(n80), .B(N33), .Y(n49) );
  XOR2X1 U70 ( .A(n78), .B(N34), .Y(n48) );
  XOR2X1 U71 ( .A(n86), .B(N31), .Y(n47) );
  NAND3X1 U72 ( .A(n49), .B(n48), .C(n47), .Y(n53) );
  XOR2X1 U73 ( .A(count_out[4]), .B(N35), .Y(n50) );
  NOR2X1 U74 ( .A(clear), .B(n50), .Y(n51) );
  NAND3X1 U75 ( .A(count_enable), .B(n109), .C(n51), .Y(n52) );
  NOR2X1 U76 ( .A(n53), .B(n52), .Y(n54) );
  NAND3X1 U77 ( .A(n56), .B(n55), .C(n54), .Y(n57) );
  OAI21X1 U78 ( .A(n4), .B(n59), .C(n57), .Y(next_flag) );
  NAND3X1 U79 ( .A(n59), .B(n58), .C(n4), .Y(n60) );
  NAND2X1 U80 ( .A(N17), .B(n84), .Y(n64) );
  OAI21X1 U81 ( .A(n4), .B(n65), .C(n64), .Y(n105) );
  NAND2X1 U82 ( .A(N16), .B(n84), .Y(n66) );
  OAI21X1 U83 ( .A(n88), .B(n4), .C(n66), .Y(n104) );
  NAND2X1 U84 ( .A(N15), .B(n84), .Y(n67) );
  OAI21X1 U85 ( .A(n4), .B(n68), .C(n67), .Y(n103) );
  NAND2X1 U86 ( .A(N14), .B(n84), .Y(n69) );
  OAI21X1 U87 ( .A(n4), .B(n70), .C(n69), .Y(n102) );
  NAND2X1 U88 ( .A(N13), .B(n84), .Y(n71) );
  OAI21X1 U89 ( .A(n4), .B(n72), .C(n71), .Y(n101) );
  NAND2X1 U90 ( .A(N12), .B(n84), .Y(n73) );
  OAI21X1 U91 ( .A(n4), .B(n74), .C(n73), .Y(n94) );
  NAND2X1 U92 ( .A(N11), .B(n84), .Y(n75) );
  OAI21X1 U93 ( .A(n4), .B(n76), .C(n75), .Y(n93) );
  NAND2X1 U94 ( .A(N10), .B(n84), .Y(n77) );
  OAI21X1 U95 ( .A(n4), .B(n78), .C(n77), .Y(n92) );
  NAND2X1 U96 ( .A(N9), .B(n84), .Y(n79) );
  OAI21X1 U97 ( .A(n4), .B(n80), .C(n79), .Y(n91) );
  NAND2X1 U98 ( .A(N8), .B(n84), .Y(n81) );
  OAI21X1 U99 ( .A(n87), .B(n4), .C(n81), .Y(n90) );
  NAND2X1 U100 ( .A(N18), .B(n84), .Y(n82) );
  OAI21X1 U101 ( .A(n4), .B(n83), .C(n82), .Y(n106) );
  NAND2X1 U102 ( .A(N7), .B(n84), .Y(n85) );
  OAI21X1 U103 ( .A(n4), .B(n86), .C(n85), .Y(n89) );
endmodule


module myfifo_0_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(SUM[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module myfifo_0 ( clk, n_rst, r_enable, w_enable, clear, data_i, sram_o, 
        sram_i, data_o, addr, full, empty );
  input [7:0] data_i;
  input [7:0] sram_o;
  output [7:0] sram_i;
  output [7:0] data_o;
  output [11:0] addr;
  input clk, n_rst, r_enable, w_enable, clear;
  output full, empty;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n53;
  wire   [11:0] writeptr;
  wire   [11:0] readptr;
  assign sram_i[7] = data_i[7];
  assign sram_i[6] = data_i[6];
  assign sram_i[5] = data_i[5];
  assign sram_i[4] = data_i[4];
  assign sram_i[3] = data_i[3];
  assign sram_i[2] = data_i[2];
  assign sram_i[1] = data_i[1];
  assign sram_i[0] = data_i[0];
  assign data_o[7] = sram_o[7];
  assign data_o[6] = sram_o[6];
  assign data_o[5] = sram_o[5];
  assign data_o[4] = sram_o[4];
  assign data_o[3] = sram_o[3];
  assign data_o[2] = sram_o[2];
  assign data_o[1] = sram_o[1];
  assign data_o[0] = sram_o[0];

  AND2X2 U4 ( .A(n25), .B(n26), .Y(full) );
  NOR2X1 U20 ( .A(n27), .B(n28), .Y(n26) );
  NAND3X1 U21 ( .A(n29), .B(n30), .C(n31), .Y(n28) );
  XNOR2X1 U22 ( .A(writeptr[0]), .B(N2), .Y(n31) );
  XNOR2X1 U23 ( .A(writeptr[1]), .B(N3), .Y(n30) );
  XNOR2X1 U24 ( .A(writeptr[2]), .B(N4), .Y(n29) );
  NAND3X1 U25 ( .A(n32), .B(n33), .C(n34), .Y(n27) );
  NOR2X1 U26 ( .A(N14), .B(n35), .Y(n34) );
  XOR2X1 U27 ( .A(writeptr[5]), .B(N7), .Y(n35) );
  XNOR2X1 U28 ( .A(writeptr[3]), .B(N5), .Y(n33) );
  XNOR2X1 U29 ( .A(writeptr[4]), .B(N6), .Y(n32) );
  NOR2X1 U30 ( .A(n36), .B(n37), .Y(n25) );
  NAND3X1 U31 ( .A(n38), .B(n39), .C(n40), .Y(n37) );
  XNOR2X1 U32 ( .A(writeptr[7]), .B(N9), .Y(n40) );
  XNOR2X1 U33 ( .A(writeptr[11]), .B(N13), .Y(n39) );
  XNOR2X1 U34 ( .A(writeptr[6]), .B(N8), .Y(n38) );
  NAND3X1 U35 ( .A(n41), .B(n42), .C(n43), .Y(n36) );
  XNOR2X1 U36 ( .A(writeptr[10]), .B(N12), .Y(n43) );
  XNOR2X1 U37 ( .A(writeptr[8]), .B(N10), .Y(n42) );
  XNOR2X1 U38 ( .A(writeptr[9]), .B(N11), .Y(n41) );
  AOI22X1 U57 ( .A(writeptr[9]), .B(n2), .C(n53), .D(readptr[9]), .Y(n62) );
  AOI22X1 U58 ( .A(writeptr[8]), .B(n2), .C(n53), .D(readptr[8]), .Y(n63) );
  AOI22X1 U59 ( .A(writeptr[7]), .B(n2), .C(n53), .D(readptr[7]), .Y(n64) );
  AOI22X1 U60 ( .A(writeptr[6]), .B(n2), .C(n53), .D(readptr[6]), .Y(n65) );
  AOI22X1 U61 ( .A(writeptr[5]), .B(n2), .C(n53), .D(readptr[5]), .Y(n66) );
  AOI22X1 U62 ( .A(writeptr[4]), .B(n2), .C(n53), .D(readptr[4]), .Y(n67) );
  AOI22X1 U63 ( .A(writeptr[3]), .B(n2), .C(n53), .D(readptr[3]), .Y(n68) );
  AOI22X1 U64 ( .A(writeptr[2]), .B(n2), .C(n53), .D(readptr[2]), .Y(n69) );
  AOI22X1 U65 ( .A(writeptr[1]), .B(n2), .C(n53), .D(readptr[1]), .Y(n70) );
  AOI22X1 U66 ( .A(writeptr[11]), .B(n2), .C(n53), .D(readptr[11]), .Y(n71) );
  AOI22X1 U67 ( .A(writeptr[10]), .B(n2), .C(n53), .D(readptr[10]), .Y(n72) );
  AOI22X1 U68 ( .A(writeptr[0]), .B(n2), .C(n53), .D(readptr[0]), .Y(n73) );
  flex_counter_stuff_NUM_CNT_BITS12_1 ReadCnt ( .clk(clk), .n_rst(n_rst), 
        .clear(clear), .count_enable(r_enable), .rollover_val({1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .count_out(readptr) );
  flex_counter_stuff_NUM_CNT_BITS12_0 WriteCnt ( .clk(clk), .n_rst(n_rst), 
        .clear(clear), .count_enable(w_enable), .rollover_val({1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .count_out(writeptr) );
  myfifo_0_DW01_inc_0 add_34 ( .A({1'b0, readptr}), .SUM({N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INVX1 U5 ( .A(w_enable), .Y(n1) );
  INVX2 U6 ( .A(n2), .Y(n53) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  XNOR2X1 U8 ( .A(readptr[5]), .B(writeptr[5]), .Y(n5) );
  XNOR2X1 U9 ( .A(readptr[3]), .B(writeptr[3]), .Y(n4) );
  XNOR2X1 U10 ( .A(readptr[4]), .B(writeptr[4]), .Y(n3) );
  NAND3X1 U11 ( .A(n5), .B(n4), .C(n3), .Y(n10) );
  XNOR2X1 U12 ( .A(readptr[2]), .B(writeptr[2]), .Y(n8) );
  XNOR2X1 U13 ( .A(readptr[0]), .B(writeptr[0]), .Y(n7) );
  XNOR2X1 U14 ( .A(readptr[1]), .B(writeptr[1]), .Y(n6) );
  NAND3X1 U15 ( .A(n8), .B(n7), .C(n6), .Y(n9) );
  NOR2X1 U16 ( .A(n10), .B(n9), .Y(n21) );
  XNOR2X1 U17 ( .A(readptr[11]), .B(writeptr[11]), .Y(n14) );
  XNOR2X1 U18 ( .A(readptr[9]), .B(writeptr[9]), .Y(n13) );
  XNOR2X1 U19 ( .A(readptr[10]), .B(writeptr[10]), .Y(n12) );
  NAND3X1 U39 ( .A(n14), .B(n13), .C(n12), .Y(n19) );
  XNOR2X1 U40 ( .A(readptr[8]), .B(writeptr[8]), .Y(n17) );
  XNOR2X1 U41 ( .A(readptr[6]), .B(writeptr[6]), .Y(n16) );
  XNOR2X1 U42 ( .A(readptr[7]), .B(writeptr[7]), .Y(n15) );
  NAND3X1 U43 ( .A(n17), .B(n16), .C(n15), .Y(n18) );
  NOR2X1 U44 ( .A(n19), .B(n18), .Y(n20) );
  AND2X2 U45 ( .A(n21), .B(n20), .Y(empty) );
  INVX2 U46 ( .A(n73), .Y(addr[0]) );
  INVX2 U47 ( .A(n71), .Y(addr[11]) );
  INVX2 U48 ( .A(n70), .Y(addr[1]) );
  INVX2 U49 ( .A(n69), .Y(addr[2]) );
  INVX2 U50 ( .A(n68), .Y(addr[3]) );
  INVX2 U51 ( .A(n67), .Y(addr[4]) );
  INVX2 U52 ( .A(n66), .Y(addr[5]) );
  INVX2 U53 ( .A(n65), .Y(addr[6]) );
  INVX2 U54 ( .A(n64), .Y(addr[7]) );
  INVX2 U55 ( .A(n63), .Y(addr[8]) );
  INVX2 U56 ( .A(n62), .Y(addr[9]) );
  INVX2 U69 ( .A(n72), .Y(addr[10]) );
endmodule


module usb_receiver ( clk, n_rst, d_plus, d_minus, sram_o, r_enable, sram_i, 
        r_data, empty, packet_done, pid_rdy, pid, addr, r_enable_out, 
        w_enable_out );
  input [7:0] sram_o;
  output [7:0] sram_i;
  output [7:0] r_data;
  output [1:0] packet_done;
  output [3:0] pid;
  output [11:0] addr;
  input clk, n_rst, d_plus, d_minus, r_enable;
  output empty, pid_rdy, r_enable_out, w_enable_out;
  wire   r_enable, d_plus_sync, d_minus_sync, shift_enable, eop, d_orig,
         d_edge, rcving, shift_stop, byte_received, field_received, crc_rcv,
         sync_rst, clear, n1, n2;
  wire   [3:0] bit_cnt;
  wire   [4:0] crc5_data;
  wire   [15:0] crc16_data;
  wire   [7:0] rcv_data;
  assign r_enable_out = r_enable;

  sync_1 CNYS1 ( .clk(clk), .n_rst(n2), .async_in(d_plus), .sync_out(
        d_plus_sync) );
  sync_0 CNYS2 ( .clk(clk), .n_rst(n2), .async_in(d_minus), .sync_out(
        d_minus_sync) );
  decode DCD ( .clk(clk), .n_rst(n2), .d_plus(d_plus_sync), .shift_enable(
        shift_enable), .eop(eop), .d_orig(d_orig) );
  edge_detect_0 EDT ( .clk(clk), .n_rst(n2), .d_plus(d_plus_sync), .d_edge(
        d_edge) );
  eop_detect PDT ( .d_plus(d_plus_sync), .d_minus(d_minus_sync), .eop(eop) );
  timerRX TIM ( .clk(clk), .n_rst(n1), .d_edge(d_edge), .rcving(rcving), 
        .bit_cnt(bit_cnt), .shift_stop(shift_stop), .shift_enable(shift_enable), .byte_received(byte_received), .field_received(field_received) );
  bit_unstuff BST ( .clk(clk), .n_rst(n1), .d_orig(d_orig), .d_edge(d_edge), 
        .shift_enable(shift_enable), .shift_stop(shift_stop) );
  crc_check_5bit CRC5 ( .clk(clk), .n_rst(n2), .shift_enable(shift_enable), 
        .serial_in(d_orig), .eop(eop), .shift_stop(shift_stop), .crc_rcv(
        crc_rcv), .sync_rst(sync_rst), .parallel_out(crc5_data) );
  crc_check_16bit CRC16 ( .clk(clk), .n_rst(n1), .shift_enable(shift_enable), 
        .serial_in(d_orig), .eop(eop), .shift_stop(shift_stop), .crc_rcv(
        crc_rcv), .sync_rst(sync_rst), .parallel_out(crc16_data) );
  rcu RCU ( .clk(clk), .n_rst(n2), .d_edge(d_edge), .eop(eop), .shift_enable(
        shift_enable), .rcv_data(rcv_data), .crc5_data(crc5_data), 
        .crc16_data(crc16_data), .byte_received(byte_received), 
        .field_received(field_received), .sync_rst(sync_rst), .pid(pid), 
        .rcving(rcving), .w_enable(w_enable_out), .crc_rcv(crc_rcv), .pid_rdy(
        pid_rdy), .bit_cnt(bit_cnt), .packet_done(packet_done), .clear(clear)
         );
  shift_register SRG ( .clk(clk), .n_rst(n2), .shift_enable(shift_enable), 
        .d_orig(d_orig), .shift_stop(shift_stop), .rcv_data(rcv_data) );
  myfifo_0 OFIF ( .clk(clk), .n_rst(n1), .r_enable(r_enable), .w_enable(
        w_enable_out), .clear(clear), .data_i(rcv_data), .sram_o(sram_o), 
        .sram_i(sram_i), .data_o(r_data), .addr(addr), .empty(empty) );
  BUFX2 U1 ( .A(n_rst), .Y(n2) );
  BUFX2 U2 ( .A(n_rst), .Y(n1) );
endmodule


module usbcontroller ( n_rst, clk, sd_done, sd_err, tx_err, tx_done, rx_pid, 
        rx_packet_done, pid_rdy, sd_read, sd_write, tx_send_good, tx_send_bad, 
        tx_transmit, sd_addr_rdy );
  input [3:0] rx_pid;
  input [1:0] rx_packet_done;
  input n_rst, clk, sd_done, sd_err, tx_err, tx_done, pid_rdy;
  output sd_read, sd_write, tx_send_good, tx_send_bad, tx_transmit,
         sd_addr_rdy;
  wire   N57, N58, N59, N60, n152, n154, n155, n156, n1, n2, n3, n4, n5, n8,
         n10, n11, n12, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [31:0] state;
  wire   [31:0] nextstate;
  wire   [2:0] count_packet;
  assign tx_send_bad = 1'b0;

  LATCH \count_packet_reg[0]  ( .CLK(N57), .D(N58), .Q(count_packet[0]) );
  LATCH \count_packet_reg[1]  ( .CLK(N57), .D(N59), .Q(count_packet[1]) );
  LATCH \count_packet_reg[2]  ( .CLK(N57), .D(N60), .Q(count_packet[2]) );
  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        state[2]) );
  OAI21X1 U186 ( .A(count_packet[1]), .B(n154), .C(count_packet[2]), .Y(n156)
         );
  XOR2X1 U187 ( .A(count_packet[0]), .B(count_packet[1]), .Y(n154) );
  OR2X1 U188 ( .A(n152), .B(count_packet[0]), .Y(n155) );
  AOI21X1 U189 ( .A(count_packet[1]), .B(count_packet[0]), .C(count_packet[2]), 
        .Y(n152) );
  DFFSR \state_reg[4]  ( .D(nextstate[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[4]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[3]) );
  BUFX4 U3 ( .A(n17), .Y(n1) );
  INVX1 U6 ( .A(state[4]), .Y(n29) );
  AND2X2 U8 ( .A(n25), .B(n26), .Y(n2) );
  BUFX2 U9 ( .A(n58), .Y(n3) );
  BUFX2 U10 ( .A(n82), .Y(n4) );
  BUFX4 U11 ( .A(state[3]), .Y(n5) );
  INVX1 U12 ( .A(state[1]), .Y(n84) );
  AND2X2 U13 ( .A(n5), .B(n17), .Y(n10) );
  INVX1 U14 ( .A(n115), .Y(n8) );
  INVX1 U15 ( .A(n10), .Y(n30) );
  INVX2 U16 ( .A(state[0]), .Y(n115) );
  INVX2 U17 ( .A(n62), .Y(n11) );
  AND2X2 U18 ( .A(n32), .B(n31), .Y(n12) );
  INVX2 U19 ( .A(n12), .Y(n57) );
  INVX2 U22 ( .A(state[2]), .Y(n62) );
  NAND2X1 U23 ( .A(n15), .B(n2), .Y(n111) );
  INVX1 U24 ( .A(n111), .Y(sd_addr_rdy) );
  AND2X2 U25 ( .A(n11), .B(n10), .Y(n15) );
  INVX1 U26 ( .A(n15), .Y(n60) );
  AND2X1 U27 ( .A(n19), .B(n18), .Y(n16) );
  AND2X1 U28 ( .A(state[0]), .B(state[1]), .Y(n23) );
  AND2X2 U29 ( .A(n22), .B(n29), .Y(n17) );
  AND2X2 U30 ( .A(n23), .B(n29), .Y(n18) );
  AND2X2 U31 ( .A(n27), .B(n62), .Y(n19) );
  AND2X2 U32 ( .A(n116), .B(n60), .Y(n20) );
  AND2X2 U33 ( .A(n19), .B(state[4]), .Y(n21) );
  AND2X2 U34 ( .A(state[1]), .B(n115), .Y(n22) );
  INVX2 U35 ( .A(count_packet[1]), .Y(n24) );
  XOR2X1 U36 ( .A(n24), .B(count_packet[2]), .Y(n89) );
  INVX2 U37 ( .A(n89), .Y(n26) );
  INVX2 U38 ( .A(count_packet[0]), .Y(n25) );
  INVX2 U39 ( .A(state[3]), .Y(n27) );
  NAND2X1 U40 ( .A(n21), .B(n22), .Y(n32) );
  INVX2 U41 ( .A(n32), .Y(tx_transmit) );
  NAND2X1 U42 ( .A(n21), .B(n23), .Y(n31) );
  INVX2 U43 ( .A(n31), .Y(tx_send_good) );
  NAND2X1 U44 ( .A(state[2]), .B(n27), .Y(n121) );
  NOR2X1 U45 ( .A(state[1]), .B(n121), .Y(n28) );
  NAND3X1 U46 ( .A(state[4]), .B(n8), .C(n28), .Y(n65) );
  INVX2 U47 ( .A(n65), .Y(sd_write) );
  NAND3X1 U48 ( .A(n115), .B(n84), .C(n21), .Y(n36) );
  INVX2 U49 ( .A(n36), .Y(sd_read) );
  INVX2 U50 ( .A(n121), .Y(n40) );
  NAND2X1 U51 ( .A(n84), .B(n29), .Y(n37) );
  INVX2 U52 ( .A(n37), .Y(n39) );
  NAND3X1 U53 ( .A(n8), .B(n40), .C(n39), .Y(n99) );
  NAND3X1 U54 ( .A(n19), .B(n8), .C(n39), .Y(n35) );
  NAND3X1 U55 ( .A(n18), .B(n5), .C(n62), .Y(n117) );
  OAI21X1 U56 ( .A(n11), .B(n30), .C(n117), .Y(n58) );
  NAND3X1 U57 ( .A(state[4]), .B(n40), .C(n22), .Y(n61) );
  NAND2X1 U58 ( .A(n12), .B(n61), .Y(n33) );
  NOR2X1 U59 ( .A(n58), .B(n33), .Y(n34) );
  NAND3X1 U60 ( .A(n99), .B(n35), .C(n34), .Y(n82) );
  NAND2X1 U61 ( .A(n36), .B(n65), .Y(n52) );
  NOR2X1 U62 ( .A(n52), .B(n82), .Y(n44) );
  NOR2X1 U63 ( .A(n11), .B(n37), .Y(n38) );
  NAND3X1 U64 ( .A(n8), .B(n5), .C(n38), .Y(n78) );
  INVX2 U65 ( .A(n78), .Y(n92) );
  NOR2X1 U66 ( .A(n15), .B(n92), .Y(n43) );
  NAND2X1 U67 ( .A(n39), .B(n115), .Y(n107) );
  OAI21X1 U68 ( .A(n17), .B(n18), .C(n40), .Y(n87) );
  OAI21X1 U69 ( .A(n11), .B(n107), .C(n87), .Y(n41) );
  NOR2X1 U70 ( .A(n16), .B(n41), .Y(n42) );
  NAND3X1 U71 ( .A(n44), .B(n43), .C(n42), .Y(n48) );
  INVX2 U72 ( .A(rx_pid[1]), .Y(n46) );
  INVX2 U73 ( .A(rx_pid[2]), .Y(n45) );
  NAND3X1 U74 ( .A(rx_pid[0]), .B(n46), .C(n45), .Y(n47) );
  INVX2 U75 ( .A(n47), .Y(n91) );
  NAND3X1 U76 ( .A(n11), .B(n5), .C(n18), .Y(n68) );
  INVX2 U77 ( .A(n68), .Y(n54) );
  MUX2X1 U78 ( .B(n48), .A(n91), .S(n54), .Y(n59) );
  INVX2 U79 ( .A(tx_done), .Y(n105) );
  AOI22X1 U80 ( .A(state[4]), .B(n59), .C(n57), .D(n105), .Y(n56) );
  INVX2 U81 ( .A(rx_packet_done[1]), .Y(n119) );
  OAI21X1 U82 ( .A(rx_packet_done[0]), .B(n119), .C(n91), .Y(n50) );
  NAND2X1 U83 ( .A(n92), .B(n50), .Y(n63) );
  INVX2 U84 ( .A(n58), .Y(n97) );
  INVX2 U85 ( .A(tx_err), .Y(n64) );
  OAI22X1 U86 ( .A(n97), .B(n119), .C(n12), .D(n64), .Y(n51) );
  INVX2 U87 ( .A(n51), .Y(n70) );
  INVX2 U88 ( .A(n52), .Y(n80) );
  NAND2X1 U89 ( .A(n70), .B(n80), .Y(n53) );
  AOI21X1 U90 ( .A(n91), .B(n54), .C(n53), .Y(n55) );
  NAND3X1 U91 ( .A(n56), .B(n63), .C(n55), .Y(nextstate[4]) );
  NAND2X1 U92 ( .A(rx_packet_done[0]), .B(n119), .Y(n77) );
  INVX2 U93 ( .A(n77), .Y(n94) );
  AOI22X1 U94 ( .A(n94), .B(n3), .C(tx_done), .D(n57), .Y(n76) );
  INVX2 U95 ( .A(sd_done), .Y(n79) );
  AOI21X1 U96 ( .A(sd_write), .B(n79), .C(n16), .Y(n75) );
  INVX2 U97 ( .A(n59), .Y(n116) );
  OAI21X1 U98 ( .A(n20), .B(n62), .C(n61), .Y(n73) );
  OAI21X1 U99 ( .A(n65), .B(n64), .C(n63), .Y(n67) );
  INVX2 U100 ( .A(sd_err), .Y(n106) );
  OAI22X1 U101 ( .A(pid_rdy), .B(n87), .C(n80), .D(n106), .Y(n66) );
  OR2X1 U102 ( .A(n67), .B(n66), .Y(n81) );
  INVX2 U103 ( .A(n81), .Y(n71) );
  OAI22X1 U104 ( .A(rx_pid[3]), .B(n68), .C(n107), .D(n121), .Y(n69) );
  INVX2 U105 ( .A(n69), .Y(n112) );
  NAND3X1 U106 ( .A(n71), .B(n112), .C(n70), .Y(n72) );
  NOR2X1 U107 ( .A(n73), .B(n72), .Y(n74) );
  NAND3X1 U108 ( .A(n76), .B(n75), .C(n74), .Y(nextstate[2]) );
  OAI22X1 U109 ( .A(n80), .B(n79), .C(n78), .D(n77), .Y(n86) );
  NOR2X1 U110 ( .A(n4), .B(n81), .Y(n83) );
  OAI21X1 U111 ( .A(n20), .B(n84), .C(n83), .Y(n85) );
  OR2X1 U112 ( .A(n86), .B(n85), .Y(nextstate[1]) );
  INVX2 U113 ( .A(n87), .Y(n88) );
  AOI22X1 U114 ( .A(n19), .B(n1), .C(n88), .D(pid_rdy), .Y(n104) );
  OAI21X1 U115 ( .A(count_packet[0]), .B(n89), .C(n15), .Y(n90) );
  NAND2X1 U116 ( .A(n116), .B(n90), .Y(n96) );
  NAND2X1 U117 ( .A(n92), .B(n91), .Y(n98) );
  INVX2 U118 ( .A(n98), .Y(n118) );
  NAND3X1 U119 ( .A(rx_packet_done[1]), .B(n118), .C(rx_packet_done[0]), .Y(
        n93) );
  OAI21X1 U120 ( .A(n94), .B(n107), .C(n93), .Y(n95) );
  OAI21X1 U121 ( .A(n96), .B(n95), .C(n5), .Y(n103) );
  OAI21X1 U122 ( .A(rx_packet_done[0]), .B(n98), .C(n97), .Y(n101) );
  INVX2 U123 ( .A(n99), .Y(n100) );
  AOI21X1 U124 ( .A(n101), .B(n119), .C(n100), .Y(n102) );
  NAND3X1 U125 ( .A(n104), .B(n103), .C(n102), .Y(nextstate[3]) );
  AOI22X1 U126 ( .A(sd_write), .B(n106), .C(tx_send_good), .D(n105), .Y(n110)
         );
  INVX2 U127 ( .A(n107), .Y(n108) );
  OAI21X1 U128 ( .A(n1), .B(n108), .C(n19), .Y(n109) );
  OAI21X1 U129 ( .A(tx_err), .B(n110), .C(n109), .Y(n114) );
  NAND2X1 U130 ( .A(n112), .B(n111), .Y(n113) );
  NOR2X1 U131 ( .A(n114), .B(n113), .Y(n126) );
  OAI22X1 U132 ( .A(rx_packet_done[1]), .B(n117), .C(n116), .D(n115), .Y(n124)
         );
  MUX2X1 U133 ( .B(n18), .A(n1), .S(pid_rdy), .Y(n122) );
  OAI21X1 U134 ( .A(rx_packet_done[0]), .B(n119), .C(n118), .Y(n120) );
  OAI21X1 U135 ( .A(n122), .B(n121), .C(n120), .Y(n123) );
  NOR2X1 U136 ( .A(n124), .B(n123), .Y(n125) );
  NAND2X1 U137 ( .A(n126), .B(n125), .Y(nextstate[0]) );
  INVX2 U138 ( .A(pid_rdy), .Y(n128) );
  OAI21X1 U139 ( .A(n155), .B(n128), .C(n156), .Y(n130) );
  INVX2 U140 ( .A(n130), .Y(n127) );
  NAND2X1 U141 ( .A(n128), .B(n127), .Y(N57) );
  NOR2X1 U142 ( .A(n152), .B(n130), .Y(N60) );
  INVX2 U143 ( .A(n154), .Y(n129) );
  NOR2X1 U144 ( .A(n130), .B(n129), .Y(N59) );
  NOR2X1 U145 ( .A(count_packet[0]), .B(n130), .Y(N58) );
endmodule


module Sd_Usb_t ( clk, n_rst, d_plus, d_minus, SDCLK, SDDI, SDDO, SDCS );
  input clk, n_rst, d_plus, d_minus, SDCLK, SDDI, SDDO, SDCS;
  wire   sd_read, sd_write, sd_addr_ready, tx_sd_enable, rx_FIFO_empty,
         sd_done, sd_err, sd_rx_enable, sd_FIFO_empty, tx_send_good,
         tx_transmit, tx_done, rx_pid_rdy;
  wire   [7:0] rx_r_data;
  wire   [7:0] sd_tx_data;
  wire   [3:0] rx_pid;
  wire   [1:0] rx_packet_done;

  sd_interface SD ( .clk(clk), .n_rst(n_rst), .sd_read(sd_read), .sd_write(
        sd_write), .sd_addr_ready(sd_addr_ready), .fifo_in(rx_r_data), 
        .tx_r_enable(tx_sd_enable), .test_data_fromFIFO({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .rx_FIFO_empty(rx_FIFO_empty), 
        .sd_done(sd_done), .sd_err(sd_err), .fifo_out(sd_tx_data), 
        .r_enable_o(sd_rx_enable), .sd_FIFO_empty(sd_FIFO_empty), .SDDI(SDDI)
         );
  usb_transmitter transmit ( .clk(clk), .n_rst(n_rst), .tx_transmit(
        tx_transmit), .tx_send_good(tx_send_good), .tx_send_bad(1'b0), .empty(
        sd_FIFO_empty), .sd_data(sd_tx_data), .load_enable_sd(tx_sd_enable), 
        .tx_done(tx_done) );
  usb_receiver receiveTOP ( .clk(clk), .n_rst(n_rst), .d_plus(d_plus), 
        .d_minus(d_minus), .sram_o({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r_enable(sd_rx_enable), .r_data(rx_r_data), .empty(
        rx_FIFO_empty), .packet_done(rx_packet_done), .pid_rdy(rx_pid_rdy), 
        .pid(rx_pid) );
  usbcontroller MCU ( .n_rst(n_rst), .clk(clk), .sd_done(sd_done), .sd_err(
        sd_err), .tx_err(1'b0), .tx_done(tx_done), .rx_pid(rx_pid), 
        .rx_packet_done(rx_packet_done), .pid_rdy(rx_pid_rdy), .sd_read(
        sd_read), .sd_write(sd_write), .tx_send_good(tx_send_good), 
        .tx_transmit(tx_transmit), .sd_addr_rdy(sd_addr_ready) );
endmodule

module  Sd_Usb ( clk, n_rst, d_plus, d_minus, SDCLK, SDDI, SDDO, SDCS );

input   clk, n_rst, d_plus, d_minus, SDCLK, SDDI, SDDO, SDCS;
wire	nclk, nn_rst, nd_plus, nd_minus, nSDCLK, nSDDI, nSDDO, nSDCS;

        Sd_Usb_t I0 ( .clk(nclk), .n_rst(nn_rst), .d_plus(nd_plus), .d_minus(nd_minus), 
	.SDCLK(nSDCLK), .SDDI(nSDDI), .SDDO(nSDDO), .SDCS(nSDCS));

PADVDD U1 (  );
PADGND U2 (  );
PADINC U3 ( .DI(nSDCLK), .YPAD(SDCLK) );
PADINC U4 ( .DI(nSDCS), .YPAD(SDCS) );
PADINC U5 ( .DI(nSDDI), .YPAD(SDDI) );
PADINC U6 ( .DI(nSDDO), .YPAD(SDDO) );
PADINC U7 ( .DI(nclk), .YPAD(clk) );
PADINC U8 ( .DI(nd_minus), .YPAD(d_minus) );
PADINC U9 ( .DI(nd_plus), .YPAD(d_plus) );
PADINC U10 ( .DI(nn_rst), .YPAD(n_rst) );

endmodule
