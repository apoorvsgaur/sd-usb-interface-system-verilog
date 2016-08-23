/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Dec 14 14:57:07 2015
/////////////////////////////////////////////////////////////


module flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n18,
         n20, n21, n23, n24, n25, n27, n28, n29, n31, n35, n36, n38, n39, n40,
         n42, n43, n44, n46, n47, n48, n50, n52, n54, n55, n56, n57, n58, n59,
         n61, n62, n65, n66, n68, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118;
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

  NOR2X1 U5 ( .A(n1), .B(n5), .Y(n4) );
  NAND2X1 U6 ( .A(n6), .B(n2), .Y(n5) );
  NOR2X1 U7 ( .A(n7), .B(n11), .Y(n6) );
  NOR2X1 U10 ( .A(n9), .B(n114), .Y(n8) );
  NAND2X1 U11 ( .A(n10), .B(n2), .Y(n9) );
  NAND2X1 U13 ( .A(n12), .B(n16), .Y(n11) );
  NOR2X1 U17 ( .A(n111), .B(n15), .Y(n14) );
  NAND2X1 U18 ( .A(n16), .B(n2), .Y(n15) );
  NOR2X1 U24 ( .A(n20), .B(n28), .Y(n2) );
  NAND2X1 U25 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U29 ( .A(n24), .B(n1), .Y(n23) );
  NAND2X1 U30 ( .A(n25), .B(n29), .Y(n24) );
  NOR2X1 U34 ( .A(n28), .B(n111), .Y(n27) );
  NAND2X1 U37 ( .A(n31), .B(n35), .Y(n28) );
  NOR2X1 U47 ( .A(n39), .B(n47), .Y(n38) );
  NAND2X1 U48 ( .A(n40), .B(n44), .Y(n39) );
  NOR2X1 U52 ( .A(n43), .B(n56), .Y(n42) );
  NAND2X1 U53 ( .A(n44), .B(n48), .Y(n43) );
  NOR2X1 U57 ( .A(n107), .B(n56), .Y(n46) );
  NAND2X1 U60 ( .A(n50), .B(n54), .Y(n47) );
  XOR2X1 U63 ( .A(n56), .B(n55), .Y(SUM[4]) );
  NOR2X1 U64 ( .A(n55), .B(n56), .Y(n52) );
  NOR2X1 U70 ( .A(n65), .B(n58), .Y(n57) );
  NAND2X1 U71 ( .A(n59), .B(n62), .Y(n58) );
  NAND2X1 U75 ( .A(n62), .B(n109), .Y(n61) );
  NAND2X1 U80 ( .A(n66), .B(n68), .Y(n65) );
  INVX1 U87 ( .A(n7), .Y(n115) );
  INVX1 U88 ( .A(n16), .Y(n113) );
  INVX1 U89 ( .A(n35), .Y(n36) );
  NOR2X1 U90 ( .A(n39), .B(n47), .Y(n105) );
  XNOR2X1 U91 ( .A(n114), .B(n118), .Y(SUM[8]) );
  AND2X2 U92 ( .A(n2), .B(n108), .Y(n18) );
  INVX1 U93 ( .A(n28), .Y(n29) );
  NAND2X1 U94 ( .A(n66), .B(n68), .Y(n106) );
  BUFX2 U95 ( .A(n47), .Y(n107) );
  AND2X2 U96 ( .A(n57), .B(n105), .Y(n108) );
  INVX1 U97 ( .A(n47), .Y(n48) );
  AND2X2 U98 ( .A(n66), .B(n68), .Y(n109) );
  NOR2X1 U99 ( .A(n106), .B(n58), .Y(n110) );
  INVX2 U100 ( .A(n108), .Y(n111) );
  INVX2 U101 ( .A(n117), .Y(n114) );
  BUFX2 U102 ( .A(n68), .Y(n112) );
  INVX1 U103 ( .A(n108), .Y(n1) );
  XNOR2X1 U104 ( .A(n18), .B(n113), .Y(SUM[12]) );
  XOR2X1 U105 ( .A(n8), .B(n115), .Y(SUM[14]) );
  INVX2 U106 ( .A(n36), .Y(n118) );
  XOR2X1 U107 ( .A(n52), .B(n50), .Y(SUM[5]) );
  XOR2X1 U108 ( .A(n14), .B(n12), .Y(SUM[13]) );
  XOR2X1 U109 ( .A(n27), .B(n25), .Y(SUM[10]) );
  XOR2X1 U110 ( .A(n46), .B(n44), .Y(SUM[6]) );
  XNOR2X1 U111 ( .A(n116), .B(n31), .Y(SUM[9]) );
  NAND2X1 U112 ( .A(n118), .B(n117), .Y(n116) );
  XOR2X1 U113 ( .A(n4), .B(A[15]), .Y(SUM[15]) );
  XOR2X1 U114 ( .A(n66), .B(n112), .Y(SUM[1]) );
  XOR2X1 U115 ( .A(n23), .B(n21), .Y(SUM[11]) );
  XNOR2X1 U116 ( .A(n61), .B(n59), .Y(SUM[3]) );
  XOR2X1 U117 ( .A(n109), .B(n62), .Y(SUM[2]) );
  XOR2X1 U118 ( .A(n42), .B(n40), .Y(SUM[7]) );
  INVX2 U119 ( .A(n110), .Y(n56) );
  AND2X2 U120 ( .A(n57), .B(n38), .Y(n117) );
  INVX1 U121 ( .A(n112), .Y(SUM[0]) );
  INVX2 U122 ( .A(A[14]), .Y(n7) );
  INVX2 U123 ( .A(n54), .Y(n55) );
  INVX2 U124 ( .A(n11), .Y(n10) );
endmodule


module flex_counter_NUM_CNT_BITS16_1 ( n_rst, count_enable, clear, clk, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, N4, N5,
         N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         n118, n1, n2, n4, n5, n27, n28, n30, n31, n34, n35, n37, n38, n39,
         n40, n41, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153;

  DFFSR \count_out_reg[0]  ( .D(n138), .CLK(clk), .R(n46), .S(1'b1), .Q(n163)
         );
  DFFSR \count_out_reg[1]  ( .D(n139), .CLK(clk), .R(n46), .S(1'b1), .Q(n162)
         );
  DFFSR \count_out_reg[2]  ( .D(n140), .CLK(clk), .R(n46), .S(1'b1), .Q(n161)
         );
  DFFSR \count_out_reg[3]  ( .D(n141), .CLK(clk), .R(n46), .S(1'b1), .Q(n160)
         );
  DFFSR \count_out_reg[4]  ( .D(n142), .CLK(clk), .R(n46), .S(1'b1), .Q(n159)
         );
  DFFSR \count_out_reg[5]  ( .D(n143), .CLK(clk), .R(n46), .S(1'b1), .Q(n158)
         );
  DFFSR \count_out_reg[6]  ( .D(n144), .CLK(clk), .R(n46), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n145), .CLK(clk), .R(n46), .S(1'b1), .Q(n157)
         );
  DFFSR \count_out_reg[8]  ( .D(n146), .CLK(clk), .R(n46), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[9]  ( .D(n147), .CLK(clk), .R(n46), .S(1'b1), .Q(n156)
         );
  DFFSR \count_out_reg[10]  ( .D(n148), .CLK(clk), .R(n46), .S(1'b1), .Q(n155)
         );
  DFFSR \count_out_reg[11]  ( .D(n149), .CLK(clk), .R(n46), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[12]  ( .D(n150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        n154) );
  DFFSR \count_out_reg[13]  ( .D(n151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \count_out_reg[14]  ( .D(n152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \count_out_reg[15]  ( .D(n153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[15]) );
  DFFSR rollover_flag_reg ( .D(n118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 add_29 ( .A({count_out[15:8], n34, 
        n35, n38, n159, n2, n31, n37, n163}), .SUM({N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  INVX4 U20 ( .A(n43), .Y(n44) );
  INVX8 U21 ( .A(n102), .Y(n39) );
  INVX2 U22 ( .A(rollover_val[14]), .Y(n27) );
  INVX2 U23 ( .A(rollover_val[8]), .Y(n28) );
  AND2X1 U24 ( .A(n122), .B(n121), .Y(n1) );
  INVX2 U25 ( .A(n75), .Y(n102) );
  INVX4 U26 ( .A(n98), .Y(n2) );
  INVX1 U27 ( .A(n98), .Y(count_out[3]) );
  BUFX2 U28 ( .A(n31), .Y(count_out[2]) );
  INVX1 U29 ( .A(N9), .Y(n80) );
  INVX4 U30 ( .A(n43), .Y(n45) );
  INVX4 U31 ( .A(n135), .Y(n43) );
  BUFX2 U32 ( .A(n163), .Y(count_out[0]) );
  INVX1 U33 ( .A(n35), .Y(n4) );
  BUFX2 U34 ( .A(n38), .Y(count_out[5]) );
  INVX1 U35 ( .A(count_out[3]), .Y(n5) );
  INVX4 U36 ( .A(n85), .Y(n35) );
  BUFX4 U37 ( .A(n154), .Y(count_out[12]) );
  BUFX4 U38 ( .A(n37), .Y(count_out[1]) );
  INVX1 U39 ( .A(count_out[5]), .Y(n79) );
  BUFX2 U40 ( .A(n34), .Y(count_out[7]) );
  INVX1 U41 ( .A(count_out[1]), .Y(n92) );
  XOR2X1 U42 ( .A(N18), .B(n27), .Y(n129) );
  XNOR2X1 U43 ( .A(N12), .B(n28), .Y(n119) );
  BUFX4 U44 ( .A(n155), .Y(count_out[10]) );
  INVX1 U45 ( .A(n34), .Y(n30) );
  NAND2X1 U46 ( .A(n1), .B(n120), .Y(n123) );
  BUFX4 U47 ( .A(n158), .Y(n38) );
  BUFX4 U48 ( .A(n162), .Y(n37) );
  BUFX4 U49 ( .A(n161), .Y(n31) );
  INVX1 U50 ( .A(count_out[2]), .Y(n99) );
  BUFX4 U51 ( .A(n156), .Y(count_out[9]) );
  BUFX2 U52 ( .A(n159), .Y(count_out[4]) );
  INVX4 U53 ( .A(n86), .Y(n34) );
  OR2X2 U54 ( .A(clear), .B(count_enable), .Y(n135) );
  INVX2 U55 ( .A(n47), .Y(n46) );
  INVX2 U56 ( .A(n_rst), .Y(n47) );
  INVX8 U57 ( .A(n39), .Y(n40) );
  INVX8 U58 ( .A(n39), .Y(n41) );
  INVX1 U59 ( .A(N12), .Y(n88) );
  INVX1 U60 ( .A(N18), .Y(n84) );
  INVX1 U61 ( .A(count_out[0]), .Y(n90) );
  XOR2X1 U62 ( .A(count_out[9]), .B(rollover_val[9]), .Y(n52) );
  XNOR2X1 U63 ( .A(count_out[1]), .B(rollover_val[1]), .Y(n50) );
  XNOR2X1 U64 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n49) );
  INVX2 U65 ( .A(count_out[8]), .Y(n87) );
  XOR2X1 U66 ( .A(n87), .B(rollover_val[8]), .Y(n48) );
  NAND3X1 U67 ( .A(n50), .B(n49), .C(n48), .Y(n51) );
  NOR2X1 U68 ( .A(n52), .B(n51), .Y(n59) );
  XOR2X1 U69 ( .A(count_out[10]), .B(rollover_val[10]), .Y(n57) );
  XNOR2X1 U70 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n55) );
  XNOR2X1 U71 ( .A(count_out[3]), .B(rollover_val[3]), .Y(n54) );
  INVX2 U72 ( .A(count_out[11]), .Y(n94) );
  XOR2X1 U73 ( .A(n94), .B(rollover_val[11]), .Y(n53) );
  NAND3X1 U74 ( .A(n55), .B(n54), .C(n53), .Y(n56) );
  NOR2X1 U75 ( .A(n57), .B(n56), .Y(n58) );
  NAND2X1 U76 ( .A(n59), .B(n58), .Y(n73) );
  XOR2X1 U77 ( .A(count_out[12]), .B(rollover_val[12]), .Y(n64) );
  XNOR2X1 U78 ( .A(rollover_val[4]), .B(count_out[4]), .Y(n62) );
  XNOR2X1 U79 ( .A(count_out[5]), .B(rollover_val[5]), .Y(n61) );
  INVX2 U80 ( .A(count_out[13]), .Y(n76) );
  XOR2X1 U81 ( .A(n76), .B(rollover_val[13]), .Y(n60) );
  NAND3X1 U82 ( .A(n62), .B(n61), .C(n60), .Y(n63) );
  NOR2X1 U83 ( .A(n64), .B(n63), .Y(n71) );
  XOR2X1 U84 ( .A(count_out[15]), .B(rollover_val[15]), .Y(n69) );
  XNOR2X1 U85 ( .A(count_out[7]), .B(rollover_val[7]), .Y(n67) );
  XNOR2X1 U86 ( .A(rollover_val[6]), .B(n35), .Y(n66) );
  INVX2 U87 ( .A(count_out[14]), .Y(n83) );
  XOR2X1 U88 ( .A(n83), .B(rollover_val[14]), .Y(n65) );
  NAND3X1 U89 ( .A(n67), .B(n66), .C(n65), .Y(n68) );
  NOR2X1 U90 ( .A(n69), .B(n68), .Y(n70) );
  NAND2X1 U91 ( .A(n71), .B(n70), .Y(n72) );
  OAI21X1 U92 ( .A(n73), .B(n72), .C(count_enable), .Y(n74) );
  NOR2X1 U93 ( .A(clear), .B(n74), .Y(n75) );
  INVX2 U94 ( .A(N17), .Y(n77) );
  OAI22X1 U95 ( .A(n77), .B(n40), .C(n44), .D(n76), .Y(n151) );
  INVX2 U96 ( .A(N16), .Y(n126) );
  INVX2 U97 ( .A(count_out[12]), .Y(n78) );
  OAI22X1 U98 ( .A(n41), .B(n126), .C(n44), .D(n78), .Y(n150) );
  OAI22X1 U99 ( .A(n80), .B(n40), .C(n44), .D(n79), .Y(n143) );
  INVX2 U100 ( .A(N8), .Y(n82) );
  INVX2 U101 ( .A(count_out[4]), .Y(n81) );
  OAI22X1 U102 ( .A(n41), .B(n82), .C(n44), .D(n81), .Y(n142) );
  OAI22X1 U103 ( .A(n84), .B(n40), .C(n44), .D(n83), .Y(n152) );
  INVX2 U104 ( .A(N10), .Y(n103) );
  INVX2 U105 ( .A(count_out[6]), .Y(n85) );
  OAI22X1 U106 ( .A(n41), .B(n103), .C(n44), .D(n4), .Y(n144) );
  INVX2 U107 ( .A(N11), .Y(n105) );
  INVX2 U108 ( .A(n157), .Y(n86) );
  OAI22X1 U109 ( .A(n105), .B(n40), .C(n44), .D(n30), .Y(n145) );
  OAI22X1 U110 ( .A(n41), .B(n88), .C(n45), .D(n87), .Y(n146) );
  INVX2 U111 ( .A(N13), .Y(n104) );
  INVX2 U112 ( .A(count_out[9]), .Y(n89) );
  OAI22X1 U113 ( .A(n104), .B(n40), .C(n45), .D(n89), .Y(n147) );
  INVX2 U114 ( .A(N4), .Y(n91) );
  OAI22X1 U115 ( .A(n41), .B(n91), .C(n45), .D(n90), .Y(n138) );
  INVX2 U116 ( .A(N5), .Y(n93) );
  OAI22X1 U117 ( .A(n93), .B(n40), .C(n45), .D(n92), .Y(n139) );
  INVX2 U118 ( .A(N15), .Y(n95) );
  OAI22X1 U119 ( .A(n41), .B(n95), .C(n45), .D(n94), .Y(n149) );
  INVX2 U120 ( .A(N14), .Y(n97) );
  INVX2 U121 ( .A(count_out[10]), .Y(n96) );
  OAI22X1 U122 ( .A(n97), .B(n40), .C(n45), .D(n96), .Y(n148) );
  INVX2 U123 ( .A(N7), .Y(n112) );
  INVX2 U124 ( .A(n160), .Y(n98) );
  OAI22X1 U125 ( .A(n41), .B(n112), .C(n45), .D(n5), .Y(n141) );
  INVX2 U126 ( .A(N6), .Y(n111) );
  OAI22X1 U127 ( .A(n111), .B(n40), .C(n45), .D(n99), .Y(n140) );
  INVX2 U128 ( .A(N19), .Y(n101) );
  INVX2 U129 ( .A(count_out[15]), .Y(n100) );
  OAI22X1 U130 ( .A(n41), .B(n101), .C(n45), .D(n100), .Y(n153) );
  INVX2 U131 ( .A(rollover_flag), .Y(n137) );
  XOR2X1 U132 ( .A(N17), .B(rollover_val[13]), .Y(n125) );
  XOR2X1 U133 ( .A(n103), .B(rollover_val[6]), .Y(n108) );
  XOR2X1 U134 ( .A(n104), .B(rollover_val[9]), .Y(n107) );
  XOR2X1 U135 ( .A(n105), .B(rollover_val[7]), .Y(n106) );
  NAND3X1 U136 ( .A(n108), .B(n107), .C(n106), .Y(n124) );
  XNOR2X1 U137 ( .A(rollover_val[1]), .B(N5), .Y(n110) );
  XNOR2X1 U138 ( .A(rollover_val[0]), .B(N4), .Y(n109) );
  NAND2X1 U139 ( .A(n110), .B(n109), .Y(n116) );
  XOR2X1 U140 ( .A(n111), .B(rollover_val[2]), .Y(n114) );
  XOR2X1 U141 ( .A(n112), .B(rollover_val[3]), .Y(n113) );
  NAND2X1 U142 ( .A(n114), .B(n113), .Y(n115) );
  NOR2X1 U143 ( .A(n116), .B(n115), .Y(n122) );
  XNOR2X1 U144 ( .A(rollover_val[4]), .B(N8), .Y(n121) );
  XOR2X1 U145 ( .A(N9), .B(rollover_val[5]), .Y(n117) );
  NOR3X1 U146 ( .A(clear), .B(n119), .C(n117), .Y(n120) );
  NOR3X1 U147 ( .A(n125), .B(n124), .C(n123), .Y(n134) );
  XNOR2X1 U148 ( .A(rollover_val[15]), .B(N19), .Y(n133) );
  XOR2X1 U149 ( .A(N15), .B(rollover_val[11]), .Y(n131) );
  XNOR2X1 U150 ( .A(N14), .B(rollover_val[10]), .Y(n128) );
  XOR2X1 U151 ( .A(n126), .B(rollover_val[12]), .Y(n127) );
  NAND3X1 U152 ( .A(n129), .B(n128), .C(n127), .Y(n130) );
  NOR2X1 U153 ( .A(n131), .B(n130), .Y(n132) );
  NAND3X1 U154 ( .A(n133), .B(n132), .C(n134), .Y(n136) );
  MUX2X1 U155 ( .B(n137), .A(n136), .S(n44), .Y(n118) );
endmodule


module flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n15, n16, n18, n19,
         n20, n21, n23, n24, n25, n27, n28, n29, n31, n33, n35, n36, n38, n39,
         n40, n42, n43, n44, n46, n47, n48, n50, n52, n54, n55, n56, n57, n58,
         n59, n61, n62, n65, n66, n68, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126;
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
  NAND2X1 U6 ( .A(n6), .B(n2), .Y(n5) );
  NOR2X1 U7 ( .A(n7), .B(n11), .Y(n6) );
  NOR2X1 U10 ( .A(n121), .B(n9), .Y(n8) );
  NAND2X1 U11 ( .A(n10), .B(n117), .Y(n9) );
  NAND2X1 U13 ( .A(n12), .B(n16), .Y(n11) );
  NAND2X1 U18 ( .A(n107), .B(n117), .Y(n15) );
  NOR2X1 U22 ( .A(n19), .B(n115), .Y(n18) );
  NOR2X1 U24 ( .A(n20), .B(n28), .Y(n2) );
  NAND2X1 U25 ( .A(n21), .B(n25), .Y(n20) );
  NOR2X1 U29 ( .A(n24), .B(n118), .Y(n23) );
  NAND2X1 U30 ( .A(n25), .B(n29), .Y(n24) );
  NOR2X1 U34 ( .A(n28), .B(n121), .Y(n27) );
  NAND2X1 U37 ( .A(n31), .B(n35), .Y(n28) );
  XOR2X1 U40 ( .A(n121), .B(n36), .Y(SUM[8]) );
  NOR2X1 U41 ( .A(n36), .B(n121), .Y(n33) );
  NOR2X1 U47 ( .A(n47), .B(n39), .Y(n38) );
  NAND2X1 U48 ( .A(n40), .B(n44), .Y(n39) );
  NOR2X1 U52 ( .A(n43), .B(n120), .Y(n42) );
  NAND2X1 U53 ( .A(n113), .B(n48), .Y(n43) );
  NOR2X1 U57 ( .A(n116), .B(n120), .Y(n46) );
  NAND2X1 U60 ( .A(n50), .B(n54), .Y(n47) );
  XOR2X1 U63 ( .A(n120), .B(n55), .Y(SUM[4]) );
  NOR2X1 U64 ( .A(n55), .B(n120), .Y(n52) );
  NOR2X1 U70 ( .A(n58), .B(n65), .Y(n57) );
  NAND2X1 U71 ( .A(n59), .B(n62), .Y(n58) );
  NAND2X1 U75 ( .A(n108), .B(n105), .Y(n61) );
  NAND2X1 U80 ( .A(n66), .B(n68), .Y(n65) );
  AND2X2 U87 ( .A(n68), .B(n66), .Y(n105) );
  INVX1 U88 ( .A(n16), .Y(n106) );
  INVX2 U89 ( .A(n106), .Y(n107) );
  BUFX2 U90 ( .A(n62), .Y(n108) );
  BUFX2 U91 ( .A(n68), .Y(n109) );
  BUFX2 U92 ( .A(n50), .Y(n110) );
  INVX1 U93 ( .A(n59), .Y(n111) );
  INVX2 U94 ( .A(n111), .Y(n112) );
  BUFX2 U95 ( .A(n44), .Y(n113) );
  BUFX2 U96 ( .A(n66), .Y(n114) );
  INVX1 U97 ( .A(n125), .Y(n115) );
  NAND2X1 U98 ( .A(n50), .B(n54), .Y(n116) );
  NOR2X1 U99 ( .A(n20), .B(n28), .Y(n117) );
  INVX1 U100 ( .A(n125), .Y(n118) );
  INVX2 U101 ( .A(n109), .Y(SUM[0]) );
  INVX1 U102 ( .A(A[14]), .Y(n7) );
  INVX2 U103 ( .A(n56), .Y(n119) );
  INVX4 U104 ( .A(n119), .Y(n120) );
  INVX2 U105 ( .A(n125), .Y(n121) );
  INVX2 U106 ( .A(n125), .Y(n1) );
  INVX2 U107 ( .A(n3), .Y(n122) );
  XNOR2X1 U108 ( .A(n123), .B(n122), .Y(SUM[15]) );
  OR2X2 U109 ( .A(n1), .B(n5), .Y(n123) );
  XOR2X1 U110 ( .A(n18), .B(n107), .Y(SUM[12]) );
  XOR2X1 U111 ( .A(n27), .B(n25), .Y(SUM[10]) );
  XOR2X1 U112 ( .A(n114), .B(n109), .Y(SUM[1]) );
  XOR2X1 U113 ( .A(n46), .B(n113), .Y(SUM[6]) );
  XOR2X1 U114 ( .A(n52), .B(n110), .Y(SUM[5]) );
  XOR2X1 U115 ( .A(n23), .B(n21), .Y(SUM[11]) );
  XNOR2X1 U116 ( .A(n124), .B(n12), .Y(SUM[13]) );
  NAND2X1 U117 ( .A(n125), .B(n126), .Y(n124) );
  XOR2X1 U118 ( .A(n33), .B(n31), .Y(SUM[9]) );
  XOR2X1 U119 ( .A(n42), .B(n40), .Y(SUM[7]) );
  XOR2X1 U120 ( .A(n105), .B(n108), .Y(SUM[2]) );
  XNOR2X1 U121 ( .A(n61), .B(n112), .Y(SUM[3]) );
  INVX1 U122 ( .A(n54), .Y(n55) );
  INVX1 U123 ( .A(n116), .Y(n48) );
  INVX1 U124 ( .A(n2), .Y(n19) );
  INVX1 U125 ( .A(n28), .Y(n29) );
  INVX1 U126 ( .A(n15), .Y(n126) );
  INVX1 U127 ( .A(n57), .Y(n56) );
  AND2X2 U128 ( .A(n57), .B(n38), .Y(n125) );
  INVX2 U129 ( .A(n35), .Y(n36) );
  INVX2 U130 ( .A(A[15]), .Y(n3) );
  INVX2 U131 ( .A(n11), .Y(n10) );
endmodule


module flex_counter_NUM_CNT_BITS16_0 ( n_rst, count_enable, clear, clk, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, N4,
         N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         n1, n19, n20, n22, n24, n25, n26, n27, n29, n30, n32, n35, n36, n39,
         n40, n41, n42, n45, n46, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158;

  DFFSR \count_out_reg[7]  ( .D(n149), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n165) );
  DFFSR \count_out_reg[9]  ( .D(n151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n163) );
  DFFSR \count_out_reg[12]  ( .D(n154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[12]) );
  flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 add_29 ( .A({count_out[15:13], n30, 
        n39, count_out[10:7], n166, n45, count_out[4], n169, n40, n26, n49}), 
        .SUM({N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4}) );
  DFFSR \count_out_reg[15]  ( .D(n157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[15]) );
  DFFSR \count_out_reg[14]  ( .D(n156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \count_out_reg[13]  ( .D(n155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \count_out_reg[11]  ( .D(n153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[10]  ( .D(n152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        n162) );
  DFFSR \count_out_reg[8]  ( .D(n150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n164) );
  DFFSR \count_out_reg[6]  ( .D(n148), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n166) );
  DFFSR \count_out_reg[5]  ( .D(n147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n167) );
  DFFSR \count_out_reg[4]  ( .D(n146), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n168) );
  DFFSR \count_out_reg[3]  ( .D(n145), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n169) );
  DFFSR \count_out_reg[2]  ( .D(n144), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n170) );
  DFFSR \count_out_reg[1]  ( .D(n143), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n171) );
  DFFSR \count_out_reg[0]  ( .D(n142), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n172) );
  DFFSR rollover_flag_reg ( .D(n158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  INVX2 U3 ( .A(rollover_val[13]), .Y(n20) );
  INVX2 U4 ( .A(n48), .Y(n49) );
  INVX2 U5 ( .A(rollover_val[15]), .Y(n32) );
  INVX2 U6 ( .A(n29), .Y(n30) );
  AND2X1 U8 ( .A(n115), .B(n116), .Y(n1) );
  INVX1 U9 ( .A(count_out[7]), .Y(n24) );
  INVX1 U26 ( .A(n39), .Y(n19) );
  XNOR2X1 U27 ( .A(N17), .B(n20), .Y(n131) );
  BUFX2 U28 ( .A(n170), .Y(n40) );
  BUFX2 U29 ( .A(n171), .Y(count_out[1]) );
  BUFX4 U30 ( .A(n168), .Y(count_out[4]) );
  NAND2X1 U31 ( .A(n22), .B(n121), .Y(n123) );
  AND2X1 U32 ( .A(n120), .B(n122), .Y(n22) );
  INVX2 U33 ( .A(n24), .Y(n25) );
  INVX4 U34 ( .A(n92), .Y(n39) );
  INVX1 U35 ( .A(count_out[5]), .Y(n82) );
  INVX4 U36 ( .A(n46), .Y(count_out[6]) );
  BUFX2 U37 ( .A(n171), .Y(n26) );
  BUFX2 U38 ( .A(n170), .Y(count_out[2]) );
  INVX2 U39 ( .A(clear), .Y(n121) );
  INVX1 U40 ( .A(count_out[6]), .Y(n86) );
  INVX2 U41 ( .A(count_enable), .Y(n27) );
  INVX1 U42 ( .A(count_out[13]), .Y(n79) );
  INVX1 U43 ( .A(count_out[12]), .Y(n29) );
  INVX4 U44 ( .A(n48), .Y(count_out[0]) );
  NAND2X1 U45 ( .A(n114), .B(n1), .Y(n124) );
  XNOR2X1 U46 ( .A(N19), .B(n32), .Y(n130) );
  BUFX4 U47 ( .A(n167), .Y(count_out[5]) );
  BUFX2 U48 ( .A(n167), .Y(n45) );
  BUFX4 U49 ( .A(n164), .Y(count_out[8]) );
  INVX1 U50 ( .A(n27), .Y(n35) );
  INVX1 U51 ( .A(count_out[10]), .Y(n93) );
  INVX1 U52 ( .A(count_out[14]), .Y(n84) );
  INVX2 U53 ( .A(count_out[11]), .Y(n92) );
  BUFX2 U54 ( .A(count_out[4]), .Y(n36) );
  INVX8 U55 ( .A(n41), .Y(n50) );
  INVX1 U56 ( .A(N17), .Y(n80) );
  BUFX4 U57 ( .A(n163), .Y(count_out[9]) );
  INVX8 U58 ( .A(n42), .Y(n51) );
  BUFX4 U59 ( .A(n165), .Y(count_out[7]) );
  AND2X2 U60 ( .A(n78), .B(n121), .Y(n41) );
  AND2X2 U61 ( .A(n121), .B(n27), .Y(n42) );
  BUFX4 U62 ( .A(n162), .Y(count_out[10]) );
  INVX1 U63 ( .A(n25), .Y(n87) );
  INVX1 U64 ( .A(n36), .Y(n83) );
  BUFX4 U65 ( .A(n169), .Y(count_out[3]) );
  INVX2 U66 ( .A(n166), .Y(n46) );
  INVX1 U67 ( .A(count_out[3]), .Y(n95) );
  INVX1 U68 ( .A(n30), .Y(n81) );
  INVX1 U69 ( .A(count_out[2]), .Y(n96) );
  INVX2 U70 ( .A(n172), .Y(n48) );
  INVX1 U71 ( .A(N19), .Y(n98) );
  INVX1 U72 ( .A(n26), .Y(n91) );
  INVX1 U73 ( .A(count_out[0]), .Y(n99) );
  INVX2 U74 ( .A(count_out[15]), .Y(n97) );
  XOR2X1 U75 ( .A(n97), .B(rollover_val[15]), .Y(n56) );
  XOR2X1 U76 ( .A(n84), .B(rollover_val[14]), .Y(n55) );
  XOR2X1 U77 ( .A(count_out[6]), .B(rollover_val[6]), .Y(n53) );
  XOR2X1 U78 ( .A(n25), .B(rollover_val[7]), .Y(n52) );
  NOR2X1 U79 ( .A(n53), .B(n52), .Y(n54) );
  NAND3X1 U80 ( .A(n56), .B(n55), .C(n54), .Y(n63) );
  XOR2X1 U81 ( .A(n81), .B(rollover_val[12]), .Y(n61) );
  XOR2X1 U82 ( .A(n79), .B(rollover_val[13]), .Y(n60) );
  XOR2X1 U83 ( .A(rollover_val[5]), .B(count_out[5]), .Y(n58) );
  XOR2X1 U84 ( .A(rollover_val[4]), .B(n36), .Y(n57) );
  NOR2X1 U85 ( .A(n58), .B(n57), .Y(n59) );
  NAND3X1 U86 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  NOR2X1 U87 ( .A(n63), .B(n62), .Y(n77) );
  XOR2X1 U88 ( .A(n93), .B(rollover_val[10]), .Y(n68) );
  XOR2X1 U89 ( .A(n92), .B(rollover_val[11]), .Y(n67) );
  XOR2X1 U90 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n65) );
  XOR2X1 U91 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n64) );
  NOR2X1 U92 ( .A(n65), .B(n64), .Y(n66) );
  NAND3X1 U93 ( .A(n68), .B(n67), .C(n66), .Y(n75) );
  INVX2 U94 ( .A(count_out[9]), .Y(n89) );
  XOR2X1 U95 ( .A(n89), .B(rollover_val[9]), .Y(n73) );
  INVX2 U96 ( .A(count_out[8]), .Y(n88) );
  XOR2X1 U97 ( .A(n88), .B(rollover_val[8]), .Y(n72) );
  XOR2X1 U98 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n70) );
  XOR2X1 U99 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n69) );
  NOR2X1 U100 ( .A(n70), .B(n69), .Y(n71) );
  NAND3X1 U101 ( .A(n73), .B(n72), .C(n71), .Y(n74) );
  NOR2X1 U102 ( .A(n75), .B(n74), .Y(n76) );
  AOI21X1 U103 ( .A(n77), .B(n76), .C(n27), .Y(n78) );
  OAI22X1 U104 ( .A(n50), .B(n80), .C(n51), .D(n79), .Y(n155) );
  INVX2 U105 ( .A(N16), .Y(n128) );
  OAI22X1 U106 ( .A(n50), .B(n128), .C(n51), .D(n81), .Y(n154) );
  INVX2 U107 ( .A(N9), .Y(n103) );
  OAI22X1 U108 ( .A(n50), .B(n103), .C(n51), .D(n82), .Y(n147) );
  INVX2 U109 ( .A(N8), .Y(n113) );
  OAI22X1 U110 ( .A(n50), .B(n113), .C(n51), .D(n83), .Y(n146) );
  INVX2 U111 ( .A(N18), .Y(n85) );
  OAI22X1 U112 ( .A(n50), .B(n85), .C(n51), .D(n84), .Y(n156) );
  INVX2 U113 ( .A(N10), .Y(n104) );
  OAI22X1 U114 ( .A(n50), .B(n104), .C(n51), .D(n86), .Y(n148) );
  INVX2 U115 ( .A(N11), .Y(n109) );
  OAI22X1 U116 ( .A(n50), .B(n109), .C(n51), .D(n87), .Y(n149) );
  INVX2 U117 ( .A(N12), .Y(n110) );
  OAI22X1 U118 ( .A(n50), .B(n110), .C(n51), .D(n88), .Y(n150) );
  INVX2 U119 ( .A(N13), .Y(n90) );
  OAI22X1 U120 ( .A(n50), .B(n90), .C(n51), .D(n89), .Y(n151) );
  INVX2 U121 ( .A(N5), .Y(n117) );
  OAI22X1 U122 ( .A(n50), .B(n117), .C(n51), .D(n91), .Y(n143) );
  INVX2 U123 ( .A(N15), .Y(n129) );
  OAI22X1 U124 ( .A(n50), .B(n129), .C(n51), .D(n19), .Y(n153) );
  INVX2 U125 ( .A(N14), .Y(n94) );
  OAI22X1 U126 ( .A(n50), .B(n94), .C(n51), .D(n93), .Y(n152) );
  INVX2 U127 ( .A(N7), .Y(n119) );
  OAI22X1 U128 ( .A(n50), .B(n119), .C(n51), .D(n95), .Y(n145) );
  INVX2 U129 ( .A(N6), .Y(n112) );
  OAI22X1 U130 ( .A(n50), .B(n112), .C(n51), .D(n96), .Y(n144) );
  OAI22X1 U131 ( .A(n50), .B(n98), .C(n51), .D(n97), .Y(n157) );
  INVX2 U132 ( .A(N4), .Y(n100) );
  OAI22X1 U133 ( .A(n50), .B(n100), .C(n51), .D(n99), .Y(n142) );
  INVX2 U134 ( .A(rollover_flag), .Y(n141) );
  XOR2X1 U135 ( .A(rollover_val[14]), .B(N18), .Y(n102) );
  XOR2X1 U136 ( .A(rollover_val[9]), .B(N13), .Y(n101) );
  NOR2X1 U137 ( .A(n102), .B(n101), .Y(n139) );
  XOR2X1 U138 ( .A(rollover_val[10]), .B(N14), .Y(n108) );
  XOR2X1 U139 ( .A(n103), .B(rollover_val[5]), .Y(n106) );
  XOR2X1 U140 ( .A(n104), .B(rollover_val[6]), .Y(n105) );
  NAND3X1 U141 ( .A(n106), .B(n105), .C(n35), .Y(n107) );
  NOR2X1 U142 ( .A(n108), .B(n107), .Y(n138) );
  XOR2X1 U143 ( .A(n109), .B(rollover_val[7]), .Y(n127) );
  XOR2X1 U144 ( .A(n110), .B(rollover_val[8]), .Y(n126) );
  INVX2 U145 ( .A(rollover_val[0]), .Y(n111) );
  XOR2X1 U146 ( .A(n111), .B(N4), .Y(n116) );
  XOR2X1 U147 ( .A(n112), .B(rollover_val[2]), .Y(n115) );
  XOR2X1 U148 ( .A(n113), .B(rollover_val[4]), .Y(n114) );
  XOR2X1 U149 ( .A(n117), .B(rollover_val[1]), .Y(n122) );
  XOR2X1 U150 ( .A(n119), .B(rollover_val[3]), .Y(n120) );
  NOR2X1 U151 ( .A(n124), .B(n123), .Y(n125) );
  NAND3X1 U152 ( .A(n127), .B(n126), .C(n125), .Y(n136) );
  XOR2X1 U153 ( .A(n128), .B(rollover_val[12]), .Y(n134) );
  XOR2X1 U154 ( .A(n129), .B(rollover_val[11]), .Y(n133) );
  NOR2X1 U155 ( .A(n131), .B(n130), .Y(n132) );
  NAND3X1 U156 ( .A(n134), .B(n133), .C(n132), .Y(n135) );
  NOR2X1 U157 ( .A(n136), .B(n135), .Y(n137) );
  NAND3X1 U158 ( .A(n139), .B(n138), .C(n137), .Y(n140) );
  OAI21X1 U159 ( .A(n51), .B(n141), .C(n140), .Y(n158) );
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
  wire   n431, n432, clear, _0_net_, roll, clearCounter, countState,
         byte_transfflip, N222, N365, N367, N368, N369, N371, n76, n77, n257,
         n269, n270, n271, n272, n273, n1, n2, n3, n4, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n22, n23, n24, n25, n26, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         \cmd_out[1] , n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n427,
         n429;
  wire   [15:0] size;
  wire   [15:0] size_minus_one;
  wire   [15:4] counter;
  wire   [4:0] state;
  assign enable = 1'b1;
  assign cmd_out[5] = \cmd_out[1] ;
  assign cmd_out[2] = \cmd_out[1] ;
  assign cmd_out[1] = \cmd_out[1] ;

  DFFSR byte_transfflip_reg ( .D(n61), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        byte_transfflip) );
  LATCH \size_reg[0]  ( .CLK(n116), .D(rcv_fifo[0]), .Q(size[0]) );
  DFFSR \state_reg[4]  ( .D(n273), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[4]) );
  DFFSR \state_reg[0]  ( .D(n272), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(n271), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  DFFSR \state_reg[3]  ( .D(n269), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(n270), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2]) );
  LATCH \size_reg[8]  ( .CLK(N371), .D(rcv_fifo[0]), .Q(size[8]) );
  LATCH \size_reg[15]  ( .CLK(N371), .D(rcv_fifo[7]), .Q(size[15]) );
  LATCH \size_reg[14]  ( .CLK(N371), .D(rcv_fifo[6]), .Q(size[14]) );
  LATCH \size_reg[13]  ( .CLK(N371), .D(rcv_fifo[5]), .Q(size[13]) );
  LATCH \size_reg[12]  ( .CLK(N371), .D(rcv_fifo[4]), .Q(size[12]) );
  LATCH \size_reg[11]  ( .CLK(N371), .D(rcv_fifo[3]), .Q(size[11]) );
  LATCH \size_reg[10]  ( .CLK(N371), .D(rcv_fifo[2]), .Q(size[10]) );
  LATCH \size_reg[9]  ( .CLK(N371), .D(rcv_fifo[1]), .Q(size[9]) );
  LATCH \size_reg[7]  ( .CLK(n116), .D(rcv_fifo[7]), .Q(size[7]) );
  LATCH \size_reg[6]  ( .CLK(n116), .D(rcv_fifo[6]), .Q(size[6]) );
  LATCH \size_reg[5]  ( .CLK(n116), .D(rcv_fifo[5]), .Q(size[5]) );
  LATCH \size_reg[4]  ( .CLK(n116), .D(rcv_fifo[4]), .Q(size[4]) );
  LATCH \size_reg[3]  ( .CLK(n116), .D(rcv_fifo[3]), .Q(size[3]) );
  LATCH \size_reg[2]  ( .CLK(n116), .D(rcv_fifo[2]), .Q(size[2]) );
  LATCH \size_reg[1]  ( .CLK(n116), .D(rcv_fifo[1]), .Q(size[1]) );
  LATCH \speed_reg[1]  ( .CLK(N365), .D(n427), .Q(speed_o[1]) );
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
  LATCH \addr_reg[7]  ( .CLK(n127), .D(rcv_fifo[7]), .Q(addr_o[7]) );
  LATCH \addr_reg[6]  ( .CLK(n127), .D(rcv_fifo[6]), .Q(addr_o[6]) );
  LATCH \addr_reg[5]  ( .CLK(n127), .D(rcv_fifo[5]), .Q(addr_o[5]) );
  LATCH \addr_reg[4]  ( .CLK(n127), .D(rcv_fifo[4]), .Q(addr_o[4]) );
  LATCH \addr_reg[3]  ( .CLK(n127), .D(rcv_fifo[3]), .Q(addr_o[3]) );
  LATCH \addr_reg[2]  ( .CLK(n127), .D(rcv_fifo[2]), .Q(addr_o[2]) );
  LATCH \addr_reg[1]  ( .CLK(n127), .D(rcv_fifo[1]), .Q(addr_o[1]) );
  LATCH \addr_reg[0]  ( .CLK(n127), .D(rcv_fifo[0]), .Q(addr_o[0]) );
  NAND2X1 U87 ( .A(n76), .B(n77), .Y(rw_select) );
  NAND2X1 U275 ( .A(count_out[0]), .B(count_out[1]), .Y(n257) );
  flex_counter_NUM_CNT_BITS16_1 LoadFIFO ( .n_rst(n_rst), .count_enable(
        _0_net_), .clear(clear), .clk(clk), .rollover_val(size_minus_one), 
        .rollover_flag(roll) );
  flex_counter_NUM_CNT_BITS16_0 Countstates ( .n_rst(n_rst), .count_enable(
        countState), .clear(clearCounter), .clk(clk), .rollover_val(
        size_minus_one), .count_out({counter, count_out[3], n431, n432, 
        count_out[0]}) );
  mode_select_DW01_dec_0 sub_56 ( .A(size), .SUM(size_minus_one) );
  INVX1 U5 ( .A(n253), .Y(n1) );
  INVX2 U6 ( .A(n353), .Y(n253) );
  INVX1 U11 ( .A(w_enable), .Y(n360) );
  INVX4 U12 ( .A(n159), .Y(n78) );
  AND2X1 U13 ( .A(n121), .B(roll), .Y(n2) );
  INVX1 U14 ( .A(n287), .Y(n3) );
  OR2X2 U15 ( .A(n160), .B(n4), .Y(n353) );
  INVX8 U16 ( .A(n61), .Y(n4) );
  INVX4 U17 ( .A(n78), .Y(n80) );
  INVX2 U18 ( .A(byte_transf), .Y(n59) );
  INVX2 U19 ( .A(n41), .Y(n28) );
  AND2X2 U20 ( .A(n266), .B(n136), .Y(n11) );
  AND2X1 U21 ( .A(n143), .B(n55), .Y(n12) );
  AND2X1 U22 ( .A(n158), .B(count_out[0]), .Y(n13) );
  AND2X2 U23 ( .A(n81), .B(n136), .Y(n14) );
  AND2X1 U24 ( .A(n57), .B(n58), .Y(n15) );
  INVX1 U25 ( .A(n207), .Y(n16) );
  INVX2 U26 ( .A(n67), .Y(n380) );
  INVX2 U27 ( .A(counter[5]), .Y(n188) );
  BUFX2 U28 ( .A(n121), .Y(n17) );
  NAND2X1 U29 ( .A(n92), .B(n185), .Y(n18) );
  INVX1 U30 ( .A(n11), .Y(n19) );
  INVX1 U31 ( .A(n134), .Y(n20) );
  INVX1 U32 ( .A(n78), .Y(n79) );
  INVX2 U33 ( .A(n78), .Y(n81) );
  INVX2 U34 ( .A(counter[13]), .Y(n331) );
  INVX2 U35 ( .A(n143), .Y(cmd_out[3]) );
  AOI21X1 U36 ( .A(n211), .B(n212), .C(n102), .Y(n22) );
  AND2X2 U37 ( .A(n378), .B(n350), .Y(n109) );
  BUFX2 U38 ( .A(n372), .Y(n23) );
  NAND3X1 U39 ( .A(n405), .B(n399), .C(n71), .Y(n237) );
  BUFX2 U40 ( .A(n247), .Y(n24) );
  INVX1 U41 ( .A(n232), .Y(n25) );
  NAND2X1 U42 ( .A(n100), .B(n14), .Y(n235) );
  AND2X1 U43 ( .A(n136), .B(n74), .Y(n26) );
  BUFX4 U44 ( .A(n133), .Y(n148) );
  AND2X1 U45 ( .A(n298), .B(n47), .Y(n165) );
  BUFX4 U46 ( .A(n432), .Y(count_out[1]) );
  INVX2 U47 ( .A(n97), .Y(n41) );
  INVX1 U48 ( .A(n119), .Y(n29) );
  INVX1 U49 ( .A(n29), .Y(n30) );
  INVX2 U50 ( .A(n319), .Y(n248) );
  AND2X2 U51 ( .A(n30), .B(n82), .Y(n31) );
  INVX4 U52 ( .A(n59), .Y(n61) );
  INVX1 U53 ( .A(n279), .Y(n32) );
  BUFX2 U54 ( .A(n122), .Y(n33) );
  INVX1 U55 ( .A(n98), .Y(n145) );
  NAND2X1 U56 ( .A(n335), .B(n334), .Y(n34) );
  NAND2X1 U57 ( .A(n336), .B(n35), .Y(n337) );
  INVX1 U58 ( .A(n34), .Y(n35) );
  INVX2 U59 ( .A(counter[4]), .Y(n335) );
  NAND3X1 U60 ( .A(n362), .B(n405), .C(n93), .Y(n36) );
  INVX1 U61 ( .A(\cmd_out[1] ), .Y(n37) );
  INVX1 U62 ( .A(n97), .Y(n174) );
  BUFX2 U63 ( .A(state[1]), .Y(n38) );
  INVX2 U64 ( .A(n215), .Y(n149) );
  INVX4 U65 ( .A(counter[7]), .Y(n279) );
  INVX1 U66 ( .A(n53), .Y(n54) );
  INVX2 U67 ( .A(n209), .Y(n39) );
  INVX2 U68 ( .A(n209), .Y(n396) );
  NAND2X1 U69 ( .A(n245), .B(n12), .Y(n112) );
  INVX2 U70 ( .A(n429), .Y(n143) );
  AND2X2 U71 ( .A(n2), .B(n356), .Y(n374) );
  BUFX2 U72 ( .A(n342), .Y(n40) );
  AND2X2 U73 ( .A(n346), .B(n390), .Y(n62) );
  BUFX2 U74 ( .A(n33), .Y(n42) );
  AND2X1 U75 ( .A(n192), .B(n186), .Y(n195) );
  INVX1 U76 ( .A(n101), .Y(\cmd_out[1] ) );
  AND2X1 U77 ( .A(n220), .B(n224), .Y(n223) );
  BUFX2 U78 ( .A(n39), .Y(n43) );
  NAND2X1 U79 ( .A(n350), .B(n378), .Y(n44) );
  BUFX2 U80 ( .A(n246), .Y(n45) );
  AND2X2 U81 ( .A(n193), .B(n33), .Y(n46) );
  BUFX4 U82 ( .A(n157), .Y(n67) );
  NAND2X1 U83 ( .A(n123), .B(n121), .Y(n47) );
  INVX1 U84 ( .A(counter[6]), .Y(n187) );
  BUFX2 U85 ( .A(n70), .Y(n48) );
  INVX1 U86 ( .A(n192), .Y(n49) );
  INVX1 U88 ( .A(n49), .Y(n50) );
  NOR2X1 U89 ( .A(n154), .B(n51), .Y(n150) );
  INVX1 U90 ( .A(n157), .Y(n51) );
  INVX1 U91 ( .A(n154), .Y(n74) );
  INVX1 U92 ( .A(n161), .Y(n52) );
  NAND2X1 U93 ( .A(n125), .B(n340), .Y(n53) );
  NAND2X1 U94 ( .A(n339), .B(n54), .Y(n341) );
  INVX2 U95 ( .A(n161), .Y(n266) );
  BUFX2 U96 ( .A(n111), .Y(n55) );
  BUFX4 U97 ( .A(n395), .Y(n56) );
  INVX2 U98 ( .A(n214), .Y(n102) );
  NOR2X1 U99 ( .A(sd_done), .B(n169), .Y(n57) );
  INVX2 U100 ( .A(n136), .Y(n131) );
  OR2X2 U101 ( .A(n18), .B(n315), .Y(n301) );
  AND2X2 U102 ( .A(n74), .B(n324), .Y(n356) );
  BUFX2 U103 ( .A(n117), .Y(n58) );
  INVX1 U104 ( .A(n298), .Y(n288) );
  INVX2 U105 ( .A(n59), .Y(n60) );
  INVX1 U106 ( .A(n160), .Y(n287) );
  NAND2X1 U107 ( .A(n163), .B(n294), .Y(n63) );
  INVX4 U108 ( .A(n63), .Y(n121) );
  INVX1 U109 ( .A(n396), .Y(n135) );
  BUFX2 U110 ( .A(state[3]), .Y(n64) );
  OR2X2 U111 ( .A(n65), .B(n164), .Y(n342) );
  NAND2X1 U112 ( .A(n157), .B(n133), .Y(n65) );
  INVX1 U113 ( .A(n164), .Y(n349) );
  INVX1 U114 ( .A(n151), .Y(n66) );
  BUFX2 U115 ( .A(n47), .Y(n68) );
  INVX2 U116 ( .A(n242), .Y(n69) );
  INVX1 U117 ( .A(n242), .Y(n376) );
  BUFX2 U118 ( .A(state[4]), .Y(n70) );
  INVX1 U119 ( .A(state[4]), .Y(n163) );
  AND2X2 U120 ( .A(n265), .B(n171), .Y(n71) );
  INVX1 U121 ( .A(n130), .Y(r_enable_o) );
  INVX1 U122 ( .A(n310), .Y(n314) );
  NAND2X1 U123 ( .A(n279), .B(n281), .Y(n72) );
  NAND2X1 U124 ( .A(n73), .B(n280), .Y(n282) );
  INVX2 U125 ( .A(n72), .Y(n73) );
  INVX2 U126 ( .A(n133), .Y(n154) );
  AND2X2 U127 ( .A(n192), .B(n191), .Y(n122) );
  AND2X2 U128 ( .A(n96), .B(n95), .Y(n75) );
  INVX2 U129 ( .A(n75), .Y(n397) );
  BUFX4 U130 ( .A(n133), .Y(n140) );
  BUFX4 U131 ( .A(n407), .Y(n138) );
  INVX2 U132 ( .A(n355), .Y(n82) );
  INVX1 U133 ( .A(n374), .Y(n83) );
  INVX2 U134 ( .A(n355), .Y(n324) );
  NAND2X1 U135 ( .A(n390), .B(n391), .Y(n84) );
  NAND2X1 U136 ( .A(n85), .B(n389), .Y(load_enable) );
  INVX2 U137 ( .A(n84), .Y(n85) );
  BUFX2 U138 ( .A(n115), .Y(n86) );
  INVX2 U139 ( .A(n16), .Y(n87) );
  NAND2X1 U140 ( .A(n312), .B(n3), .Y(n89) );
  NAND2X1 U141 ( .A(n231), .B(n89), .Y(n233) );
  INVX1 U142 ( .A(n56), .Y(n316) );
  NAND2X1 U143 ( .A(n206), .B(n15), .Y(n229) );
  NAND2X1 U144 ( .A(n90), .B(n91), .Y(n92) );
  NAND2X1 U145 ( .A(n92), .B(n185), .Y(n299) );
  INVX1 U146 ( .A(n360), .Y(n90) );
  INVX1 U147 ( .A(n267), .Y(n91) );
  AND2X2 U148 ( .A(n342), .B(n372), .Y(n93) );
  INVX1 U149 ( .A(n93), .Y(n388) );
  OR2X2 U150 ( .A(n204), .B(n205), .Y(n286) );
  NAND2X1 U151 ( .A(n62), .B(n345), .Y(clearCounter) );
  INVX1 U152 ( .A(n38), .Y(n151) );
  AND2X2 U153 ( .A(n122), .B(n94), .Y(n359) );
  NOR2X1 U154 ( .A(n282), .B(n107), .Y(n94) );
  INVX1 U155 ( .A(counter[10]), .Y(n330) );
  INVX2 U156 ( .A(n379), .Y(n95) );
  INVX2 U157 ( .A(n379), .Y(n369) );
  AND2X2 U158 ( .A(n148), .B(n118), .Y(n96) );
  AND2X2 U159 ( .A(n38), .B(n163), .Y(n97) );
  AND2X2 U160 ( .A(n168), .B(n17), .Y(n98) );
  INVX1 U161 ( .A(n328), .Y(n329) );
  BUFX2 U162 ( .A(n231), .Y(n99) );
  NAND2X1 U163 ( .A(n13), .B(n195), .Y(n199) );
  AND2X2 U164 ( .A(n432), .B(n431), .Y(n158) );
  BUFX2 U165 ( .A(n118), .Y(n100) );
  NAND2X1 U166 ( .A(n266), .B(n136), .Y(n101) );
  INVX2 U167 ( .A(n36), .Y(n214) );
  INVX2 U168 ( .A(n260), .Y(n103) );
  AND2X2 U169 ( .A(n80), .B(n121), .Y(n104) );
  INVX1 U170 ( .A(n359), .Y(n105) );
  INVX1 U171 ( .A(n105), .Y(n106) );
  NAND2X1 U172 ( .A(n335), .B(n278), .Y(n107) );
  INVX1 U173 ( .A(n369), .Y(n108) );
  INVX1 U174 ( .A(n60), .Y(n110) );
  AND2X2 U175 ( .A(n312), .B(n395), .Y(n111) );
  INVX4 U176 ( .A(n111), .Y(SPI_select[0]) );
  BUFX2 U177 ( .A(n64), .Y(n113) );
  AND2X1 U178 ( .A(n46), .B(n423), .Y(n116) );
  INVX2 U179 ( .A(n120), .Y(n114) );
  INVX1 U180 ( .A(n312), .Y(n232) );
  AND2X2 U181 ( .A(n233), .B(n114), .Y(n247) );
  INVX1 U182 ( .A(n233), .Y(n307) );
  AND2X2 U183 ( .A(n382), .B(n137), .Y(n115) );
  AND2X2 U184 ( .A(n235), .B(n382), .Y(n117) );
  AND2X2 U185 ( .A(n70), .B(n38), .Y(n118) );
  AND2X2 U186 ( .A(n118), .B(n140), .Y(n119) );
  AND2X2 U187 ( .A(n260), .B(n110), .Y(n120) );
  AND2X2 U188 ( .A(n79), .B(n349), .Y(n123) );
  AND2X2 U189 ( .A(n188), .B(n279), .Y(n124) );
  AND2X2 U190 ( .A(n281), .B(n186), .Y(n125) );
  AND2X2 U191 ( .A(n335), .B(n188), .Y(n126) );
  NOR2X1 U192 ( .A(n257), .B(n413), .Y(n127) );
  NOR2X1 U193 ( .A(counter[14]), .B(counter[15]), .Y(n128) );
  INVX2 U194 ( .A(n173), .Y(n168) );
  OAI21X1 U195 ( .A(n22), .B(n227), .C(n226), .Y(n129) );
  BUFX2 U196 ( .A(n71), .Y(n130) );
  INVX2 U197 ( .A(n131), .Y(n132) );
  INVX2 U198 ( .A(state[2]), .Y(n133) );
  INVX1 U199 ( .A(n400), .Y(n402) );
  BUFX2 U200 ( .A(state[2]), .Y(n159) );
  AND2X1 U201 ( .A(n82), .B(n104), .Y(n134) );
  INVX1 U202 ( .A(state[0]), .Y(n207) );
  AND2X2 U203 ( .A(n207), .B(n162), .Y(n136) );
  BUFX2 U204 ( .A(n147), .Y(n137) );
  INVX1 U205 ( .A(n378), .Y(r_enable) );
  BUFX4 U206 ( .A(n407), .Y(n139) );
  INVX1 U207 ( .A(n164), .Y(n141) );
  INVX1 U208 ( .A(n164), .Y(n142) );
  AND2X2 U209 ( .A(n97), .B(n148), .Y(n144) );
  BUFX2 U210 ( .A(n171), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n95), .Y(n147) );
  INVX1 U212 ( .A(n420), .Y(count_out[2]) );
  INVX1 U213 ( .A(n66), .Y(n153) );
  INVX1 U214 ( .A(state[1]), .Y(n294) );
  INVX1 U215 ( .A(n147), .Y(n234) );
  BUFX2 U216 ( .A(state[0]), .Y(n155) );
  NAND3X1 U217 ( .A(n24), .B(n45), .C(n112), .Y(n156) );
  INVX1 U218 ( .A(count_out[3]), .Y(n191) );
  OR2X2 U219 ( .A(counter[11]), .B(counter[12]), .Y(n328) );
  INVX1 U220 ( .A(state[3]), .Y(n162) );
  INVX1 U221 ( .A(counter[9]), .Y(n186) );
  AND2X2 U222 ( .A(n294), .B(state[4]), .Y(n157) );
  INVX1 U223 ( .A(n431), .Y(n420) );
  INVX1 U224 ( .A(n432), .Y(n417) );
  INVX1 U225 ( .A(count_out[0]), .Y(n416) );
  NAND2X1 U226 ( .A(n162), .B(n155), .Y(n379) );
  NAND3X1 U227 ( .A(n80), .B(n118), .C(n369), .Y(n160) );
  NAND2X1 U228 ( .A(n64), .B(n155), .Y(n355) );
  NAND3X1 U229 ( .A(n324), .B(n121), .C(n148), .Y(n298) );
  NAND2X1 U230 ( .A(n353), .B(n298), .Y(w_enable) );
  NAND3X1 U231 ( .A(n70), .B(n151), .C(n154), .Y(n161) );
  NAND2X1 U232 ( .A(n95), .B(n52), .Y(n312) );
  NAND2X1 U233 ( .A(n26), .B(n67), .Y(n395) );
  NAND3X1 U234 ( .A(n324), .B(n97), .C(n140), .Y(n372) );
  NAND2X1 U235 ( .A(n207), .B(n64), .Y(n164) );
  NAND3X1 U236 ( .A(n19), .B(n23), .C(n165), .Y(n429) );
  NAND2X1 U237 ( .A(n82), .B(n119), .Y(n265) );
  NAND2X1 U238 ( .A(n141), .B(n144), .Y(n171) );
  INVX2 U239 ( .A(rx_FIFO_empty), .Y(n167) );
  NAND2X1 U240 ( .A(n121), .B(n81), .Y(n347) );
  NAND2X1 U241 ( .A(n132), .B(n104), .Y(n401) );
  INVX2 U242 ( .A(n401), .Y(n423) );
  NOR2X1 U243 ( .A(n423), .B(\cmd_out[1] ), .Y(n166) );
  OAI21X1 U244 ( .A(n298), .B(n167), .C(n166), .Y(n230) );
  NAND3X1 U245 ( .A(n82), .B(n80), .C(n28), .Y(n393) );
  INVX2 U246 ( .A(n393), .Y(sd_done) );
  NAND2X1 U247 ( .A(n144), .B(n95), .Y(n392) );
  NAND2X1 U248 ( .A(n81), .B(n369), .Y(n173) );
  NAND2X1 U249 ( .A(n17), .B(n168), .Y(n358) );
  NAND2X1 U250 ( .A(n52), .B(n82), .Y(n362) );
  NAND3X1 U251 ( .A(n392), .B(n362), .C(n358), .Y(n169) );
  NOR2X1 U252 ( .A(sd_done), .B(n169), .Y(n243) );
  INVX2 U253 ( .A(roll), .Y(n267) );
  NAND3X1 U254 ( .A(n140), .B(n121), .C(n369), .Y(n407) );
  INVX2 U255 ( .A(sd_write), .Y(n172) );
  OAI21X1 U256 ( .A(n139), .B(n172), .C(n146), .Y(n184) );
  NAND2X1 U257 ( .A(n266), .B(n141), .Y(n310) );
  OAI21X1 U258 ( .A(n174), .B(n173), .C(n310), .Y(n209) );
  NOR2X1 U259 ( .A(counter[10]), .B(n328), .Y(n175) );
  NAND3X1 U260 ( .A(n128), .B(n331), .C(n175), .Y(n194) );
  INVX2 U261 ( .A(n194), .Y(n192) );
  NAND3X1 U262 ( .A(count_out[1]), .B(n50), .C(n335), .Y(n178) );
  NAND3X1 U263 ( .A(n132), .B(n121), .C(n140), .Y(n176) );
  INVX2 U264 ( .A(n176), .Y(n351) );
  NAND3X1 U265 ( .A(counter[6]), .B(n351), .C(count_out[3]), .Y(n177) );
  NOR2X1 U266 ( .A(n178), .B(n177), .Y(n182) );
  NAND3X1 U267 ( .A(n186), .B(n416), .C(n420), .Y(n180) );
  INVX2 U268 ( .A(counter[8]), .Y(n281) );
  NAND2X1 U269 ( .A(n124), .B(n281), .Y(n179) );
  NOR2X1 U270 ( .A(n180), .B(n179), .Y(n181) );
  NAND2X1 U271 ( .A(n182), .B(n181), .Y(n311) );
  NAND3X1 U272 ( .A(n39), .B(n397), .C(n311), .Y(n183) );
  NOR2X1 U273 ( .A(n184), .B(n183), .Y(n185) );
  NAND3X1 U274 ( .A(n187), .B(n279), .C(n125), .Y(n410) );
  NAND2X1 U276 ( .A(count_out[0]), .B(n431), .Y(n338) );
  INVX2 U277 ( .A(n338), .Y(n189) );
  NAND3X1 U278 ( .A(n126), .B(n417), .C(n189), .Y(n190) );
  NOR2X1 U279 ( .A(n410), .B(n190), .Y(n193) );
  NAND2X1 U280 ( .A(n193), .B(n122), .Y(n277) );
  NAND2X1 U281 ( .A(n96), .B(n132), .Y(n399) );
  OAI22X1 U282 ( .A(n277), .B(n68), .C(n110), .D(n103), .Y(n205) );
  NAND3X1 U283 ( .A(counter[5]), .B(counter[4]), .C(count_out[3]), .Y(n197) );
  NAND3X1 U284 ( .A(counter[8]), .B(n32), .C(counter[6]), .Y(n196) );
  OR2X1 U285 ( .A(n197), .B(n196), .Y(n198) );
  OAI21X1 U286 ( .A(n198), .B(n199), .C(n267), .Y(n200) );
  NAND2X1 U287 ( .A(n61), .B(n200), .Y(n231) );
  NAND3X1 U288 ( .A(cmd_check[3]), .B(cmd_check[4]), .C(cmd_check[2]), .Y(n202) );
  NAND3X1 U289 ( .A(cmd_check[6]), .B(cmd_check[7]), .C(cmd_check[5]), .Y(n201) );
  OR2X1 U290 ( .A(n202), .B(n201), .Y(n361) );
  NAND2X1 U291 ( .A(cmd_check[0]), .B(cmd_check[1]), .Y(n258) );
  NAND2X1 U292 ( .A(n123), .B(n28), .Y(n398) );
  INVX2 U293 ( .A(n398), .Y(n259) );
  OAI21X1 U294 ( .A(n361), .B(n258), .C(n259), .Y(n203) );
  OAI21X1 U295 ( .A(n25), .B(n99), .C(n203), .Y(n204) );
  NOR2X1 U296 ( .A(n299), .B(n286), .Y(n206) );
  NAND3X1 U297 ( .A(n136), .B(n97), .C(n148), .Y(n382) );
  NOR2X1 U298 ( .A(byte_transfflip), .B(n113), .Y(n208) );
  NAND3X1 U299 ( .A(n97), .B(n87), .C(n208), .Y(n217) );
  NAND3X1 U300 ( .A(n217), .B(n147), .C(n101), .Y(n218) );
  NOR2X1 U301 ( .A(n135), .B(n149), .Y(n212) );
  NOR2X1 U302 ( .A(sd_addr_ready), .B(sd_write), .Y(n210) );
  INVX2 U303 ( .A(sd_read), .Y(n254) );
  AOI21X1 U304 ( .A(n210), .B(n254), .C(n316), .Y(n211) );
  NAND2X1 U305 ( .A(n82), .B(n104), .Y(n405) );
  AOI21X1 U306 ( .A(n211), .B(n212), .C(n102), .Y(n228) );
  INVX2 U307 ( .A(shift_enable), .Y(n213) );
  NAND2X1 U308 ( .A(n351), .B(n213), .Y(n224) );
  OAI21X1 U309 ( .A(n61), .B(n214), .C(n224), .Y(n227) );
  INVX2 U310 ( .A(n218), .Y(n215) );
  NAND3X1 U311 ( .A(edge_detect), .B(n138), .C(n215), .Y(n216) );
  NOR2X1 U312 ( .A(n36), .B(n216), .Y(n225) );
  INVX2 U313 ( .A(n217), .Y(n219) );
  OAI21X1 U314 ( .A(n219), .B(n110), .C(n218), .Y(n220) );
  NAND3X1 U315 ( .A(n138), .B(n56), .C(n39), .Y(n221) );
  NOR2X1 U316 ( .A(n36), .B(n221), .Y(n222) );
  AOI22X1 U317 ( .A(n224), .B(n225), .C(n223), .D(n222), .Y(n226) );
  OAI21X1 U318 ( .A(n228), .B(n227), .C(n226), .Y(n319) );
  OAI21X1 U319 ( .A(n230), .B(n229), .C(n319), .Y(n250) );
  INVX2 U320 ( .A(n399), .Y(n260) );
  NAND2X1 U321 ( .A(n234), .B(n277), .Y(n246) );
  NOR2X1 U322 ( .A(n287), .B(n75), .Y(n239) );
  NAND3X1 U323 ( .A(n398), .B(n235), .C(n139), .Y(n236) );
  NOR2X1 U324 ( .A(n236), .B(n237), .Y(n238) );
  NAND3X1 U325 ( .A(n239), .B(n115), .C(n238), .Y(n244) );
  NAND3X1 U326 ( .A(n82), .B(n140), .C(n67), .Y(n241) );
  NAND3X1 U327 ( .A(n141), .B(n148), .C(n100), .Y(n240) );
  NAND3X1 U328 ( .A(n342), .B(n240), .C(n241), .Y(n242) );
  NAND3X1 U329 ( .A(n39), .B(n376), .C(n243), .Y(n400) );
  NOR2X1 U330 ( .A(n400), .B(n244), .Y(n245) );
  NAND3X1 U331 ( .A(n143), .B(n55), .C(n245), .Y(n406) );
  NAND3X1 U332 ( .A(n247), .B(n246), .C(n406), .Y(n304) );
  OAI21X1 U333 ( .A(n156), .B(n248), .C(n16), .Y(n249) );
  NAND2X1 U334 ( .A(n250), .B(n249), .Y(n272) );
  INVX2 U335 ( .A(n304), .Y(n251) );
  NAND3X1 U336 ( .A(n68), .B(n251), .C(n129), .Y(n252) );
  INVX2 U337 ( .A(n252), .Y(n295) );
  NOR2X1 U338 ( .A(sd_write), .B(n139), .Y(n255) );
  AOI22X1 U339 ( .A(n255), .B(n254), .C(n253), .D(roll), .Y(n256) );
  OAI21X1 U340 ( .A(n277), .B(n40), .C(n256), .Y(n275) );
  INVX2 U341 ( .A(cmd_check[0]), .Y(n367) );
  NAND2X1 U342 ( .A(cmd_check[1]), .B(n367), .Y(n368) );
  NOR2X1 U343 ( .A(n110), .B(n368), .Y(n261) );
  INVX2 U344 ( .A(n258), .Y(n363) );
  AOI22X1 U345 ( .A(n261), .B(n260), .C(n259), .D(n363), .Y(n263) );
  NOR2X1 U346 ( .A(n11), .B(n134), .Y(n262) );
  OAI21X1 U347 ( .A(n263), .B(n361), .C(n262), .Y(n264) );
  INVX2 U348 ( .A(n264), .Y(n318) );
  NAND3X1 U349 ( .A(n60), .B(n95), .C(n266), .Y(n378) );
  OAI21X1 U350 ( .A(n267), .B(n378), .C(n23), .Y(n296) );
  NOR2X1 U351 ( .A(n31), .B(n296), .Y(n268) );
  NAND3X1 U352 ( .A(n318), .B(n43), .C(n268), .Y(n274) );
  OAI21X1 U353 ( .A(n275), .B(n274), .C(n319), .Y(n276) );
  OAI21X1 U354 ( .A(n148), .B(n295), .C(n276), .Y(n270) );
  NOR2X1 U355 ( .A(counter[5]), .B(counter[6]), .Y(n278) );
  NOR2X1 U356 ( .A(counter[9]), .B(n158), .Y(n280) );
  NAND2X1 U357 ( .A(n106), .B(n98), .Y(n300) );
  OAI21X1 U358 ( .A(n46), .B(n40), .C(n300), .Y(n285) );
  INVX2 U359 ( .A(n138), .Y(SDCS) );
  NAND2X1 U360 ( .A(sd_read), .B(SDCS), .Y(n283) );
  OAI21X1 U361 ( .A(sd_write), .B(n283), .C(n397), .Y(n284) );
  OR2X1 U362 ( .A(n285), .B(n284), .Y(n292) );
  INVX2 U363 ( .A(n286), .Y(n290) );
  NOR2X1 U364 ( .A(n288), .B(n287), .Y(n289) );
  NAND3X1 U365 ( .A(n290), .B(n56), .C(n289), .Y(n291) );
  OAI21X1 U366 ( .A(n292), .B(n291), .C(n319), .Y(n293) );
  OAI21X1 U367 ( .A(n295), .B(n153), .C(n293), .Y(n271) );
  INVX2 U368 ( .A(n296), .Y(n297) );
  OAI21X1 U369 ( .A(rx_FIFO_empty), .B(n298), .C(n297), .Y(n302) );
  NAND2X1 U370 ( .A(n376), .B(n300), .Y(n315) );
  OAI21X1 U371 ( .A(n302), .B(n301), .C(n319), .Y(n306) );
  OAI21X1 U372 ( .A(n46), .B(n68), .C(n129), .Y(n303) );
  OAI21X1 U373 ( .A(n303), .B(n156), .C(n113), .Y(n305) );
  NAND2X1 U374 ( .A(n305), .B(n306), .Y(n269) );
  NOR2X1 U375 ( .A(n307), .B(n120), .Y(n308) );
  NAND3X1 U376 ( .A(n308), .B(n112), .C(n129), .Y(n309) );
  OAI21X1 U377 ( .A(n234), .B(n309), .C(n48), .Y(n323) );
  OAI21X1 U378 ( .A(roll), .B(n25), .C(n311), .Y(n313) );
  OR2X1 U379 ( .A(n314), .B(n313), .Y(n321) );
  NOR2X1 U380 ( .A(n316), .B(n315), .Y(n317) );
  NAND3X1 U381 ( .A(n318), .B(n58), .C(n317), .Y(n320) );
  OAI21X1 U382 ( .A(n321), .B(n320), .C(n319), .Y(n322) );
  NAND2X1 U383 ( .A(n323), .B(n322), .Y(n273) );
  NAND2X1 U384 ( .A(n95), .B(n28), .Y(n326) );
  NAND2X1 U385 ( .A(edge_detect), .B(n81), .Y(n325) );
  NAND2X1 U386 ( .A(n150), .B(n82), .Y(n386) );
  OAI21X1 U387 ( .A(n326), .B(n325), .C(n386), .Y(n327) );
  NOR2X1 U388 ( .A(n75), .B(n327), .Y(n346) );
  NAND2X1 U389 ( .A(n11), .B(n61), .Y(n390) );
  NAND2X1 U390 ( .A(n329), .B(n128), .Y(n333) );
  NAND3X1 U391 ( .A(n331), .B(n330), .C(n124), .Y(n332) );
  NOR2X1 U392 ( .A(n333), .B(n332), .Y(n340) );
  NOR2X1 U393 ( .A(counter[6]), .B(n59), .Y(n336) );
  NOR2X1 U394 ( .A(n432), .B(count_out[3]), .Y(n334) );
  NOR2X1 U395 ( .A(n338), .B(n337), .Y(n339) );
  AOI21X1 U396 ( .A(n137), .B(n342), .C(n341), .Y(n344) );
  NAND2X1 U397 ( .A(n117), .B(n139), .Y(n343) );
  NOR2X1 U398 ( .A(n344), .B(n343), .Y(n345) );
  NOR2X1 U399 ( .A(n59), .B(n347), .Y(n348) );
  AOI22X1 U400 ( .A(n119), .B(n142), .C(n348), .D(n142), .Y(n350) );
  NOR2X1 U401 ( .A(n31), .B(n44), .Y(n354) );
  AOI22X1 U402 ( .A(shift_enable), .B(n351), .C(n234), .D(n60), .Y(n352) );
  NAND3X1 U403 ( .A(n352), .B(n1), .C(n354), .Y(countState) );
  NOR2X1 U404 ( .A(SDCS), .B(n374), .Y(n357) );
  OAI21X1 U405 ( .A(n359), .B(n145), .C(n357), .Y(clear) );
  NAND2X1 U406 ( .A(n378), .B(n360), .Y(_0_net_) );
  INVX2 U407 ( .A(n361), .Y(n365) );
  NOR2X1 U408 ( .A(n363), .B(n362), .Y(n364) );
  NAND3X1 U409 ( .A(n365), .B(n60), .C(n364), .Y(n366) );
  INVX2 U410 ( .A(n366), .Y(N365) );
  NOR2X1 U411 ( .A(cmd_check[1]), .B(n367), .Y(N222) );
  INVX2 U412 ( .A(n368), .Y(n427) );
  NAND2X1 U413 ( .A(n37), .B(n86), .Y(cmd_out[0]) );
  NAND2X1 U414 ( .A(n143), .B(n86), .Y(cmd_out[4]) );
  NAND2X1 U415 ( .A(n95), .B(n140), .Y(n370) );
  OAI21X1 U416 ( .A(n380), .B(n370), .C(n382), .Y(n371) );
  NOR2X1 U417 ( .A(n11), .B(n371), .Y(n377) );
  NAND2X1 U418 ( .A(n47), .B(n372), .Y(n373) );
  NOR2X1 U419 ( .A(n374), .B(n373), .Y(n375) );
  NAND3X1 U420 ( .A(n69), .B(n377), .C(n375), .Y(SPI_select[1]) );
  NOR2X1 U421 ( .A(n380), .B(n108), .Y(n385) );
  INVX2 U422 ( .A(byte_transfflip), .Y(n381) );
  NOR2X1 U423 ( .A(n80), .B(n381), .Y(n384) );
  INVX2 U424 ( .A(n382), .Y(n383) );
  AOI22X1 U425 ( .A(n385), .B(n384), .C(n383), .D(byte_transfflip), .Y(n391)
         );
  NAND3X1 U426 ( .A(n83), .B(n386), .C(n109), .Y(n387) );
  AOI21X1 U427 ( .A(n60), .B(n388), .C(n387), .Y(n389) );
  INVX2 U428 ( .A(n392), .Y(sd_err) );
  INVX2 U429 ( .A(edge_detect), .Y(n394) );
  AOI21X1 U430 ( .A(n396), .B(n56), .C(n394), .Y(clear_byte) );
  NAND3X1 U431 ( .A(n103), .B(n398), .C(n397), .Y(n404) );
  NAND3X1 U432 ( .A(n58), .B(n402), .C(n401), .Y(n403) );
  NOR2X1 U433 ( .A(n404), .B(n403), .Y(n76) );
  NAND3X1 U434 ( .A(n139), .B(n112), .C(n20), .Y(n409) );
  NAND3X1 U435 ( .A(n130), .B(n55), .C(n143), .Y(n408) );
  NOR2X1 U436 ( .A(n409), .B(n408), .Y(n77) );
  INVX2 U437 ( .A(n410), .Y(n411) );
  NAND3X1 U438 ( .A(n42), .B(n126), .C(n411), .Y(n421) );
  INVX2 U439 ( .A(n421), .Y(n412) );
  NAND3X1 U440 ( .A(n420), .B(n412), .C(n423), .Y(n413) );
  INVX2 U441 ( .A(n413), .Y(n418) );
  NAND3X1 U442 ( .A(count_out[1]), .B(n418), .C(n416), .Y(n414) );
  INVX2 U443 ( .A(n414), .Y(N367) );
  NAND3X1 U444 ( .A(count_out[0]), .B(n418), .C(n417), .Y(n415) );
  INVX2 U445 ( .A(n415), .Y(N368) );
  NAND3X1 U446 ( .A(n418), .B(n417), .C(n416), .Y(n419) );
  INVX2 U447 ( .A(n419), .Y(N369) );
  NOR2X1 U448 ( .A(n421), .B(n420), .Y(n424) );
  NOR2X1 U449 ( .A(count_out[0]), .B(count_out[1]), .Y(n422) );
  NAND3X1 U450 ( .A(n424), .B(n423), .C(n422), .Y(n425) );
  INVX2 U451 ( .A(n425), .Y(N371) );
endmodule


module flex_counter_NUM_CNT_BITS12_1_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n5, n6, n8, n9, n10, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n23, n24, n25, n27, n28, n29, n31, n32, n34, n36, n38, n39, n40, n41,
         n42, n43, n45, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85;
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

  NOR2X1 U6 ( .A(n6), .B(n8), .Y(n5) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XNOR2X1 U18 ( .A(n19), .B(n18), .Y(SUM[7]) );
  NAND2X1 U19 ( .A(n15), .B(n34), .Y(n1) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n17), .B(n21), .Y(n16) );
  NOR2X1 U25 ( .A(n20), .B(n74), .Y(n19) );
  NAND2X1 U26 ( .A(n21), .B(n25), .Y(n20) );
  XNOR2X1 U29 ( .A(n29), .B(n28), .Y(SUM[5]) );
  NOR2X1 U30 ( .A(n24), .B(n74), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  NOR2X1 U37 ( .A(n32), .B(n74), .Y(n29) );
  XNOR2X1 U47 ( .A(n41), .B(n40), .Y(SUM[2]) );
  NAND2X1 U48 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  INVX1 U60 ( .A(n6), .Y(n79) );
  OR2X2 U61 ( .A(n77), .B(n75), .Y(n74) );
  NOR2X1 U62 ( .A(n77), .B(n75), .Y(n34) );
  NAND2X1 U63 ( .A(n39), .B(n36), .Y(n75) );
  XNOR2X1 U64 ( .A(n85), .B(n83), .Y(SUM[8]) );
  XOR2X1 U65 ( .A(n81), .B(n10), .Y(SUM[9]) );
  XNOR2X1 U66 ( .A(n76), .B(A[11]), .Y(SUM[11]) );
  NAND2X1 U67 ( .A(n84), .B(n5), .Y(n76) );
  INVX2 U68 ( .A(n8), .Y(n82) );
  NAND2X1 U69 ( .A(n45), .B(n43), .Y(n77) );
  XNOR2X1 U70 ( .A(n78), .B(n32), .Y(SUM[4]) );
  INVX1 U71 ( .A(n74), .Y(n78) );
  XNOR2X1 U72 ( .A(n80), .B(n79), .Y(SUM[10]) );
  INVX4 U73 ( .A(n14), .Y(n83) );
  NAND2X1 U74 ( .A(n84), .B(n82), .Y(n80) );
  NAND2X1 U75 ( .A(n83), .B(n84), .Y(n81) );
  INVX1 U76 ( .A(n9), .Y(n10) );
  INVX1 U77 ( .A(n84), .Y(n85) );
  XOR2X1 U78 ( .A(n23), .B(n21), .Y(SUM[6]) );
  XOR2X1 U79 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XNOR2X1 U80 ( .A(n38), .B(n36), .Y(SUM[3]) );
  INVX1 U81 ( .A(n39), .Y(n40) );
  INVX1 U82 ( .A(n27), .Y(n28) );
  INVX1 U83 ( .A(n24), .Y(n25) );
  INVX2 U84 ( .A(n42), .Y(n41) );
  INVX2 U85 ( .A(n1), .Y(n84) );
  INVX1 U86 ( .A(n45), .Y(SUM[0]) );
  INVX2 U87 ( .A(A[10]), .Y(n6) );
  INVX2 U88 ( .A(n31), .Y(n32) );
  INVX2 U89 ( .A(n17), .Y(n18) );
  INVX2 U90 ( .A(n13), .Y(n14) );
endmodule


module flex_counter_NUM_CNT_BITS12_1 ( n_rst, count_enable, clear, clk, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n112, n113, n114, n115, n116, n117, n118, n119, n120, N4, N5, N6, N7,
         N8, N9, N10, N11, N12, N13, N14, N15, n1, n3, n6, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111;

  DFFSR \count_out_reg[0]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n120)
         );
  DFFSR \count_out_reg[1]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n119) );
  DFFSR \count_out_reg[2]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n118) );
  DFFSR \count_out_reg[3]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n117) );
  DFFSR \count_out_reg[4]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n116) );
  DFFSR \count_out_reg[5]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n115) );
  DFFSR \count_out_reg[6]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n114) );
  DFFSR \count_out_reg[7]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n113) );
  DFFSR \count_out_reg[8]  ( .D(n107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n112) );
  DFFSR \count_out_reg[9]  ( .D(n108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \count_out_reg[10]  ( .D(n109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[11]  ( .D(n110), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR rollover_flag_reg ( .D(n111), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  flex_counter_NUM_CNT_BITS12_1_DW01_inc_1 add_29 ( .A({count_out[11:9], n112, 
        n113, count_out[6:5], n116, n117, n118, count_out[1:0]}), .SUM({N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  INVX2 U16 ( .A(rollover_val[11]), .Y(n6) );
  INVX4 U17 ( .A(n25), .Y(count_out[0]) );
  INVX2 U18 ( .A(n27), .Y(n1) );
  INVX2 U19 ( .A(n96), .Y(n27) );
  INVX1 U20 ( .A(count_out[0]), .Y(n64) );
  INVX1 U21 ( .A(n57), .Y(count_out[3]) );
  INVX2 U22 ( .A(n115), .Y(n3) );
  INVX4 U23 ( .A(n3), .Y(count_out[5]) );
  INVX1 U24 ( .A(n117), .Y(n57) );
  XNOR2X1 U25 ( .A(N14), .B(rollover_val[10]), .Y(n83) );
  INVX1 U26 ( .A(N14), .Y(n82) );
  INVX1 U27 ( .A(n52), .Y(count_out[8]) );
  INVX1 U28 ( .A(n112), .Y(n52) );
  XOR2X1 U29 ( .A(N15), .B(n6), .Y(n77) );
  XNOR2X1 U30 ( .A(N12), .B(rollover_val[8]), .Y(n84) );
  INVX1 U31 ( .A(N12), .Y(n81) );
  INVX4 U32 ( .A(n66), .Y(n29) );
  XNOR2X1 U33 ( .A(N13), .B(rollover_val[9]), .Y(n85) );
  INVX1 U34 ( .A(N13), .Y(n80) );
  INVX1 U35 ( .A(n56), .Y(count_out[4]) );
  INVX1 U36 ( .A(N15), .Y(n63) );
  BUFX2 U37 ( .A(n113), .Y(count_out[7]) );
  INVX1 U38 ( .A(n58), .Y(count_out[2]) );
  MUX2X1 U39 ( .B(n97), .A(n98), .S(n1), .Y(n111) );
  BUFX4 U40 ( .A(n119), .Y(count_out[1]) );
  BUFX4 U41 ( .A(n114), .Y(count_out[6]) );
  INVX1 U42 ( .A(n116), .Y(n56) );
  INVX1 U43 ( .A(n118), .Y(n58) );
  INVX1 U44 ( .A(count_out[5]), .Y(n55) );
  INVX1 U45 ( .A(count_out[1]), .Y(n60) );
  INVX2 U46 ( .A(n120), .Y(n25) );
  INVX8 U47 ( .A(n27), .Y(n28) );
  OR2X2 U48 ( .A(count_enable), .B(clear), .Y(n96) );
  INVX8 U49 ( .A(n29), .Y(n30) );
  XOR2X1 U50 ( .A(n52), .B(rollover_val[8]), .Y(n33) );
  INVX2 U51 ( .A(count_out[6]), .Y(n54) );
  XOR2X1 U52 ( .A(n54), .B(rollover_val[6]), .Y(n32) );
  INVX2 U53 ( .A(n113), .Y(n53) );
  XOR2X1 U54 ( .A(n53), .B(rollover_val[7]), .Y(n31) );
  NAND3X1 U55 ( .A(n33), .B(n32), .C(n31), .Y(n38) );
  INVX2 U56 ( .A(count_out[11]), .Y(n62) );
  XOR2X1 U57 ( .A(n62), .B(rollover_val[11]), .Y(n36) );
  INVX2 U58 ( .A(count_out[9]), .Y(n51) );
  XOR2X1 U59 ( .A(n51), .B(rollover_val[9]), .Y(n35) );
  INVX2 U60 ( .A(count_out[10]), .Y(n50) );
  XOR2X1 U61 ( .A(n50), .B(rollover_val[10]), .Y(n34) );
  NAND3X1 U62 ( .A(n36), .B(n35), .C(n34), .Y(n37) );
  NOR2X1 U63 ( .A(n38), .B(n37), .Y(n48) );
  XOR2X1 U64 ( .A(n58), .B(rollover_val[2]), .Y(n41) );
  XOR2X1 U65 ( .A(n64), .B(rollover_val[0]), .Y(n40) );
  XOR2X1 U66 ( .A(n60), .B(rollover_val[1]), .Y(n39) );
  NAND3X1 U67 ( .A(n41), .B(n40), .C(n39), .Y(n46) );
  XOR2X1 U68 ( .A(n55), .B(rollover_val[5]), .Y(n44) );
  XOR2X1 U69 ( .A(n57), .B(rollover_val[3]), .Y(n43) );
  XOR2X1 U70 ( .A(n56), .B(rollover_val[4]), .Y(n42) );
  NAND3X1 U71 ( .A(n44), .B(n43), .C(n42), .Y(n45) );
  NOR2X1 U72 ( .A(n46), .B(n45), .Y(n47) );
  AOI21X1 U73 ( .A(n48), .B(n47), .C(clear), .Y(n49) );
  NAND2X1 U74 ( .A(n49), .B(n96), .Y(n66) );
  OAI22X1 U75 ( .A(n30), .B(n82), .C(n28), .D(n50), .Y(n109) );
  OAI22X1 U76 ( .A(n30), .B(n80), .C(n28), .D(n51), .Y(n108) );
  OAI22X1 U77 ( .A(n30), .B(n81), .C(n28), .D(n52), .Y(n107) );
  INVX2 U78 ( .A(N11), .Y(n88) );
  OAI22X1 U79 ( .A(n30), .B(n88), .C(n28), .D(n53), .Y(n106) );
  INVX2 U80 ( .A(N10), .Y(n86) );
  OAI22X1 U81 ( .A(n30), .B(n86), .C(n28), .D(n54), .Y(n105) );
  INVX2 U82 ( .A(N9), .Y(n69) );
  OAI22X1 U83 ( .A(n69), .B(n30), .C(n28), .D(n55), .Y(n104) );
  INVX2 U84 ( .A(N8), .Y(n67) );
  OAI22X1 U85 ( .A(n30), .B(n67), .C(n28), .D(n56), .Y(n103) );
  INVX2 U86 ( .A(N7), .Y(n87) );
  OAI22X1 U87 ( .A(n30), .B(n87), .C(n28), .D(n57), .Y(n102) );
  INVX2 U88 ( .A(N6), .Y(n59) );
  OAI22X1 U89 ( .A(n30), .B(n59), .C(n28), .D(n58), .Y(n101) );
  INVX2 U90 ( .A(N5), .Y(n61) );
  OAI22X1 U91 ( .A(n30), .B(n61), .C(n28), .D(n60), .Y(n100) );
  OAI22X1 U92 ( .A(n30), .B(n63), .C(n28), .D(n62), .Y(n110) );
  INVX2 U93 ( .A(N4), .Y(n65) );
  OAI22X1 U94 ( .A(n30), .B(n65), .C(n28), .D(n64), .Y(n99) );
  XOR2X1 U95 ( .A(n67), .B(rollover_val[4]), .Y(n72) );
  INVX2 U96 ( .A(rollover_val[0]), .Y(n68) );
  XOR2X1 U97 ( .A(n68), .B(N4), .Y(n71) );
  XOR2X1 U98 ( .A(n69), .B(rollover_val[5]), .Y(n70) );
  NAND3X1 U99 ( .A(n72), .B(n71), .C(n70), .Y(n79) );
  INVX2 U100 ( .A(clear), .Y(n76) );
  XOR2X1 U101 ( .A(rollover_val[1]), .B(N5), .Y(n74) );
  XOR2X1 U102 ( .A(rollover_val[2]), .B(N6), .Y(n73) );
  NOR2X1 U103 ( .A(n74), .B(n73), .Y(n75) );
  NAND3X1 U104 ( .A(n75), .B(n76), .C(n77), .Y(n78) );
  NOR2X1 U105 ( .A(n79), .B(n78), .Y(n95) );
  NAND3X1 U106 ( .A(n84), .B(n85), .C(n83), .Y(n93) );
  XOR2X1 U107 ( .A(n86), .B(rollover_val[6]), .Y(n91) );
  XOR2X1 U108 ( .A(n87), .B(rollover_val[3]), .Y(n90) );
  XOR2X1 U109 ( .A(n88), .B(rollover_val[7]), .Y(n89) );
  NAND3X1 U110 ( .A(n91), .B(n90), .C(n89), .Y(n92) );
  NOR2X1 U111 ( .A(n93), .B(n92), .Y(n94) );
  NAND2X1 U112 ( .A(n95), .B(n94), .Y(n98) );
  INVX2 U113 ( .A(rollover_flag), .Y(n97) );
endmodule


module flex_counter_NUM_CNT_BITS12_0_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n3, n5, n6, n8, n9, n10, n13, n14, n15, n16, n17, n19, n20, n21, n22,
         n23, n24, n27, n29, n31, n32, n34, n35, n36, n38, n39, n40, n41, n42,
         n43, n45, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86;
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

  NOR2X1 U6 ( .A(n6), .B(n8), .Y(n5) );
  NAND2X1 U10 ( .A(n9), .B(n13), .Y(n8) );
  XOR2X1 U13 ( .A(n86), .B(n14), .Y(SUM[8]) );
  NOR2X1 U20 ( .A(n16), .B(n24), .Y(n15) );
  NAND2X1 U21 ( .A(n21), .B(n17), .Y(n16) );
  XNOR2X1 U24 ( .A(n23), .B(n22), .Y(SUM[6]) );
  NOR2X1 U25 ( .A(n20), .B(n81), .Y(n19) );
  NOR2X1 U30 ( .A(n80), .B(n81), .Y(n23) );
  NAND2X1 U33 ( .A(n27), .B(n31), .Y(n24) );
  XOR2X1 U36 ( .A(n81), .B(n32), .Y(SUM[4]) );
  NOR2X1 U37 ( .A(n32), .B(n81), .Y(n29) );
  NOR2X1 U43 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U44 ( .A(n36), .B(n39), .Y(n35) );
  XNOR2X1 U47 ( .A(n41), .B(n40), .Y(SUM[2]) );
  NAND2X1 U48 ( .A(n85), .B(n41), .Y(n38) );
  NAND2X1 U53 ( .A(n45), .B(n43), .Y(n42) );
  NAND2X1 U60 ( .A(n45), .B(n43), .Y(n74) );
  INVX1 U61 ( .A(n14), .Y(n83) );
  BUFX2 U62 ( .A(n36), .Y(n75) );
  XOR2X1 U63 ( .A(n76), .B(n6), .Y(SUM[10]) );
  NAND2X1 U64 ( .A(n82), .B(n84), .Y(n76) );
  AND2X2 U65 ( .A(n5), .B(n84), .Y(n3) );
  INVX1 U66 ( .A(n84), .Y(n86) );
  BUFX2 U67 ( .A(n17), .Y(n77) );
  XNOR2X1 U68 ( .A(n79), .B(n78), .Y(SUM[9]) );
  INVX8 U69 ( .A(n10), .Y(n78) );
  NAND2X1 U70 ( .A(n83), .B(n84), .Y(n79) );
  NAND2X1 U71 ( .A(n27), .B(n31), .Y(n80) );
  OR2X2 U72 ( .A(n74), .B(n35), .Y(n81) );
  INVX1 U73 ( .A(n8), .Y(n82) );
  INVX1 U74 ( .A(n9), .Y(n10) );
  XOR2X1 U75 ( .A(n19), .B(n77), .Y(SUM[7]) );
  AND2X2 U76 ( .A(n34), .B(n15), .Y(n84) );
  OR2X1 U77 ( .A(n22), .B(n80), .Y(n20) );
  XOR2X1 U78 ( .A(n3), .B(A[11]), .Y(SUM[11]) );
  XOR2X1 U79 ( .A(n29), .B(n27), .Y(SUM[5]) );
  XOR2X1 U80 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XNOR2X1 U81 ( .A(n38), .B(n75), .Y(SUM[3]) );
  INVX1 U82 ( .A(n21), .Y(n22) );
  INVX1 U83 ( .A(n40), .Y(n85) );
  INVX1 U84 ( .A(n39), .Y(n40) );
  INVX1 U85 ( .A(n45), .Y(SUM[0]) );
  INVX1 U86 ( .A(n42), .Y(n41) );
  INVX2 U87 ( .A(A[10]), .Y(n6) );
  INVX2 U88 ( .A(n31), .Y(n32) );
  INVX2 U89 ( .A(n13), .Y(n14) );
endmodule


module flex_counter_NUM_CNT_BITS12_0 ( n_rst, count_enable, clear, clk, 
        rollover_val, count_out, rollover_flag );
  input [11:0] rollover_val;
  output [11:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n119, n120, n121, n122, n123, n124, n125, n126, N4, N5, N6, N7, N8,
         N9, N10, N11, N12, N13, N14, N15, n1, n2, n3, n15, n17, n24, n27, n28,
         n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114;

  DFFSR \count_out_reg[0]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n126) );
  DFFSR \count_out_reg[5]  ( .D(n107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n121) );
  DFFSR \count_out_reg[8]  ( .D(n110), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[9]  ( .D(n111), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  flex_counter_NUM_CNT_BITS12_0_DW01_inc_1 add_29 ( .A({count_out[11:7], n120, 
        count_out[5], n122, n123, n124, n125, n17}), .SUM({N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4}) );
  DFFSR \count_out_reg[11]  ( .D(n113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[6]  ( .D(n108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n120) );
  DFFSR \count_out_reg[4]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n122) );
  DFFSR \count_out_reg[3]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n123) );
  DFFSR \count_out_reg[2]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n124) );
  DFFSR \count_out_reg[1]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n125) );
  DFFSR \count_out_reg[10]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[7]  ( .D(n109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n119) );
  DFFSR rollover_flag_reg ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  AND2X2 U3 ( .A(n52), .B(n80), .Y(n1) );
  INVX8 U4 ( .A(n24), .Y(count_out[5]) );
  AND2X1 U5 ( .A(n79), .B(n80), .Y(n2) );
  BUFX2 U8 ( .A(n30), .Y(n3) );
  INVX2 U20 ( .A(n126), .Y(n15) );
  INVX4 U21 ( .A(n15), .Y(n17) );
  INVX2 U22 ( .A(n121), .Y(n24) );
  NAND2X1 U23 ( .A(n2), .B(n81), .Y(n82) );
  INVX1 U24 ( .A(n58), .Y(count_out[6]) );
  INVX1 U25 ( .A(n120), .Y(n58) );
  INVX1 U26 ( .A(n62), .Y(count_out[2]) );
  INVX1 U27 ( .A(n124), .Y(n62) );
  INVX1 U28 ( .A(n60), .Y(count_out[4]) );
  INVX1 U29 ( .A(n61), .Y(count_out[3]) );
  INVX1 U30 ( .A(n64), .Y(count_out[1]) );
  BUFX4 U31 ( .A(n119), .Y(count_out[7]) );
  INVX1 U32 ( .A(count_out[5]), .Y(n59) );
  INVX1 U33 ( .A(n123), .Y(n61) );
  INVX1 U34 ( .A(n122), .Y(n60) );
  INVX1 U35 ( .A(n125), .Y(n64) );
  INVX1 U36 ( .A(n29), .Y(n27) );
  INVX1 U37 ( .A(n29), .Y(n28) );
  INVX4 U38 ( .A(n1), .Y(n32) );
  AND2X2 U39 ( .A(n52), .B(n80), .Y(n29) );
  INVX4 U40 ( .A(n30), .Y(n33) );
  NOR2X1 U41 ( .A(clear), .B(count_enable), .Y(n30) );
  INVX1 U42 ( .A(n68), .Y(count_out[0]) );
  INVX1 U43 ( .A(N15), .Y(n67) );
  INVX1 U44 ( .A(n17), .Y(n68) );
  INVX2 U45 ( .A(count_out[7]), .Y(n57) );
  XOR2X1 U46 ( .A(n57), .B(rollover_val[7]), .Y(n36) );
  INVX2 U47 ( .A(count_out[8]), .Y(n56) );
  XOR2X1 U48 ( .A(n56), .B(rollover_val[8]), .Y(n35) );
  XOR2X1 U49 ( .A(n58), .B(rollover_val[6]), .Y(n34) );
  NAND3X1 U50 ( .A(n36), .B(n35), .C(n34), .Y(n41) );
  INVX2 U51 ( .A(count_out[10]), .Y(n54) );
  XOR2X1 U52 ( .A(n54), .B(rollover_val[10]), .Y(n39) );
  INVX2 U53 ( .A(count_out[11]), .Y(n66) );
  XOR2X1 U54 ( .A(n66), .B(rollover_val[11]), .Y(n38) );
  INVX2 U55 ( .A(count_out[9]), .Y(n55) );
  XOR2X1 U56 ( .A(n55), .B(rollover_val[9]), .Y(n37) );
  NAND3X1 U57 ( .A(n39), .B(n38), .C(n37), .Y(n40) );
  NOR2X1 U58 ( .A(n41), .B(n40), .Y(n51) );
  XOR2X1 U59 ( .A(n64), .B(rollover_val[1]), .Y(n44) );
  XOR2X1 U60 ( .A(n62), .B(rollover_val[2]), .Y(n43) );
  XOR2X1 U61 ( .A(n68), .B(rollover_val[0]), .Y(n42) );
  NAND3X1 U62 ( .A(n44), .B(n43), .C(n42), .Y(n49) );
  XOR2X1 U63 ( .A(n60), .B(rollover_val[4]), .Y(n47) );
  XOR2X1 U64 ( .A(n59), .B(rollover_val[5]), .Y(n46) );
  XOR2X1 U65 ( .A(n61), .B(rollover_val[3]), .Y(n45) );
  NAND3X1 U66 ( .A(n47), .B(n46), .C(n45), .Y(n48) );
  NOR2X1 U67 ( .A(n49), .B(n48), .Y(n50) );
  INVX2 U68 ( .A(count_enable), .Y(n53) );
  AOI21X1 U69 ( .A(n51), .B(n50), .C(n53), .Y(n52) );
  INVX2 U70 ( .A(clear), .Y(n80) );
  INVX2 U71 ( .A(N14), .Y(n86) );
  OAI22X1 U72 ( .A(n86), .B(n32), .C(n33), .D(n54), .Y(n112) );
  INVX2 U73 ( .A(N13), .Y(n84) );
  OAI22X1 U74 ( .A(n84), .B(n32), .C(n33), .D(n55), .Y(n111) );
  INVX2 U75 ( .A(N12), .Y(n85) );
  OAI22X1 U76 ( .A(n85), .B(n32), .C(n33), .D(n56), .Y(n110) );
  INVX2 U77 ( .A(N11), .Y(n92) );
  OAI22X1 U78 ( .A(n92), .B(n32), .C(n33), .D(n57), .Y(n109) );
  INVX2 U79 ( .A(N10), .Y(n90) );
  OAI22X1 U80 ( .A(n90), .B(n32), .C(n33), .D(n58), .Y(n108) );
  INVX2 U81 ( .A(N9), .Y(n72) );
  OAI22X1 U82 ( .A(n72), .B(n32), .C(n33), .D(n59), .Y(n107) );
  INVX2 U83 ( .A(N8), .Y(n70) );
  OAI22X1 U84 ( .A(n28), .B(n70), .C(n33), .D(n60), .Y(n106) );
  INVX2 U85 ( .A(N7), .Y(n91) );
  OAI22X1 U86 ( .A(n28), .B(n91), .C(n61), .D(n33), .Y(n105) );
  INVX2 U87 ( .A(N6), .Y(n63) );
  OAI22X1 U88 ( .A(n27), .B(n63), .C(n33), .D(n62), .Y(n104) );
  INVX2 U89 ( .A(N5), .Y(n65) );
  OAI22X1 U90 ( .A(n27), .B(n65), .C(n33), .D(n64), .Y(n103) );
  OAI22X1 U91 ( .A(n67), .B(n32), .C(n33), .D(n66), .Y(n113) );
  INVX2 U92 ( .A(N4), .Y(n69) );
  OAI22X1 U93 ( .A(n69), .B(n32), .C(n33), .D(n68), .Y(n102) );
  XOR2X1 U94 ( .A(n70), .B(rollover_val[4]), .Y(n75) );
  INVX2 U95 ( .A(rollover_val[0]), .Y(n71) );
  XOR2X1 U96 ( .A(n71), .B(N4), .Y(n74) );
  XOR2X1 U97 ( .A(n72), .B(rollover_val[5]), .Y(n73) );
  NAND3X1 U98 ( .A(n75), .B(n74), .C(n73), .Y(n83) );
  INVX2 U99 ( .A(rollover_val[11]), .Y(n76) );
  XOR2X1 U100 ( .A(N15), .B(n76), .Y(n81) );
  XOR2X1 U101 ( .A(rollover_val[1]), .B(N5), .Y(n78) );
  XOR2X1 U102 ( .A(rollover_val[2]), .B(N6), .Y(n77) );
  NOR2X1 U103 ( .A(n78), .B(n77), .Y(n79) );
  NOR2X1 U104 ( .A(n83), .B(n82), .Y(n99) );
  XOR2X1 U105 ( .A(n84), .B(rollover_val[9]), .Y(n89) );
  XOR2X1 U106 ( .A(n85), .B(rollover_val[8]), .Y(n88) );
  XOR2X1 U107 ( .A(n86), .B(rollover_val[10]), .Y(n87) );
  NAND3X1 U108 ( .A(n89), .B(n88), .C(n87), .Y(n97) );
  XOR2X1 U109 ( .A(n90), .B(rollover_val[6]), .Y(n95) );
  XOR2X1 U110 ( .A(n91), .B(rollover_val[3]), .Y(n94) );
  XOR2X1 U111 ( .A(n92), .B(rollover_val[7]), .Y(n93) );
  NAND3X1 U112 ( .A(n95), .B(n94), .C(n93), .Y(n96) );
  NOR2X1 U113 ( .A(n96), .B(n97), .Y(n98) );
  NAND2X1 U114 ( .A(n99), .B(n98), .Y(n101) );
  INVX2 U115 ( .A(rollover_flag), .Y(n100) );
  MUX2X1 U116 ( .B(n101), .A(n100), .S(n3), .Y(n114) );
endmodule


module myfifo_DW01_inc_0 ( A, SUM );
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
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module myfifo ( clk, n_rst, r_enable, w_enable, clear, data_i, sram_o, sram_i, 
        data_o, addr, full, empty );
  input [7:0] data_i;
  input [7:0] sram_o;
  output [7:0] sram_i;
  output [7:0] data_o;
  output [11:0] addr;
  input clk, n_rst, r_enable, w_enable, clear;
  output full, empty;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n1, n2, n3, n17;
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
  AND2X2 U5 ( .A(n44), .B(n45), .Y(empty) );
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
  NOR2X1 U39 ( .A(n46), .B(n47), .Y(n45) );
  NAND3X1 U40 ( .A(n48), .B(n49), .C(n50), .Y(n47) );
  XNOR2X1 U41 ( .A(readptr[0]), .B(writeptr[0]), .Y(n50) );
  XNOR2X1 U42 ( .A(readptr[1]), .B(writeptr[1]), .Y(n49) );
  XNOR2X1 U43 ( .A(readptr[2]), .B(writeptr[2]), .Y(n48) );
  NAND3X1 U44 ( .A(n51), .B(n52), .C(n53), .Y(n46) );
  XNOR2X1 U45 ( .A(readptr[3]), .B(writeptr[3]), .Y(n53) );
  XNOR2X1 U46 ( .A(readptr[4]), .B(writeptr[4]), .Y(n52) );
  XNOR2X1 U47 ( .A(readptr[5]), .B(writeptr[5]), .Y(n51) );
  NOR2X1 U48 ( .A(n54), .B(n55), .Y(n44) );
  NAND3X1 U49 ( .A(n56), .B(n57), .C(n58), .Y(n55) );
  XNOR2X1 U50 ( .A(readptr[6]), .B(writeptr[6]), .Y(n58) );
  XNOR2X1 U51 ( .A(readptr[7]), .B(writeptr[7]), .Y(n57) );
  XNOR2X1 U52 ( .A(readptr[8]), .B(writeptr[8]), .Y(n56) );
  NAND3X1 U53 ( .A(n59), .B(n60), .C(n61), .Y(n54) );
  XNOR2X1 U54 ( .A(readptr[9]), .B(writeptr[9]), .Y(n61) );
  XNOR2X1 U55 ( .A(readptr[10]), .B(writeptr[10]), .Y(n60) );
  XNOR2X1 U56 ( .A(readptr[11]), .B(writeptr[11]), .Y(n59) );
  AOI22X1 U57 ( .A(writeptr[9]), .B(n3), .C(n17), .D(readptr[9]), .Y(n62) );
  AOI22X1 U58 ( .A(writeptr[8]), .B(n3), .C(n17), .D(readptr[8]), .Y(n63) );
  AOI22X1 U59 ( .A(writeptr[7]), .B(n3), .C(n17), .D(readptr[7]), .Y(n64) );
  AOI22X1 U60 ( .A(writeptr[6]), .B(n3), .C(n17), .D(readptr[6]), .Y(n65) );
  AOI22X1 U61 ( .A(writeptr[5]), .B(n3), .C(n17), .D(readptr[5]), .Y(n66) );
  AOI22X1 U62 ( .A(writeptr[4]), .B(n3), .C(n17), .D(readptr[4]), .Y(n67) );
  AOI22X1 U63 ( .A(writeptr[3]), .B(n3), .C(n17), .D(readptr[3]), .Y(n68) );
  AOI22X1 U64 ( .A(writeptr[2]), .B(n3), .C(n17), .D(readptr[2]), .Y(n69) );
  AOI22X1 U65 ( .A(writeptr[1]), .B(n3), .C(n17), .D(readptr[1]), .Y(n70) );
  AOI22X1 U66 ( .A(writeptr[11]), .B(n3), .C(n17), .D(readptr[11]), .Y(n71) );
  AOI22X1 U67 ( .A(writeptr[10]), .B(n3), .C(n17), .D(readptr[10]), .Y(n72) );
  AOI22X1 U68 ( .A(writeptr[0]), .B(n3), .C(n17), .D(readptr[0]), .Y(n73) );
  flex_counter_NUM_CNT_BITS12_1 ReadCnt ( .n_rst(n_rst), .count_enable(
        r_enable), .clear(clear), .clk(clk), .rollover_val({1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .count_out(
        readptr) );
  flex_counter_NUM_CNT_BITS12_0 WriteCnt ( .n_rst(n_rst), .count_enable(n1), 
        .clear(clear), .clk(clk), .rollover_val({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .count_out(writeptr) );
  myfifo_DW01_inc_0 add_34 ( .A({1'b0, readptr}), .SUM({N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  BUFX2 U6 ( .A(w_enable), .Y(n1) );
  INVX1 U7 ( .A(n1), .Y(n2) );
  INVX1 U8 ( .A(n2), .Y(n3) );
  INVX1 U9 ( .A(n3), .Y(n17) );
  INVX2 U10 ( .A(n73), .Y(addr[0]) );
  INVX2 U11 ( .A(n72), .Y(addr[10]) );
  INVX2 U12 ( .A(n71), .Y(addr[11]) );
  INVX2 U13 ( .A(n70), .Y(addr[1]) );
  INVX2 U14 ( .A(n69), .Y(addr[2]) );
  INVX2 U15 ( .A(n68), .Y(addr[3]) );
  INVX2 U16 ( .A(n67), .Y(addr[4]) );
  INVX2 U17 ( .A(n66), .Y(addr[5]) );
  INVX2 U18 ( .A(n65), .Y(addr[6]) );
  INVX2 U19 ( .A(n64), .Y(addr[7]) );
  INVX2 U69 ( .A(n63), .Y(addr[8]) );
  INVX2 U70 ( .A(n62), .Y(addr[9]) );
endmodule


module flex_counter_1 ( n_rst, count_enable, clear, clk, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n20, n23, n25, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n1, n2, n3, n5, n6, n7, n8, n14, n15,
         n16, n17, n18, n19;

  DFFSR \count_out_reg[0]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR rollover_flag_reg ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n20)
         );
  DFFSR \count_out_reg[3]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  XOR2X1 U18 ( .A(rollover_val[1]), .B(n28), .Y(n25) );
  OAI22X1 U21 ( .A(n19), .B(n14), .C(n29), .D(n31), .Y(n40) );
  XNOR2X1 U22 ( .A(count_out[3]), .B(n32), .Y(n29) );
  NOR2X1 U23 ( .A(n33), .B(n18), .Y(n32) );
  OAI22X1 U24 ( .A(n18), .B(n14), .C(n27), .D(n31), .Y(n41) );
  XNOR2X1 U25 ( .A(n33), .B(n18), .Y(n27) );
  NAND2X1 U26 ( .A(count_out[1]), .B(count_out[0]), .Y(n33) );
  OAI22X1 U27 ( .A(n17), .B(n14), .C(n28), .D(n31), .Y(n42) );
  XOR2X1 U28 ( .A(n16), .B(count_out[1]), .Y(n28) );
  OAI22X1 U29 ( .A(n16), .B(n14), .C(count_out[0]), .D(n31), .Y(n43) );
  NAND3X1 U30 ( .A(n34), .B(n15), .C(n14), .Y(n31) );
  NAND3X1 U31 ( .A(n35), .B(n36), .C(n37), .Y(n34) );
  NOR2X1 U32 ( .A(n30), .B(n38), .Y(n37) );
  XNOR2X1 U33 ( .A(rollover_val[3]), .B(n19), .Y(n38) );
  XNOR2X1 U34 ( .A(n16), .B(rollover_val[0]), .Y(n30) );
  XNOR2X1 U35 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n36) );
  XNOR2X1 U36 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n35) );
  NOR2X1 U37 ( .A(clear), .B(count_enable), .Y(n23) );
  INVX1 U8 ( .A(count_out[1]), .Y(n17) );
  NOR2X1 U9 ( .A(n1), .B(n2), .Y(n6) );
  XNOR2X1 U10 ( .A(n27), .B(rollover_val[2]), .Y(n1) );
  XNOR2X1 U11 ( .A(n29), .B(rollover_val[3]), .Y(n2) );
  INVX2 U12 ( .A(n20), .Y(n3) );
  INVX8 U13 ( .A(n3), .Y(rollover_flag) );
  INVX2 U14 ( .A(clear), .Y(n15) );
  AND2X2 U15 ( .A(n30), .B(n15), .Y(n5) );
  NAND3X1 U16 ( .A(n6), .B(n25), .C(n5), .Y(n8) );
  INVX2 U17 ( .A(rollover_flag), .Y(n7) );
  MUX2X1 U19 ( .B(n8), .A(n7), .S(n23), .Y(n39) );
  INVX2 U20 ( .A(n23), .Y(n14) );
  INVX2 U38 ( .A(count_out[0]), .Y(n16) );
  INVX2 U39 ( .A(count_out[2]), .Y(n18) );
  INVX2 U40 ( .A(count_out[3]), .Y(n19) );
endmodule


module flex_counter_0 ( n_rst, count_enable, clear, clk, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input n_rst, count_enable, clear, clk;
  output rollover_flag;
  wire   n1, n2, n3, n4, n5, n6, n7, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n44, n45, n46, n47, n48, n49, n50, n51;

  DFFSR \count_out_reg[0]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[3]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  INVX2 U3 ( .A(n3), .Y(n14) );
  INVX2 U4 ( .A(n5), .Y(n1) );
  INVX1 U5 ( .A(n5), .Y(n2) );
  INVX1 U6 ( .A(n5), .Y(n21) );
  BUFX4 U7 ( .A(clear), .Y(n5) );
  NOR2X1 U8 ( .A(clear), .B(count_enable), .Y(n3) );
  NOR2X1 U9 ( .A(clear), .B(count_enable), .Y(n4) );
  MUX2X1 U10 ( .B(n46), .A(n45), .S(n4), .Y(n51) );
  INVX2 U11 ( .A(n4), .Y(n13) );
  NAND3X1 U12 ( .A(n22), .B(n14), .C(n2), .Y(n6) );
  NAND3X1 U13 ( .A(n22), .B(n14), .C(n1), .Y(n7) );
  INVX1 U19 ( .A(n4), .Y(n15) );
  NAND3X1 U20 ( .A(n22), .B(n14), .C(n1), .Y(n16) );
  XNOR2X1 U21 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n30) );
  XNOR2X1 U22 ( .A(rollover_val[1]), .B(n32), .Y(n36) );
  AND2X2 U23 ( .A(n30), .B(n17), .Y(n18) );
  XNOR2X1 U24 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n17) );
  INVX1 U25 ( .A(rollover_flag), .Y(n45) );
  INVX2 U26 ( .A(count_out[2]), .Y(n24) );
  XOR2X1 U27 ( .A(n24), .B(rollover_val[2]), .Y(n20) );
  INVX2 U28 ( .A(count_out[3]), .Y(n28) );
  XOR2X1 U29 ( .A(n28), .B(rollover_val[3]), .Y(n19) );
  NAND3X1 U30 ( .A(n20), .B(n19), .C(n18), .Y(n22) );
  NAND3X1 U31 ( .A(n22), .B(n21), .C(n14), .Y(n29) );
  NAND2X1 U32 ( .A(count_out[0]), .B(count_out[1]), .Y(n25) );
  OAI21X1 U33 ( .A(count_out[0]), .B(count_out[1]), .C(n25), .Y(n32) );
  INVX2 U34 ( .A(count_out[1]), .Y(n23) );
  OAI22X1 U35 ( .A(n29), .B(n32), .C(n15), .D(n23), .Y(n48) );
  XOR2X1 U36 ( .A(n25), .B(count_out[2]), .Y(n31) );
  OAI22X1 U37 ( .A(n16), .B(n31), .C(n13), .D(n24), .Y(n49) );
  INVX2 U38 ( .A(n25), .Y(n26) );
  NAND2X1 U39 ( .A(count_out[2]), .B(n26), .Y(n27) );
  XOR2X1 U40 ( .A(n27), .B(count_out[3]), .Y(n33) );
  OAI22X1 U41 ( .A(n6), .B(n33), .C(n13), .D(n28), .Y(n50) );
  MUX2X1 U42 ( .B(n7), .A(n13), .S(count_out[0]), .Y(n47) );
  NOR2X1 U43 ( .A(n5), .B(n30), .Y(n44) );
  XOR2X1 U44 ( .A(n31), .B(rollover_val[2]), .Y(n38) );
  INVX2 U45 ( .A(n33), .Y(n34) );
  XOR2X1 U46 ( .A(rollover_val[3]), .B(n34), .Y(n35) );
  NOR2X1 U47 ( .A(n36), .B(n35), .Y(n37) );
  NAND3X1 U48 ( .A(n37), .B(n38), .C(n44), .Y(n46) );
endmodule


module timerSD ( clk, n_rst, clear_byte, enable, speed, SDCLK, shift_enable, 
        byte_received );
  input [1:0] speed;
  input clk, n_rst, clear_byte, enable;
  output SDCLK, shift_enable, byte_received;
  wire   N12, N15, N16, _0_net_, n14, n15, n16, n20, n21, n22, n23, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [3:0] count;
  wire   [3:0] smallCount;
  wire   [3:0] half;

  LATCH \smallCount_reg[2]  ( .CLK(N12), .D(N16), .Q(smallCount[2]) );
  LATCH \smallCount_reg[0]  ( .CLK(N12), .D(N15), .Q(smallCount[0]) );
  LATCH \half_reg[1]  ( .CLK(N12), .D(n10), .Q(half[1]) );
  LATCH \half_reg[0]  ( .CLK(N12), .D(n11), .Q(half[0]) );
  OAI21X1 U17 ( .A(n14), .B(n15), .C(n16), .Y(SDCLK) );
  OAI21X1 U22 ( .A(half[1]), .B(n6), .C(n21), .Y(n20) );
  OAI21X1 U23 ( .A(count[1]), .B(n9), .C(n22), .Y(n21) );
  NAND2X1 U24 ( .A(half[0]), .B(n5), .Y(n22) );
  NAND3X1 U25 ( .A(clk), .B(speed[1]), .C(count[0]), .Y(n15) );
  NAND3X1 U26 ( .A(n6), .B(n7), .C(n23), .Y(n14) );
  NOR2X1 U27 ( .A(speed[0]), .B(count[3]), .Y(n23) );
  NOR2X1 U28 ( .A(speed[1]), .B(speed[0]), .Y(N16) );
  NOR2X1 U29 ( .A(speed[1]), .B(n11), .Y(N15) );
  NAND2X1 U30 ( .A(speed[0]), .B(speed[1]), .Y(N12) );
  flex_counter_1 smallCounter ( .n_rst(n_rst), .count_enable(enable), .clear(
        1'b0), .clk(clk), .rollover_val({1'b0, smallCount[2], 1'b1, 
        smallCount[0]}), .count_out(count), .rollover_flag(shift_enable) );
  flex_counter_0 bigCounter ( .n_rst(n_rst), .count_enable(shift_enable), 
        .clear(_0_net_), .clk(clk), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(byte_received) );
  AND2X2 U3 ( .A(n7), .B(n4), .Y(n1) );
  INVX1 U4 ( .A(count[1]), .Y(n6) );
  INVX1 U5 ( .A(byte_received), .Y(n2) );
  INVX2 U6 ( .A(n2), .Y(n3) );
  OR2X2 U9 ( .A(clear_byte), .B(n3), .Y(_0_net_) );
  INVX2 U10 ( .A(n20), .Y(n4) );
  INVX2 U11 ( .A(count[0]), .Y(n5) );
  INVX2 U12 ( .A(count[2]), .Y(n7) );
  INVX2 U13 ( .A(count[3]), .Y(n8) );
  INVX2 U14 ( .A(half[1]), .Y(n9) );
  INVX2 U15 ( .A(speed[1]), .Y(n10) );
  INVX2 U16 ( .A(speed[0]), .Y(n11) );
  NAND2X1 U18 ( .A(n8), .B(n1), .Y(n16) );
endmodule


module flex_pts_sr_NUM_BITS8 ( n_rst, shift_enable, load_enable, clk, 
        parallel_in, serial_out );
  input [7:0] parallel_in;
  input n_rst, shift_enable, load_enable, clk;
  output serial_out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n36,
         n37, n38, n39, n40, n41, n42, n43;
  wire   [6:0] temp1;

  DFFSR \temp1_reg[0]  ( .D(n35), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[0])
         );
  DFFSR \temp1_reg[1]  ( .D(n34), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[1])
         );
  DFFSR \temp1_reg[2]  ( .D(n33), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[2])
         );
  DFFSR \temp1_reg[3]  ( .D(n32), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[3])
         );
  DFFSR \temp1_reg[4]  ( .D(n31), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[4])
         );
  DFFSR \temp1_reg[5]  ( .D(n30), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[5])
         );
  DFFSR \temp1_reg[6]  ( .D(n29), .CLK(clk), .R(n_rst), .S(1'b1), .Q(temp1[6])
         );
  DFFSR \temp1_reg[7]  ( .D(n28), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        serial_out) );
  INVX4 U11 ( .A(n18), .Y(n14) );
  INVX4 U12 ( .A(n12), .Y(n9) );
  INVX2 U13 ( .A(load_enable), .Y(n37) );
  AND2X2 U14 ( .A(shift_enable), .B(n37), .Y(n10) );
  INVX1 U15 ( .A(n11), .Y(n17) );
  AND2X2 U16 ( .A(shift_enable), .B(n37), .Y(n11) );
  INVX1 U17 ( .A(n37), .Y(n12) );
  INVX2 U18 ( .A(shift_enable), .Y(n13) );
  NAND2X1 U19 ( .A(n37), .B(n13), .Y(n18) );
  NAND2X1 U20 ( .A(temp1[0]), .B(n14), .Y(n16) );
  NAND2X1 U21 ( .A(parallel_in[0]), .B(n18), .Y(n15) );
  NAND3X1 U22 ( .A(n17), .B(n16), .C(n15), .Y(n35) );
  INVX2 U23 ( .A(parallel_in[1]), .Y(n20) );
  AOI22X1 U24 ( .A(temp1[0]), .B(n10), .C(temp1[1]), .D(n14), .Y(n19) );
  OAI21X1 U25 ( .A(n9), .B(n20), .C(n19), .Y(n34) );
  INVX2 U26 ( .A(parallel_in[2]), .Y(n22) );
  AOI22X1 U27 ( .A(temp1[1]), .B(n11), .C(temp1[2]), .D(n14), .Y(n21) );
  OAI21X1 U28 ( .A(n9), .B(n22), .C(n21), .Y(n33) );
  INVX2 U29 ( .A(parallel_in[3]), .Y(n24) );
  AOI22X1 U30 ( .A(temp1[2]), .B(n10), .C(temp1[3]), .D(n14), .Y(n23) );
  OAI21X1 U31 ( .A(n9), .B(n24), .C(n23), .Y(n32) );
  INVX2 U32 ( .A(parallel_in[4]), .Y(n26) );
  AOI22X1 U33 ( .A(temp1[3]), .B(n11), .C(temp1[4]), .D(n14), .Y(n25) );
  OAI21X1 U34 ( .A(n9), .B(n26), .C(n25), .Y(n31) );
  INVX2 U35 ( .A(parallel_in[5]), .Y(n36) );
  AOI22X1 U36 ( .A(temp1[4]), .B(n10), .C(temp1[5]), .D(n14), .Y(n27) );
  OAI21X1 U37 ( .A(n9), .B(n36), .C(n27), .Y(n30) );
  NAND2X1 U38 ( .A(temp1[5]), .B(n10), .Y(n40) );
  NAND2X1 U39 ( .A(temp1[6]), .B(n14), .Y(n39) );
  NAND2X1 U40 ( .A(n12), .B(parallel_in[6]), .Y(n38) );
  NAND3X1 U41 ( .A(n40), .B(n39), .C(n38), .Y(n29) );
  NAND2X1 U42 ( .A(temp1[6]), .B(n11), .Y(n43) );
  NAND2X1 U43 ( .A(serial_out), .B(n14), .Y(n42) );
  NAND2X1 U44 ( .A(parallel_in[7]), .B(n12), .Y(n41) );
  NAND3X1 U45 ( .A(n43), .B(n42), .C(n41), .Y(n28) );
endmodule


module flex_stp_sr_NUM_BITS8 ( n_rst, shift_enable, serial_in, clk, 
        parallel_out );
  output [7:0] parallel_out;
  input n_rst, shift_enable, serial_in, clk;
  wire   n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n3, n4, n5, n6, n7,
         n8, n9;

  DFFSR \parallel_out_reg[0]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[4]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[5]  ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[6]  ( .D(n14), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[7]  ( .D(n12), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  MUX2X1 U2 ( .B(parallel_out[0]), .A(serial_in), .S(shift_enable), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n26) );
  INVX2 U4 ( .A(parallel_out[1]), .Y(n3) );
  INVX2 U5 ( .A(parallel_out[0]), .Y(n2) );
  MUX2X1 U6 ( .B(n3), .A(n2), .S(shift_enable), .Y(n24) );
  INVX2 U7 ( .A(parallel_out[2]), .Y(n4) );
  MUX2X1 U8 ( .B(n4), .A(n3), .S(shift_enable), .Y(n22) );
  INVX2 U9 ( .A(parallel_out[3]), .Y(n5) );
  MUX2X1 U10 ( .B(n5), .A(n4), .S(shift_enable), .Y(n20) );
  INVX2 U11 ( .A(parallel_out[4]), .Y(n6) );
  MUX2X1 U12 ( .B(n6), .A(n5), .S(shift_enable), .Y(n18) );
  INVX2 U13 ( .A(parallel_out[5]), .Y(n7) );
  MUX2X1 U14 ( .B(n7), .A(n6), .S(shift_enable), .Y(n16) );
  INVX2 U15 ( .A(parallel_out[6]), .Y(n8) );
  MUX2X1 U16 ( .B(n8), .A(n7), .S(shift_enable), .Y(n14) );
  INVX2 U17 ( .A(parallel_out[7]), .Y(n9) );
  MUX2X1 U18 ( .B(n9), .A(n8), .S(shift_enable), .Y(n12) );
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
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31;
  wire   [7:0] data_in;

  flex_pts_sr_NUM_BITS8 shift_out ( .n_rst(n_rst), .shift_enable(shift_enable), 
        .load_enable(load_enable), .clk(clk), .parallel_in(data_in), 
        .serial_out(sddo) );
  flex_stp_sr_NUM_BITS8 shift_in ( .n_rst(n_rst), .shift_enable(shift_enable), 
        .serial_in(sddi), .clk(clk), .parallel_out(data_out) );
  AND2X2 U1 ( .A(line_select[0]), .B(n18), .Y(n1) );
  INVX4 U2 ( .A(line_select[1]), .Y(n18) );
  AND2X2 U3 ( .A(n4), .B(line_select[1]), .Y(n3) );
  AND2X2 U4 ( .A(line_select[0]), .B(n18), .Y(n2) );
  NAND2X1 U5 ( .A(fifo_data[0]), .B(n1), .Y(n7) );
  INVX2 U6 ( .A(line_select[0]), .Y(n4) );
  NAND2X1 U7 ( .A(n3), .B(command_in[0]), .Y(n6) );
  XOR2X1 U8 ( .A(n18), .B(line_select[0]), .Y(n14) );
  NAND2X1 U9 ( .A(n28), .B(data_out[0]), .Y(n5) );
  NAND3X1 U10 ( .A(n7), .B(n6), .C(n5), .Y(data_in[0]) );
  NAND2X1 U11 ( .A(fifo_data[1]), .B(n2), .Y(n10) );
  NAND2X1 U12 ( .A(command_in[1]), .B(n3), .Y(n9) );
  NAND2X1 U13 ( .A(n14), .B(data_out[1]), .Y(n8) );
  NAND3X1 U14 ( .A(n10), .B(n9), .C(n8), .Y(data_in[1]) );
  NAND2X1 U15 ( .A(fifo_data[2]), .B(n2), .Y(n13) );
  NAND2X1 U16 ( .A(command_in[2]), .B(n3), .Y(n12) );
  NAND2X1 U17 ( .A(n14), .B(data_out[2]), .Y(n11) );
  NAND3X1 U18 ( .A(n13), .B(n12), .C(n11), .Y(data_in[2]) );
  NAND2X1 U19 ( .A(fifo_data[3]), .B(n1), .Y(n17) );
  NAND2X1 U20 ( .A(command_in[3]), .B(n3), .Y(n16) );
  NAND2X1 U21 ( .A(n14), .B(data_out[3]), .Y(n15) );
  NAND3X1 U22 ( .A(n17), .B(n16), .C(n15), .Y(data_in[3]) );
  NAND2X1 U23 ( .A(fifo_data[4]), .B(n2), .Y(n21) );
  NAND2X1 U24 ( .A(command_in[4]), .B(n3), .Y(n20) );
  XOR2X1 U25 ( .A(n18), .B(line_select[0]), .Y(n28) );
  NAND2X1 U26 ( .A(n28), .B(data_out[4]), .Y(n19) );
  NAND3X1 U27 ( .A(n21), .B(n20), .C(n19), .Y(data_in[4]) );
  NAND2X1 U28 ( .A(fifo_data[5]), .B(n1), .Y(n24) );
  NAND2X1 U29 ( .A(command_in[5]), .B(n3), .Y(n23) );
  NAND2X1 U30 ( .A(n14), .B(data_out[5]), .Y(n22) );
  NAND3X1 U31 ( .A(n24), .B(n23), .C(n22), .Y(data_in[5]) );
  NAND2X1 U32 ( .A(fifo_data[6]), .B(n1), .Y(n27) );
  NAND2X1 U33 ( .A(command_in[6]), .B(n3), .Y(n26) );
  NAND2X1 U34 ( .A(n28), .B(data_out[6]), .Y(n25) );
  NAND3X1 U35 ( .A(n27), .B(n26), .C(n25), .Y(data_in[6]) );
  NAND2X1 U36 ( .A(fifo_data[7]), .B(n2), .Y(n31) );
  NAND2X1 U37 ( .A(command_in[7]), .B(n3), .Y(n30) );
  NAND2X1 U38 ( .A(data_out[7]), .B(n28), .Y(n29) );
  NAND3X1 U39 ( .A(n31), .B(n30), .C(n29), .Y(data_in[7]) );
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
  NOR2X1 U31 ( .A(n5), .B(n27), .Y(n26) );
  AOI21X1 U32 ( .A(n28), .B(n29), .C(n13), .Y(n27) );
  AOI22X1 U33 ( .A(address[7]), .B(n4), .C(address[15]), .D(n9), .Y(n29) );
  AOI22X1 U34 ( .A(address[23]), .B(n1), .C(address[31]), .D(n10), .Y(n28) );
  OAI21X1 U35 ( .A(n13), .B(n30), .C(n31), .Y(N123) );
  AOI21X1 U36 ( .A(n2), .B(n32), .C(n33), .Y(n31) );
  AOI21X1 U37 ( .A(address[14]), .B(n9), .C(n36), .Y(n35) );
  OAI21X1 U38 ( .A(n37), .B(n23), .C(n38), .Y(n36) );
  AOI22X1 U39 ( .A(address[22]), .B(n1), .C(address[30]), .D(n10), .Y(n34) );
  OAI21X1 U40 ( .A(n13), .B(n39), .C(n40), .Y(N122) );
  NOR2X1 U41 ( .A(n33), .B(n5), .Y(n40) );
  AOI22X1 U42 ( .A(address[5]), .B(n4), .C(address[13]), .D(n9), .Y(n42) );
  AOI22X1 U43 ( .A(address[21]), .B(n1), .C(address[29]), .D(n10), .Y(n41) );
  OAI21X1 U44 ( .A(n24), .B(n25), .C(n43), .Y(N121) );
  AOI21X1 U45 ( .A(n44), .B(n45), .C(n33), .Y(n43) );
  NAND3X1 U46 ( .A(n46), .B(n47), .C(n48), .Y(n44) );
  AOI22X1 U47 ( .A(address[20]), .B(n1), .C(address[28]), .D(n10), .Y(n48) );
  NAND2X1 U48 ( .A(address[12]), .B(n9), .Y(n47) );
  AOI21X1 U49 ( .A(address[4]), .B(n4), .C(n2), .Y(n46) );
  NAND2X1 U50 ( .A(n49), .B(n50), .Y(N120) );
  AOI21X1 U51 ( .A(n51), .B(n45), .C(n52), .Y(n50) );
  OAI21X1 U52 ( .A(n16), .B(n53), .C(n54), .Y(n52) );
  NAND2X1 U53 ( .A(n6), .B(n11), .Y(n53) );
  NAND2X1 U54 ( .A(n55), .B(n56), .Y(n51) );
  AOI22X1 U55 ( .A(address[3]), .B(n4), .C(address[11]), .D(n9), .Y(n56) );
  AOI22X1 U56 ( .A(address[19]), .B(n1), .C(address[27]), .D(n10), .Y(n55) );
  AOI21X1 U57 ( .A(n57), .B(n2), .C(n58), .Y(n49) );
  OAI21X1 U58 ( .A(n13), .B(n59), .C(n7), .Y(N119) );
  AOI22X1 U59 ( .A(address[2]), .B(n4), .C(address[10]), .D(n9), .Y(n61) );
  AOI22X1 U60 ( .A(address[18]), .B(n1), .C(address[26]), .D(n10), .Y(n60) );
  NAND2X1 U61 ( .A(n62), .B(n8), .Y(N118) );
  OAI21X1 U62 ( .A(n16), .B(n24), .C(n18), .Y(n58) );
  NOR2X1 U63 ( .A(n5), .B(n63), .Y(n62) );
  AOI21X1 U64 ( .A(n64), .B(n65), .C(n13), .Y(n63) );
  AOI22X1 U65 ( .A(address[1]), .B(n4), .C(address[9]), .D(n9), .Y(n65) );
  AOI22X1 U66 ( .A(address[17]), .B(n1), .C(address[25]), .D(n10), .Y(n64) );
  NAND3X1 U67 ( .A(n68), .B(n6), .C(counter[2]), .Y(n54) );
  NAND3X1 U68 ( .A(n69), .B(n70), .C(n7), .Y(N117) );
  OAI21X1 U69 ( .A(n15), .B(n24), .C(n18), .Y(n71) );
  NAND3X1 U70 ( .A(counter[0]), .B(n68), .C(counter[1]), .Y(n70) );
  OAI21X1 U71 ( .A(n72), .B(n73), .C(n45), .Y(n69) );
  OAI21X1 U72 ( .A(n66), .B(n21), .C(n3), .Y(n73) );
  OAI21X1 U73 ( .A(n67), .B(n22), .C(n74), .Y(n72) );
  AOI22X1 U74 ( .A(address[0]), .B(n4), .C(address[8]), .D(n9), .Y(n74) );
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
  NAND2X1 U90 ( .A(n3), .B(n37), .Y(n83) );
  NAND3X1 U91 ( .A(n6), .B(n11), .C(counter[2]), .Y(n37) );
  OAI21X1 U92 ( .A(counter[1]), .B(n24), .C(n38), .Y(n87) );
  NAND3X1 U93 ( .A(n11), .B(n12), .C(n6), .Y(n38) );
  NAND2X1 U94 ( .A(counter[0]), .B(counter[2]), .Y(n24) );
  NAND3X1 U95 ( .A(n67), .B(n66), .C(n75), .Y(n82) );
  NAND3X1 U96 ( .A(counter[0]), .B(n12), .C(counter[1]), .Y(n75) );
  NAND3X1 U97 ( .A(n11), .B(n12), .C(counter[0]), .Y(n66) );
  NAND3X1 U98 ( .A(n6), .B(n12), .C(counter[1]), .Y(n67) );
  INVX1 U7 ( .A(cmd_select[3]), .Y(n20) );
  INVX1 U8 ( .A(counter[2]), .Y(n12) );
  INVX1 U9 ( .A(counter[1]), .Y(n11) );
  INVX1 U10 ( .A(counter[0]), .Y(n6) );
  INVX2 U11 ( .A(n67), .Y(n1) );
  INVX2 U12 ( .A(n38), .Y(n2) );
  INVX2 U13 ( .A(n87), .Y(n3) );
  INVX2 U14 ( .A(n37), .Y(n4) );
  INVX2 U15 ( .A(n54), .Y(n5) );
  INVX2 U16 ( .A(n71), .Y(n7) );
  INVX2 U17 ( .A(n58), .Y(n8) );
  INVX2 U18 ( .A(n75), .Y(n9) );
  INVX2 U19 ( .A(n66), .Y(n10) );
  INVX2 U20 ( .A(n45), .Y(n13) );
  INVX2 U21 ( .A(n57), .Y(n14) );
  INVX2 U22 ( .A(n32), .Y(n15) );
  INVX2 U23 ( .A(n68), .Y(n16) );
  INVX2 U24 ( .A(cmd_select[0]), .Y(n17) );
  INVX2 U25 ( .A(n33), .Y(n18) );
  INVX2 U26 ( .A(cmd_select[4]), .Y(n19) );
  INVX2 U27 ( .A(address[24]), .Y(n21) );
  INVX2 U28 ( .A(address[16]), .Y(n22) );
  INVX2 U29 ( .A(address[6]), .Y(n23) );
endmodule


module edge_detect ( clk, n_rst, d_plus, d_edge );
  input clk, n_rst, d_plus;
  output d_edge;
  wire   d, f;

  DFFSR d_reg ( .D(d_plus), .CLK(clk), .R(1'b1), .S(n_rst), .Q(d) );
  DFFSR f_reg ( .D(d), .CLK(clk), .R(1'b1), .S(n_rst), .Q(f) );
  XOR2X1 U5 ( .A(f), .B(d), .Y(d_edge) );
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
         load_enable, rw_select, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [7:0] data_o;
  wire   [1:0] speed;
  wire   [1:0] SPI_select;
  wire   [5:0] cmd_out;
  wire   [3:0] counter;
  wire   [31:0] addr;
  wire   [7:0] actual_cmd;

  AOI22X1 U10 ( .A(data_o[7]), .B(n18), .C(rw_select), .D(fifo_in[7]), .Y(n10)
         );
  AOI22X1 U11 ( .A(data_o[6]), .B(n18), .C(fifo_in[6]), .D(rw_select), .Y(n11)
         );
  AOI22X1 U12 ( .A(data_o[5]), .B(n18), .C(fifo_in[5]), .D(rw_select), .Y(n12)
         );
  AOI22X1 U13 ( .A(data_o[4]), .B(n18), .C(fifo_in[4]), .D(rw_select), .Y(n13)
         );
  AOI22X1 U14 ( .A(data_o[3]), .B(n18), .C(fifo_in[3]), .D(rw_select), .Y(n14)
         );
  AOI22X1 U15 ( .A(data_o[2]), .B(n18), .C(fifo_in[2]), .D(rw_select), .Y(n15)
         );
  AOI22X1 U16 ( .A(data_o[1]), .B(n18), .C(fifo_in[1]), .D(rw_select), .Y(n16)
         );
  AOI22X1 U17 ( .A(data_o[0]), .B(n18), .C(fifo_in[0]), .D(rw_select), .Y(n17)
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
  myfifo myFIFO ( .clk(clk), .n_rst(n_rst), .r_enable(test_r_enable), 
        .w_enable(test_w_enable), .clear(1'b0), .data_i({n26, n25, n24, n23, 
        n22, n21, n20, n19}), .sram_o(test_data_fromFIFO), .sram_i(
        test_data_toFIFO), .data_o(fifo_out), .addr(sram_addr), .full(full), 
        .empty(sd_FIFO_empty) );
  timerSD myTimer ( .clk(clk), .n_rst(n_rst), .clear_byte(clear_byte), 
        .enable(1'b1), .speed(speed), .SDCLK(SDCLK), .shift_enable(
        shift_enable), .byte_received(byte_transf) );
  spi_shift ShiftRegister ( .clk(clk), .n_rst(n_rst), .fifo_data(fifo_out), 
        .sddi(SDDI), .line_select(SPI_select), .command_in(actual_cmd), 
        .shift_enable(shift_enable), .byte_received(byte_transf), 
        .load_enable(load_enable), .data_out(data_o), .sddo(SDDO) );
  command_store Bank ( .cmd_select(cmd_out), .counter(counter), .address(addr), 
        .cmd(actual_cmd) );
  edge_detect eDetect ( .clk(clk), .n_rst(n_rst), .d_plus(SDDI), .d_edge(
        edge_detect) );
  OR2X2 U19 ( .A(tx_r_enable), .B(r_enable), .Y(test_r_enable) );
  INVX2 U20 ( .A(rw_select), .Y(n18) );
  INVX2 U22 ( .A(n17), .Y(n19) );
  INVX2 U23 ( .A(n16), .Y(n20) );
  INVX2 U24 ( .A(n15), .Y(n21) );
  INVX2 U25 ( .A(n14), .Y(n22) );
  INVX2 U26 ( .A(n13), .Y(n23) );
  INVX2 U27 ( .A(n12), .Y(n24) );
  INVX2 U28 ( .A(n11), .Y(n25) );
  INVX2 U29 ( .A(n10), .Y(n26) );
endmodule

