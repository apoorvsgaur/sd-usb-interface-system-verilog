/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 00:08:28 2015
/////////////////////////////////////////////////////////////


module usbcontroller ( n_rst, clk, sd_done, sd_err, tx_err, tx_done, rx_pid, 
        rx_packet_done, pid_rdy, sd_read, sd_write, tx_send_good, tx_send_bad, 
        tx_transmit, sd_addr_rdy );
  input [3:0] rx_pid;
  input [1:0] rx_packet_done;
  input n_rst, clk, sd_done, sd_err, tx_err, tx_done, pid_rdy;
  output sd_read, sd_write, tx_send_good, tx_send_bad, tx_transmit,
         sd_addr_rdy;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170;
  wire   [31:0] state;
  wire   [31:0] nextstate;
  assign tx_send_bad = 1'b0;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[4]  ( .D(nextstate[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[4]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        state[2]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        state[1]) );
  AND2X2 U8 ( .A(n38), .B(n164), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n164), .Y(n7) );
  INVX2 U10 ( .A(state[0]), .Y(n18) );
  INVX4 U11 ( .A(n18), .Y(n29) );
  INVX2 U12 ( .A(n165), .Y(n16) );
  INVX2 U13 ( .A(n151), .Y(n20) );
  AND2X2 U14 ( .A(n38), .B(n164), .Y(n8) );
  AND2X2 U15 ( .A(n34), .B(n89), .Y(n9) );
  INVX1 U16 ( .A(n88), .Y(n10) );
  AND2X1 U17 ( .A(n157), .B(n156), .Y(n161) );
  INVX2 U18 ( .A(state[2]), .Y(n11) );
  INVX1 U19 ( .A(state[2]), .Y(n165) );
  AND2X2 U20 ( .A(n102), .B(n163), .Y(n137) );
  AND2X1 U21 ( .A(n78), .B(n165), .Y(n32) );
  INVX1 U22 ( .A(n28), .Y(n12) );
  NAND2X1 U23 ( .A(n29), .B(n164), .Y(n13) );
  INVX2 U24 ( .A(n13), .Y(n25) );
  BUFX2 U25 ( .A(n78), .Y(n14) );
  INVX1 U26 ( .A(state[4]), .Y(n15) );
  INVX1 U27 ( .A(state[4]), .Y(n77) );
  INVX2 U28 ( .A(n46), .Y(n17) );
  INVX4 U29 ( .A(n46), .Y(n47) );
  AND2X2 U30 ( .A(n139), .B(n131), .Y(n24) );
  NAND2X1 U31 ( .A(n7), .B(n9), .Y(n19) );
  BUFX2 U32 ( .A(state[2]), .Y(n38) );
  BUFX4 U33 ( .A(n29), .Y(n21) );
  BUFX2 U34 ( .A(n144), .Y(n22) );
  INVX2 U35 ( .A(sd_addr_rdy), .Y(n23) );
  AND2X2 U36 ( .A(state[4]), .B(state[1]), .Y(n78) );
  INVX1 U37 ( .A(n163), .Y(sd_addr_rdy) );
  INVX2 U38 ( .A(n43), .Y(n73) );
  NAND2X1 U39 ( .A(n7), .B(n9), .Y(n102) );
  AND2X2 U40 ( .A(n48), .B(n44), .Y(n34) );
  NAND2X1 U41 ( .A(sd_err), .B(n128), .Y(n26) );
  BUFX2 U42 ( .A(n20), .Y(n27) );
  INVX2 U43 ( .A(n44), .Y(n28) );
  INVX4 U44 ( .A(n29), .Y(n89) );
  INVX8 U45 ( .A(n47), .Y(n164) );
  INVX1 U46 ( .A(n20), .Y(n30) );
  INVX2 U47 ( .A(n98), .Y(n31) );
  AND2X2 U48 ( .A(n32), .B(n164), .Y(n79) );
  INVX2 U49 ( .A(n153), .Y(n97) );
  INVX1 U50 ( .A(n169), .Y(n166) );
  OR2X2 U51 ( .A(rx_pid[3]), .B(n108), .Y(n142) );
  AND2X2 U52 ( .A(n115), .B(n89), .Y(n33) );
  AND2X2 U53 ( .A(n47), .B(n77), .Y(n35) );
  INVX1 U54 ( .A(state[1]), .Y(n88) );
  OAI21X1 U55 ( .A(n170), .B(n169), .C(n90), .Y(n36) );
  INVX2 U56 ( .A(n71), .Y(n37) );
  INVX1 U57 ( .A(n8), .Y(n39) );
  NOR2X1 U58 ( .A(n58), .B(n59), .Y(n40) );
  INVX1 U59 ( .A(n59), .Y(n93) );
  INVX1 U60 ( .A(n107), .Y(n41) );
  INVX1 U61 ( .A(n41), .Y(n42) );
  INVX2 U62 ( .A(n158), .Y(n98) );
  NAND3X1 U63 ( .A(n21), .B(n72), .C(n7), .Y(n43) );
  INVX1 U64 ( .A(n126), .Y(n96) );
  BUFX2 U65 ( .A(state[4]), .Y(n44) );
  NAND2X1 U66 ( .A(n132), .B(n24), .Y(n133) );
  OAI21X1 U67 ( .A(pid_rdy), .B(n127), .C(n126), .Y(n45) );
  BUFX4 U68 ( .A(state[1]), .Y(n48) );
  INVX2 U69 ( .A(state[3]), .Y(n46) );
  NAND2X1 U70 ( .A(n15), .B(n48), .Y(n76) );
  INVX2 U71 ( .A(n76), .Y(n115) );
  NAND2X1 U72 ( .A(n11), .B(n164), .Y(n150) );
  INVX2 U73 ( .A(n150), .Y(n74) );
  NAND2X1 U74 ( .A(n33), .B(n74), .Y(n113) );
  NAND3X1 U75 ( .A(n29), .B(n77), .C(n48), .Y(n151) );
  NAND3X1 U76 ( .A(n17), .B(n16), .C(n20), .Y(n108) );
  NAND2X1 U77 ( .A(n113), .B(n142), .Y(n52) );
  MUX2X1 U78 ( .B(n27), .A(n33), .S(pid_rdy), .Y(n50) );
  NOR2X1 U79 ( .A(n29), .B(n88), .Y(n49) );
  NAND3X1 U80 ( .A(n16), .B(n35), .C(n49), .Y(n163) );
  OAI21X1 U81 ( .A(n50), .B(n39), .C(n23), .Y(n51) );
  NOR2X1 U82 ( .A(n52), .B(n51), .Y(n87) );
  NOR2X1 U83 ( .A(n17), .B(n11), .Y(n54) );
  NOR2X1 U84 ( .A(n48), .B(n28), .Y(n53) );
  NAND3X1 U85 ( .A(n29), .B(n54), .C(n53), .Y(n149) );
  INVX2 U86 ( .A(n149), .Y(sd_write) );
  INVX2 U87 ( .A(sd_err), .Y(n57) );
  NOR2X1 U88 ( .A(n17), .B(n16), .Y(n55) );
  NAND3X1 U89 ( .A(n55), .B(n21), .C(n34), .Y(n56) );
  INVX2 U90 ( .A(n56), .Y(tx_send_good) );
  INVX2 U91 ( .A(tx_done), .Y(n152) );
  AOI22X1 U92 ( .A(sd_write), .B(n57), .C(tx_send_good), .D(n152), .Y(n64) );
  INVX2 U93 ( .A(rx_packet_done[1]), .Y(n103) );
  NAND2X1 U94 ( .A(n88), .B(n15), .Y(n58) );
  INVX2 U95 ( .A(n58), .Y(n116) );
  NAND3X1 U96 ( .A(n29), .B(n11), .C(n17), .Y(n59) );
  INVX2 U97 ( .A(rx_pid[1]), .Y(n61) );
  INVX2 U98 ( .A(rx_pid[2]), .Y(n60) );
  NAND3X1 U99 ( .A(rx_pid[0]), .B(n61), .C(n60), .Y(n109) );
  INVX2 U100 ( .A(n109), .Y(n94) );
  NAND3X1 U101 ( .A(n116), .B(n93), .C(n94), .Y(n62) );
  INVX2 U102 ( .A(n62), .Y(n112) );
  OAI21X1 U103 ( .A(rx_packet_done[0]), .B(n103), .C(n112), .Y(n63) );
  OAI21X1 U104 ( .A(tx_err), .B(n64), .C(n63), .Y(n70) );
  NOR2X1 U105 ( .A(n89), .B(n164), .Y(n65) );
  NAND3X1 U106 ( .A(n10), .B(n11), .C(n65), .Y(n68) );
  NAND2X1 U107 ( .A(n116), .B(n89), .Y(n105) );
  INVX2 U108 ( .A(n105), .Y(n66) );
  OAI21X1 U109 ( .A(n74), .B(n6), .C(n66), .Y(n67) );
  OAI21X1 U110 ( .A(rx_packet_done[1]), .B(n68), .C(n67), .Y(n69) );
  NOR2X1 U111 ( .A(n70), .B(n69), .Y(n86) );
  INVX2 U112 ( .A(n108), .Y(n71) );
  NAND2X1 U113 ( .A(n71), .B(n94), .Y(n159) );
  NOR2X1 U114 ( .A(n48), .B(n15), .Y(n72) );
  NAND3X1 U115 ( .A(n72), .B(n29), .C(n8), .Y(n90) );
  AOI21X1 U116 ( .A(n74), .B(n27), .C(n73), .Y(n84) );
  NAND3X1 U117 ( .A(n11), .B(n17), .C(n28), .Y(n82) );
  NAND2X1 U118 ( .A(n88), .B(n15), .Y(n129) );
  INVX2 U119 ( .A(n129), .Y(n75) );
  NAND2X1 U120 ( .A(n25), .B(n75), .Y(n81) );
  NAND3X1 U121 ( .A(n11), .B(n164), .C(n14), .Y(n153) );
  AOI21X1 U122 ( .A(n115), .B(n6), .C(n79), .Y(n80) );
  NAND3X1 U123 ( .A(n82), .B(n81), .C(n80), .Y(n83) );
  INVX2 U124 ( .A(n83), .Y(n107) );
  NAND3X1 U125 ( .A(n84), .B(n19), .C(n107), .Y(n158) );
  NAND3X1 U126 ( .A(n21), .B(n159), .C(n98), .Y(n85) );
  NAND3X1 U127 ( .A(n87), .B(n86), .C(n85), .Y(nextstate[0]) );
  NAND3X1 U128 ( .A(n11), .B(n164), .C(n88), .Y(n170) );
  NAND2X1 U129 ( .A(n44), .B(n89), .Y(n169) );
  OAI21X1 U130 ( .A(n170), .B(n169), .C(n90), .Y(n128) );
  NAND3X1 U131 ( .A(n48), .B(n11), .C(n35), .Y(n144) );
  INVX2 U132 ( .A(n144), .Y(n110) );
  NAND2X1 U133 ( .A(n110), .B(rx_packet_done[1]), .Y(n145) );
  OAI21X1 U134 ( .A(n109), .B(n37), .C(n145), .Y(n92) );
  NAND2X1 U135 ( .A(n79), .B(tx_err), .Y(n148) );
  INVX2 U136 ( .A(n148), .Y(n91) );
  NOR3X1 U137 ( .A(n36), .B(n92), .C(n91), .Y(n101) );
  OAI21X1 U138 ( .A(rx_packet_done[0]), .B(n103), .C(n94), .Y(n95) );
  NAND2X1 U139 ( .A(n40), .B(n95), .Y(n126) );
  AOI21X1 U140 ( .A(n97), .B(n152), .C(n96), .Y(n100) );
  NAND2X1 U141 ( .A(n98), .B(n12), .Y(n99) );
  NAND3X1 U142 ( .A(n100), .B(n101), .C(n99), .Y(nextstate[4]) );
  NAND2X1 U143 ( .A(rx_packet_done[0]), .B(n103), .Y(n143) );
  INVX2 U144 ( .A(n143), .Y(n124) );
  NAND3X1 U145 ( .A(rx_packet_done[0]), .B(rx_packet_done[1]), .C(n112), .Y(
        n104) );
  OAI21X1 U146 ( .A(n124), .B(n105), .C(n104), .Y(n106) );
  AOI21X1 U147 ( .A(n42), .B(n137), .C(n106), .Y(n123) );
  OAI21X1 U148 ( .A(n109), .B(n37), .C(n17), .Y(n122) );
  INVX2 U149 ( .A(rx_packet_done[0]), .Y(n111) );
  AOI21X1 U150 ( .A(n112), .B(n111), .C(n110), .Y(n114) );
  OAI21X1 U151 ( .A(rx_packet_done[1]), .B(n114), .C(n113), .Y(n120) );
  NAND2X1 U152 ( .A(n115), .B(n7), .Y(n127) );
  INVX2 U153 ( .A(pid_rdy), .Y(n118) );
  NAND3X1 U154 ( .A(n6), .B(n21), .C(n116), .Y(n117) );
  OAI21X1 U155 ( .A(n127), .B(n118), .C(n117), .Y(n119) );
  NOR2X1 U156 ( .A(n120), .B(n119), .Y(n121) );
  OAI21X1 U157 ( .A(n123), .B(n122), .C(n121), .Y(nextstate[3]) );
  NAND2X1 U158 ( .A(n10), .B(n159), .Y(n136) );
  NAND2X1 U159 ( .A(tx_err), .B(sd_write), .Y(n138) );
  AOI22X1 U160 ( .A(n124), .B(n40), .C(n36), .D(sd_done), .Y(n125) );
  NAND3X1 U161 ( .A(n138), .B(n137), .C(n125), .Y(n134) );
  OAI21X1 U162 ( .A(pid_rdy), .B(n127), .C(n126), .Y(n141) );
  INVX2 U163 ( .A(n141), .Y(n132) );
  NAND2X1 U164 ( .A(n128), .B(sd_err), .Y(n139) );
  OAI21X1 U165 ( .A(n129), .B(n13), .C(n144), .Y(n130) );
  NOR2X1 U166 ( .A(n97), .B(n130), .Y(n131) );
  NOR2X1 U167 ( .A(n134), .B(n133), .Y(n135) );
  OAI21X1 U168 ( .A(n31), .B(n136), .C(n135), .Y(nextstate[1]) );
  NAND3X1 U169 ( .A(n26), .B(n138), .C(n137), .Y(n140) );
  NOR2X1 U170 ( .A(n45), .B(n140), .Y(n162) );
  OAI21X1 U171 ( .A(n22), .B(n143), .C(n142), .Y(n147) );
  INVX2 U172 ( .A(n145), .Y(n146) );
  NOR2X1 U173 ( .A(n146), .B(n147), .Y(n157) );
  OAI21X1 U174 ( .A(sd_done), .B(n149), .C(n148), .Y(n155) );
  OAI22X1 U175 ( .A(n153), .B(n152), .C(n30), .D(n150), .Y(n154) );
  NOR2X1 U176 ( .A(n155), .B(n154), .Y(n156) );
  NAND3X1 U177 ( .A(n16), .B(n159), .C(n98), .Y(n160) );
  NAND3X1 U178 ( .A(n162), .B(n161), .C(n160), .Y(nextstate[2]) );
  NAND2X1 U179 ( .A(n11), .B(n164), .Y(n168) );
  NAND2X1 U180 ( .A(n10), .B(n166), .Y(n167) );
  NOR2X1 U181 ( .A(n168), .B(n167), .Y(tx_transmit) );
  NOR2X1 U182 ( .A(n170), .B(n169), .Y(sd_read) );
endmodule


module topcontroller ( n_rst, clk, sd_done, sd_err, tx_err, tx_done, rx_pid, 
        rx_packet_done, pid_rdy, sd_read1, sd_write1, tx_send_good1, 
        tx_send_bad1, tx_transmit1, sd_addr_rdy1 );
  input [3:0] rx_pid;
  input [1:0] rx_packet_done;
  input n_rst, clk, sd_done, sd_err, tx_err, tx_done, pid_rdy;
  output sd_read1, sd_write1, tx_send_good1, tx_send_bad1, tx_transmit1,
         sd_addr_rdy1;
  wire   n2;
  assign tx_send_bad1 = 1'b0;

  usbcontroller USBC ( .n_rst(n_rst), .clk(clk), .sd_done(sd_done), .sd_err(
        sd_err), .tx_err(tx_err), .tx_done(tx_done), .rx_pid(rx_pid), 
        .rx_packet_done(rx_packet_done), .pid_rdy(pid_rdy), .sd_read(sd_read1), 
        .sd_write(sd_write1), .tx_send_good(tx_send_good1), .tx_send_bad(n2), 
        .tx_transmit(tx_transmit1), .sd_addr_rdy(sd_addr_rdy1) );
endmodule

