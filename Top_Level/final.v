/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Tue Dec 15 21:12:25 2015
/////////////////////////////////////////////////////////////
module flex_counter_NUM_CNT_BITS16_1_DW01_dec_0 (
	A, 
	SUM);
   input [16:0] A;
   output [16:0] SUM;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   INVX2 U1 (.Y(SUM[1]), 
	.A(n30));
   INVX2 U2 (.Y(SUM[11]), 
	.A(n37));
   INVX2 U3 (.Y(SUM[13]), 
	.A(n34));
   INVX2 U4 (.Y(SUM[15]), 
	.A(n31));
   INVX2 U5 (.Y(SUM[9]), 
	.A(n17));
   INVX2 U6 (.Y(SUM[7]), 
	.A(n21));
   INVX2 U7 (.Y(SUM[5]), 
	.A(n24));
   INVX2 U8 (.Y(SUM[3]), 
	.A(n27));
   INVX2 U9 (.Y(n9), 
	.A(A[10]));
   INVX2 U10 (.Y(n10), 
	.A(A[12]));
   INVX2 U11 (.Y(n11), 
	.A(A[14]));
   INVX2 U12 (.Y(n12), 
	.A(A[8]));
   INVX2 U13 (.Y(n13), 
	.A(A[6]));
   INVX2 U14 (.Y(n14), 
	.A(A[4]));
   INVX2 U15 (.Y(n15), 
	.A(A[2]));
   INVX2 U16 (.Y(SUM[0]), 
	.A(A[0]));
   AOI21X1 U17 (.Y(n17), 
	.C(n19), 
	.B(A[9]), 
	.A(n18));
   OAI21X1 U18 (.Y(SUM[8]), 
	.C(n18), 
	.B(n12), 
	.A(n20));
   AOI21X1 U19 (.Y(n21), 
	.C(n20), 
	.B(A[7]), 
	.A(n22));
   OAI21X1 U20 (.Y(SUM[6]), 
	.C(n22), 
	.B(n13), 
	.A(n23));
   AOI21X1 U21 (.Y(n24), 
	.C(n23), 
	.B(A[5]), 
	.A(n25));
   OAI21X1 U22 (.Y(SUM[4]), 
	.C(n25), 
	.B(n14), 
	.A(n26));
   AOI21X1 U23 (.Y(n27), 
	.C(n26), 
	.B(A[3]), 
	.A(n28));
   OAI21X1 U24 (.Y(SUM[2]), 
	.C(n28), 
	.B(n15), 
	.A(n29));
   AOI21X1 U25 (.Y(n30), 
	.C(n29), 
	.B(A[1]), 
	.A(A[0]));
   AOI21X1 U26 (.Y(n31), 
	.C(SUM[16]), 
	.B(A[15]), 
	.A(n32));
   NOR2X1 U27 (.Y(SUM[16]), 
	.B(A[15]), 
	.A(n32));
   OAI21X1 U28 (.Y(SUM[14]), 
	.C(n32), 
	.B(n11), 
	.A(n33));
   NAND2X1 U29 (.Y(n32), 
	.B(n11), 
	.A(n33));
   AOI21X1 U30 (.Y(n34), 
	.C(n33), 
	.B(A[13]), 
	.A(n35));
   NOR2X1 U31 (.Y(n33), 
	.B(A[13]), 
	.A(n35));
   OAI21X1 U32 (.Y(SUM[12]), 
	.C(n35), 
	.B(n10), 
	.A(n36));
   NAND2X1 U33 (.Y(n35), 
	.B(n10), 
	.A(n36));
   AOI21X1 U34 (.Y(n37), 
	.C(n36), 
	.B(A[11]), 
	.A(n38));
   NOR2X1 U35 (.Y(n36), 
	.B(A[11]), 
	.A(n38));
   OAI21X1 U36 (.Y(SUM[10]), 
	.C(n38), 
	.B(n9), 
	.A(n19));
   NAND2X1 U37 (.Y(n38), 
	.B(n9), 
	.A(n19));
   NOR2X1 U38 (.Y(n19), 
	.B(A[9]), 
	.A(n18));
   NAND2X1 U39 (.Y(n18), 
	.B(n12), 
	.A(n20));
   NOR2X1 U40 (.Y(n20), 
	.B(A[7]), 
	.A(n22));
   NAND2X1 U41 (.Y(n22), 
	.B(n13), 
	.A(n23));
   NOR2X1 U42 (.Y(n23), 
	.B(A[5]), 
	.A(n25));
   NAND2X1 U43 (.Y(n25), 
	.B(n14), 
	.A(n26));
   NOR2X1 U44 (.Y(n26), 
	.B(A[3]), 
	.A(n28));
   NAND2X1 U45 (.Y(n28), 
	.B(n15), 
	.A(n29));
   NOR2X1 U46 (.Y(n29), 
	.B(A[0]), 
	.A(A[1]));
endmodule

module flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 (
	A, 
	SUM);
   input [15:0] A;
   output [15:0] SUM;

   // Internal wires
   wire n1;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n36;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n47;
   wire n48;
   wire n50;
   wire n52;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n61;
   wire n62;
   wire n64;
   wire n65;
   wire n66;
   wire n68;
   wire n105;
   wire n106;
   wire n109;
   wire n110;
   wire n111;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n123;

   assign n12 = A[13] ;
   assign n16 = A[12] ;
   assign n21 = A[11] ;
   assign n25 = A[10] ;
   assign n31 = A[9] ;
   assign n35 = A[8] ;
   assign n40 = A[7] ;
   assign n44 = A[6] ;
   assign n50 = A[5] ;
   assign n54 = A[4] ;
   assign n59 = A[3] ;
   assign n62 = A[2] ;
   assign n66 = A[1] ;
   assign n68 = A[0] ;

   XNOR2X1 U4 (.Y(SUM[14]), 
	.B(n7), 
	.A(n8));
   NOR2X1 U5 (.Y(n4), 
	.B(n5), 
	.A(n1));
   NAND2X1 U6 (.Y(n5), 
	.B(n6), 
	.A(n2));
   NOR2X1 U7 (.Y(n6), 
	.B(n11), 
	.A(n7));
   NOR2X1 U10 (.Y(n8), 
	.B(n9), 
	.A(n1));
   NAND2X1 U11 (.Y(n9), 
	.B(n121), 
	.A(n10));
   NAND2X1 U13 (.Y(n11), 
	.B(n16), 
	.A(n12));
   NOR2X1 U17 (.Y(n14), 
	.B(n15), 
	.A(n1));
   NAND2X1 U18 (.Y(n15), 
	.B(n121), 
	.A(n16));
   NOR2X1 U22 (.Y(n18), 
	.B(n1), 
	.A(n19));
   NOR2X1 U24 (.Y(n2), 
	.B(n28), 
	.A(n116));
   NAND2X1 U25 (.Y(n20), 
	.B(n25), 
	.A(n21));
   NOR2X1 U29 (.Y(n23), 
	.B(n1), 
	.A(n24));
   NAND2X1 U30 (.Y(n24), 
	.B(n29), 
	.A(n25));
   NOR2X1 U34 (.Y(n27), 
	.B(n1), 
	.A(n28));
   NAND2X1 U37 (.Y(n28), 
	.B(n35), 
	.A(n31));
   NOR2X1 U41 (.Y(n33), 
	.B(n1), 
	.A(n36));
   XNOR2X1 U45 (.Y(SUM[7]), 
	.B(n41), 
	.A(n42));
   NOR2X1 U47 (.Y(n38), 
	.B(n47), 
	.A(n39));
   NAND2X1 U48 (.Y(n39), 
	.B(n44), 
	.A(n40));
   NOR2X1 U52 (.Y(n42), 
	.B(n56), 
	.A(n43));
   NAND2X1 U53 (.Y(n43), 
	.B(n48), 
	.A(n119));
   NOR2X1 U57 (.Y(n46), 
	.B(n56), 
	.A(n47));
   NAND2X1 U60 (.Y(n47), 
	.B(n54), 
	.A(n50));
   XOR2X1 U63 (.Y(SUM[4]), 
	.B(n55), 
	.A(n56));
   NOR2X1 U64 (.Y(n52), 
	.B(n56), 
	.A(n55));
   NOR2X1 U70 (.Y(n57), 
	.B(n58), 
	.A(n65));
   NAND2X1 U71 (.Y(n58), 
	.B(n62), 
	.A(n59));
   NAND2X1 U75 (.Y(n61), 
	.B(n64), 
	.A(n115));
   NAND2X1 U80 (.Y(n65), 
	.B(n68), 
	.A(n66));
   XNOR2X1 U87 (.Y(SUM[5]), 
	.B(n105), 
	.A(n52));
   INVX1 U88 (.Y(n105), 
	.A(n50));
   XNOR2X1 U89 (.Y(SUM[11]), 
	.B(n106), 
	.A(n23));
   INVX1 U90 (.Y(n106), 
	.A(n21));
   INVX2 U92 (.Y(n113), 
	.A(A[15]));
   INVX2 U93 (.Y(n115), 
	.A(n114));
   XNOR2X1 U95 (.Y(SUM[12]), 
	.B(n109), 
	.A(n18));
   INVX1 U96 (.Y(n109), 
	.A(n16));
   XNOR2X1 U97 (.Y(SUM[9]), 
	.B(n110), 
	.A(n33));
   INVX1 U98 (.Y(n110), 
	.A(n31));
   XNOR2X1 U99 (.Y(SUM[10]), 
	.B(n111), 
	.A(n27));
   INVX1 U100 (.Y(n111), 
	.A(n25));
   INVX1 U102 (.Y(n64), 
	.A(n65));
   XNOR2X1 U103 (.Y(SUM[15]), 
	.B(n113), 
	.A(n4));
   INVX1 U104 (.Y(n114), 
	.A(n62));
   NAND2X1 U105 (.Y(n116), 
	.B(n25), 
	.A(n21));
   INVX1 U106 (.Y(n117), 
	.A(SUM[0]));
   INVX1 U107 (.Y(SUM[0]), 
	.A(n68));
   INVX1 U108 (.Y(n36), 
	.A(n35));
   BUFX2 U109 (.Y(n118), 
	.A(n66));
   BUFX2 U110 (.Y(n119), 
	.A(n44));
   BUFX2 U111 (.Y(n120), 
	.A(n59));
   INVX1 U112 (.Y(n10), 
	.A(n11));
   NOR2X1 U113 (.Y(n121), 
	.B(n28), 
	.A(n20));
   XOR2X1 U114 (.Y(SUM[8]), 
	.B(n36), 
	.A(n1));
   XOR2X1 U115 (.Y(SUM[13]), 
	.B(n12), 
	.A(n14));
   XOR2X1 U116 (.Y(SUM[6]), 
	.B(n119), 
	.A(n46));
   XOR2X1 U117 (.Y(SUM[2]), 
	.B(n115), 
	.A(n64));
   XNOR2X1 U118 (.Y(SUM[3]), 
	.B(n120), 
	.A(n61));
   XOR2X1 U119 (.Y(SUM[1]), 
	.B(n117), 
	.A(n118));
   INVX1 U120 (.Y(n29), 
	.A(n28));
   INVX1 U122 (.Y(n19), 
	.A(n2));
   INVX2 U123 (.Y(n1), 
	.A(n123));
   INVX1 U124 (.Y(n55), 
	.A(n54));
   INVX1 U125 (.Y(n56), 
	.A(n57));
   INVX1 U126 (.Y(n48), 
	.A(n47));
   AND2X2 U127 (.Y(n123), 
	.B(n38), 
	.A(n57));
   INVX1 U128 (.Y(n41), 
	.A(n40));
   INVX2 U129 (.Y(n7), 
	.A(A[14]));
endmodule

module flex_counter_NUM_CNT_BITS16_1 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN7_nn_rst, 
	FE_OFN4_nn_rst, 
	nclk__L2_N1, 
	nclk__L2_N3, 
	nclk__L2_N4);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [15:0] rollover_val;
   output [15:0] count_out;
   output rollover_flag;
   input FE_OFN7_nn_rst;
   input FE_OFN4_nn_rst;
   input nclk__L2_N1;
   input nclk__L2_N3;
   input nclk__L2_N4;

   // Internal wires
   wire n155;
   wire n156;
   wire next_flag;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire n108;
   wire n110;
   wire n112;
   wire n114;
   wire n116;
   wire n118;
   wire n120;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n134;
   wire n136;
   wire n138;
   wire N46;
   wire N45;
   wire N44;
   wire N43;
   wire N41;
   wire N40;
   wire N39;
   wire N38;
   wire N35;
   wire N33;
   wire N32;
   wire N31;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n104;
   wire n105;
   wire n117;
   wire n121;
   wire n125;
   wire n127;
   wire n129;
   wire n131;
   wire n133;
   wire n135;
   wire n137;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire [15:0] next_count;

   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[8]), 
	.D(n124), 
	.CLK(clk));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n155), 
	.D(n120), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[4]), 
	.D(n116), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n156), 
	.D(n114), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(count_out[2]), 
	.D(n112), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(count_out[1]), 
	.D(n110), 
	.CLK(nclk__L2_N4));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(count_out[0]), 
	.D(n108), 
	.CLK(nclk__L2_N4));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(FE_OFN7_nn_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(nclk__L2_N4));
   flex_counter_NUM_CNT_BITS16_1_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ N23,
		N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7 }));
   flex_counter_NUM_CNT_BITS16_1_DW01_inc_1 add_35_aco (.A({ N46,
		N45,
		N44,
		N43,
		n4,
		N41,
		N40,
		N39,
		N38,
		n5,
		n2,
		N35,
		n6,
		N33,
		N32,
		N31 }), 
	.SUM(next_count));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[7]), 
	.D(n122), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[5]), 
	.D(n118), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[13]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[13]), 
	.D(n134), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[11]), 
	.D(n130), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[9]), 
	.D(n126), 
	.CLK(nclk__L2_N1));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[10]), 
	.D(n128), 
	.CLK(clk));
   DFFSR \cur_count_reg[12]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[12]), 
	.D(n132), 
	.CLK(clk));
   DFFSR \cur_count_reg[14]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[14]), 
	.D(n136), 
	.CLK(clk));
   DFFSR \cur_count_reg[15]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[15]), 
	.D(n138), 
	.CLK(nclk__L2_N1));
   INVX1 U3 (.Y(count_out[3]), 
	.A(n117));
   INVX1 U4 (.Y(n114), 
	.A(n141));
   INVX2 U5 (.Y(N41), 
	.A(n28));
   INVX2 U6 (.Y(n153), 
	.A(n135));
   INVX2 U8 (.Y(n23), 
	.A(n121));
   INVX2 U9 (.Y(n27), 
	.A(n101));
   INVX2 U10 (.Y(count_out[6]), 
	.A(n9));
   NOR2X1 U11 (.Y(n2), 
	.B(n29), 
	.A(n104));
   NOR2X1 U12 (.Y(n4), 
	.B(n97), 
	.A(n102));
   NOR2X1 U13 (.Y(n5), 
	.B(n9), 
	.A(n30));
   NOR2X1 U14 (.Y(n6), 
	.B(n117), 
	.A(n29));
   INVX2 U15 (.Y(n22), 
	.A(n125));
   INVX1 U16 (.Y(n122), 
	.A(n145));
   INVX1 U17 (.Y(n118), 
	.A(n143));
   INVX1 U18 (.Y(n124), 
	.A(n146));
   INVX1 U19 (.Y(n116), 
	.A(n142));
   MUX2X1 U20 (.Y(n150), 
	.S(n26), 
	.B(count_out[12]), 
	.A(next_count[12]));
   INVX1 U21 (.Y(n128), 
	.A(n148));
   INVX1 U22 (.Y(n130), 
	.A(n149));
   INVX1 U23 (.Y(n126), 
	.A(n147));
   INVX2 U25 (.Y(n125), 
	.A(clear));
   INVX1 U26 (.Y(n8), 
	.A(n22));
   INVX1 U27 (.Y(n9), 
	.A(n155));
   NAND2X1 U28 (.Y(n11), 
	.B(n87), 
	.A(n88));
   INVX1 U29 (.Y(n120), 
	.A(n144));
   INVX2 U30 (.Y(n12), 
	.A(n62));
   INVX1 U40 (.Y(n117), 
	.A(n156));
   INVX1 U41 (.Y(n89), 
	.A(n11));
   AND2X2 U43 (.Y(N33), 
	.B(n23), 
	.A(n25));
   MUX2X1 U44 (.Y(n154), 
	.S(n26), 
	.B(count_out[15]), 
	.A(next_count[15]));
   MUX2X1 U45 (.Y(n151), 
	.S(n26), 
	.B(count_out[13]), 
	.A(next_count[13]));
   INVX2 U46 (.Y(n26), 
	.A(n153));
   AND2X2 U47 (.Y(N45), 
	.B(n24), 
	.A(n32));
   INVX2 U48 (.Y(n24), 
	.A(n94));
   INVX1 U49 (.Y(n25), 
	.A(n30));
   MUX2X1 U50 (.Y(n152), 
	.S(n26), 
	.B(count_out[14]), 
	.A(next_count[14]));
   INVX1 U51 (.Y(n132), 
	.A(n150));
   AND2X2 U52 (.Y(N38), 
	.B(n27), 
	.A(n32));
   OR2X2 U53 (.Y(n28), 
	.B(n98), 
	.A(n102));
   INVX1 U54 (.Y(n62), 
	.A(count_enable));
   NAND2X1 U55 (.Y(n29), 
	.B(n31), 
	.A(n125));
   NAND2X1 U56 (.Y(n30), 
	.B(n125), 
	.A(n31));
   INVX1 U59 (.Y(n134), 
	.A(n151));
   AND2X2 U60 (.Y(n31), 
	.B(n131), 
	.A(count_enable));
   INVX1 U61 (.Y(n138), 
	.A(n154));
   INVX2 U62 (.Y(n102), 
	.A(n32));
   INVX1 U63 (.Y(n136), 
	.A(n152));
   AND2X2 U64 (.Y(n32), 
	.B(n31), 
	.A(n125));
   XOR2X1 U65 (.Y(n35), 
	.B(N13), 
	.A(count_out[6]));
   NOR2X1 U66 (.Y(n39), 
	.B(n22), 
	.A(n35));
   XOR2X1 U67 (.Y(n37), 
	.B(N15), 
	.A(count_out[8]));
   XOR2X1 U68 (.Y(n36), 
	.B(N11), 
	.A(count_out[4]));
   NOR2X1 U69 (.Y(n38), 
	.B(n36), 
	.A(n37));
   NAND3X1 U70 (.Y(n92), 
	.C(n38), 
	.B(n12), 
	.A(n39));
   XNOR2X1 U71 (.Y(n41), 
	.B(N8), 
	.A(count_out[1]));
   XNOR2X1 U72 (.Y(n40), 
	.B(N12), 
	.A(count_out[5]));
   NAND2X1 U73 (.Y(n46), 
	.B(n40), 
	.A(n41));
   XNOR2X1 U74 (.Y(n44), 
	.B(N16), 
	.A(count_out[9]));
   XNOR2X1 U75 (.Y(n43), 
	.B(N10), 
	.A(count_out[3]));
   INVX2 U76 (.Y(n93), 
	.A(count_out[15]));
   XOR2X1 U77 (.Y(n42), 
	.B(N22), 
	.A(n93));
   NAND3X1 U78 (.Y(n45), 
	.C(n42), 
	.B(n43), 
	.A(n44));
   NOR2X1 U79 (.Y(n61), 
	.B(n45), 
	.A(n46));
   XOR2X1 U80 (.Y(n51), 
	.B(N19), 
	.A(count_out[12]));
   XNOR2X1 U81 (.Y(n49), 
	.B(N7), 
	.A(count_out[0]));
   INVX2 U82 (.Y(n48), 
	.A(N23));
   INVX2 U83 (.Y(n101), 
	.A(count_out[7]));
   XOR2X1 U84 (.Y(n47), 
	.B(N14), 
	.A(n101));
   NAND3X1 U85 (.Y(n50), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   NOR2X1 U86 (.Y(n60), 
	.B(n50), 
	.A(n51));
   INVX2 U87 (.Y(n121), 
	.A(count_out[2]));
   XOR2X1 U88 (.Y(n53), 
	.B(N9), 
	.A(n121));
   INVX2 U89 (.Y(n97), 
	.A(count_out[11]));
   XOR2X1 U90 (.Y(n52), 
	.B(N18), 
	.A(n97));
   NAND2X1 U91 (.Y(n58), 
	.B(n52), 
	.A(n53));
   INVX2 U92 (.Y(n98), 
	.A(count_out[10]));
   XOR2X1 U93 (.Y(n56), 
	.B(N17), 
	.A(n98));
   INVX2 U94 (.Y(n95), 
	.A(count_out[13]));
   XOR2X1 U95 (.Y(n55), 
	.B(N20), 
	.A(n95));
   INVX2 U96 (.Y(n94), 
	.A(count_out[14]));
   XOR2X1 U97 (.Y(n54), 
	.B(N21), 
	.A(n94));
   NAND3X1 U98 (.Y(n57), 
	.C(n54), 
	.B(n55), 
	.A(n56));
   NOR2X1 U99 (.Y(n59), 
	.B(n57), 
	.A(n58));
   NAND3X1 U100 (.Y(n91), 
	.C(n59), 
	.B(n60), 
	.A(n61));
   NAND2X1 U101 (.Y(n135), 
	.B(n62), 
	.A(n8));
   INVX2 U102 (.Y(n104), 
	.A(count_out[5]));
   XOR2X1 U103 (.Y(n67), 
	.B(rollover_val[5]), 
	.A(n104));
   XOR2X1 U104 (.Y(n64), 
	.B(n155), 
	.A(rollover_val[6]));
   XOR2X1 U105 (.Y(n63), 
	.B(count_out[7]), 
	.A(rollover_val[7]));
   NOR2X1 U106 (.Y(n66), 
	.B(n63), 
	.A(n64));
   INVX2 U107 (.Y(n105), 
	.A(count_out[4]));
   XOR2X1 U108 (.Y(n65), 
	.B(rollover_val[4]), 
	.A(n105));
   NAND3X1 U109 (.Y(n74), 
	.C(n65), 
	.B(n66), 
	.A(n67));
   XOR2X1 U110 (.Y(n69), 
	.B(n156), 
	.A(rollover_val[3]));
   XOR2X1 U111 (.Y(n68), 
	.B(count_out[2]), 
	.A(rollover_val[2]));
   NOR2X1 U112 (.Y(n72), 
	.B(n68), 
	.A(n69));
   XNOR2X1 U113 (.Y(n71), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XNOR2X1 U114 (.Y(n70), 
	.B(rollover_val[1]), 
	.A(count_out[1]));
   NAND3X1 U121 (.Y(n73), 
	.C(n70), 
	.B(n71), 
	.A(n72));
   NOR2X1 U123 (.Y(n88), 
	.B(n73), 
	.A(n74));
   INVX2 U125 (.Y(n96), 
	.A(count_out[12]));
   XOR2X1 U126 (.Y(n79), 
	.B(rollover_val[12]), 
	.A(n96));
   XOR2X1 U127 (.Y(n76), 
	.B(count_out[15]), 
	.A(rollover_val[15]));
   XOR2X1 U128 (.Y(n75), 
	.B(count_out[14]), 
	.A(rollover_val[14]));
   NOR2X1 U129 (.Y(n78), 
	.B(n75), 
	.A(n76));
   XOR2X1 U130 (.Y(n77), 
	.B(rollover_val[13]), 
	.A(n95));
   NAND3X1 U131 (.Y(n86), 
	.C(n77), 
	.B(n78), 
	.A(n79));
   INVX2 U132 (.Y(n99), 
	.A(count_out[9]));
   XOR2X1 U133 (.Y(n84), 
	.B(rollover_val[9]), 
	.A(n99));
   XOR2X1 U134 (.Y(n81), 
	.B(count_out[10]), 
	.A(rollover_val[10]));
   XOR2X1 U135 (.Y(n80), 
	.B(count_out[11]), 
	.A(rollover_val[11]));
   NOR2X1 U136 (.Y(n83), 
	.B(n80), 
	.A(n81));
   INVX2 U137 (.Y(n100), 
	.A(count_out[8]));
   XOR2X1 U138 (.Y(n82), 
	.B(rollover_val[8]), 
	.A(n100));
   NAND3X1 U139 (.Y(n85), 
	.C(n82), 
	.B(n83), 
	.A(n84));
   NOR2X1 U140 (.Y(n87), 
	.B(n85), 
	.A(n86));
   NAND2X1 U141 (.Y(n131), 
	.B(n88), 
	.A(n87));
   NAND2X1 U142 (.Y(n90), 
	.B(n89), 
	.A(n153));
   OAI21X1 U143 (.Y(next_flag), 
	.C(n90), 
	.B(n91), 
	.A(n92));
   NOR2X1 U144 (.Y(N46), 
	.B(n93), 
	.A(n29));
   NOR2X1 U145 (.Y(N44), 
	.B(n95), 
	.A(n102));
   NOR2X1 U146 (.Y(N43), 
	.B(n96), 
	.A(n102));
   NOR2X1 U147 (.Y(N40), 
	.B(n99), 
	.A(n102));
   NOR2X1 U148 (.Y(N39), 
	.B(n100), 
	.A(n102));
   NOR2X1 U149 (.Y(N35), 
	.B(n105), 
	.A(n30));
   NAND2X1 U150 (.Y(n129), 
	.B(n125), 
	.A(n12));
   NAND2X1 U151 (.Y(n127), 
	.B(n11), 
	.A(count_out[1]));
   NOR2X1 U152 (.Y(N32), 
	.B(n127), 
	.A(n129));
   NAND3X1 U153 (.Y(n133), 
	.C(n12), 
	.B(n11), 
	.A(count_out[0]));
   NOR2X1 U154 (.Y(N31), 
	.B(n133), 
	.A(n22));
   MUX2X1 U155 (.Y(n137), 
	.S(n153), 
	.B(next_count[0]), 
	.A(count_out[0]));
   INVX2 U156 (.Y(n108), 
	.A(n137));
   MUX2X1 U157 (.Y(n139), 
	.S(n153), 
	.B(next_count[1]), 
	.A(count_out[1]));
   INVX2 U158 (.Y(n110), 
	.A(n139));
   MUX2X1 U159 (.Y(n140), 
	.S(n153), 
	.B(next_count[2]), 
	.A(count_out[2]));
   INVX2 U160 (.Y(n112), 
	.A(n140));
   MUX2X1 U161 (.Y(n141), 
	.S(n153), 
	.B(next_count[3]), 
	.A(count_out[3]));
   MUX2X1 U162 (.Y(n142), 
	.S(n153), 
	.B(next_count[4]), 
	.A(count_out[4]));
   MUX2X1 U163 (.Y(n143), 
	.S(n153), 
	.B(next_count[5]), 
	.A(count_out[5]));
   MUX2X1 U164 (.Y(n144), 
	.S(n153), 
	.B(next_count[6]), 
	.A(count_out[6]));
   MUX2X1 U165 (.Y(n145), 
	.S(n153), 
	.B(next_count[7]), 
	.A(count_out[7]));
   MUX2X1 U166 (.Y(n146), 
	.S(n153), 
	.B(next_count[8]), 
	.A(count_out[8]));
   MUX2X1 U167 (.Y(n147), 
	.S(n153), 
	.B(next_count[9]), 
	.A(count_out[9]));
   MUX2X1 U168 (.Y(n148), 
	.S(n153), 
	.B(next_count[10]), 
	.A(count_out[10]));
   MUX2X1 U169 (.Y(n149), 
	.S(n153), 
	.B(next_count[11]), 
	.A(count_out[11]));
endmodule

module flex_counter_NUM_CNT_BITS16_0_DW01_dec_0 (
	A, 
	SUM);
   input [16:0] A;
   output [16:0] SUM;
endmodule

module flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 (
	A, 
	SUM);
   input [15:0] A;
   output [15:0] SUM;

   // Internal wires
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n36;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n48;
   wire n50;
   wire n52;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n61;
   wire n62;
   wire n64;
   wire n65;
   wire n66;
   wire n68;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n133;
   wire n134;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;

   assign n12 = A[13] ;
   assign n16 = A[12] ;
   assign n21 = A[11] ;
   assign n25 = A[10] ;
   assign n31 = A[9] ;
   assign n35 = A[8] ;
   assign n40 = A[7] ;
   assign n44 = A[6] ;
   assign n50 = A[5] ;
   assign n54 = A[4] ;
   assign n59 = A[3] ;
   assign n62 = A[2] ;
   assign n66 = A[1] ;
   assign n68 = A[0] ;

   NOR2X1 U5 (.Y(n4), 
	.B(n5), 
	.A(n111));
   NAND2X1 U6 (.Y(n5), 
	.B(n2), 
	.A(n6));
   NOR2X1 U7 (.Y(n6), 
	.B(n11), 
	.A(n7));
   NAND2X1 U11 (.Y(n9), 
	.B(n138), 
	.A(n10));
   NAND2X1 U13 (.Y(n11), 
	.B(n16), 
	.A(n12));
   NOR2X1 U17 (.Y(n14), 
	.B(n15), 
	.A(n117));
   NAND2X1 U18 (.Y(n15), 
	.B(n16), 
	.A(n138));
   NOR2X1 U22 (.Y(n18), 
	.B(n19), 
	.A(n134));
   NOR2X1 U24 (.Y(n2), 
	.B(n28), 
	.A(n20));
   NAND2X1 U25 (.Y(n20), 
	.B(n25), 
	.A(n21));
   NOR2X1 U29 (.Y(n23), 
	.B(n117), 
	.A(n24));
   NAND2X1 U30 (.Y(n24), 
	.B(n29), 
	.A(n119));
   NOR2X1 U34 (.Y(n27), 
	.B(n117), 
	.A(n28));
   NAND2X1 U37 (.Y(n28), 
	.B(n31), 
	.A(n35));
   NOR2X1 U41 (.Y(n33), 
	.B(n111), 
	.A(n36));
   XNOR2X1 U45 (.Y(SUM[7]), 
	.B(n41), 
	.A(n42));
   NOR2X1 U47 (.Y(n38), 
	.B(n120), 
	.A(n39));
   NAND2X1 U48 (.Y(n39), 
	.B(n44), 
	.A(n40));
   NOR2X1 U52 (.Y(n42), 
	.B(n56), 
	.A(n43));
   NAND2X1 U53 (.Y(n43), 
	.B(n48), 
	.A(n116));
   NOR2X1 U57 (.Y(n46), 
	.B(n56), 
	.A(n140));
   NOR2X1 U64 (.Y(n52), 
	.B(n56), 
	.A(n55));
   NOR2X1 U70 (.Y(n57), 
	.B(n58), 
	.A(n65));
   NAND2X1 U71 (.Y(n58), 
	.B(n62), 
	.A(n59));
   NAND2X1 U75 (.Y(n61), 
	.B(n64), 
	.A(n137));
   NAND2X1 U80 (.Y(n65), 
	.B(n66), 
	.A(n68));
   INVX2 U88 (.Y(n113), 
	.A(n112));
   INVX2 U89 (.Y(n115), 
	.A(n114));
   NAND2X1 U90 (.Y(n108), 
	.B(n107), 
	.A(n110));
   NAND2X1 U91 (.Y(n109), 
	.B(n7), 
	.A(n106));
   NAND2X1 U92 (.Y(SUM[14]), 
	.B(n109), 
	.A(n108));
   INVX1 U93 (.Y(n106), 
	.A(n110));
   INVX1 U94 (.Y(n107), 
	.A(n7));
   OR2X2 U95 (.Y(n110), 
	.B(n134), 
	.A(n9));
   NAND2X1 U96 (.Y(n111), 
	.B(n57), 
	.A(n38));
   INVX1 U97 (.Y(n112), 
	.A(n59));
   INVX1 U98 (.Y(n114), 
	.A(n31));
   INVX1 U99 (.Y(n116), 
	.A(n124));
   NAND2X1 U100 (.Y(n117), 
	.B(n57), 
	.A(n131));
   INVX1 U101 (.Y(n118), 
	.A(n25));
   INVX1 U102 (.Y(n119), 
	.A(n118));
   NAND2X1 U103 (.Y(n120), 
	.B(n54), 
	.A(n50));
   INVX2 U105 (.Y(n128), 
	.A(A[15]));
   XNOR2X1 U106 (.Y(SUM[4]), 
	.B(n55), 
	.A(n122));
   INVX1 U107 (.Y(n122), 
	.A(n56));
   XNOR2X1 U108 (.Y(SUM[5]), 
	.B(n123), 
	.A(n52));
   INVX1 U109 (.Y(n123), 
	.A(n50));
   XNOR2X1 U110 (.Y(SUM[6]), 
	.B(n124), 
	.A(n46));
   INVX1 U111 (.Y(n124), 
	.A(n44));
   XNOR2X1 U112 (.Y(SUM[11]), 
	.B(n125), 
	.A(n23));
   INVX1 U113 (.Y(n125), 
	.A(n21));
   XNOR2X1 U114 (.Y(SUM[10]), 
	.B(n118), 
	.A(n27));
   XNOR2X1 U115 (.Y(SUM[12]), 
	.B(n126), 
	.A(n18));
   INVX2 U116 (.Y(n126), 
	.A(n133));
   INVX1 U117 (.Y(n55), 
	.A(n54));
   INVX1 U118 (.Y(SUM[0]), 
	.A(n68));
   BUFX2 U119 (.Y(n127), 
	.A(n12));
   XNOR2X1 U120 (.Y(SUM[15]), 
	.B(n128), 
	.A(n4));
   INVX1 U121 (.Y(n10), 
	.A(n11));
   NAND2X1 U122 (.Y(n129), 
	.B(n31), 
	.A(n35));
   NAND2X1 U123 (.Y(n130), 
	.B(n44), 
	.A(n40));
   NOR2X1 U124 (.Y(n131), 
	.B(n120), 
	.A(n130));
   BUFX2 U126 (.Y(n133), 
	.A(n16));
   INVX1 U127 (.Y(n36), 
	.A(n35));
   NAND2X1 U128 (.Y(n134), 
	.B(n38), 
	.A(n57));
   BUFX2 U130 (.Y(n136), 
	.A(n66));
   INVX1 U131 (.Y(n64), 
	.A(n65));
   BUFX2 U132 (.Y(n137), 
	.A(n62));
   NOR2X1 U133 (.Y(n138), 
	.B(n129), 
	.A(n20));
   XOR2X1 U134 (.Y(SUM[1]), 
	.B(n68), 
	.A(n136));
   XOR2X1 U135 (.Y(SUM[2]), 
	.B(n137), 
	.A(n64));
   XNOR2X1 U136 (.Y(SUM[3]), 
	.B(n113), 
	.A(n61));
   XNOR2X1 U137 (.Y(SUM[8]), 
	.B(n36), 
	.A(n139));
   INVX1 U138 (.Y(n139), 
	.A(n117));
   XOR2X1 U139 (.Y(SUM[9]), 
	.B(n115), 
	.A(n33));
   XOR2X1 U140 (.Y(SUM[13]), 
	.B(n127), 
	.A(n14));
   INVX1 U141 (.Y(n29), 
	.A(n28));
   INVX1 U142 (.Y(n19), 
	.A(n2));
   INVX1 U143 (.Y(n140), 
	.A(n48));
   INVX1 U144 (.Y(n56), 
	.A(n57));
   INVX1 U145 (.Y(n48), 
	.A(n120));
   INVX1 U146 (.Y(n41), 
	.A(n40));
   INVX2 U147 (.Y(n7), 
	.A(A[14]));
endmodule

module flex_counter_NUM_CNT_BITS16_0 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	n312, 
	n310, 
	n198, 
	n200, 
	FE_PT1_n199, 
	n313, 
	n196, 
	n201, 
	n205, 
	n314, 
	n309, 
	n304, 
	FE_PT1_n197);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [15:0] rollover_val;
   output [15:0] count_out;
   output rollover_flag;
   input n312;
   input n310;
   input n198;
   input n200;
   input FE_PT1_n199;
   input n313;
   input n196;
   input n201;
   input n205;
   input n314;
   input n309;
   input n304;
   input FE_PT1_n197;

   // Internal wires
   wire FE_OFN18_counter_1_;
   wire FE_UNCONNECTED_142;
   wire FE_UNCONNECTED_141;
   wire FE_UNCONNECTED_140;
   wire FE_UNCONNECTED_139;
   wire FE_UNCONNECTED_138;
   wire FE_UNCONNECTED_137;
   wire FE_UNCONNECTED_136;
   wire FE_UNCONNECTED_135;
   wire FE_UNCONNECTED_134;
   wire FE_UNCONNECTED_133;
   wire FE_UNCONNECTED_132;
   wire FE_UNCONNECTED_131;
   wire FE_UNCONNECTED_130;
   wire FE_UNCONNECTED_129;
   wire FE_UNCONNECTED_128;
   wire FE_UNCONNECTED_127;
   wire FE_UNCONNECTED_126;
   wire n202;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire N46;
   wire N45;
   wire N44;
   wire N43;
   wire N42;
   wire N41;
   wire N39;
   wire N38;
   wire N37;
   wire N35;
   wire N34;
   wire N33;
   wire N32;
   wire N31;
   wire n4;
   wire n5;
   wire n8;
   wire n10;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n28;
   wire n30;
   wire n32;
   wire n34;
   wire n35;
   wire n39;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n140;
   wire n147;
   wire n148;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n171;
   wire n173;
   wire n175;
   wire n177;
   wire n179;
   wire n181;
   wire n183;
   wire n185;
   wire n187;
   wire n189;
   wire n191;
   wire n193;
   wire n195;
   wire n197;
   wire n199;
   wire [15:0] next_count;

   BUFX2 FE_OFC18_counter_1_ (.Y(count_out[1]), 
	.A(FE_OFN18_counter_1_));
   DFFSR \cur_count_reg[15]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[15]), 
	.D(n169), 
	.CLK(clk));
   DFFSR \cur_count_reg[14]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[14]), 
	.D(n171), 
	.CLK(clk));
   DFFSR \cur_count_reg[13]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[13]), 
	.D(n173), 
	.CLK(clk));
   DFFSR \cur_count_reg[12]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[12]), 
	.D(n175), 
	.CLK(clk));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n202), 
	.D(n177), 
	.CLK(clk));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[10]), 
	.D(n179), 
	.CLK(clk));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[9]), 
	.D(n181), 
	.CLK(clk));
   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[8]), 
	.D(n183), 
	.CLK(clk));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[7]), 
	.D(n185), 
	.CLK(clk));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n206), 
	.D(n187), 
	.CLK(clk));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n207), 
	.D(n189), 
	.CLK(clk));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n208), 
	.D(n191), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n209), 
	.D(n193), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n210), 
	.D(n195), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(FE_OFN18_counter_1_), 
	.D(n197), 
	.CLK(clk));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n199), 
	.CLK(clk));
   flex_counter_NUM_CNT_BITS16_0_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ FE_UNCONNECTED_142,
		FE_UNCONNECTED_141,
		FE_UNCONNECTED_140,
		FE_UNCONNECTED_139,
		FE_UNCONNECTED_138,
		FE_UNCONNECTED_137,
		FE_UNCONNECTED_136,
		FE_UNCONNECTED_135,
		FE_UNCONNECTED_134,
		FE_UNCONNECTED_133,
		FE_UNCONNECTED_132,
		FE_UNCONNECTED_131,
		FE_UNCONNECTED_130,
		FE_UNCONNECTED_129,
		FE_UNCONNECTED_128,
		FE_UNCONNECTED_127,
		FE_UNCONNECTED_126 }));
   flex_counter_NUM_CNT_BITS16_0_DW01_inc_1 add_35_aco (.A({ N46,
		N45,
		N44,
		N43,
		N42,
		N41,
		n10,
		N39,
		N38,
		N37,
		n5,
		N35,
		N34,
		N33,
		N32,
		N31 }), 
	.SUM(next_count));
   MUX2X1 U4 (.Y(n158), 
	.S(n8), 
	.B(count_out[6]), 
	.A(next_count[6]));
   MUX2X1 U5 (.Y(n157), 
	.S(n8), 
	.B(count_out[5]), 
	.A(next_count[5]));
   INVX2 U6 (.Y(n167), 
	.A(n151));
   MUX2X1 U8 (.Y(n159), 
	.S(n8), 
	.B(count_out[7]), 
	.A(next_count[7]));
   INVX2 U9 (.Y(n8), 
	.A(n167));
   INVX2 U11 (.Y(n140), 
	.A(n39));
   NAND3X1 U13 (.Y(n4), 
	.C(n92), 
	.B(n93), 
	.A(n94));
   INVX2 U15 (.Y(n15), 
	.A(n313));
   INVX1 U16 (.Y(n16), 
	.A(n310));
   INVX1 U17 (.Y(n17), 
	.A(n198));
   NOR2X1 U18 (.Y(n5), 
	.B(n314), 
	.A(n19));
   INVX1 U19 (.Y(n191), 
	.A(n156));
   INVX1 U20 (.Y(n183), 
	.A(n160));
   INVX1 U21 (.Y(n177), 
	.A(n163));
   MUX2X1 U22 (.Y(n161), 
	.S(n8), 
	.B(n16), 
	.A(next_count[9]));
   MUX2X1 U23 (.Y(n164), 
	.S(n8), 
	.B(n17), 
	.A(next_count[12]));
   MUX2X1 U24 (.Y(n165), 
	.S(n8), 
	.B(count_out[13]), 
	.A(next_count[13]));
   AND2X2 U26 (.Y(N38), 
	.B(n15), 
	.A(n13));
   INVX1 U28 (.Y(n181), 
	.A(n161));
   MUX2X1 U29 (.Y(n168), 
	.S(n8), 
	.B(count_out[15]), 
	.A(next_count[15]));
   MUX2X1 U31 (.Y(n166), 
	.S(n8), 
	.B(count_out[14]), 
	.A(next_count[14]));
   NOR2X1 U33 (.Y(n10), 
	.B(n140), 
	.A(n310));
   AND2X2 U35 (.Y(N37), 
	.B(count_out[6]), 
	.A(n13));
   INVX2 U36 (.Y(n13), 
	.A(n19));
   INVX2 U38 (.Y(n14), 
	.A(n69));
   INVX1 U41 (.Y(n179), 
	.A(n162));
   NAND2X1 U43 (.Y(n19), 
	.B(n34), 
	.A(n21));
   AND2X2 U46 (.Y(n21), 
	.B(n4), 
	.A(count_enable));
   INVX2 U48 (.Y(count_out[11]), 
	.A(n25));
   INVX2 U49 (.Y(count_out[4]), 
	.A(n32));
   INVX2 U51 (.Y(n23), 
	.A(n207));
   INVX2 U52 (.Y(count_out[5]), 
	.A(n23));
   INVX2 U53 (.Y(n25), 
	.A(n202));
   INVX2 U55 (.Y(n28), 
	.A(n209));
   INVX2 U56 (.Y(count_out[3]), 
	.A(n28));
   INVX2 U57 (.Y(n30), 
	.A(n210));
   INVX2 U58 (.Y(count_out[2]), 
	.A(n30));
   INVX2 U59 (.Y(n32), 
	.A(n208));
   INVX1 U60 (.Y(n34), 
	.A(clear));
   INVX2 U61 (.Y(n35), 
	.A(n206));
   INVX2 U62 (.Y(count_out[6]), 
	.A(n35));
   INVX1 U64 (.Y(n175), 
	.A(n164));
   INVX1 U66 (.Y(n199), 
	.A(n152));
   INVX1 U67 (.Y(n173), 
	.A(n165));
   INVX1 U68 (.Y(n69), 
	.A(count_enable));
   INVX1 U69 (.Y(n185), 
	.A(n159));
   INVX1 U70 (.Y(n189), 
	.A(n157));
   INVX1 U71 (.Y(n187), 
	.A(n158));
   INVX1 U73 (.Y(n197), 
	.A(n153));
   INVX1 U74 (.Y(n171), 
	.A(n166));
   INVX1 U75 (.Y(n169), 
	.A(n168));
   AND2X2 U76 (.Y(n39), 
	.B(n21), 
	.A(n34));
   NAND2X1 U111 (.Y(n151), 
	.B(n69), 
	.A(n34));
   XOR2X1 U112 (.Y(n71), 
	.B(count_out[3]), 
	.A(rollover_val[3]));
   XOR2X1 U113 (.Y(n70), 
	.B(count_out[2]), 
	.A(rollover_val[2]));
   NOR2X1 U114 (.Y(n94), 
	.B(n70), 
	.A(n71));
   XOR2X1 U132 (.Y(n76), 
	.B(rollover_val[12]), 
	.A(n198));
   XOR2X1 U133 (.Y(n73), 
	.B(count_out[15]), 
	.A(rollover_val[15]));
   XOR2X1 U134 (.Y(n72), 
	.B(count_out[14]), 
	.A(rollover_val[14]));
   NOR2X1 U135 (.Y(n75), 
	.B(n72), 
	.A(n73));
   XOR2X1 U136 (.Y(n74), 
	.B(rollover_val[13]), 
	.A(FE_PT1_n199));
   NAND3X1 U137 (.Y(n83), 
	.C(n74), 
	.B(n75), 
	.A(n76));
   XOR2X1 U139 (.Y(n81), 
	.B(rollover_val[9]), 
	.A(n310));
   XOR2X1 U140 (.Y(n78), 
	.B(count_out[10]), 
	.A(rollover_val[10]));
   XOR2X1 U141 (.Y(n77), 
	.B(count_out[11]), 
	.A(rollover_val[11]));
   NOR2X1 U142 (.Y(n80), 
	.B(n77), 
	.A(n78));
   XOR2X1 U144 (.Y(n79), 
	.B(rollover_val[8]), 
	.A(n312));
   NAND3X1 U145 (.Y(n82), 
	.C(n79), 
	.B(n80), 
	.A(n81));
   NOR2X1 U146 (.Y(n93), 
	.B(n82), 
	.A(n83));
   XNOR2X1 U147 (.Y(n85), 
	.B(rollover_val[1]), 
	.A(count_out[1]));
   XNOR2X1 U148 (.Y(n84), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   NAND2X1 U149 (.Y(n91), 
	.B(n84), 
	.A(n85));
   XOR2X1 U150 (.Y(n90), 
	.B(rollover_val[4]), 
	.A(count_out[4]));
   XNOR2X1 U151 (.Y(n88), 
	.B(count_out[7]), 
	.A(rollover_val[7]));
   XNOR2X1 U152 (.Y(n87), 
	.B(count_out[6]), 
	.A(rollover_val[6]));
   XOR2X1 U154 (.Y(n86), 
	.B(rollover_val[5]), 
	.A(n314));
   NAND3X1 U155 (.Y(n89), 
	.C(n86), 
	.B(n87), 
	.A(n88));
   NOR3X1 U156 (.Y(n92), 
	.C(n89), 
	.B(n90), 
	.A(n91));
   NOR2X1 U160 (.Y(N46), 
	.B(n201), 
	.A(n140));
   NOR2X1 U161 (.Y(N45), 
	.B(n200), 
	.A(n140));
   NOR2X1 U162 (.Y(N44), 
	.B(FE_PT1_n199), 
	.A(n140));
   NOR2X1 U163 (.Y(N43), 
	.B(n198), 
	.A(n140));
   NOR2X1 U164 (.Y(N42), 
	.B(n140), 
	.A(FE_PT1_n197));
   NOR2X1 U165 (.Y(N41), 
	.B(n140), 
	.A(n196));
   NOR2X1 U166 (.Y(N39), 
	.B(n140), 
	.A(n312));
   NOR2X1 U167 (.Y(N35), 
	.B(n19), 
	.A(n304));
   NOR2X1 U169 (.Y(N34), 
	.B(n19), 
	.A(n205));
   NOR2X1 U170 (.Y(N33), 
	.B(n19), 
	.A(n309));
   NAND2X1 U171 (.Y(n148), 
	.B(n34), 
	.A(n14));
   NAND2X1 U172 (.Y(n147), 
	.B(n4), 
	.A(count_out[1]));
   NOR2X1 U173 (.Y(N32), 
	.B(n147), 
	.A(n148));
   NAND3X1 U174 (.Y(n150), 
	.C(n4), 
	.B(count_enable), 
	.A(count_out[0]));
   NOR2X1 U175 (.Y(N31), 
	.B(n150), 
	.A(clear));
   MUX2X1 U176 (.Y(n152), 
	.S(n167), 
	.B(next_count[0]), 
	.A(count_out[0]));
   MUX2X1 U177 (.Y(n153), 
	.S(n167), 
	.B(next_count[1]), 
	.A(count_out[1]));
   MUX2X1 U178 (.Y(n154), 
	.S(n167), 
	.B(next_count[2]), 
	.A(count_out[2]));
   INVX2 U179 (.Y(n195), 
	.A(n154));
   MUX2X1 U180 (.Y(n155), 
	.S(n167), 
	.B(next_count[3]), 
	.A(count_out[3]));
   INVX2 U181 (.Y(n193), 
	.A(n155));
   MUX2X1 U182 (.Y(n156), 
	.S(n167), 
	.B(next_count[4]), 
	.A(count_out[4]));
   MUX2X1 U183 (.Y(n160), 
	.S(n167), 
	.B(next_count[8]), 
	.A(count_out[8]));
   MUX2X1 U184 (.Y(n162), 
	.S(n167), 
	.B(next_count[10]), 
	.A(count_out[10]));
   MUX2X1 U185 (.Y(n163), 
	.S(n167), 
	.B(next_count[11]), 
	.A(count_out[11]));
endmodule

module mode_select_DW01_dec_0 (
	A, 
	SUM);
   input [15:0] A;
   output [15:0] SUM;

   // Internal wires
   wire n3;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;

   INVX2 U1 (.Y(SUM[1]), 
	.A(n29));
   INVX2 U2 (.Y(SUM[11]), 
	.A(n34));
   INVX2 U3 (.Y(n3), 
	.A(n32));
   INVX2 U4 (.Y(SUM[9]), 
	.A(n16));
   INVX2 U5 (.Y(SUM[7]), 
	.A(n20));
   INVX2 U6 (.Y(SUM[5]), 
	.A(n23));
   INVX2 U7 (.Y(SUM[3]), 
	.A(n26));
   INVX2 U8 (.Y(SUM[0]), 
	.A(A[0]));
   INVX2 U9 (.Y(n9), 
	.A(A[8]));
   INVX2 U10 (.Y(n10), 
	.A(A[13]));
   INVX2 U11 (.Y(n11), 
	.A(A[12]));
   INVX2 U12 (.Y(n12), 
	.A(A[10]));
   INVX2 U13 (.Y(n13), 
	.A(A[6]));
   INVX2 U14 (.Y(n14), 
	.A(A[4]));
   INVX2 U15 (.Y(n15), 
	.A(A[2]));
   AOI21X1 U16 (.Y(n16), 
	.C(n18), 
	.B(A[9]), 
	.A(n17));
   OAI21X1 U17 (.Y(SUM[8]), 
	.C(n17), 
	.B(n9), 
	.A(n19));
   AOI21X1 U18 (.Y(n20), 
	.C(n19), 
	.B(A[7]), 
	.A(n21));
   OAI21X1 U19 (.Y(SUM[6]), 
	.C(n21), 
	.B(n13), 
	.A(n22));
   AOI21X1 U20 (.Y(n23), 
	.C(n22), 
	.B(A[5]), 
	.A(n24));
   OAI21X1 U21 (.Y(SUM[4]), 
	.C(n24), 
	.B(n14), 
	.A(n25));
   AOI21X1 U22 (.Y(n26), 
	.C(n25), 
	.B(A[3]), 
	.A(n27));
   OAI21X1 U23 (.Y(SUM[2]), 
	.C(n27), 
	.B(n15), 
	.A(n28));
   AOI21X1 U24 (.Y(n29), 
	.C(n28), 
	.B(A[1]), 
	.A(A[0]));
   XOR2X1 U25 (.Y(SUM[15]), 
	.B(n30), 
	.A(A[15]));
   NOR2X1 U26 (.Y(n30), 
	.B(n31), 
	.A(A[14]));
   XNOR2X1 U27 (.Y(SUM[14]), 
	.B(n31), 
	.A(A[14]));
   OAI21X1 U28 (.Y(SUM[13]), 
	.C(n31), 
	.B(n10), 
	.A(n3));
   NAND2X1 U29 (.Y(n31), 
	.B(n10), 
	.A(n3));
   OAI21X1 U30 (.Y(SUM[12]), 
	.C(n32), 
	.B(n11), 
	.A(n33));
   NAND2X1 U31 (.Y(n32), 
	.B(n11), 
	.A(n33));
   AOI21X1 U32 (.Y(n34), 
	.C(n33), 
	.B(A[11]), 
	.A(n35));
   NOR2X1 U33 (.Y(n33), 
	.B(A[11]), 
	.A(n35));
   OAI21X1 U34 (.Y(SUM[10]), 
	.C(n35), 
	.B(n12), 
	.A(n18));
   NAND2X1 U35 (.Y(n35), 
	.B(n12), 
	.A(n18));
   NOR2X1 U36 (.Y(n18), 
	.B(A[9]), 
	.A(n17));
   NAND2X1 U37 (.Y(n17), 
	.B(n9), 
	.A(n19));
   NOR2X1 U38 (.Y(n19), 
	.B(A[7]), 
	.A(n21));
   NAND2X1 U39 (.Y(n21), 
	.B(n13), 
	.A(n22));
   NOR2X1 U40 (.Y(n22), 
	.B(A[5]), 
	.A(n24));
   NAND2X1 U41 (.Y(n24), 
	.B(n14), 
	.A(n25));
   NOR2X1 U42 (.Y(n25), 
	.B(A[3]), 
	.A(n27));
   NAND2X1 U43 (.Y(n27), 
	.B(n15), 
	.A(n28));
   NOR2X1 U44 (.Y(n28), 
	.B(A[0]), 
	.A(A[1]));
endmodule

module mode_select (
	clk, 
	n_rst, 
	sd_read, 
	sd_write, 
	sd_addr_ready, 
	sd_full, 
	rx_FIFO_empty, 
	SDCS, 
	cmd_check, 
	rcv_fifo, 
	byte_transf, 
	edge_detect, 
	shift_enable, 
	clear_byte, 
	sd_done, 
	sd_err, 
	load_enable, 
	w_enable, 
	r_enable, 
	r_enable_o, 
	SPI_select, 
	rw_select, 
	enable, 
	cmd_out, 
	count_out, 
	speed_o, 
	addr_o, 
	FE_OFN3_nn_rst, 
	FE_OFN6_nn_rst, 
	FE_OFN7_nn_rst, 
	FE_OFN4_nn_rst, 
	nclk__L2_N1, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4);
   input clk;
   input n_rst;
   input sd_read;
   input sd_write;
   input sd_addr_ready;
   input sd_full;
   input rx_FIFO_empty;
   output SDCS;
   input [7:0] cmd_check;
   input [7:0] rcv_fifo;
   input byte_transf;
   input edge_detect;
   input shift_enable;
   output clear_byte;
   output sd_done;
   output sd_err;
   output load_enable;
   output w_enable;
   output r_enable;
   output r_enable_o;
   output [1:0] SPI_select;
   output rw_select;
   output enable;
   output [5:0] cmd_out;
   output [3:0] count_out;
   output [1:0] speed_o;
   output [31:0] addr_o;
   input FE_OFN3_nn_rst;
   input FE_OFN6_nn_rst;
   input FE_OFN7_nn_rst;
   input FE_OFN4_nn_rst;
   input nclk__L2_N1;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;

   // Internal wires
   wire FE_OFN19_state_4_;
   wire n398;
   wire clear;
   wire roll;
   wire clearCounter;
   wire byte_transfflip;
   wire N222;
   wire N365;
   wire N371;
   wire n76;
   wire n77;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n1;
   wire n2;
   wire n3;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n24;
   wire n26;
   wire n29;
   wire n31;
   wire n32;
   wire n34;
   wire n35;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n43;
   wire n45;
   wire n46;
   wire n47;
   wire n49;
   wire n50;
   wire n51;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n59;
   wire n60;
   wire n61;
   wire n66;
   wire n67;
   wire n68;
   wire n71;
   wire n72;
   wire n73;
   wire n78;
   wire n80;
   wire n82;
   wire n83;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n134;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n159;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n167;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n213;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire \cmd_out[1] ;
   wire n392;
   wire n394;
   wire [15:0] size;
   wire [15:0] size_minus_one;
   wire [15:4] counter;
   wire [4:0] state;

   assign enable = 1'b1 ;
   assign cmd_out[5] = \cmd_out[1]  ;
   assign cmd_out[2] = \cmd_out[1]  ;
   assign cmd_out[1] = \cmd_out[1]  ;

   BUFX2 FE_OFC19_state_4_ (.Y(FE_OFN19_state_4_), 
	.A(state[4]));
   DFFSR byte_transfflip_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(byte_transfflip), 
	.D(n83), 
	.CLK(nclk__L2_N2));
   LATCH \size_reg[0]  (.Q(size[0]), 
	.D(rcv_fifo[0]), 
	.CLK(n55));
   DFFSR \state_reg[4]  (.S(1'b1), 
	.R(FE_OFN3_nn_rst), 
	.Q(state[4]), 
	.D(n273), 
	.CLK(nclk__L2_N4));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(FE_OFN7_nn_rst), 
	.Q(state[0]), 
	.D(n272), 
	.CLK(nclk__L2_N4));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(FE_OFN3_nn_rst), 
	.Q(state[1]), 
	.D(n271), 
	.CLK(nclk__L2_N4));
   DFFSR \state_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_nn_rst), 
	.Q(state[3]), 
	.D(n269), 
	.CLK(nclk__L2_N4));
   LATCH \size_reg[8]  (.Q(size[8]), 
	.D(rcv_fifo[0]), 
	.CLK(N371));
   LATCH \size_reg[15]  (.Q(size[15]), 
	.D(rcv_fifo[7]), 
	.CLK(N371));
   LATCH \size_reg[14]  (.Q(size[14]), 
	.D(rcv_fifo[6]), 
	.CLK(N371));
   LATCH \size_reg[13]  (.Q(size[13]), 
	.D(rcv_fifo[5]), 
	.CLK(N371));
   LATCH \size_reg[12]  (.Q(size[12]), 
	.D(rcv_fifo[4]), 
	.CLK(N371));
   LATCH \size_reg[11]  (.Q(size[11]), 
	.D(rcv_fifo[3]), 
	.CLK(N371));
   LATCH \size_reg[10]  (.Q(size[10]), 
	.D(rcv_fifo[2]), 
	.CLK(N371));
   LATCH \size_reg[9]  (.Q(size[9]), 
	.D(rcv_fifo[1]), 
	.CLK(N371));
   LATCH \size_reg[7]  (.Q(size[7]), 
	.D(rcv_fifo[7]), 
	.CLK(n55));
   LATCH \size_reg[6]  (.Q(size[6]), 
	.D(rcv_fifo[6]), 
	.CLK(n55));
   LATCH \size_reg[5]  (.Q(size[5]), 
	.D(rcv_fifo[5]), 
	.CLK(n55));
   LATCH \size_reg[4]  (.Q(size[4]), 
	.D(rcv_fifo[4]), 
	.CLK(n55));
   LATCH \size_reg[3]  (.Q(size[3]), 
	.D(rcv_fifo[3]), 
	.CLK(n55));
   LATCH \size_reg[2]  (.Q(size[2]), 
	.D(rcv_fifo[2]), 
	.CLK(n55));
   LATCH \size_reg[1]  (.Q(size[1]), 
	.D(rcv_fifo[1]), 
	.CLK(n55));
   LATCH \speed_reg[1]  (.Q(speed_o[1]), 
	.D(n392), 
	.CLK(N365));
   LATCH \speed_reg[0]  (.Q(speed_o[0]), 
	.D(N222), 
	.CLK(N365));
   NAND2X1 U87 (.Y(rw_select), 
	.B(n77), 
	.A(n76));
   flex_counter_NUM_CNT_BITS16_1 LoadFIFO (.clk(clk), 
	.n_rst(FE_OFN6_nn_rst), 
	.clear(clear), 
	.count_enable(n388), 
	.rollover_val(size_minus_one), 
	.rollover_flag(roll), 
	.FE_OFN7_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4));
   flex_counter_NUM_CNT_BITS16_0 Countstates (.clk(clk), 
	.n_rst(FE_OFN3_nn_rst), 
	.clear(clearCounter), 
	.count_enable(n389), 
	.rollover_val(size_minus_one), 
	.count_out({ counter,
		count_out[3],
		count_out[2],
		count_out[1],
		n398 }), 
	.n312(n312), 
	.n310(n310), 
	.n198(n198), 
	.n200(n200), 
	.FE_PT1_n199(n199), 
	.n313(n313), 
	.n196(n196), 
	.n201(n201), 
	.n205(n205), 
	.n314(n314), 
	.n309(n309), 
	.n304(n304), 
	.FE_PT1_n197(n197));
   mode_select_DW01_dec_0 sub_56 (.A(size), 
	.SUM(size_minus_one));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_nn_rst), 
	.Q(state[2]), 
	.D(n270), 
	.CLK(nclk__L2_N4));
   OR2X2 U3 (.Y(n171), 
	.B(n148), 
	.A(n149));
   AND2X2 U5 (.Y(n1), 
	.B(n377), 
	.A(n301));
   INVX1 U6 (.Y(n2), 
	.A(n1));
   INVX1 U11 (.Y(n3), 
	.A(n13));
   NOR2X1 U15 (.Y(n12), 
	.B(n394), 
	.A(n156));
   INVX1 U17 (.Y(n191), 
	.A(n394));
   INVX2 U18 (.Y(n313), 
	.A(counter[7]));
   NAND2X1 U19 (.Y(n15), 
	.B(n14), 
	.A(n13));
   NAND2X1 U20 (.Y(n97), 
	.B(n96), 
	.A(n15));
   INVX1 U21 (.Y(n13), 
	.A(n18));
   INVX2 U22 (.Y(n14), 
	.A(n51));
   AND2X2 U23 (.Y(n16), 
	.B(state[2]), 
	.A(n49));
   INVX2 U24 (.Y(n205), 
	.A(count_out[3]));
   NAND2X1 U27 (.Y(n18), 
	.B(n50), 
	.A(n24));
   INVX2 U28 (.Y(n66), 
	.A(n38));
   AND2X1 U29 (.Y(n19), 
	.B(n310), 
	.A(n106));
   AND2X1 U30 (.Y(n20), 
	.B(n276), 
	.A(n241));
   INVX2 U31 (.Y(n241), 
	.A(sd_write));
   INVX1 U35 (.Y(n50), 
	.A(state[0]));
   INVX1 U36 (.Y(n230), 
	.A(n227));
   INVX2 U37 (.Y(n172), 
	.A(n115));
   INVX1 U38 (.Y(n379), 
	.A(n377));
   INVX1 U39 (.Y(n24), 
	.A(n39));
   INVX2 U40 (.Y(n330), 
	.A(n329));
   NAND3X1 U42 (.Y(n26), 
	.C(n228), 
	.B(n229), 
	.A(n230));
   INVX1 U45 (.Y(n238), 
	.A(n26));
   INVX1 U46 (.Y(n376), 
	.A(n372));
   NOR2X1 U47 (.Y(n29), 
	.B(n202), 
	.A(n203));
   AND2X2 U49 (.Y(n31), 
	.B(n80), 
	.A(n37));
   INVX1 U50 (.Y(n146), 
	.A(n31));
   AND2X2 U51 (.Y(n32), 
	.B(n265), 
	.A(n266));
   INVX1 U52 (.Y(n371), 
	.A(n32));
   OR2X2 U53 (.Y(n255), 
	.B(n202), 
	.A(n203));
   INVX2 U54 (.Y(n38), 
	.A(n359));
   INVX2 U56 (.Y(n34), 
	.A(n328));
   NAND3X1 U57 (.Y(n35), 
	.C(n187), 
	.B(n12), 
	.A(n188));
   AND2X2 U59 (.Y(n37), 
	.B(n78), 
	.A(FE_OFN19_state_4_));
   INVX1 U60 (.Y(n145), 
	.A(n37));
   NAND2X1 U61 (.Y(n246), 
	.B(n20), 
	.A(sd_addr_ready));
   AND2X1 U62 (.Y(n143), 
	.B(n342), 
	.A(n66));
   INVX1 U63 (.Y(n328), 
	.A(n342));
   INVX1 U64 (.Y(n169), 
	.A(n16));
   INVX1 U65 (.Y(n177), 
	.A(n186));
   INVX1 U66 (.Y(n338), 
	.A(n335));
   INVX1 U68 (.Y(n39), 
	.A(state[3]));
   OR2X2 U69 (.Y(n329), 
	.B(n294), 
	.A(n268));
   INVX1 U70 (.Y(n40), 
	.A(n50));
   NOR2X1 U74 (.Y(n109), 
	.B(n43), 
	.A(n108));
   NAND2X1 U75 (.Y(n43), 
	.B(n398), 
	.A(n205));
   AND2X2 U76 (.Y(n60), 
	.B(count_out[2]), 
	.A(count_out[1]));
   INVX1 U78 (.Y(n196), 
	.A(counter[10]));
   INVX1 U79 (.Y(n197), 
	.A(counter[11]));
   INVX1 U80 (.Y(n351), 
	.A(n181));
   AND2X2 U81 (.Y(n45), 
	.B(n47), 
	.A(n167));
   INVX1 U82 (.Y(n163), 
	.A(n45));
   NAND2X1 U83 (.Y(n111), 
	.B(n19), 
	.A(n105));
   AND2X2 U84 (.Y(n46), 
	.B(n73), 
	.A(n14));
   INVX2 U85 (.Y(n319), 
	.A(n46));
   INVX1 U86 (.Y(n47), 
	.A(n127));
   INVX2 U90 (.Y(n49), 
	.A(n80));
   NAND3X1 U92 (.Y(n51), 
	.C(n49), 
	.B(n78), 
	.A(FE_OFN19_state_4_));
   AND2X2 U94 (.Y(n61), 
	.B(count_out[2]), 
	.A(n304));
   AND2X1 U97 (.Y(n57), 
	.B(n73), 
	.A(n141));
   OR2X2 U98 (.Y(n326), 
	.B(n378), 
	.A(n360));
   OR2X2 U99 (.Y(n233), 
	.B(byte_transfflip), 
	.A(n231));
   INVX1 U100 (.Y(n53), 
	.A(SDCS));
   AND2X2 U101 (.Y(n54), 
	.B(n34), 
	.A(n330));
   AND2X2 U102 (.Y(n55), 
	.B(n267), 
	.A(n356));
   AND2X2 U103 (.Y(n56), 
	.B(n68), 
	.A(state[2]));
   AND2X2 U104 (.Y(sd_err), 
	.B(n73), 
	.A(n162));
   AND2X2 U105 (.Y(n59), 
	.B(FE_OFN19_state_4_), 
	.A(n49));
   AND2X2 U109 (.Y(n73), 
	.B(n39), 
	.A(state[0]));
   INVX2 U111 (.Y(n80), 
	.A(state[1]));
   INVX2 U112 (.Y(n83), 
	.A(n82));
   INVX2 U113 (.Y(n264), 
	.A(n83));
   INVX2 U114 (.Y(n167), 
	.A(FE_OFN19_state_4_));
   INVX2 U116 (.Y(n82), 
	.A(byte_transf));
   INVX1 U118 (.Y(n251), 
	.A(shift_enable));
   AND2X2 U121 (.Y(n67), 
	.B(n80), 
	.A(n167));
   AND2X2 U122 (.Y(n68), 
	.B(n167), 
	.A(n80));
   INVX1 U123 (.Y(n195), 
	.A(counter[6]));
   NAND2X1 U125 (.Y(n72), 
	.B(n57), 
	.A(n71));
   NAND2X1 U126 (.Y(n389), 
	.B(n72), 
	.A(n99));
   INVX1 U127 (.Y(n71), 
	.A(n264));
   INVX1 U128 (.Y(n101), 
	.A(n47));
   INVX2 U129 (.Y(count_out[0]), 
	.A(n311));
   INVX2 U131 (.Y(n78), 
	.A(state[2]));
   NAND2X1 U133 (.Y(n110), 
	.B(n61), 
	.A(n109));
   INVX1 U134 (.Y(n304), 
	.A(counter[4]));
   INVX1 U135 (.Y(n311), 
	.A(n398));
   INVX2 U136 (.Y(n250), 
	.A(n88));
   NAND3X1 U137 (.Y(n87), 
	.C(FE_OFN19_state_4_), 
	.B(n80), 
	.A(n78));
   INVX2 U138 (.Y(n141), 
	.A(n87));
   NAND3X1 U139 (.Y(n92), 
	.C(shift_enable), 
	.B(n167), 
	.A(n80));
   NAND2X1 U140 (.Y(n88), 
	.B(n50), 
	.A(n39));
   NAND2X1 U141 (.Y(n91), 
	.B(n78), 
	.A(n250));
   NOR2X1 U142 (.Y(n90), 
	.B(n78), 
	.A(n82));
   NOR2X1 U143 (.Y(n89), 
	.B(n39), 
	.A(n40));
   NAND3X1 U144 (.Y(n155), 
	.C(n67), 
	.B(n89), 
	.A(n90));
   OAI21X1 U145 (.Y(n98), 
	.C(n155), 
	.B(n91), 
	.A(n92));
   NAND2X1 U147 (.Y(n127), 
	.B(state[0]), 
	.A(n39));
   NOR2X1 U148 (.Y(n95), 
	.B(n167), 
	.A(n127));
   NAND3X1 U150 (.Y(n93), 
	.C(n78), 
	.B(n40), 
	.A(n24));
   INVX2 U151 (.Y(n152), 
	.A(n93));
   AOI22X1 U152 (.Y(n96), 
	.D(n59), 
	.C(n152), 
	.B(n90), 
	.A(n95));
   NOR2X1 U153 (.Y(n99), 
	.B(n98), 
	.A(n97));
   NAND3X1 U154 (.Y(n100), 
	.C(n80), 
	.B(n78), 
	.A(FE_OFN19_state_4_));
   AOI21X1 U155 (.Y(n114), 
	.C(n100), 
	.B(n101), 
	.A(n3));
   NOR2X1 U156 (.Y(n106), 
	.B(counter[15]), 
	.A(counter[14]));
   INVX2 U157 (.Y(n310), 
	.A(counter[9]));
   INVX2 U158 (.Y(n314), 
	.A(counter[5]));
   NOR2X1 U159 (.Y(n102), 
	.B(counter[7]), 
	.A(counter[8]));
   NAND3X1 U160 (.Y(n104), 
	.C(n102), 
	.B(n195), 
	.A(n314));
   INVX2 U161 (.Y(n213), 
	.A(count_out[1]));
   NAND2X1 U162 (.Y(n103), 
	.B(n213), 
	.A(n83));
   NOR2X1 U163 (.Y(n105), 
	.B(n103), 
	.A(n104));
   INVX2 U164 (.Y(n199), 
	.A(counter[13]));
   INVX2 U165 (.Y(n198), 
	.A(counter[12]));
   NOR2X1 U166 (.Y(n107), 
	.B(counter[10]), 
	.A(counter[11]));
   NAND3X1 U167 (.Y(n108), 
	.C(n107), 
	.B(n198), 
	.A(n199));
   NOR2X1 U168 (.Y(n113), 
	.B(n110), 
	.A(n111));
   AOI21X1 U170 (.Y(n126), 
	.C(n46), 
	.B(n114), 
	.A(n113));
   NAND2X1 U171 (.Y(n147), 
	.B(n24), 
	.A(state[0]));
   INVX2 U172 (.Y(n180), 
	.A(n147));
   NAND2X1 U173 (.Y(n117), 
	.B(n80), 
	.A(n180));
   NAND3X1 U174 (.Y(n115), 
	.C(FE_OFN19_state_4_), 
	.B(n80), 
	.A(state[2]));
   NAND3X1 U175 (.Y(n116), 
	.C(n172), 
	.B(n250), 
	.A(n83));
   OAI21X1 U176 (.Y(n118), 
	.C(n116), 
	.B(n117), 
	.A(n145));
   INVX2 U177 (.Y(n159), 
	.A(n118));
   NAND2X1 U178 (.Y(n121), 
	.B(state[2]), 
	.A(n250));
   NAND2X1 U179 (.Y(n120), 
	.B(FE_OFN19_state_4_), 
	.A(n49));
   NOR2X1 U180 (.Y(n119), 
	.B(state[2]), 
	.A(FE_OFN19_state_4_));
   NAND3X1 U181 (.Y(n231), 
	.C(n119), 
	.B(n49), 
	.A(n250));
   OAI21X1 U182 (.Y(n124), 
	.C(n231), 
	.B(n120), 
	.A(n121));
   INVX2 U183 (.Y(n165), 
	.A(edge_detect));
   NAND2X1 U184 (.Y(n122), 
	.B(n16), 
	.A(n45));
   NAND3X1 U185 (.Y(n302), 
	.C(n73), 
	.B(n78), 
	.A(n67));
   OAI21X1 U186 (.Y(n123), 
	.C(n302), 
	.B(n122), 
	.A(n165));
   NOR2X1 U187 (.Y(n125), 
	.B(n124), 
	.A(n123));
   NAND3X1 U188 (.Y(clearCounter), 
	.C(n125), 
	.B(n159), 
	.A(n126));
   NAND2X1 U189 (.Y(n181), 
	.B(n47), 
	.A(FE_OFN19_state_4_));
   NAND2X1 U190 (.Y(n130), 
	.B(n83), 
	.A(state[2]));
   NOR2X1 U191 (.Y(n129), 
	.B(n39), 
	.A(n50));
   NAND3X1 U192 (.Y(n359), 
	.C(n68), 
	.B(n129), 
	.A(n78));
   OAI21X1 U193 (.Y(n388), 
	.C(n359), 
	.B(n130), 
	.A(n181));
   INVX2 U194 (.Y(n312), 
	.A(counter[8]));
   NOR2X1 U195 (.Y(n131), 
	.B(counter[5]), 
	.A(counter[6]));
   NAND3X1 U196 (.Y(n132), 
	.C(n131), 
	.B(n312), 
	.A(n313));
   NOR2X1 U197 (.Y(n138), 
	.B(n132), 
	.A(n60));
   NOR2X1 U198 (.Y(n137), 
	.B(counter[4]), 
	.A(count_out[3]));
   INVX2 U201 (.Y(n201), 
	.A(counter[15]));
   INVX2 U202 (.Y(n200), 
	.A(counter[14]));
   NAND3X1 U203 (.Y(n134), 
	.C(n200), 
	.B(n310), 
	.A(n201));
   NOR2X1 U204 (.Y(n136), 
	.B(n134), 
	.A(n108));
   NAND3X1 U205 (.Y(n139), 
	.C(n136), 
	.B(n138), 
	.A(n137));
   INVX2 U206 (.Y(n323), 
	.A(n139));
   NAND2X1 U207 (.Y(n173), 
	.B(n56), 
	.A(n73));
   INVX2 U208 (.Y(SDCS), 
	.A(n302));
   AOI21X1 U209 (.Y(n140), 
	.C(SDCS), 
	.B(roll), 
	.A(n38));
   OAI21X1 U210 (.Y(clear), 
	.C(n140), 
	.B(n323), 
	.A(n173));
   NAND2X1 U211 (.Y(n369), 
	.B(n73), 
	.A(n141));
   NAND2X1 U212 (.Y(n156), 
	.B(n369), 
	.A(n231));
   NAND2X1 U214 (.Y(n232), 
	.B(n250), 
	.A(n172));
   INVX2 U216 (.Y(\cmd_out[1] ), 
	.A(n232));
   NAND3X1 U217 (.Y(n142), 
	.C(n167), 
	.B(n78), 
	.A(n49));
   INVX2 U218 (.Y(n162), 
	.A(n142));
   NAND2X1 U219 (.Y(n289), 
	.B(n180), 
	.A(n162));
   NAND2X1 U220 (.Y(n342), 
	.B(n56), 
	.A(n13));
   NAND3X1 U221 (.Y(n394), 
	.C(n143), 
	.B(n289), 
	.A(n232));
   NAND2X1 U222 (.Y(n374), 
	.B(n73), 
	.A(n172));
   NAND2X1 U223 (.Y(n377), 
	.B(n250), 
	.A(n31));
   NAND2X1 U224 (.Y(SPI_select[0]), 
	.B(n377), 
	.A(n374));
   NAND2X1 U227 (.Y(n154), 
	.B(n13), 
	.A(n14));
   INVX2 U228 (.Y(n149), 
	.A(n154));
   NAND2X1 U229 (.Y(n335), 
	.B(n31), 
	.A(n13));
   OAI21X1 U230 (.Y(n148), 
	.C(n335), 
	.B(n146), 
	.A(n147));
   NAND2X1 U233 (.Y(n288), 
	.B(n59), 
	.A(n152));
   NAND2X1 U234 (.Y(n322), 
	.B(n162), 
	.A(n13));
   NAND2X1 U235 (.Y(r_enable_o), 
	.B(n322), 
	.A(n288));
   NAND3X1 U236 (.Y(n290), 
	.C(n172), 
	.B(n73), 
	.A(n83));
   INVX2 U237 (.Y(r_enable), 
	.A(n290));
   NAND2X1 U238 (.Y(n153), 
	.B(n16), 
	.A(n83));
   OAI21X1 U239 (.Y(w_enable), 
	.C(n359), 
	.B(n153), 
	.A(n181));
   NAND2X1 U241 (.Y(n227), 
	.B(n289), 
	.A(n335));
   NAND3X1 U245 (.Y(sd_done), 
	.C(n167), 
	.B(n180), 
	.A(n16));
   NAND2X1 U247 (.Y(n372), 
	.B(n172), 
	.A(n13));
   OAI21X1 U248 (.Y(n164), 
	.C(n372), 
	.B(n163), 
	.A(n169));
   INVX2 U249 (.Y(n301), 
	.A(n164));
   NAND2X1 U250 (.Y(n244), 
	.B(n377), 
	.A(n301));
   NOR2X1 U251 (.Y(clear_byte), 
	.B(n1), 
	.A(n165));
   NAND2X1 U252 (.Y(n341), 
	.B(n250), 
	.A(n14));
   NAND3X1 U253 (.Y(n280), 
	.C(n167), 
	.B(n13), 
	.A(n16));
   NAND3X1 U254 (.Y(n179), 
	.C(n319), 
	.B(n280), 
	.A(n341));
   NAND2X1 U255 (.Y(n182), 
	.B(n250), 
	.A(FE_OFN19_state_4_));
   OAI21X1 U256 (.Y(n170), 
	.C(n231), 
	.B(n182), 
	.A(n169));
   INVX2 U257 (.Y(n382), 
	.A(n170));
   INVX2 U258 (.Y(n325), 
	.A(n171));
   NAND2X1 U259 (.Y(n228), 
	.B(n180), 
	.A(n172));
   INVX2 U260 (.Y(n324), 
	.A(n173));
   NOR2X1 U261 (.Y(n174), 
	.B(sd_err), 
	.A(n324));
   NAND3X1 U262 (.Y(n176), 
	.C(n174), 
	.B(n228), 
	.A(sd_done));
   INVX2 U263 (.Y(n363), 
	.A(n176));
   NAND3X1 U264 (.Y(n186), 
	.C(n363), 
	.B(n301), 
	.A(n325));
   NAND2X1 U265 (.Y(n208), 
	.B(n250), 
	.A(n56));
   NAND3X1 U266 (.Y(n178), 
	.C(n208), 
	.B(n177), 
	.A(n382));
   NOR2X1 U267 (.Y(n76), 
	.B(n178), 
	.A(n179));
   NAND2X1 U268 (.Y(n229), 
	.B(n56), 
	.A(n180));
   INVX2 U269 (.Y(n189), 
	.A(SPI_select[0]));
   INVX2 U270 (.Y(n183), 
	.A(n182));
   NOR2X1 U271 (.Y(n184), 
	.B(n183), 
	.A(n351));
   NAND3X1 U272 (.Y(n185), 
	.C(n53), 
	.B(n280), 
	.A(n184));
   NOR2X1 U273 (.Y(n188), 
	.B(n185), 
	.A(r_enable_o));
   INVX2 U274 (.Y(n284), 
	.A(n229));
   NOR2X1 U276 (.Y(n187), 
	.B(n186), 
	.A(n284));
   NAND3X1 U277 (.Y(n266), 
	.C(n12), 
	.B(n187), 
	.A(n188));
   NAND3X1 U278 (.Y(n193), 
	.C(n35), 
	.B(n189), 
	.A(n229));
   INVX2 U279 (.Y(n190), 
	.A(r_enable_o));
   NAND3X1 U280 (.Y(n192), 
	.C(n190), 
	.B(n191), 
	.A(n53));
   NOR2X1 U281 (.Y(n77), 
	.B(n192), 
	.A(n193));
   NOR2X1 U282 (.Y(n194), 
	.B(counter[9]), 
	.A(counter[8]));
   NAND3X1 U283 (.Y(n207), 
	.C(n194), 
	.B(n313), 
	.A(n195));
   NAND3X1 U284 (.Y(n203), 
	.C(n196), 
	.B(n197), 
	.A(n198));
   NAND3X1 U285 (.Y(n202), 
	.C(n199), 
	.B(n200), 
	.A(n201));
   NOR2X1 U286 (.Y(n204), 
	.B(counter[4]), 
	.A(counter[5]));
   NAND3X1 U287 (.Y(n206), 
	.C(n29), 
	.B(n205), 
	.A(n204));
   OR2X1 U288 (.Y(n223), 
	.B(n206), 
	.A(n207));
   INVX2 U290 (.Y(n356), 
	.A(n208));
   NAND3X1 U299 (.Y(n217), 
	.C(cmd_check[2]), 
	.B(cmd_check[4]), 
	.A(cmd_check[3]));
   NAND3X1 U300 (.Y(n216), 
	.C(cmd_check[5]), 
	.B(cmd_check[7]), 
	.A(cmd_check[6]));
   OR2X1 U301 (.Y(n345), 
	.B(n216), 
	.A(n217));
   INVX2 U302 (.Y(n219), 
	.A(n345));
   NAND2X1 U303 (.Y(n346), 
	.B(cmd_check[1]), 
	.A(cmd_check[0]));
   INVX2 U304 (.Y(n281), 
	.A(n346));
   NOR2X1 U305 (.Y(n218), 
	.B(n228), 
	.A(n281));
   NAND3X1 U306 (.Y(n220), 
	.C(n218), 
	.B(n83), 
	.A(n219));
   INVX2 U307 (.Y(N365), 
	.A(n220));
   INVX2 U308 (.Y(n221), 
	.A(cmd_check[0]));
   NOR2X1 U309 (.Y(N222), 
	.B(n221), 
	.A(cmd_check[1]));
   NAND2X1 U310 (.Y(n279), 
	.B(n221), 
	.A(cmd_check[1]));
   INVX2 U311 (.Y(n392), 
	.A(n279));
   NOR2X1 U312 (.Y(n222), 
	.B(n223), 
	.A(count_out[1]));
   NAND3X1 U313 (.Y(n343), 
	.C(n222), 
	.B(count_out[2]), 
	.A(count_out[0]));
   INVX2 U314 (.Y(n267), 
	.A(n343));
   INVX2 U315 (.Y(n309), 
	.A(count_out[2]));
   NOR2X1 U316 (.Y(n225), 
	.B(n223), 
	.A(n309));
   NOR2X1 U317 (.Y(n224), 
	.B(count_out[0]), 
	.A(count_out[1]));
   NAND3X1 U318 (.Y(n226), 
	.C(n224), 
	.B(n356), 
	.A(n225));
   INVX2 U319 (.Y(N371), 
	.A(n226));
   NOR2X1 U321 (.Y(n236), 
	.B(n26), 
	.A(n2));
   NAND3X1 U322 (.Y(n243), 
	.C(n233), 
	.B(n369), 
	.A(n232));
   NAND2X1 U323 (.Y(n234), 
	.B(n83), 
	.A(n233));
   NAND2X1 U324 (.Y(n235), 
	.B(n234), 
	.A(n243));
   NAND2X1 U325 (.Y(n240), 
	.B(n236), 
	.A(n235));
   INVX2 U326 (.Y(n237), 
	.A(n243));
   NAND3X1 U327 (.Y(n239), 
	.C(n238), 
	.B(n237), 
	.A(edge_detect));
   AOI21X1 U328 (.Y(n254), 
	.C(SDCS), 
	.B(n240), 
	.A(n239));
   INVX2 U329 (.Y(n276), 
	.A(sd_read));
   NOR2X1 U330 (.Y(n245), 
	.B(n243), 
	.A(n244));
   NAND2X1 U331 (.Y(n249), 
	.B(n245), 
	.A(n246));
   MUX2X1 U332 (.Y(n253), 
	.S(n26), 
	.B(n249), 
	.A(n264));
   NAND3X1 U333 (.Y(n305), 
	.C(n67), 
	.B(n78), 
	.A(n250));
   NAND2X1 U334 (.Y(n252), 
	.B(n251), 
	.A(n306));
   OAI21X1 U335 (.Y(n294), 
	.C(n252), 
	.B(n253), 
	.A(n254));
   NOR2X1 U336 (.Y(n256), 
	.B(n255), 
	.A(counter[9]));
   NAND3X1 U337 (.Y(n261), 
	.C(n256), 
	.B(count_out[0]), 
	.A(n60));
   NAND3X1 U338 (.Y(n259), 
	.C(count_out[3]), 
	.B(counter[4]), 
	.A(counter[5]));
   NAND3X1 U339 (.Y(n258), 
	.C(counter[6]), 
	.B(counter[7]), 
	.A(counter[8]));
   OR2X1 U340 (.Y(n260), 
	.B(n258), 
	.A(n259));
   INVX2 U341 (.Y(n291), 
	.A(roll));
   OAI21X1 U342 (.Y(n262), 
	.C(n291), 
	.B(n260), 
	.A(n261));
   NAND2X1 U343 (.Y(n348), 
	.B(n262), 
	.A(n83));
   NAND2X1 U344 (.Y(n274), 
	.B(n16), 
	.A(n351));
   NAND2X1 U345 (.Y(n263), 
	.B(n274), 
	.A(n374));
   AOI22X1 U346 (.Y(n265), 
	.D(n263), 
	.C(n348), 
	.B(n264), 
	.A(n282));
   OAI21X1 U347 (.Y(n268), 
	.C(n32), 
	.B(n369), 
	.A(n267));
   NOR2X1 U349 (.Y(n277), 
	.B(n53), 
	.A(sd_write));
   INVX2 U350 (.Y(n275), 
	.A(n274));
   AOI22X1 U351 (.Y(n278), 
	.D(roll), 
	.C(n275), 
	.B(n276), 
	.A(n277));
   OAI21X1 U352 (.Y(n296), 
	.C(n278), 
	.B(n335), 
	.A(n343));
   NOR2X1 U353 (.Y(n283), 
	.B(n279), 
	.A(n264));
   INVX2 U354 (.Y(n282), 
	.A(n341));
   INVX2 U355 (.Y(n344), 
	.A(n280));
   AOI22X1 U356 (.Y(n286), 
	.D(n281), 
	.C(n344), 
	.B(n282), 
	.A(n283));
   NOR2X1 U357 (.Y(n285), 
	.B(\cmd_out[1] ), 
	.A(n284));
   OAI21X1 U358 (.Y(n287), 
	.C(n285), 
	.B(n345), 
	.A(n286));
   INVX2 U359 (.Y(n381), 
	.A(n287));
   INVX2 U360 (.Y(n292), 
	.A(n288));
   OAI21X1 U361 (.Y(n299), 
	.C(n289), 
	.B(n290), 
	.A(n291));
   NOR2X1 U362 (.Y(n293), 
	.B(n299), 
	.A(n292));
   NAND3X1 U363 (.Y(n295), 
	.C(n293), 
	.B(n301), 
	.A(n381));
   INVX2 U364 (.Y(n383), 
	.A(n294));
   OAI21X1 U365 (.Y(n297), 
	.C(n383), 
	.B(n295), 
	.A(n296));
   OAI21X1 U366 (.Y(n270), 
	.C(n297), 
	.B(n54), 
	.A(n78));
   INVX2 U367 (.Y(n300), 
	.A(n299));
   OAI21X1 U368 (.Y(n327), 
	.C(n300), 
	.B(n66), 
	.A(rx_FIFO_empty));
   OAI21X1 U369 (.Y(n303), 
	.C(n301), 
	.B(n241), 
	.A(n53));
   AOI21X1 U370 (.Y(n321), 
	.C(n303), 
	.B(w_enable), 
	.A(roll));
   NAND3X1 U371 (.Y(n308), 
	.C(n304), 
	.B(n29), 
	.A(count_out[1]));
   INVX2 U372 (.Y(n306), 
	.A(n305));
   NAND3X1 U373 (.Y(n307), 
	.C(count_out[3]), 
	.B(n306), 
	.A(counter[6]));
   NOR2X1 U374 (.Y(n318), 
	.B(n307), 
	.A(n308));
   NAND3X1 U375 (.Y(n316), 
	.C(n309), 
	.B(n310), 
	.A(n311));
   NAND3X1 U376 (.Y(n315), 
	.C(n312), 
	.B(n313), 
	.A(n314));
   NOR2X1 U377 (.Y(n317), 
	.B(n315), 
	.A(n316));
   NAND2X1 U378 (.Y(n373), 
	.B(n317), 
	.A(n318));
   AND2X2 U379 (.Y(n320), 
	.B(n319), 
	.A(n373));
   NAND3X1 U380 (.Y(n360), 
	.C(n320), 
	.B(n321), 
	.A(n322));
   NAND2X1 U381 (.Y(n336), 
	.B(n323), 
	.A(n324));
   NAND2X1 U382 (.Y(n378), 
	.B(n336), 
	.A(n325));
   OAI21X1 U383 (.Y(n334), 
	.C(n383), 
	.B(n326), 
	.A(n327));
   NAND2X1 U384 (.Y(n331), 
	.B(n343), 
	.A(n328));
   NAND2X1 U385 (.Y(n332), 
	.B(n330), 
	.A(n331));
   NAND2X1 U386 (.Y(n333), 
	.B(n24), 
	.A(n332));
   NAND2X1 U387 (.Y(n269), 
	.B(n333), 
	.A(n334));
   NAND2X1 U388 (.Y(n340), 
	.B(SDCS), 
	.A(sd_read));
   INVX2 U389 (.Y(n337), 
	.A(n336));
   AOI21X1 U390 (.Y(n339), 
	.C(n337), 
	.B(n343), 
	.A(n338));
   OAI21X1 U391 (.Y(n354), 
	.C(n339), 
	.B(n340), 
	.A(sd_write));
   OAI22X1 U392 (.Y(n350), 
	.D(n341), 
	.C(n264), 
	.B(n34), 
	.A(n343));
   OAI21X1 U393 (.Y(n347), 
	.C(n344), 
	.B(n345), 
	.A(n346));
   OAI21X1 U394 (.Y(n349), 
	.C(n347), 
	.B(n348), 
	.A(n374));
   OR2X1 U395 (.Y(n361), 
	.B(n349), 
	.A(n350));
   AOI21X1 U396 (.Y(n352), 
	.C(n361), 
	.B(n49), 
	.A(n351));
   NAND3X1 U397 (.Y(n353), 
	.C(n352), 
	.B(n377), 
	.A(n66));
   OAI21X1 U398 (.Y(n355), 
	.C(n383), 
	.B(n353), 
	.A(n354));
   OAI21X1 U399 (.Y(n271), 
	.C(n355), 
	.B(n54), 
	.A(n80));
   INVX2 U400 (.Y(n358), 
	.A(rx_FIFO_empty));
   NOR2X1 U401 (.Y(n357), 
	.B(\cmd_out[1] ), 
	.A(n356));
   OAI21X1 U402 (.Y(n365), 
	.C(n357), 
	.B(n358), 
	.A(n66));
   NOR2X1 U403 (.Y(n362), 
	.B(n360), 
	.A(n361));
   NAND3X1 U404 (.Y(n364), 
	.C(n362), 
	.B(n363), 
	.A(n382));
   OAI21X1 U405 (.Y(n366), 
	.C(n383), 
	.B(n364), 
	.A(n365));
   OAI21X1 U406 (.Y(n272), 
	.C(n366), 
	.B(n50), 
	.A(n330));
   NAND2X1 U407 (.Y(n370), 
	.B(n369), 
	.A(n383));
   OAI21X1 U408 (.Y(n387), 
	.C(FE_OFN19_state_4_), 
	.B(n370), 
	.A(n371));
   OAI21X1 U409 (.Y(n375), 
	.C(n373), 
	.B(n374), 
	.A(roll));
   OR2X1 U410 (.Y(n385), 
	.B(n375), 
	.A(n376));
   NOR2X1 U411 (.Y(n380), 
	.B(n378), 
	.A(n379));
   NAND3X1 U412 (.Y(n384), 
	.C(n380), 
	.B(n381), 
	.A(n382));
   OAI21X1 U413 (.Y(n386), 
	.C(n383), 
	.B(n384), 
	.A(n385));
   NAND2X1 U414 (.Y(n273), 
	.B(n386), 
	.A(n387));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_3_DW01_dec_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_3_DW01_inc_1 (
	A, 
	SUM, 
	n110, 
	n80);
   input [11:0] A;
   output [11:0] SUM;
   input n110;
   input n80;

   // Internal wires
   wire n1;
   wire n3;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n74;

   assign n9 = A[9] ;
   assign n13 = A[8] ;
   assign n17 = A[7] ;
   assign n21 = A[6] ;
   assign n27 = A[5] ;
   assign n31 = A[4] ;
   assign n36 = A[3] ;
   assign n39 = A[2] ;
   assign n43 = A[1] ;
   assign n45 = A[0] ;

   XNOR2X1 U1 (.Y(SUM[11]), 
	.B(n110), 
	.A(n3));
   XNOR2X1 U3 (.Y(SUM[10]), 
	.B(n80), 
	.A(n7));
   NOR2X1 U4 (.Y(n3), 
	.B(n1), 
	.A(n74));
   XNOR2X1 U8 (.Y(SUM[9]), 
	.B(n10), 
	.A(n11));
   NOR2X1 U9 (.Y(n7), 
	.B(n1), 
	.A(n8));
   NAND2X1 U10 (.Y(n8), 
	.B(n13), 
	.A(n9));
   XOR2X1 U13 (.Y(SUM[8]), 
	.B(n14), 
	.A(n1));
   NOR2X1 U14 (.Y(n11), 
	.B(n1), 
	.A(n14));
   NAND2X1 U19 (.Y(n1), 
	.B(n15), 
	.A(n34));
   NOR2X1 U20 (.Y(n15), 
	.B(n24), 
	.A(n16));
   NAND2X1 U21 (.Y(n16), 
	.B(n21), 
	.A(n17));
   NOR2X1 U25 (.Y(n19), 
	.B(n33), 
	.A(n20));
   NAND2X1 U26 (.Y(n20), 
	.B(n25), 
	.A(n21));
   XNOR2X1 U29 (.Y(SUM[5]), 
	.B(n28), 
	.A(n29));
   NOR2X1 U30 (.Y(n23), 
	.B(n33), 
	.A(n24));
   NAND2X1 U33 (.Y(n24), 
	.B(n31), 
	.A(n27));
   XOR2X1 U36 (.Y(SUM[4]), 
	.B(n32), 
	.A(n33));
   NOR2X1 U37 (.Y(n29), 
	.B(n33), 
	.A(n32));
   XOR2X1 U41 (.Y(SUM[3]), 
	.B(n37), 
	.A(n38));
   NOR2X1 U43 (.Y(n34), 
	.B(n35), 
	.A(n42));
   NAND2X1 U44 (.Y(n35), 
	.B(n39), 
	.A(n36));
   NAND2X1 U48 (.Y(n38), 
	.B(n41), 
	.A(n39));
   NAND2X1 U53 (.Y(n42), 
	.B(n43), 
	.A(n45));
   INVX1 U60 (.Y(n37), 
	.A(n36));
   INVX1 U61 (.Y(n14), 
	.A(n13));
   INVX1 U62 (.Y(n10), 
	.A(n9));
   INVX1 U63 (.Y(n28), 
	.A(n27));
   XOR2X1 U64 (.Y(SUM[6]), 
	.B(n21), 
	.A(n23));
   XOR2X1 U65 (.Y(SUM[2]), 
	.B(n39), 
	.A(n41));
   OR2X1 U66 (.Y(n74), 
	.B(n8), 
	.A(n80));
   XOR2X1 U67 (.Y(SUM[1]), 
	.B(n45), 
	.A(n43));
   XOR2X1 U68 (.Y(SUM[7]), 
	.B(n17), 
	.A(n19));
   INVX2 U70 (.Y(n41), 
	.A(n42));
   INVX2 U71 (.Y(n33), 
	.A(n34));
   INVX2 U72 (.Y(n32), 
	.A(n31));
   INVX2 U73 (.Y(n25), 
	.A(n24));
   INVX2 U75 (.Y(SUM[0]), 
	.A(n45));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_3 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN6_nn_rst, 
	FE_OFN8_nn_rst, 
	nclk__L2_N3);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [11:0] rollover_val;
   output [11:0] count_out;
   output rollover_flag;
   input FE_OFN6_nn_rst;
   input FE_OFN8_nn_rst;
   input nclk__L2_N3;

   // Internal wires
   wire FE_OFN12_n25;
   wire FE_OFN11_n1;
   wire FE_UNCONNECTED_101;
   wire FE_UNCONNECTED_100;
   wire FE_UNCONNECTED_99;
   wire FE_UNCONNECTED_98;
   wire FE_UNCONNECTED_97;
   wire FE_UNCONNECTED_96;
   wire FE_UNCONNECTED_95;
   wire FE_UNCONNECTED_80;
   wire FE_UNCONNECTED_79;
   wire FE_UNCONNECTED_78;
   wire FE_UNCONNECTED_77;
   wire FE_UNCONNECTED_76;
   wire FE_UNCONNECTED_63;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n1;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n25;
   wire n26;
   wire n28;
   wire n31;
   wire n33;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;

   BUFX2 FE_OFC12_n25 (.Y(FE_OFN12_n25), 
	.A(n25));
   BUFX2 FE_OFC11_n1 (.Y(FE_OFN11_n1), 
	.A(n1));
   flex_counter_stuff_NUM_CNT_BITS12_3_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ FE_UNCONNECTED_80,
		FE_UNCONNECTED_63,
		FE_UNCONNECTED_96,
		FE_UNCONNECTED_79,
		FE_UNCONNECTED_97,
		FE_UNCONNECTED_78,
		FE_UNCONNECTED_98,
		FE_UNCONNECTED_77,
		FE_UNCONNECTED_99,
		FE_UNCONNECTED_76,
		FE_UNCONNECTED_100,
		FE_UNCONNECTED_95,
		FE_UNCONNECTED_101 }));
   flex_counter_stuff_NUM_CNT_BITS12_3_DW01_inc_1 add_35 (.A({ count_out[11],
		count_out[10],
		n2,
		count_out[8],
		n5,
		count_out[6],
		n4,
		count_out[4],
		count_out[3],
		count_out[2],
		n6,
		count_out[0] }), 
	.SUM({ N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7 }), 
	.n110(n110), 
	.n80(n80));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[1]), 
	.D(n105), 
	.CLK(clk));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(FE_OFN8_nn_rst), 
	.Q(count_out[9]), 
	.D(n97), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(FE_OFN8_nn_rst), 
	.Q(count_out[11]), 
	.D(n95), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[10]), 
	.D(n96), 
	.CLK(clk));
   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(FE_OFN8_nn_rst), 
	.Q(count_out[8]), 
	.D(n98), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[7]), 
	.D(n99), 
	.CLK(clk));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n115), 
	.D(n100), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[5]), 
	.D(n101), 
	.CLK(clk));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n116), 
	.D(n102), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n103), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(n117), 
	.D(n104), 
	.CLK(nclk__L2_N3));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(n118), 
	.D(n106), 
	.CLK(nclk__L2_N3));
   NAND2X1 U3 (.Y(n1), 
	.B(1'b1), 
	.A(n35));
   BUFX2 U4 (.Y(n2), 
	.A(count_out[9]));
   BUFX2 U5 (.Y(n4), 
	.A(count_out[5]));
   INVX2 U6 (.Y(n85), 
	.A(count_out[7]));
   INVX2 U7 (.Y(n113), 
	.A(count_out[1]));
   INVX1 U9 (.Y(n5), 
	.A(n85));
   INVX2 U10 (.Y(n6), 
	.A(n113));
   NOR3X1 U29 (.Y(n25), 
	.C(n28), 
	.B(1'b0), 
	.A(n26));
   INVX2 U30 (.Y(n26), 
	.A(n78));
   AND2X2 U32 (.Y(n28), 
	.B(1'b1), 
	.A(n35));
   INVX2 U33 (.Y(count_out[4]), 
	.A(n31));
   BUFX2 U34 (.Y(count_out[6]), 
	.A(n115));
   BUFX2 U35 (.Y(count_out[2]), 
	.A(n117));
   INVX2 U36 (.Y(n31), 
	.A(n116));
   INVX2 U37 (.Y(n33), 
	.A(n118));
   INVX2 U38 (.Y(count_out[0]), 
	.A(n33));
   INVX2 U39 (.Y(n114), 
	.A(count_out[9]));
   INVX2 U40 (.Y(n35), 
	.A(count_enable));
   XOR2X1 U42 (.Y(n38), 
	.B(rollover_val[7]), 
	.A(n85));
   INVX2 U43 (.Y(n83), 
	.A(count_out[8]));
   XOR2X1 U44 (.Y(n37), 
	.B(rollover_val[8]), 
	.A(n83));
   INVX2 U45 (.Y(n87), 
	.A(count_out[6]));
   XOR2X1 U46 (.Y(n36), 
	.B(rollover_val[6]), 
	.A(n87));
   NAND3X1 U47 (.Y(n43), 
	.C(n36), 
	.B(n37), 
	.A(n38));
   INVX2 U48 (.Y(n80), 
	.A(count_out[10]));
   XOR2X1 U52 (.Y(n41), 
	.B(rollover_val[10]), 
	.A(n80));
   INVX2 U53 (.Y(n110), 
	.A(count_out[11]));
   XOR2X1 U54 (.Y(n40), 
	.B(rollover_val[11]), 
	.A(n110));
   XOR2X1 U55 (.Y(n39), 
	.B(rollover_val[9]), 
	.A(n114));
   NAND3X1 U56 (.Y(n42), 
	.C(n39), 
	.B(n40), 
	.A(n41));
   NOR2X1 U57 (.Y(n53), 
	.B(n42), 
	.A(n43));
   XOR2X1 U58 (.Y(n46), 
	.B(rollover_val[1]), 
	.A(n113));
   INVX2 U59 (.Y(n107), 
	.A(count_out[2]));
   XOR2X1 U60 (.Y(n45), 
	.B(rollover_val[2]), 
	.A(n107));
   INVX2 U61 (.Y(n112), 
	.A(count_out[0]));
   XOR2X1 U62 (.Y(n44), 
	.B(rollover_val[0]), 
	.A(n112));
   NAND3X1 U63 (.Y(n51), 
	.C(n44), 
	.B(n45), 
	.A(n46));
   INVX2 U64 (.Y(n91), 
	.A(count_out[4]));
   XOR2X1 U65 (.Y(n49), 
	.B(rollover_val[4]), 
	.A(n91));
   INVX2 U66 (.Y(n89), 
	.A(count_out[5]));
   XOR2X1 U67 (.Y(n48), 
	.B(rollover_val[5]), 
	.A(n89));
   INVX2 U68 (.Y(n93), 
	.A(count_out[3]));
   XOR2X1 U69 (.Y(n47), 
	.B(rollover_val[3]), 
	.A(n93));
   NAND3X1 U70 (.Y(n50), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   NOR2X1 U71 (.Y(n52), 
	.B(n50), 
	.A(n51));
   NAND2X1 U72 (.Y(n78), 
	.B(n52), 
	.A(n53));
   NAND2X1 U94 (.Y(n79), 
	.B(N17), 
	.A(FE_OFN12_n25));
   OAI21X1 U95 (.Y(n96), 
	.C(n79), 
	.B(n80), 
	.A(FE_OFN11_n1));
   NAND2X1 U96 (.Y(n81), 
	.B(FE_OFN12_n25), 
	.A(N16));
   OAI21X1 U97 (.Y(n97), 
	.C(n81), 
	.B(FE_OFN11_n1), 
	.A(n114));
   NAND2X1 U98 (.Y(n82), 
	.B(N15), 
	.A(FE_OFN12_n25));
   OAI21X1 U99 (.Y(n98), 
	.C(n82), 
	.B(n83), 
	.A(FE_OFN11_n1));
   NAND2X1 U100 (.Y(n84), 
	.B(N14), 
	.A(FE_OFN12_n25));
   OAI21X1 U101 (.Y(n99), 
	.C(n84), 
	.B(n85), 
	.A(FE_OFN11_n1));
   NAND2X1 U102 (.Y(n86), 
	.B(FE_OFN12_n25), 
	.A(N13));
   OAI21X1 U103 (.Y(n100), 
	.C(n86), 
	.B(n87), 
	.A(FE_OFN11_n1));
   NAND2X1 U104 (.Y(n88), 
	.B(FE_OFN12_n25), 
	.A(N12));
   OAI21X1 U105 (.Y(n101), 
	.C(n88), 
	.B(n89), 
	.A(FE_OFN11_n1));
   NAND2X1 U106 (.Y(n90), 
	.B(FE_OFN12_n25), 
	.A(N11));
   OAI21X1 U107 (.Y(n102), 
	.C(n90), 
	.B(n91), 
	.A(FE_OFN11_n1));
   NAND2X1 U108 (.Y(n92), 
	.B(FE_OFN12_n25), 
	.A(N10));
   OAI21X1 U109 (.Y(n103), 
	.C(n92), 
	.B(n93), 
	.A(FE_OFN11_n1));
   NAND2X1 U110 (.Y(n94), 
	.B(FE_OFN12_n25), 
	.A(N9));
   OAI21X1 U111 (.Y(n104), 
	.C(n94), 
	.B(n107), 
	.A(FE_OFN11_n1));
   NAND2X1 U112 (.Y(n108), 
	.B(N8), 
	.A(FE_OFN12_n25));
   OAI21X1 U113 (.Y(n105), 
	.C(n108), 
	.B(FE_OFN11_n1), 
	.A(n113));
   NAND2X1 U114 (.Y(n109), 
	.B(N18), 
	.A(FE_OFN12_n25));
   OAI21X1 U115 (.Y(n95), 
	.C(n109), 
	.B(n110), 
	.A(FE_OFN11_n1));
   NAND2X1 U116 (.Y(n111), 
	.B(FE_OFN12_n25), 
	.A(N7));
   OAI21X1 U117 (.Y(n106), 
	.C(n111), 
	.B(n112), 
	.A(FE_OFN11_n1));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_2_DW01_dec_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_2_DW01_inc_1 (
	A, 
	SUM, 
	n77);
   input [11:0] A;
   output [11:0] SUM;
   input n77;

   // Internal wires
   wire n1;
   wire n3;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n74;

   assign n9 = A[9] ;
   assign n13 = A[8] ;
   assign n17 = A[7] ;
   assign n21 = A[6] ;
   assign n27 = A[5] ;
   assign n31 = A[4] ;
   assign n36 = A[3] ;
   assign n39 = A[2] ;
   assign n43 = A[1] ;
   assign n45 = A[0] ;

   XNOR2X1 U3 (.Y(SUM[10]), 
	.B(n77), 
	.A(n7));
   NOR2X1 U4 (.Y(n3), 
	.B(n1), 
	.A(n74));
   NOR2X1 U9 (.Y(n7), 
	.B(n1), 
	.A(n8));
   NAND2X1 U10 (.Y(n8), 
	.B(n13), 
	.A(n9));
   XOR2X1 U13 (.Y(SUM[8]), 
	.B(n14), 
	.A(n1));
   NOR2X1 U14 (.Y(n11), 
	.B(n1), 
	.A(n14));
   NAND2X1 U19 (.Y(n1), 
	.B(n15), 
	.A(n34));
   NOR2X1 U20 (.Y(n15), 
	.B(n24), 
	.A(n16));
   NAND2X1 U21 (.Y(n16), 
	.B(n21), 
	.A(n17));
   NOR2X1 U25 (.Y(n19), 
	.B(n33), 
	.A(n20));
   NAND2X1 U26 (.Y(n20), 
	.B(n25), 
	.A(n21));
   NOR2X1 U30 (.Y(n23), 
	.B(n33), 
	.A(n24));
   NAND2X1 U33 (.Y(n24), 
	.B(n31), 
	.A(n27));
   XOR2X1 U36 (.Y(SUM[4]), 
	.B(n32), 
	.A(n33));
   NOR2X1 U37 (.Y(n29), 
	.B(n33), 
	.A(n32));
   XOR2X1 U41 (.Y(SUM[3]), 
	.B(n37), 
	.A(n38));
   NOR2X1 U43 (.Y(n34), 
	.B(n35), 
	.A(n42));
   NAND2X1 U44 (.Y(n35), 
	.B(n39), 
	.A(n36));
   NAND2X1 U48 (.Y(n38), 
	.B(n41), 
	.A(n39));
   NAND2X1 U53 (.Y(n42), 
	.B(n43), 
	.A(n45));
   INVX1 U61 (.Y(n37), 
	.A(n36));
   XOR2X1 U62 (.Y(SUM[6]), 
	.B(n21), 
	.A(n23));
   XOR2X1 U63 (.Y(SUM[2]), 
	.B(n39), 
	.A(n41));
   XOR2X1 U64 (.Y(SUM[9]), 
	.B(n9), 
	.A(n11));
   XOR2X1 U65 (.Y(SUM[5]), 
	.B(n27), 
	.A(n29));
   OR2X1 U66 (.Y(n74), 
	.B(n8), 
	.A(n77));
   XOR2X1 U67 (.Y(SUM[1]), 
	.B(n45), 
	.A(n43));
   XOR2X1 U68 (.Y(SUM[7]), 
	.B(n17), 
	.A(n19));
   XOR2X1 U69 (.Y(SUM[11]), 
	.B(A[11]), 
	.A(n3));
   INVX2 U70 (.Y(n41), 
	.A(n42));
   INVX2 U71 (.Y(n33), 
	.A(n34));
   INVX2 U72 (.Y(n32), 
	.A(n31));
   INVX2 U73 (.Y(n25), 
	.A(n24));
   INVX2 U74 (.Y(n14), 
	.A(n13));
   INVX2 U75 (.Y(SUM[0]), 
	.A(n45));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_2 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN6_nn_rst);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [11:0] rollover_val;
   output [11:0] count_out;
   output rollover_flag;
   input FE_OFN6_nn_rst;

   // Internal wires
   wire FE_UNCONNECTED_100;
   wire FE_UNCONNECTED_95;
   wire FE_UNCONNECTED_94;
   wire FE_UNCONNECTED_93;
   wire FE_UNCONNECTED_92;
   wire FE_UNCONNECTED_91;
   wire FE_UNCONNECTED_90;
   wire FE_UNCONNECTED_76;
   wire FE_UNCONNECTED_75;
   wire FE_UNCONNECTED_74;
   wire FE_UNCONNECTED_73;
   wire FE_UNCONNECTED_72;
   wire FE_UNCONNECTED_63;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire n1;
   wire n2;
   wire n5;
   wire n7;
   wire n13;
   wire n27;
   wire n29;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(n148), 
	.D(n113), 
	.CLK(clk));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n141), 
	.D(n124), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[1]), 
	.D(n114), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(n147), 
	.D(n115), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n116), 
	.CLK(clk));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n146), 
	.D(n117), 
	.CLK(clk));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n145), 
	.D(n118), 
	.CLK(clk));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n144), 
	.D(n119), 
	.CLK(clk));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[7]), 
	.D(n120), 
	.CLK(clk));
   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n143), 
	.D(n121), 
	.CLK(clk));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(n_rst), 
	.Q(n142), 
	.D(n122), 
	.CLK(clk));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[10]), 
	.D(n123), 
	.CLK(clk));
   flex_counter_stuff_NUM_CNT_BITS12_2_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ FE_UNCONNECTED_76,
		FE_UNCONNECTED_63,
		FE_UNCONNECTED_91,
		FE_UNCONNECTED_75,
		FE_UNCONNECTED_92,
		FE_UNCONNECTED_74,
		FE_UNCONNECTED_93,
		FE_UNCONNECTED_73,
		FE_UNCONNECTED_94,
		FE_UNCONNECTED_72,
		FE_UNCONNECTED_95,
		FE_UNCONNECTED_90,
		FE_UNCONNECTED_100 }));
   flex_counter_stuff_NUM_CNT_BITS12_2_DW01_inc_1 add_35 (.A({ count_out[11],
		count_out[10],
		count_out[9],
		count_out[8],
		n2,
		count_out[6],
		count_out[5],
		count_out[4],
		count_out[3],
		count_out[2],
		n1,
		count_out[0] }), 
	.SUM({ N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7 }), 
	.n77(n77));
   INVX2 U3 (.Y(n29), 
	.A(n7));
   INVX2 U17 (.Y(n1), 
	.A(n111));
   INVX2 U18 (.Y(n111), 
	.A(count_out[1]));
   INVX1 U19 (.Y(n90), 
	.A(count_out[3]));
   BUFX2 U20 (.Y(n2), 
	.A(count_out[7]));
   INVX1 U21 (.Y(n82), 
	.A(count_out[7]));
   INVX2 U23 (.Y(n5), 
	.A(n141));
   INVX2 U24 (.Y(count_out[11]), 
	.A(n5));
   NOR2X1 U27 (.Y(n7), 
	.B(clear), 
	.A(count_enable));
   INVX2 U28 (.Y(count_out[0]), 
	.A(n27));
   INVX2 U29 (.Y(count_out[4]), 
	.A(n13));
   BUFX2 U30 (.Y(count_out[8]), 
	.A(n143));
   BUFX2 U31 (.Y(count_out[9]), 
	.A(n142));
   BUFX2 U32 (.Y(count_out[5]), 
	.A(n145));
   BUFX2 U33 (.Y(count_out[6]), 
	.A(n144));
   BUFX2 U34 (.Y(count_out[2]), 
	.A(n147));
   INVX2 U35 (.Y(n13), 
	.A(n146));
   INVX2 U36 (.Y(n27), 
	.A(n148));
   INVX2 U37 (.Y(n108), 
	.A(n75));
   INVX2 U38 (.Y(n112), 
	.A(count_out[9]));
   XOR2X1 U40 (.Y(n34), 
	.B(rollover_val[7]), 
	.A(n82));
   INVX2 U41 (.Y(n80), 
	.A(count_out[8]));
   XOR2X1 U42 (.Y(n33), 
	.B(rollover_val[8]), 
	.A(n80));
   INVX2 U43 (.Y(n84), 
	.A(count_out[6]));
   XOR2X1 U44 (.Y(n32), 
	.B(rollover_val[6]), 
	.A(n84));
   NAND3X1 U45 (.Y(n39), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   INVX2 U46 (.Y(n77), 
	.A(count_out[10]));
   XOR2X1 U47 (.Y(n37), 
	.B(rollover_val[10]), 
	.A(n77));
   INVX2 U48 (.Y(n107), 
	.A(count_out[11]));
   XOR2X1 U52 (.Y(n36), 
	.B(rollover_val[11]), 
	.A(n107));
   XOR2X1 U53 (.Y(n35), 
	.B(rollover_val[9]), 
	.A(n112));
   NAND3X1 U54 (.Y(n38), 
	.C(n35), 
	.B(n36), 
	.A(n37));
   NOR2X1 U55 (.Y(n49), 
	.B(n38), 
	.A(n39));
   XOR2X1 U56 (.Y(n42), 
	.B(rollover_val[1]), 
	.A(n111));
   INVX2 U57 (.Y(n92), 
	.A(count_out[2]));
   XOR2X1 U58 (.Y(n41), 
	.B(rollover_val[2]), 
	.A(n92));
   INVX2 U59 (.Y(n110), 
	.A(count_out[0]));
   XOR2X1 U60 (.Y(n40), 
	.B(rollover_val[0]), 
	.A(n110));
   NAND3X1 U61 (.Y(n47), 
	.C(n40), 
	.B(n41), 
	.A(n42));
   INVX2 U62 (.Y(n88), 
	.A(count_out[4]));
   XOR2X1 U63 (.Y(n45), 
	.B(rollover_val[4]), 
	.A(n88));
   INVX2 U64 (.Y(n86), 
	.A(count_out[5]));
   XOR2X1 U65 (.Y(n44), 
	.B(rollover_val[5]), 
	.A(n86));
   XOR2X1 U66 (.Y(n43), 
	.B(rollover_val[3]), 
	.A(n90));
   NAND3X1 U67 (.Y(n46), 
	.C(n43), 
	.B(n44), 
	.A(n45));
   NOR2X1 U68 (.Y(n48), 
	.B(n46), 
	.A(n47));
   NAND2X1 U69 (.Y(n74), 
	.B(n48), 
	.A(n49));
   NAND3X1 U91 (.Y(n75), 
	.C(n29), 
	.B(1'b1), 
	.A(n74));
   NAND2X1 U92 (.Y(n76), 
	.B(n108), 
	.A(N17));
   OAI21X1 U93 (.Y(n123), 
	.C(n76), 
	.B(n77), 
	.A(n29));
   NAND2X1 U94 (.Y(n78), 
	.B(n108), 
	.A(N16));
   OAI21X1 U95 (.Y(n122), 
	.C(n78), 
	.B(n29), 
	.A(n112));
   NAND2X1 U96 (.Y(n79), 
	.B(n108), 
	.A(N15));
   OAI21X1 U97 (.Y(n121), 
	.C(n79), 
	.B(n80), 
	.A(n29));
   NAND2X1 U98 (.Y(n81), 
	.B(n108), 
	.A(N14));
   OAI21X1 U99 (.Y(n120), 
	.C(n81), 
	.B(n82), 
	.A(n29));
   NAND2X1 U100 (.Y(n83), 
	.B(n108), 
	.A(N13));
   OAI21X1 U101 (.Y(n119), 
	.C(n83), 
	.B(n84), 
	.A(n29));
   NAND2X1 U102 (.Y(n85), 
	.B(n108), 
	.A(N12));
   OAI21X1 U103 (.Y(n118), 
	.C(n85), 
	.B(n86), 
	.A(n29));
   NAND2X1 U104 (.Y(n87), 
	.B(n108), 
	.A(N11));
   OAI21X1 U105 (.Y(n117), 
	.C(n87), 
	.B(n88), 
	.A(n29));
   NAND2X1 U106 (.Y(n89), 
	.B(n108), 
	.A(N10));
   OAI21X1 U107 (.Y(n116), 
	.C(n89), 
	.B(n90), 
	.A(n29));
   NAND2X1 U108 (.Y(n91), 
	.B(n108), 
	.A(N9));
   OAI21X1 U109 (.Y(n115), 
	.C(n91), 
	.B(n92), 
	.A(n29));
   NAND2X1 U110 (.Y(n93), 
	.B(n108), 
	.A(N8));
   OAI21X1 U111 (.Y(n114), 
	.C(n93), 
	.B(n29), 
	.A(n111));
   NAND2X1 U112 (.Y(n94), 
	.B(n108), 
	.A(N18));
   OAI21X1 U113 (.Y(n124), 
	.C(n94), 
	.B(n107), 
	.A(n29));
   NAND2X1 U114 (.Y(n109), 
	.B(n108), 
	.A(N7));
   OAI21X1 U115 (.Y(n113), 
	.C(n109), 
	.B(n110), 
	.A(n29));
endmodule

module myfifo_1_DW01_inc_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;

   // Internal wires
   wire [12:2] carry;
endmodule

module myfifo_1 (
	clk, 
	n_rst, 
	r_enable, 
	w_enable, 
	clear, 
	data_i, 
	sram_o, 
	sram_i, 
	data_o, 
	addr, 
	full, 
	empty, 
	FE_OFN6_nn_rst, 
	FE_OFN8_nn_rst, 
	nclk__L2_N3);
   input clk;
   input n_rst;
   input r_enable;
   input w_enable;
   input clear;
   input [7:0] data_i;
   input [7:0] sram_o;
   output [7:0] sram_i;
   output [7:0] data_o;
   output [11:0] addr;
   output full;
   output empty;
   input FE_OFN6_nn_rst;
   input FE_OFN8_nn_rst;
   input nclk__L2_N3;

   // Internal wires
   wire FE_UNCONNECTED_125;
   wire FE_UNCONNECTED_124;
   wire FE_UNCONNECTED_123;
   wire FE_UNCONNECTED_122;
   wire FE_UNCONNECTED_121;
   wire FE_UNCONNECTED_120;
   wire FE_UNCONNECTED_119;
   wire FE_UNCONNECTED_118;
   wire FE_UNCONNECTED_117;
   wire FE_UNCONNECTED_116;
   wire FE_UNCONNECTED_115;
   wire FE_UNCONNECTED_114;
   wire FE_UNCONNECTED_113;
   wire n7;
   wire n8;
   wire n13;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire [11:0] writeptr;
   wire [11:0] readptr;

   assign sram_i[7] = data_i[7] ;
   assign sram_i[6] = data_i[6] ;
   assign sram_i[5] = data_i[5] ;
   assign sram_i[4] = data_i[4] ;
   assign sram_i[3] = data_i[3] ;
   assign sram_i[2] = data_i[2] ;
   assign sram_i[1] = data_i[1] ;
   assign sram_i[0] = data_i[0] ;
   assign data_o[7] = sram_o[7] ;
   assign data_o[6] = sram_o[6] ;
   assign data_o[5] = sram_o[5] ;
   assign data_o[4] = sram_o[4] ;
   assign data_o[3] = sram_o[3] ;
   assign data_o[2] = sram_o[2] ;
   assign data_o[1] = sram_o[1] ;
   assign data_o[0] = sram_o[0] ;

   flex_counter_stuff_NUM_CNT_BITS12_3 ReadCnt (.clk(clk), 
	.n_rst(n_rst), 
	.clear(clear), 
	.count_enable(r_enable), 
	.rollover_val({ 1'b0,
		1'b0,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1 }), 
	.count_out(readptr), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN8_nn_rst(FE_OFN8_nn_rst), 
	.nclk__L2_N3(nclk__L2_N3));
   flex_counter_stuff_NUM_CNT_BITS12_2 WriteCnt (.clk(clk), 
	.n_rst(n_rst), 
	.clear(clear), 
	.count_enable(w_enable), 
	.rollover_val({ 1'b0,
		1'b0,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1 }), 
	.count_out(writeptr), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst));
   myfifo_1_DW01_inc_0 add_34 (.A({ 1'b0,
		readptr[11],
		readptr[10],
		readptr[9],
		n8,
		readptr[7],
		readptr[6],
		readptr[5],
		readptr[4],
		n7,
		readptr[2],
		readptr[1],
		readptr[0] }), 
	.SUM({ FE_UNCONNECTED_122,
		FE_UNCONNECTED_117,
		FE_UNCONNECTED_115,
		FE_UNCONNECTED_113,
		FE_UNCONNECTED_114,
		FE_UNCONNECTED_118,
		FE_UNCONNECTED_116,
		FE_UNCONNECTED_119,
		FE_UNCONNECTED_120,
		FE_UNCONNECTED_121,
		FE_UNCONNECTED_123,
		FE_UNCONNECTED_124,
		FE_UNCONNECTED_125 }));
   XNOR2X1 U6 (.Y(n50), 
	.B(writeptr[7]), 
	.A(readptr[7]));
   BUFX2 U7 (.Y(n8), 
	.A(readptr[8]));
   BUFX2 U13 (.Y(n7), 
	.A(readptr[3]));
   BUFX2 U18 (.Y(n13), 
	.A(writeptr[3]));
   XNOR2X1 U43 (.Y(n22), 
	.B(writeptr[5]), 
	.A(readptr[5]));
   XNOR2X1 U44 (.Y(n21), 
	.B(n13), 
	.A(n7));
   XNOR2X1 U45 (.Y(n20), 
	.B(writeptr[4]), 
	.A(readptr[4]));
   NAND3X1 U46 (.Y(n46), 
	.C(n21), 
	.B(n20), 
	.A(n22));
   XNOR2X1 U47 (.Y(n44), 
	.B(writeptr[2]), 
	.A(readptr[2]));
   XNOR2X1 U48 (.Y(n24), 
	.B(writeptr[0]), 
	.A(readptr[0]));
   XNOR2X1 U49 (.Y(n23), 
	.B(writeptr[1]), 
	.A(readptr[1]));
   NAND3X1 U50 (.Y(n45), 
	.C(n23), 
	.B(n24), 
	.A(n44));
   NOR2X1 U51 (.Y(n56), 
	.B(n45), 
	.A(n46));
   XNOR2X1 U52 (.Y(n49), 
	.B(writeptr[11]), 
	.A(readptr[11]));
   XNOR2X1 U53 (.Y(n48), 
	.B(writeptr[9]), 
	.A(readptr[9]));
   XNOR2X1 U54 (.Y(n47), 
	.B(writeptr[10]), 
	.A(readptr[10]));
   NAND3X1 U55 (.Y(n54), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   XNOR2X1 U56 (.Y(n52), 
	.B(writeptr[8]), 
	.A(n8));
   XNOR2X1 U69 (.Y(n51), 
	.B(writeptr[6]), 
	.A(readptr[6]));
   NAND3X1 U70 (.Y(n53), 
	.C(n52), 
	.B(n51), 
	.A(n50));
   NOR2X1 U71 (.Y(n55), 
	.B(n53), 
	.A(n54));
   AND2X2 U72 (.Y(empty), 
	.B(n55), 
	.A(n56));
endmodule

module flex_counter_stuff_5 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;

   // Internal wires
   wire FE_OFN17_shift_enable;
   wire next_flag;
   wire N17;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n34;
   wire n35;
   wire n39;

   BUFX2 FE_OFC17_shift_enable (.Y(rollover_flag), 
	.A(FE_OFN17_shift_enable));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n56), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n54), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n53), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n55), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(FE_OFN17_shift_enable), 
	.D(next_flag), 
	.CLK(clk));
   NAND3X1 U19 (.Y(n28), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   XNOR2X1 U21 (.Y(n30), 
	.B(N17), 
	.A(count_out[2]));
   NAND3X1 U23 (.Y(n27), 
	.C(1'b1), 
	.B(count_enable), 
	.A(n32));
   XOR2X1 U8 (.Y(n31), 
	.B(n35), 
	.A(count_out[1]));
   XOR2X1 U9 (.Y(n29), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XOR2X1 U10 (.Y(n32), 
	.B(1'b1), 
	.A(count_out[3]));
   XOR2X1 U11 (.Y(n2), 
	.B(count_out[2]), 
	.A(rollover_val[2]));
   XOR2X1 U12 (.Y(n1), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   NOR2X1 U13 (.Y(n5), 
	.B(n1), 
	.A(n2));
   XNOR2X1 U14 (.Y(n4), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XNOR2X1 U15 (.Y(n3), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NAND3X1 U16 (.Y(n8), 
	.C(n3), 
	.B(n4), 
	.A(n5));
   OAI22X1 U22 (.Y(next_flag), 
	.D(n27), 
	.C(n28), 
	.B(1'b1), 
	.A(n8));
   NAND2X1 U25 (.Y(n12), 
	.B(1'b1), 
	.A(n8));
   INVX2 U26 (.Y(n25), 
	.A(n12));
   NAND3X1 U27 (.Y(n10), 
	.C(1'b1), 
	.B(n25), 
	.A(count_out[0]));
   OAI21X1 U28 (.Y(n9), 
	.C(1'b1), 
	.B(n12), 
	.A(count_out[0]));
   INVX2 U29 (.Y(n11), 
	.A(n9));
   MUX2X1 U30 (.Y(n55), 
	.S(count_out[1]), 
	.B(n10), 
	.A(n11));
   INVX2 U31 (.Y(n21), 
	.A(n10));
   NAND3X1 U32 (.Y(n20), 
	.C(n21), 
	.B(count_out[1]), 
	.A(count_out[2]));
   INVX2 U33 (.Y(n18), 
	.A(count_out[2]));
   OAI21X1 U34 (.Y(n22), 
	.C(n11), 
	.B(n12), 
	.A(count_out[1]));
   AOI21X1 U35 (.Y(n19), 
	.C(n22), 
	.B(n18), 
	.A(n25));
   MUX2X1 U36 (.Y(n53), 
	.S(count_out[3]), 
	.B(n20), 
	.A(n19));
   NAND2X1 U37 (.Y(n24), 
	.B(n21), 
	.A(count_out[1]));
   INVX2 U38 (.Y(n23), 
	.A(n22));
   MUX2X1 U39 (.Y(n54), 
	.S(count_out[2]), 
	.B(n24), 
	.A(n23));
   NAND2X1 U40 (.Y(n34), 
	.B(1'b1), 
	.A(n25));
   MUX2X1 U41 (.Y(n56), 
	.S(count_out[0]), 
	.B(n34), 
	.A(1'b1));
   AOI21X1 U43 (.Y(n35), 
	.C(1'b0), 
	.B(rollover_val[1]), 
	.A(rollover_val[0]));
   OAI21X1 U45 (.Y(N17), 
	.C(1'b1), 
	.B(n39), 
	.A(1'b0));
   INVX2 U48 (.Y(n39), 
	.A(rollover_val[2]));
endmodule

module flex_counter_stuff_4 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	nclk__L2_N4);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input nclk__L2_N4;

   // Internal wires
   wire next_flag;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n11;
   wire n12;
   wire n18;
   wire n21;
   wire n22;
   wire n23;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n42;
   wire n45;
   wire n46;
   wire n47;
   wire n48;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n45), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n47), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n48), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n46), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(nclk__L2_N4));
   NAND2X1 U8 (.Y(n1), 
	.B(n28), 
	.A(n25));
   AND2X2 U9 (.Y(n2), 
	.B(n28), 
	.A(n29));
   INVX2 U10 (.Y(n3), 
	.A(n30));
   INVX1 U12 (.Y(n39), 
	.A(n38));
   XNOR2X1 U13 (.Y(n5), 
	.B(1'b0), 
	.A(count_out[1]));
   XOR2X1 U14 (.Y(n4), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   INVX1 U15 (.Y(n25), 
	.A(count_enable));
   NOR2X1 U18 (.Y(n6), 
	.B(n5), 
	.A(clear));
   OAI21X1 U19 (.Y(n27), 
	.C(n6), 
	.B(1'b0), 
	.A(rollover_val[3]));
   XOR2X1 U23 (.Y(n12), 
	.B(1'b0), 
	.A(count_out[3]));
   XOR2X1 U25 (.Y(n11), 
	.B(count_out[2]), 
	.A(1'b1));
   NOR2X1 U26 (.Y(n18), 
	.B(n11), 
	.A(n12));
   NAND3X1 U27 (.Y(n26), 
	.C(n18), 
	.B(n4), 
	.A(count_enable));
   XOR2X1 U29 (.Y(n23), 
	.B(count_out[3]), 
	.A(1'b0));
   XOR2X1 U30 (.Y(n21), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   NOR2X1 U31 (.Y(n22), 
	.B(n4), 
	.A(n21));
   NAND3X1 U32 (.Y(n29), 
	.C(n22), 
	.B(n23), 
	.A(n11));
   INVX2 U33 (.Y(n28), 
	.A(clear));
   OAI22X1 U35 (.Y(next_flag), 
	.D(n1), 
	.C(n29), 
	.B(n26), 
	.A(n27));
   NAND2X1 U36 (.Y(n33), 
	.B(n28), 
	.A(n29));
   NAND3X1 U37 (.Y(n31), 
	.C(n2), 
	.B(n1), 
	.A(count_out[0]));
   OAI21X1 U38 (.Y(n30), 
	.C(n1), 
	.B(n33), 
	.A(count_out[0]));
   MUX2X1 U39 (.Y(n46), 
	.S(count_out[1]), 
	.B(n31), 
	.A(n3));
   INVX2 U40 (.Y(n37), 
	.A(n31));
   NAND3X1 U41 (.Y(n36), 
	.C(n37), 
	.B(count_out[1]), 
	.A(count_out[2]));
   INVX2 U42 (.Y(n34), 
	.A(count_out[2]));
   OAI21X1 U43 (.Y(n38), 
	.C(n3), 
	.B(n33), 
	.A(count_out[1]));
   AOI21X1 U44 (.Y(n35), 
	.C(n38), 
	.B(n34), 
	.A(n2));
   MUX2X1 U45 (.Y(n48), 
	.S(count_out[3]), 
	.B(n36), 
	.A(n35));
   NAND2X1 U46 (.Y(n40), 
	.B(n37), 
	.A(count_out[1]));
   MUX2X1 U47 (.Y(n47), 
	.S(count_out[2]), 
	.B(n40), 
	.A(n39));
   NAND2X1 U48 (.Y(n42), 
	.B(n1), 
	.A(n2));
   MUX2X1 U49 (.Y(n45), 
	.S(count_out[0]), 
	.B(n42), 
	.A(n1));
endmodule

module timerSD (
	clk, 
	n_rst, 
	clear_byte, 
	enable, 
	speed, 
	SDCLK, 
	shift_enable, 
	byte_received, 
	nclk__L2_N4);
   input clk;
   input n_rst;
   input clear_byte;
   input enable;
   input [1:0] speed;
   output SDCLK;
   output shift_enable;
   output byte_received;
   input nclk__L2_N4;

   // Internal wires
   wire N12;
   wire N15;
   wire N16;
   wire _0_net_;
   wire n9;
   wire [3:0] count;
   wire [3:0] smallCount;
   wire [3:0] half;

   LATCH \smallCount_reg[2]  (.Q(smallCount[2]), 
	.D(N16), 
	.CLK(N12));
   LATCH \smallCount_reg[0]  (.Q(smallCount[0]), 
	.D(N15), 
	.CLK(N12));
   NOR2X1 U28 (.Y(N16), 
	.B(speed[0]), 
	.A(speed[1]));
   NOR2X1 U29 (.Y(N15), 
	.B(n9), 
	.A(speed[1]));
   NAND2X1 U30 (.Y(N12), 
	.B(speed[1]), 
	.A(speed[0]));
   flex_counter_stuff_5 smallCounter (.clk(clk), 
	.n_rst(n_rst), 
	.clear(1'b0), 
	.count_enable(enable), 
	.rollover_val({ 1'b0,
		smallCount[2],
		1'b1,
		smallCount[0] }), 
	.count_out(count), 
	.rollover_flag(shift_enable));
   flex_counter_stuff_4 bigCounter (.clk(clk), 
	.n_rst(n_rst), 
	.clear(_0_net_), 
	.count_enable(shift_enable), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.rollover_flag(byte_received), 
	.nclk__L2_N4(nclk__L2_N4));
   OR2X2 U6 (.Y(_0_net_), 
	.B(clear_byte), 
	.A(byte_received));
   INVX2 U15 (.Y(n9), 
	.A(speed[0]));
endmodule

module flex_pts_sr_NUM_BITS8 (
	n_rst, 
	shift_enable, 
	load_enable, 
	clk, 
	parallel_in, 
	serial_out);
   input n_rst;
   input shift_enable;
   input load_enable;
   input clk;
   input [7:0] parallel_in;
   input serial_out;

   // Internal wires
   wire [6:0] temp1;
endmodule

module flex_stp_sr_NUM_BITS8 (
	clk, 
	n_rst, 
	shift_enable, 
	serial_in, 
	parallel_out, 
	FE_OFN3_nn_rst);
   input clk;
   input n_rst;
   input shift_enable;
   input serial_in;
   output [7:0] parallel_out;
   input FE_OFN3_nn_rst;

   // Internal wires
   wire n3;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n27;
   wire n28;

   DFFSR \out_tmp_reg[0]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[0]), 
	.D(n26), 
	.CLK(clk));
   DFFSR \out_tmp_reg[1]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[1]), 
	.D(n24), 
	.CLK(clk));
   DFFSR \out_tmp_reg[2]  (.S(FE_OFN3_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[2]), 
	.D(n22), 
	.CLK(clk));
   DFFSR \out_tmp_reg[3]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[3]), 
	.D(n20), 
	.CLK(clk));
   DFFSR \out_tmp_reg[4]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[4]), 
	.D(n18), 
	.CLK(clk));
   DFFSR \out_tmp_reg[5]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[5]), 
	.D(n16), 
	.CLK(clk));
   DFFSR \out_tmp_reg[6]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[6]), 
	.D(n14), 
	.CLK(clk));
   DFFSR \out_tmp_reg[7]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[7]), 
	.D(n12), 
	.CLK(clk));
   OAI21X1 U2 (.Y(n12), 
	.C(n3), 
	.B(n28), 
	.A(n27));
   NAND2X1 U3 (.Y(n3), 
	.B(n28), 
	.A(parallel_out[7]));
   OAI22X1 U4 (.Y(n14), 
	.D(n9), 
	.C(n28), 
	.B(n27), 
	.A(shift_enable));
   OAI22X1 U6 (.Y(n16), 
	.D(n8), 
	.C(n28), 
	.B(n9), 
	.A(shift_enable));
   OAI22X1 U8 (.Y(n18), 
	.D(n7), 
	.C(n28), 
	.B(n8), 
	.A(shift_enable));
   OAI22X1 U10 (.Y(n20), 
	.D(n6), 
	.C(n28), 
	.B(n7), 
	.A(shift_enable));
   OAI22X1 U12 (.Y(n22), 
	.D(n5), 
	.C(n28), 
	.B(n6), 
	.A(shift_enable));
   OAI22X1 U14 (.Y(n24), 
	.D(n4), 
	.C(n28), 
	.B(n5), 
	.A(shift_enable));
   OAI21X1 U17 (.Y(n26), 
	.C(n10), 
	.B(n4), 
	.A(shift_enable));
   NAND2X1 U18 (.Y(n10), 
	.B(shift_enable), 
	.A(serial_in));
   INVX2 U9 (.Y(n4), 
	.A(parallel_out[0]));
   INVX2 U11 (.Y(n5), 
	.A(parallel_out[1]));
   INVX2 U13 (.Y(n6), 
	.A(parallel_out[2]));
   INVX2 U15 (.Y(n7), 
	.A(parallel_out[3]));
   INVX2 U16 (.Y(n8), 
	.A(parallel_out[4]));
   INVX2 U19 (.Y(n9), 
	.A(parallel_out[5]));
   INVX2 U28 (.Y(n27), 
	.A(parallel_out[6]));
   INVX2 U29 (.Y(n28), 
	.A(shift_enable));
endmodule

module spi_shift (
	clk, 
	n_rst, 
	fifo_data, 
	sddi, 
	line_select, 
	command_in, 
	shift_enable, 
	byte_received, 
	load_enable, 
	data_out, 
	sddo, 
	FE_OFN3_nn_rst);
   input clk;
   input n_rst;
   input [7:0] fifo_data;
   input sddi;
   input [1:0] line_select;
   input [7:0] command_in;
   input shift_enable;
   input byte_received;
   input load_enable;
   output [7:0] data_out;
   input sddo;
   input FE_OFN3_nn_rst;

   // Internal wires
   wire [7:0] data_in;

   flex_pts_sr_NUM_BITS8 shift_out (.n_rst(n_rst), 
	.shift_enable(shift_enable), 
	.load_enable(load_enable), 
	.clk(clk), 
	.parallel_in(data_in), 
	.serial_out(sddo));
   flex_stp_sr_NUM_BITS8 shift_in (.clk(clk), 
	.n_rst(n_rst), 
	.shift_enable(shift_enable), 
	.serial_in(sddi), 
	.parallel_out(data_out), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst));
endmodule

module command_store (
	cmd_select, 
	counter, 
	address, 
	cmd);
   input [5:0] cmd_select;
   input [3:0] counter;
   input [31:0] address;
   output [7:0] cmd;
endmodule

module edge_detect_1 (
	clk, 
	n_rst, 
	d_plus, 
	d_edge);
   input clk;
   input n_rst;
   input d_plus;
   output d_edge;

   // Internal wires
   wire past_d_plus;
   wire N0;

   DFFSR past_d_plus_reg (.S(n_rst), 
	.R(1'b1), 
	.Q(past_d_plus), 
	.D(d_plus), 
	.CLK(clk));
   DFFSR cur_d_edge_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(d_edge), 
	.D(N0), 
	.CLK(clk));
   XOR2X1 U5 (.Y(N0), 
	.B(d_plus), 
	.A(past_d_plus));
endmodule

module sd_interface (
	clk, 
	n_rst, 
	sd_read, 
	sd_write, 
	sd_addr_ready, 
	fifo_in, 
	tx_r_enable, 
	test_data_fromFIFO, 
	rx_FIFO_empty, 
	sd_done, 
	sd_err, 
	fifo_out, 
	r_enable_o, 
	test_r_enable, 
	test_w_enable, 
	test_data_toFIFO, 
	sd_FIFO_empty, 
	sram_addr, 
	SDCS, 
	SDCLK, 
	SDDI, 
	SDDO, 
	FE_OFN3_nn_rst, 
	FE_OFN4_nn_rst, 
	FE_OFN6_nn_rst, 
	FE_OFN7_nn_rst, 
	FE_OFN8_nn_rst, 
	nclk__L2_N1, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4);
   input clk;
   input n_rst;
   input sd_read;
   input sd_write;
   input sd_addr_ready;
   input [7:0] fifo_in;
   input tx_r_enable;
   input [7:0] test_data_fromFIFO;
   input rx_FIFO_empty;
   output sd_done;
   output sd_err;
   output [7:0] fifo_out;
   output r_enable_o;
   output test_r_enable;
   output test_w_enable;
   output [7:0] test_data_toFIFO;
   output sd_FIFO_empty;
   output [11:0] sram_addr;
   output SDCS;
   output SDCLK;
   input SDDI;
   input SDDO;
   input FE_OFN3_nn_rst;
   input FE_OFN4_nn_rst;
   input FE_OFN6_nn_rst;
   input FE_OFN7_nn_rst;
   input FE_OFN8_nn_rst;
   input nclk__L2_N1;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;

   // Internal wires
   wire FE_PHN28_nSDDI;
   wire FE_PHN23_nSDDI;
   wire FE_PHN20_nSDDI;
   wire FE_UNCONNECTED_126;
   wire FE_UNCONNECTED_125;
   wire r_enable;
   wire clear_byte;
   wire byte_transf;
   wire edge_detect;
   wire shift_enable;
   wire rw_select;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [7:0] data_o;
   wire [1:0] speed;
   wire [1:0] SPI_select;
   wire [5:0] cmd_out;
   wire [3:0] counter;
   wire [31:0] addr;
   wire [7:0] actual_cmd;

   BUFX2 FE_PHC28_nSDDI (.Y(FE_PHN28_nSDDI), 
	.A(FE_PHN23_nSDDI));
   CLKBUF3 FE_PHC23_nSDDI (.Y(FE_PHN23_nSDDI), 
	.A(SDDI));
   BUFX2 FE_PHC20_nSDDI (.Y(FE_PHN20_nSDDI), 
	.A(FE_PHN28_nSDDI));
   AOI22X1 U10 (.Y(n10), 
	.D(fifo_in[7]), 
	.C(rw_select), 
	.B(n1), 
	.A(data_o[7]));
   AOI22X1 U11 (.Y(n11), 
	.D(rw_select), 
	.C(fifo_in[6]), 
	.B(n1), 
	.A(data_o[6]));
   AOI22X1 U12 (.Y(n12), 
	.D(rw_select), 
	.C(fifo_in[5]), 
	.B(n1), 
	.A(data_o[5]));
   AOI22X1 U13 (.Y(n13), 
	.D(rw_select), 
	.C(fifo_in[4]), 
	.B(n1), 
	.A(data_o[4]));
   AOI22X1 U14 (.Y(n14), 
	.D(rw_select), 
	.C(fifo_in[3]), 
	.B(n1), 
	.A(data_o[3]));
   AOI22X1 U15 (.Y(n15), 
	.D(rw_select), 
	.C(fifo_in[2]), 
	.B(n1), 
	.A(data_o[2]));
   AOI22X1 U16 (.Y(n16), 
	.D(rw_select), 
	.C(fifo_in[1]), 
	.B(n1), 
	.A(data_o[1]));
   AOI22X1 U17 (.Y(n17), 
	.D(rw_select), 
	.C(fifo_in[0]), 
	.B(n1), 
	.A(data_o[0]));
   mode_select SDController (.clk(clk), 
	.n_rst(n_rst), 
	.sd_read(sd_read), 
	.sd_write(sd_write), 
	.sd_addr_ready(sd_addr_ready), 
	.sd_full(FE_UNCONNECTED_125), 
	.rx_FIFO_empty(rx_FIFO_empty), 
	.SDCS(SDCS), 
	.cmd_check(data_o), 
	.rcv_fifo(fifo_in), 
	.byte_transf(byte_transf), 
	.edge_detect(edge_detect), 
	.shift_enable(shift_enable), 
	.clear_byte(clear_byte), 
	.sd_done(sd_done), 
	.sd_err(sd_err), 
	.load_enable(FE_UNCONNECTED_126), 
	.w_enable(test_w_enable), 
	.r_enable(r_enable), 
	.r_enable_o(r_enable_o), 
	.SPI_select(SPI_select), 
	.rw_select(rw_select), 
	.cmd_out(cmd_out), 
	.count_out(counter), 
	.speed_o(speed), 
	.addr_o(addr), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN7_nn_rst(FE_OFN7_nn_rst), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4));
   myfifo_1 myFIFO (.clk(nclk__L2_N1), 
	.n_rst(FE_OFN4_nn_rst), 
	.r_enable(test_r_enable), 
	.w_enable(test_w_enable), 
	.clear(1'b0), 
	.data_i({ n9,
		n8,
		n7,
		n6,
		n5,
		n4,
		n3,
		n2 }), 
	.sram_o(test_data_fromFIFO), 
	.sram_i(test_data_toFIFO), 
	.data_o(fifo_out), 
	.addr(sram_addr), 
	.full(FE_UNCONNECTED_125), 
	.empty(sd_FIFO_empty), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN8_nn_rst(FE_OFN8_nn_rst), 
	.nclk__L2_N3(nclk__L2_N3));
   timerSD myTimer (.clk(nclk__L2_N2), 
	.n_rst(n_rst), 
	.clear_byte(clear_byte), 
	.enable(1'b1), 
	.speed(speed), 
	.SDCLK(SDCLK), 
	.shift_enable(shift_enable), 
	.byte_received(byte_transf), 
	.nclk__L2_N4(nclk__L2_N4));
   spi_shift ShiftRegister (.clk(nclk__L2_N2), 
	.n_rst(n_rst), 
	.fifo_data(fifo_out), 
	.sddi(FE_PHN20_nSDDI), 
	.line_select(SPI_select), 
	.command_in(actual_cmd), 
	.shift_enable(shift_enable), 
	.byte_received(byte_transf), 
	.load_enable(FE_UNCONNECTED_126), 
	.data_out(data_o), 
	.sddo(SDDO), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst));
   command_store Bank (.cmd_select(cmd_out), 
	.counter(counter), 
	.address(addr), 
	.cmd(actual_cmd));
   edge_detect_1 eDetect (.clk(nclk__L2_N2), 
	.n_rst(n_rst), 
	.d_plus(FE_PHN20_nSDDI), 
	.d_edge(edge_detect));
   INVX2 U1 (.Y(n1), 
	.A(rw_select));
   OR2X2 U2 (.Y(test_r_enable), 
	.B(r_enable), 
	.A(tx_r_enable));
   INVX2 U4 (.Y(n2), 
	.A(n17));
   INVX2 U5 (.Y(n3), 
	.A(n16));
   INVX2 U6 (.Y(n4), 
	.A(n15));
   INVX2 U7 (.Y(n5), 
	.A(n14));
   INVX2 U8 (.Y(n6), 
	.A(n13));
   INVX2 U9 (.Y(n7), 
	.A(n12));
   INVX2 U18 (.Y(n8), 
	.A(n11));
   INVX2 U19 (.Y(n9), 
	.A(n10));
endmodule

module tcu (
	clk, 
	n_rst, 
	tx_transmit, 
	tx_send_good, 
	tx_send_bad, 
	load_enable, 
	empty, 
	crc_value, 
	data, 
	sending, 
	sd_enable, 
	load_enable_g, 
	tx_done, 
	tx_err, 
	eop, 
	crc_sync_rst, 
	FE_OFN6_nn_rst, 
	nclk__L2_N5);
   input clk;
   input n_rst;
   input tx_transmit;
   input tx_send_good;
   input tx_send_bad;
   input load_enable;
   input empty;
   input [15:0] crc_value;
   output [7:0] data;
   output sending;
   output sd_enable;
   output load_enable_g;
   output tx_done;
   output tx_err;
   output eop;
   output crc_sync_rst;
   input FE_OFN6_nn_rst;
   input nclk__L2_N5;

   // Internal wires
   wire N86;
   wire N87;
   wire N125;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n3;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n31;
   wire n32;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n128;
   wire n129;
   wire [4:0] current_state;
   wire [4:0] store_state;

   assign tx_err = 1'b0 ;

   LATCH \store_state_reg[0]  (.Q(store_state[0]), 
	.D(N86), 
	.CLK(N125));
   DFFSR \current_state_reg[0]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(current_state[0]), 
	.D(n152), 
	.CLK(clk));
   DFFSR \current_state_reg[3]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(current_state[3]), 
	.D(n149), 
	.CLK(clk));
   DFFSR \current_state_reg[2]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(current_state[2]), 
	.D(n150), 
	.CLK(clk));
   DFFSR \current_state_reg[1]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(current_state[1]), 
	.D(n151), 
	.CLK(clk));
   LATCH \store_state_reg[1]  (.Q(store_state[1]), 
	.D(N87), 
	.CLK(N125));
   DFFSR \reg_data_reg[5]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[5]), 
	.D(n142), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[2]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[2]), 
	.D(n145), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(data[6]), 
	.D(n148), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(data[1]), 
	.D(n146), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[7]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[7]), 
	.D(n129), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[3]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[3]), 
	.D(n144), 
	.CLK(nclk__L2_N5));
   DFFSR \reg_data_reg[4]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[4]), 
	.D(n143), 
	.CLK(clk));
   DFFSR \reg_data_reg[0]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(data[0]), 
	.D(n147), 
	.CLK(nclk__L2_N5));
   NAND2X1 U3 (.Y(n126), 
	.B(n65), 
	.A(n66));
   NOR2X1 U4 (.Y(sending), 
	.B(eop), 
	.A(n66));
   NAND2X1 U6 (.Y(eop), 
	.B(crc_sync_rst), 
	.A(n106));
   INVX2 U7 (.Y(tx_done), 
	.A(n72));
   NAND2X1 U8 (.Y(sd_enable), 
	.B(n74), 
	.A(n91));
   NAND2X1 U9 (.Y(n35), 
	.B(n66), 
	.A(n34));
   INVX2 U10 (.Y(n88), 
	.A(n87));
   INVX2 U11 (.Y(n98), 
	.A(n97));
   INVX2 U12 (.Y(n111), 
	.A(n110));
   INVX2 U13 (.Y(n124), 
	.A(n123));
   OR2X2 U14 (.Y(n91), 
	.B(n104), 
	.A(empty));
   AND2X2 U21 (.Y(n25), 
	.B(current_state[2]), 
	.A(current_state[1]));
   INVX1 U22 (.Y(n3), 
	.A(n32));
   INVX2 U31 (.Y(n59), 
	.A(n36));
   AND2X1 U32 (.Y(n19), 
	.B(n52), 
	.A(n59));
   AND2X1 U33 (.Y(load_enable_g), 
	.B(n27), 
	.A(n23));
   AND2X1 U34 (.Y(n22), 
	.B(n70), 
	.A(current_state[1]));
   AND2X1 U35 (.Y(n27), 
	.B(current_state[0]), 
	.A(current_state[3]));
   AND2X2 U36 (.Y(n16), 
	.B(n74), 
	.A(n112));
   AND2X2 U37 (.Y(n73), 
	.B(n104), 
	.A(n72));
   AND2X2 U39 (.Y(n17), 
	.B(n59), 
	.A(n37));
   AND2X2 U40 (.Y(n18), 
	.B(n59), 
	.A(n114));
   AND2X2 U41 (.Y(n20), 
	.B(n32), 
	.A(n70));
   AND2X2 U42 (.Y(n21), 
	.B(n69), 
	.A(n122));
   AND2X2 U44 (.Y(n23), 
	.B(n32), 
	.A(current_state[2]));
   AND2X2 U45 (.Y(n24), 
	.B(n69), 
	.A(current_state[0]));
   INVX2 U46 (.Y(n122), 
	.A(current_state[0]));
   INVX2 U47 (.Y(n69), 
	.A(current_state[3]));
   NAND2X1 U48 (.Y(crc_sync_rst), 
	.B(n21), 
	.A(n25));
   NAND2X1 U51 (.Y(n106), 
	.B(n25), 
	.A(n24));
   NAND2X1 U52 (.Y(n31), 
	.B(n122), 
	.A(current_state[3]));
   INVX2 U53 (.Y(n76), 
	.A(n31));
   NAND2X1 U54 (.Y(n72), 
	.B(n25), 
	.A(n76));
   INVX2 U55 (.Y(n32), 
	.A(current_state[1]));
   NAND2X1 U56 (.Y(n104), 
	.B(n23), 
	.A(n76));
   INVX2 U57 (.Y(n70), 
	.A(current_state[2]));
   NAND2X1 U58 (.Y(n74), 
	.B(n20), 
	.A(n76));
   NAND2X1 U59 (.Y(n81), 
	.B(n20), 
	.A(n21));
   INVX2 U60 (.Y(n66), 
	.A(n81));
   INVX2 U62 (.Y(n114), 
	.A(n74));
   NAND2X1 U63 (.Y(n112), 
	.B(n20), 
	.A(n27));
   INVX2 U64 (.Y(n68), 
	.A(tx_send_good));
   INVX2 U65 (.Y(n128), 
	.A(tx_transmit));
   NAND3X1 U67 (.Y(n65), 
	.C(1'b1), 
	.B(n128), 
	.A(n68));
   INVX2 U68 (.Y(n34), 
	.A(n65));
   OAI21X1 U69 (.Y(n36), 
	.C(n35), 
	.B(n16), 
	.A(load_enable));
   INVX2 U70 (.Y(n37), 
	.A(n112));
   AOI22X1 U71 (.Y(n41), 
	.D(n17), 
	.C(crc_value[0]), 
	.B(n18), 
	.A(crc_value[8]));
   NAND2X1 U72 (.Y(n42), 
	.B(n21), 
	.A(n22));
   NAND2X1 U73 (.Y(n116), 
	.B(n24), 
	.A(n22));
   NAND2X1 U74 (.Y(n85), 
	.B(n116), 
	.A(n42));
   INVX2 U75 (.Y(n77), 
	.A(n85));
   NAND2X1 U76 (.Y(n118), 
	.B(n20), 
	.A(n24));
   NAND2X1 U77 (.Y(n52), 
	.B(n118), 
	.A(n77));
   INVX2 U78 (.Y(n38), 
	.A(n52));
   NAND2X1 U79 (.Y(n39), 
	.B(n16), 
	.A(n38));
   OAI21X1 U80 (.Y(n61), 
	.C(n59), 
	.B(n39), 
	.A(n66));
   AOI22X1 U81 (.Y(n40), 
	.D(n85), 
	.C(n59), 
	.B(n61), 
	.A(data[0]));
   NAND2X1 U82 (.Y(n147), 
	.B(n40), 
	.A(n41));
   NAND2X1 U83 (.Y(n46), 
	.B(n18), 
	.A(crc_value[11]));
   INVX2 U84 (.Y(n101), 
	.A(n118));
   INVX2 U85 (.Y(n43), 
	.A(n42));
   OAI21X1 U86 (.Y(n45), 
	.C(n59), 
	.B(n43), 
	.A(n101));
   AOI22X1 U87 (.Y(n44), 
	.D(n61), 
	.C(data[3]), 
	.B(n17), 
	.A(crc_value[3]));
   NAND3X1 U88 (.Y(n144), 
	.C(n44), 
	.B(n45), 
	.A(n46));
   INVX2 U89 (.Y(n51), 
	.A(n61));
   INVX2 U90 (.Y(n48), 
	.A(data[1]));
   AOI22X1 U91 (.Y(n47), 
	.D(n17), 
	.C(crc_value[1]), 
	.B(n18), 
	.A(crc_value[9]));
   OAI21X1 U92 (.Y(n146), 
	.C(n47), 
	.B(n48), 
	.A(n51));
   INVX2 U93 (.Y(n50), 
	.A(data[6]));
   AOI22X1 U94 (.Y(n49), 
	.D(n17), 
	.C(crc_value[6]), 
	.B(n18), 
	.A(crc_value[14]));
   OAI21X1 U95 (.Y(n148), 
	.C(n49), 
	.B(n50), 
	.A(n51));
   AOI21X1 U96 (.Y(n54), 
	.C(n19), 
	.B(n18), 
	.A(crc_value[10]));
   AOI22X1 U97 (.Y(n53), 
	.D(n61), 
	.C(data[2]), 
	.B(n17), 
	.A(crc_value[2]));
   NAND2X1 U98 (.Y(n145), 
	.B(n53), 
	.A(n54));
   AOI22X1 U99 (.Y(n56), 
	.D(n17), 
	.C(crc_value[4]), 
	.B(n18), 
	.A(crc_value[12]));
   AOI22X1 U100 (.Y(n55), 
	.D(n59), 
	.C(n101), 
	.B(n61), 
	.A(data[4]));
   NAND2X1 U101 (.Y(n143), 
	.B(n55), 
	.A(n56));
   AOI21X1 U102 (.Y(n58), 
	.C(n19), 
	.B(n18), 
	.A(crc_value[13]));
   AOI22X1 U103 (.Y(n57), 
	.D(n61), 
	.C(data[5]), 
	.B(n17), 
	.A(crc_value[5]));
   NAND2X1 U104 (.Y(n142), 
	.B(n57), 
	.A(n58));
   NAND2X1 U105 (.Y(n64), 
	.B(n18), 
	.A(crc_value[15]));
   INVX2 U106 (.Y(n60), 
	.A(n116));
   OAI21X1 U107 (.Y(n63), 
	.C(n59), 
	.B(n60), 
	.A(n66));
   AOI22X1 U108 (.Y(n62), 
	.D(n61), 
	.C(data[7]), 
	.B(n17), 
	.A(crc_value[7]));
   NAND3X1 U109 (.Y(n129), 
	.C(n62), 
	.B(n63), 
	.A(n64));
   INVX2 U110 (.Y(N125), 
	.A(n126));
   AOI21X1 U111 (.Y(N87), 
	.C(tx_transmit), 
	.B(1'b1), 
	.A(n68));
   AOI21X1 U112 (.Y(n89), 
	.C(eop), 
	.B(load_enable_g), 
	.A(store_state[1]));
   NAND2X1 U113 (.Y(n107), 
	.B(n27), 
	.A(n22));
   OAI21X1 U114 (.Y(n71), 
	.C(current_state[0]), 
	.B(n69), 
	.A(n70));
   NAND2X1 U115 (.Y(n94), 
	.B(n21), 
	.A(n23));
   OAI21X1 U116 (.Y(n84), 
	.C(n94), 
	.B(n71), 
	.A(n3));
   NOR2X1 U117 (.Y(n75), 
	.B(n84), 
	.A(load_enable_g));
   NAND3X1 U118 (.Y(n78), 
	.C(n73), 
	.B(n74), 
	.A(n75));
   NAND2X1 U119 (.Y(n100), 
	.B(n22), 
	.A(n76));
   NAND3X1 U120 (.Y(n90), 
	.C(n100), 
	.B(n107), 
	.A(n77));
   NOR2X1 U121 (.Y(n82), 
	.B(n90), 
	.A(n78));
   INVX2 U122 (.Y(n80), 
	.A(eop));
   NAND3X1 U123 (.Y(n105), 
	.C(n80), 
	.B(n81), 
	.A(n82));
   OAI21X1 U124 (.Y(n83), 
	.C(n105), 
	.B(n107), 
	.A(load_enable));
   INVX2 U125 (.Y(n119), 
	.A(n83));
   MUX2X1 U126 (.Y(n86), 
	.S(load_enable), 
	.B(n85), 
	.A(n84));
   NAND3X1 U127 (.Y(n87), 
	.C(n100), 
	.B(n86), 
	.A(n119));
   NAND2X1 U128 (.Y(n151), 
	.B(n88), 
	.A(n89));
   INVX2 U130 (.Y(n93), 
	.A(n90));
   INVX2 U131 (.Y(n92), 
	.A(load_enable));
   OAI21X1 U132 (.Y(n96), 
	.C(n91), 
	.B(n92), 
	.A(n93));
   NAND2X1 U133 (.Y(n113), 
	.B(n23), 
	.A(n24));
   NAND3X1 U134 (.Y(n95), 
	.C(n105), 
	.B(n94), 
	.A(n113));
   OR2X1 U135 (.Y(n97), 
	.B(n95), 
	.A(n96));
   NAND3X1 U136 (.Y(n150), 
	.C(n98), 
	.B(n80), 
	.A(n126));
   INVX2 U137 (.Y(n102), 
	.A(n100));
   MUX2X1 U138 (.Y(n103), 
	.S(load_enable), 
	.B(n102), 
	.A(n101));
   NAND3X1 U139 (.Y(n109), 
	.C(n103), 
	.B(n104), 
	.A(n105));
   NAND3X1 U140 (.Y(n108), 
	.C(n106), 
	.B(n107), 
	.A(n16));
   OR2X1 U141 (.Y(n110), 
	.B(n108), 
	.A(n109));
   NAND2X1 U142 (.Y(n149), 
	.B(n111), 
	.A(n126));
   NAND2X1 U143 (.Y(n115), 
	.B(n112), 
	.A(n113));
   MUX2X1 U144 (.Y(n117), 
	.S(load_enable), 
	.B(n115), 
	.A(n114));
   NAND2X1 U145 (.Y(n121), 
	.B(n116), 
	.A(n117));
   NAND2X1 U146 (.Y(n120), 
	.B(n118), 
	.A(n119));
   NOR2X1 U147 (.Y(n123), 
	.B(n120), 
	.A(n121));
   AOI21X1 U148 (.Y(n125), 
	.C(n124), 
	.B(load_enable_g), 
	.A(store_state[0]));
   NAND3X1 U149 (.Y(n152), 
	.C(n125), 
	.B(n126), 
	.A(crc_sync_rst));
   OAI21X1 U150 (.Y(N86), 
	.C(n128), 
	.B(tx_send_good), 
	.A(1'b1));
endmodule

module flex_counter_NUM_CNT_BITS4_1 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;

   // Internal wires
   wire n40;
   wire n42;
   wire n44;
   wire n46;
   wire n7;
   wire n9;
   wire n10;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n39;
   wire n41;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n40), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n42), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n44), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n46), 
	.CLK(clk));
   INVX1 U5 (.Y(n30), 
	.A(clear));
   NAND2X1 U10 (.Y(n7), 
	.B(n9), 
	.A(n36));
   INVX1 U13 (.Y(n21), 
	.A(count_enable));
   INVX1 U14 (.Y(n39), 
	.A(count_out[2]));
   MUX2X1 U15 (.Y(n40), 
	.S(n50), 
	.B(n31), 
	.A(n9));
   XNOR2X1 U16 (.Y(n37), 
	.B(n7), 
	.A(n47));
   AND2X2 U17 (.Y(n9), 
	.B(n34), 
	.A(count_out[0]));
   XNOR2X1 U18 (.Y(n10), 
	.B(rollover_val[0]), 
	.A(n31));
   INVX2 U21 (.Y(n33), 
	.A(count_out[1]));
   INVX2 U25 (.Y(n31), 
	.A(count_out[0]));
   NAND2X1 U34 (.Y(n50), 
	.B(n30), 
	.A(n21));
   XOR2X1 U36 (.Y(n26), 
	.B(rollover_val[1]), 
	.A(n33));
   XOR2X1 U37 (.Y(n25), 
	.B(count_out[2]), 
	.A(1'b1));
   XOR2X1 U38 (.Y(n23), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NOR2X1 U39 (.Y(n24), 
	.B(n10), 
	.A(n23));
   NAND3X1 U40 (.Y(n29), 
	.C(n24), 
	.B(n25), 
	.A(n26));
   NAND3X1 U42 (.Y(n41), 
	.C(count_enable), 
	.B(n30), 
	.A(n29));
   INVX2 U43 (.Y(n34), 
	.A(n41));
   NAND2X1 U44 (.Y(n35), 
	.B(n34), 
	.A(count_out[1]));
   XOR2X1 U45 (.Y(n32), 
	.B(n9), 
	.A(n35));
   OAI21X1 U46 (.Y(n42), 
	.C(n32), 
	.B(n33), 
	.A(n50));
   NAND2X1 U47 (.Y(n47), 
	.B(n34), 
	.A(count_out[2]));
   INVX2 U48 (.Y(n36), 
	.A(n35));
   OAI21X1 U50 (.Y(n44), 
	.C(n37), 
	.B(n39), 
	.A(n50));
   NAND2X1 U51 (.Y(n49), 
	.B(count_out[3]), 
	.A(n34));
   NOR2X1 U52 (.Y(n48), 
	.B(n7), 
	.A(n47));
   XOR2X1 U53 (.Y(n53), 
	.B(n49), 
	.A(n48));
   INVX2 U54 (.Y(n51), 
	.A(n50));
   NAND2X1 U55 (.Y(n52), 
	.B(n51), 
	.A(count_out[3]));
   NAND2X1 U56 (.Y(n46), 
	.B(n53), 
	.A(n52));
endmodule

module flex_counter_NUM_CNT_BITS4_0 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN6_nn_rst, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input FE_OFN6_nn_rst;
   input nclk__L2_N8;

   // Internal wires
   wire FE_OFN16_load_enable;
   wire next_flag;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n17;
   wire n18;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n47;
   wire n48;
   wire n49;
   wire n52;
   wire n54;
   wire n56;
   wire n58;

   BUFX2 FE_OFC16_load_enable (.Y(rollover_flag), 
	.A(FE_OFN16_load_enable));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n52), 
	.CLK(nclk__L2_N8));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n54), 
	.CLK(nclk__L2_N8));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n56), 
	.CLK(nclk__L2_N8));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n58), 
	.CLK(nclk__L2_N8));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(FE_OFN16_load_enable), 
	.D(next_flag), 
	.CLK(clk));
   NAND2X1 U3 (.Y(n1), 
	.B(n3), 
	.A(n30));
   INVX1 U5 (.Y(n32), 
	.A(count_out[2]));
   MUX2X1 U6 (.Y(n58), 
	.S(n38), 
	.B(n25), 
	.A(n3));
   XNOR2X1 U7 (.Y(n31), 
	.B(n1), 
	.A(n35));
   AND2X2 U8 (.Y(n3), 
	.B(n28), 
	.A(count_out[0]));
   XNOR2X1 U9 (.Y(n4), 
	.B(rollover_val[0]), 
	.A(n25));
   INVX2 U12 (.Y(n27), 
	.A(count_out[1]));
   XOR2X1 U13 (.Y(n5), 
	.B(1'b0), 
	.A(n27));
   NOR2X1 U14 (.Y(n6), 
	.B(n5), 
	.A(clear));
   OAI21X1 U15 (.Y(n22), 
	.C(n6), 
	.B(1'b0), 
	.A(rollover_val[3]));
   INVX2 U16 (.Y(n25), 
	.A(count_out[0]));
   XOR2X1 U20 (.Y(n13), 
	.B(1'b0), 
	.A(count_out[3]));
   XOR2X1 U22 (.Y(n12), 
	.B(count_out[2]), 
	.A(1'b1));
   NOR2X1 U23 (.Y(n14), 
	.B(n12), 
	.A(n13));
   NAND3X1 U24 (.Y(n21), 
	.C(n14), 
	.B(n4), 
	.A(count_enable));
   INVX2 U25 (.Y(n15), 
	.A(count_enable));
   INVX2 U26 (.Y(n24), 
	.A(clear));
   NAND2X1 U27 (.Y(n38), 
	.B(n24), 
	.A(n15));
   XOR2X1 U30 (.Y(n17), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NOR2X1 U31 (.Y(n18), 
	.B(n4), 
	.A(n17));
   NAND3X1 U32 (.Y(n23), 
	.C(n18), 
	.B(n12), 
	.A(n5));
   OAI22X1 U33 (.Y(next_flag), 
	.D(n23), 
	.C(n38), 
	.B(n21), 
	.A(n22));
   NAND3X1 U34 (.Y(n33), 
	.C(n23), 
	.B(n24), 
	.A(count_enable));
   INVX2 U35 (.Y(n28), 
	.A(n33));
   NAND2X1 U40 (.Y(n29), 
	.B(n28), 
	.A(count_out[1]));
   XOR2X1 U41 (.Y(n26), 
	.B(n3), 
	.A(n29));
   OAI21X1 U42 (.Y(n56), 
	.C(n26), 
	.B(n27), 
	.A(n38));
   NAND2X1 U43 (.Y(n35), 
	.B(n28), 
	.A(count_out[2]));
   INVX2 U44 (.Y(n30), 
	.A(n29));
   OAI21X1 U46 (.Y(n54), 
	.C(n31), 
	.B(n32), 
	.A(n38));
   NAND2X1 U47 (.Y(n37), 
	.B(count_out[3]), 
	.A(n28));
   NOR2X1 U48 (.Y(n36), 
	.B(n1), 
	.A(n35));
   XOR2X1 U49 (.Y(n49), 
	.B(n37), 
	.A(n36));
   INVX2 U50 (.Y(n47), 
	.A(n38));
   NAND2X1 U51 (.Y(n48), 
	.B(n47), 
	.A(count_out[3]));
   NAND2X1 U52 (.Y(n52), 
	.B(n48), 
	.A(n49));
endmodule

module timerTX (
	clk, 
	n_rst, 
	sending, 
	stop_clock, 
	sd_enable, 
	load_enable_g, 
	stop_clock_shift_enable, 
	load_enable_sd, 
	shift_enable_sd, 
	shift_enable, 
	load_enable, 
	FE_OFN6_nn_rst, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input sending;
   input stop_clock;
   input sd_enable;
   input load_enable_g;
   input stop_clock_shift_enable;
   output load_enable_sd;
   output shift_enable_sd;
   output shift_enable;
   output load_enable;
   input FE_OFN6_nn_rst;
   input nclk__L2_N8;

   // Internal wires
   wire _1_net_;
   wire _3_net_;
   wire _4_net_;
   wire N0;
   wire N1;
   wire N2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [3:0] count_out_shift;

   assign shift_enable = N0 ;
   assign shift_enable_sd = N1 ;
   assign load_enable_sd = N2 ;

   flex_counter_NUM_CNT_BITS4_1 shift_enable_gen (.clk(nclk__L2_N8), 
	.n_rst(n_rst), 
	.clear(n9), 
	.count_enable(_1_net_), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.count_out(count_out_shift));
   flex_counter_NUM_CNT_BITS4_0 load_enable_gen (.clk(clk), 
	.n_rst(n_rst), 
	.clear(_3_net_), 
	.count_enable(_4_net_), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.rollover_flag(load_enable), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.nclk__L2_N8(nclk__L2_N8));
   AND2X2 U3 (.Y(N2), 
	.B(sd_enable), 
	.A(load_enable));
   INVX1 U4 (.Y(n7), 
	.A(sd_enable));
   INVX1 U5 (.Y(n6), 
	.A(N0));
   INVX1 U6 (.Y(n9), 
	.A(sending));
   NOR2X1 U9 (.Y(n3), 
	.B(count_out_shift[2]), 
	.A(count_out_shift[3]));
   NAND3X1 U10 (.Y(n5), 
	.C(n3), 
	.B(count_out_shift[1]), 
	.A(count_out_shift[0]));
   NOR2X1 U11 (.Y(_4_net_), 
	.B(n5), 
	.A(stop_clock_shift_enable));
   INVX2 U12 (.Y(n8), 
	.A(load_enable));
   NAND2X1 U13 (.Y(_3_net_), 
	.B(n8), 
	.A(sending));
   NOR2X1 U14 (.Y(_1_net_), 
	.B(n9), 
	.A(stop_clock));
   INVX2 U15 (.Y(n4), 
	.A(stop_clock_shift_enable));
   NAND2X1 U16 (.Y(N0), 
	.B(n4), 
	.A(n5));
   NOR2X1 U17 (.Y(N1), 
	.B(n7), 
	.A(n6));
endmodule

module flex_pts_tx (
	clk, 
	n_rst, 
	shift_enable, 
	load_enable, 
	parallel_in, 
	stop_clock_shift_enable, 
	serial_out, 
	FE_OFN6_nn_rst, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input shift_enable;
   input load_enable;
   input [7:0] parallel_in;
   input stop_clock_shift_enable;
   output serial_out;
   input FE_OFN6_nn_rst;
   input nclk__L2_N8;

   // Internal wires
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n41;
   wire n42;
   wire n43;
   wire [6:0] Q_out;

   DFFSR \Q_out_reg[5]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(Q_out[5]), 
	.D(n35), 
	.CLK(clk));
   DFFSR \Q_out_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(Q_out[6]), 
	.D(n34), 
	.CLK(clk));
   DFFSR \Q_out_reg[4]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(Q_out[4]), 
	.D(n36), 
	.CLK(clk));
   DFFSR \Q_out_reg[3]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(Q_out[3]), 
	.D(n37), 
	.CLK(clk));
   DFFSR \Q_out_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(Q_out[0]), 
	.D(n40), 
	.CLK(nclk__L2_N8));
   DFFSR \Q_out_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(Q_out[2]), 
	.D(n38), 
	.CLK(clk));
   DFFSR \Q_out_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(serial_out), 
	.D(n33), 
	.CLK(nclk__L2_N8));
   DFFSR \Q_out_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(Q_out[1]), 
	.D(n39), 
	.CLK(nclk__L2_N8));
   INVX1 U2 (.Y(n10), 
	.A(shift_enable));
   INVX2 U11 (.Y(n11), 
	.A(stop_clock_shift_enable));
   INVX2 U12 (.Y(n9), 
	.A(load_enable));
   NAND3X1 U13 (.Y(n15), 
	.C(n9), 
	.B(n11), 
	.A(shift_enable));
   NAND2X1 U14 (.Y(n13), 
	.B(n10), 
	.A(load_enable));
   NAND3X1 U15 (.Y(n14), 
	.C(n11), 
	.B(load_enable), 
	.A(shift_enable));
   NAND3X1 U16 (.Y(n12), 
	.C(n14), 
	.B(n13), 
	.A(n15));
   INVX2 U17 (.Y(n31), 
	.A(n12));
   INVX2 U18 (.Y(n30), 
	.A(n13));
   AOI22X1 U19 (.Y(n17), 
	.D(n30), 
	.C(parallel_in[7]), 
	.B(n31), 
	.A(serial_out));
   INVX2 U20 (.Y(n41), 
	.A(n14));
   INVX2 U21 (.Y(n32), 
	.A(n15));
   AOI22X1 U22 (.Y(n16), 
	.D(n32), 
	.C(Q_out[6]), 
	.B(n41), 
	.A(parallel_in[6]));
   NAND2X1 U23 (.Y(n33), 
	.B(n16), 
	.A(n17));
   AOI22X1 U24 (.Y(n19), 
	.D(n30), 
	.C(parallel_in[6]), 
	.B(n31), 
	.A(Q_out[6]));
   AOI22X1 U25 (.Y(n18), 
	.D(n32), 
	.C(Q_out[5]), 
	.B(n41), 
	.A(parallel_in[5]));
   NAND2X1 U26 (.Y(n34), 
	.B(n18), 
	.A(n19));
   AOI22X1 U27 (.Y(n21), 
	.D(n30), 
	.C(parallel_in[5]), 
	.B(n31), 
	.A(Q_out[5]));
   AOI22X1 U28 (.Y(n20), 
	.D(n32), 
	.C(Q_out[4]), 
	.B(n41), 
	.A(parallel_in[4]));
   NAND2X1 U29 (.Y(n35), 
	.B(n20), 
	.A(n21));
   AOI22X1 U30 (.Y(n23), 
	.D(n30), 
	.C(parallel_in[4]), 
	.B(n31), 
	.A(Q_out[4]));
   AOI22X1 U31 (.Y(n22), 
	.D(n32), 
	.C(Q_out[3]), 
	.B(n41), 
	.A(parallel_in[3]));
   NAND2X1 U32 (.Y(n36), 
	.B(n22), 
	.A(n23));
   AOI22X1 U33 (.Y(n25), 
	.D(n30), 
	.C(parallel_in[3]), 
	.B(n31), 
	.A(Q_out[3]));
   AOI22X1 U34 (.Y(n24), 
	.D(n32), 
	.C(Q_out[2]), 
	.B(n41), 
	.A(parallel_in[2]));
   NAND2X1 U35 (.Y(n37), 
	.B(n24), 
	.A(n25));
   AOI22X1 U36 (.Y(n27), 
	.D(n30), 
	.C(parallel_in[2]), 
	.B(n31), 
	.A(Q_out[2]));
   AOI22X1 U37 (.Y(n26), 
	.D(n32), 
	.C(Q_out[1]), 
	.B(n41), 
	.A(parallel_in[1]));
   NAND2X1 U38 (.Y(n38), 
	.B(n26), 
	.A(n27));
   AOI22X1 U39 (.Y(n29), 
	.D(n30), 
	.C(parallel_in[1]), 
	.B(n31), 
	.A(Q_out[1]));
   AOI22X1 U40 (.Y(n28), 
	.D(Q_out[0]), 
	.C(n32), 
	.B(parallel_in[0]), 
	.A(n41));
   NAND2X1 U41 (.Y(n39), 
	.B(n28), 
	.A(n29));
   AOI22X1 U42 (.Y(n43), 
	.D(n30), 
	.C(parallel_in[0]), 
	.B(n31), 
	.A(Q_out[0]));
   AOI22X1 U43 (.Y(n42), 
	.D(n32), 
	.C(serial_out), 
	.B(n41), 
	.A(parallel_in[7]));
   NAND2X1 U44 (.Y(n40), 
	.B(n42), 
	.A(n43));
endmodule

module flex_counter_stuff_3 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	d_orig);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input d_orig;

   // Internal wires
   wire next_flag;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n39;
   wire n44;
   wire n45;
   wire n46;
   wire n47;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n44), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n46), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n47), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n45), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(clk));
   NAND2X1 U8 (.Y(n1), 
	.B(d_orig), 
	.A(n8));
   XNOR2X1 U10 (.Y(n9), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XNOR2X1 U11 (.Y(n10), 
	.B(1'b1), 
	.A(count_out[1]));
   XOR2X1 U12 (.Y(n4), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   INVX2 U13 (.Y(n3), 
	.A(n9));
   NOR2X1 U14 (.Y(n7), 
	.B(n3), 
	.A(n4));
   XNOR2X1 U15 (.Y(n6), 
	.B(count_out[3]), 
	.A(rollover_val[3]));
   INVX2 U16 (.Y(n30), 
	.A(count_out[2]));
   XOR2X1 U17 (.Y(n5), 
	.B(rollover_val[2]), 
	.A(n30));
   NAND3X1 U18 (.Y(n25), 
	.C(n5), 
	.B(n6), 
	.A(n7));
   INVX2 U19 (.Y(n8), 
	.A(count_enable));
   NOR2X1 U22 (.Y(n22), 
	.B(n8), 
	.A(n9));
   NOR2X1 U23 (.Y(n21), 
	.B(n10), 
	.A(clear));
   XOR2X1 U24 (.Y(n19), 
	.B(count_out[2]), 
	.A(1'b1));
   XOR2X1 U26 (.Y(n12), 
	.B(count_out[3]), 
	.A(1'b1));
   OAI21X1 U27 (.Y(n18), 
	.C(n12), 
	.B(1'b1), 
	.A(rollover_val[3]));
   NOR2X1 U28 (.Y(n20), 
	.B(n18), 
	.A(n19));
   NAND3X1 U29 (.Y(n23), 
	.C(n20), 
	.B(n21), 
	.A(n22));
   OAI21X1 U30 (.Y(next_flag), 
	.C(n23), 
	.B(n1), 
	.A(n25));
   NAND2X1 U31 (.Y(n29), 
	.B(d_orig), 
	.A(n25));
   INVX2 U32 (.Y(n37), 
	.A(n29));
   NAND3X1 U33 (.Y(n27), 
	.C(n1), 
	.B(n37), 
	.A(count_out[0]));
   OAI21X1 U34 (.Y(n26), 
	.C(n1), 
	.B(n29), 
	.A(count_out[0]));
   INVX2 U35 (.Y(n28), 
	.A(n26));
   MUX2X1 U36 (.Y(n45), 
	.S(count_out[1]), 
	.B(n27), 
	.A(n28));
   INVX2 U37 (.Y(n33), 
	.A(n27));
   NAND3X1 U38 (.Y(n32), 
	.C(n33), 
	.B(count_out[1]), 
	.A(count_out[2]));
   OAI21X1 U39 (.Y(n34), 
	.C(n28), 
	.B(n29), 
	.A(count_out[1]));
   AOI21X1 U40 (.Y(n31), 
	.C(n34), 
	.B(n30), 
	.A(n37));
   MUX2X1 U41 (.Y(n47), 
	.S(count_out[3]), 
	.B(n32), 
	.A(n31));
   NAND2X1 U42 (.Y(n36), 
	.B(n33), 
	.A(count_out[1]));
   INVX2 U43 (.Y(n35), 
	.A(n34));
   MUX2X1 U44 (.Y(n46), 
	.S(count_out[2]), 
	.B(n36), 
	.A(n35));
   NAND2X1 U45 (.Y(n39), 
	.B(n1), 
	.A(n37));
   MUX2X1 U46 (.Y(n44), 
	.S(count_out[0]), 
	.B(n39), 
	.A(n1));
endmodule

module flex_counter_stuff_2 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;

   // Internal wires
   wire next_flag;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n15;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n34;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(FE_OFN5_nn_rst), 
	.Q(count_out[0]), 
	.D(n40), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[2]), 
	.D(n42), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[1]), 
	.D(n41), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(clk));
   NAND3X1 U19 (.Y(n49), 
	.C(n46), 
	.B(n47), 
	.A(n48));
   XNOR2X1 U21 (.Y(n47), 
	.B(1'b1), 
	.A(count_out[2]));
   NAND3X1 U23 (.Y(n50), 
	.C(n44), 
	.B(count_enable), 
	.A(n45));
   NOR2X1 U24 (.Y(n44), 
	.B(1'b0), 
	.A(clear));
   XNOR2X1 U25 (.Y(n45), 
	.B(1'b0), 
	.A(count_out[3]));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[3]), 
	.D(n43), 
	.CLK(clk));
   XOR2X1 U8 (.Y(n46), 
	.B(1'b0), 
	.A(count_out[1]));
   XOR2X1 U9 (.Y(n48), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XOR2X1 U10 (.Y(n3), 
	.B(count_out[2]), 
	.A(rollover_val[2]));
   XOR2X1 U11 (.Y(n2), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   NOR2X1 U12 (.Y(n6), 
	.B(n2), 
	.A(n3));
   XNOR2X1 U13 (.Y(n5), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XNOR2X1 U14 (.Y(n4), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NAND3X1 U15 (.Y(n9), 
	.C(n4), 
	.B(n5), 
	.A(n6));
   INVX2 U16 (.Y(n7), 
	.A(count_enable));
   INVX2 U17 (.Y(n8), 
	.A(clear));
   NAND2X1 U18 (.Y(n26), 
	.B(n8), 
	.A(n7));
   OAI22X1 U20 (.Y(next_flag), 
	.D(n50), 
	.C(n49), 
	.B(n26), 
	.A(n9));
   NAND2X1 U22 (.Y(n15), 
	.B(n8), 
	.A(n9));
   INVX2 U26 (.Y(n25), 
	.A(n15));
   NAND3X1 U27 (.Y(n11), 
	.C(n26), 
	.B(n25), 
	.A(count_out[0]));
   OAI21X1 U28 (.Y(n10), 
	.C(n26), 
	.B(n15), 
	.A(count_out[0]));
   INVX2 U29 (.Y(n12), 
	.A(n10));
   MUX2X1 U30 (.Y(n41), 
	.S(count_out[1]), 
	.B(n11), 
	.A(n12));
   INVX2 U31 (.Y(n21), 
	.A(n11));
   NAND3X1 U32 (.Y(n20), 
	.C(n21), 
	.B(count_out[1]), 
	.A(count_out[2]));
   INVX2 U33 (.Y(n18), 
	.A(count_out[2]));
   OAI21X1 U34 (.Y(n22), 
	.C(n12), 
	.B(n15), 
	.A(count_out[1]));
   AOI21X1 U35 (.Y(n19), 
	.C(n22), 
	.B(n18), 
	.A(n25));
   MUX2X1 U36 (.Y(n43), 
	.S(count_out[3]), 
	.B(n20), 
	.A(n19));
   NAND2X1 U37 (.Y(n24), 
	.B(n21), 
	.A(count_out[1]));
   INVX2 U38 (.Y(n23), 
	.A(n22));
   MUX2X1 U39 (.Y(n42), 
	.S(count_out[2]), 
	.B(n24), 
	.A(n23));
   NAND2X1 U40 (.Y(n34), 
	.B(n26), 
	.A(n25));
   MUX2X1 U41 (.Y(n40), 
	.S(count_out[0]), 
	.B(n34), 
	.A(n26));
endmodule

module bit_stuffer (
	clk, 
	n_rst, 
	serial_in, 
	shift_enable, 
	stop_clock_shift_enable, 
	d_orig, 
	stop_clock, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst);
   input clk;
   input n_rst;
   input serial_in;
   input shift_enable;
   output stop_clock_shift_enable;
   output d_orig;
   output stop_clock;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;

   // Internal wires
   wire _1_net_;
   wire stop_prep;
   wire cnt_clear;
   wire cnt_done;
   wire \cur_state[1] ;
   wire n9;
   wire n12;
   wire n13;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire [3:0] count_out_value;

   assign stop_clock = \cur_state[1]  ;

   DFFSR \cur_state_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(\cur_state[1] ), 
	.D(n12), 
	.CLK(clk));
   OAI21X1 U14 (.Y(n12), 
	.C(n9), 
	.B(\cur_state[1] ), 
	.A(n7));
   NOR2X1 U18 (.Y(cnt_clear), 
	.B(n7), 
	.A(\cur_state[1] ));
   flex_counter_stuff_3 GENERATE_STOP_CLOCK (.clk(clk), 
	.n_rst(n_rst), 
	.clear(n13), 
	.count_enable(_1_net_), 
	.rollover_val({ 1'b0,
		1'b1,
		1'b1,
		1'b0 }), 
	.count_out(count_out_value), 
	.rollover_flag(stop_prep), 
	.d_orig(d_orig));
   flex_counter_stuff_2 CLOCKS (.clk(clk), 
	.n_rst(n_rst), 
	.clear(cnt_clear), 
	.count_enable(\cur_state[1] ), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.rollover_flag(cnt_done), 
	.FE_OFN5_nn_rst(FE_OFN5_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst));
   NOR2X1 U6 (.Y(n4), 
	.B(count_out_value[0]), 
	.A(count_out_value[3]));
   NAND3X1 U7 (.Y(n5), 
	.C(count_out_value[1]), 
	.B(count_out_value[2]), 
	.A(n4));
   NAND2X1 U8 (.Y(n13), 
	.B(n5), 
	.A(serial_in));
   INVX2 U9 (.Y(d_orig), 
	.A(n13));
   AND2X2 U10 (.Y(_1_net_), 
	.B(d_orig), 
	.A(shift_enable));
   INVX2 U11 (.Y(stop_clock_shift_enable), 
	.A(n5));
   INVX2 U12 (.Y(n7), 
	.A(stop_prep));
   INVX2 U13 (.Y(n8), 
	.A(cnt_done));
   NAND2X1 U15 (.Y(n9), 
	.B(\cur_state[1] ), 
	.A(n8));
endmodule

module encode (
	clk, 
	n_rst, 
	d_orig, 
	shift_enable, 
	eop, 
	sending, 
	d_plus, 
	d_minus);
   input clk;
   input n_rst;
   input d_orig;
   input shift_enable;
   input eop;
   input sending;
   output d_plus;
   output d_minus;
endmodule

module crc_16bit_gen (
	clk, 
	n_rst, 
	shift_enable_sd, 
	serial_in, 
	stop_clock_shift_enable, 
	crc_sync_rst, 
	parallel_out, 
	FE_OFN6_nn_rst, 
	FE_OFN8_nn_rst, 
	nclk__L2_N5);
   input clk;
   input n_rst;
   input shift_enable_sd;
   input serial_in;
   input stop_clock_shift_enable;
   input crc_sync_rst;
   output [15:0] parallel_out;
   input FE_OFN6_nn_rst;
   input FE_OFN8_nn_rst;
   input nclk__L2_N5;

   // Internal wires
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n54;
   wire n55;
   wire n56;

   DFFSR \out_tmp_reg[0]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[0]), 
	.D(n53), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[1]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[1]), 
	.D(n52), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[2]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[2]), 
	.D(n51), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[3]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[3]), 
	.D(n50), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[4]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[4]), 
	.D(n49), 
	.CLK(clk));
   DFFSR \out_tmp_reg[5]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[5]), 
	.D(n48), 
	.CLK(clk));
   DFFSR \out_tmp_reg[6]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[6]), 
	.D(n47), 
	.CLK(clk));
   DFFSR \out_tmp_reg[7]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[7]), 
	.D(n46), 
	.CLK(clk));
   DFFSR \out_tmp_reg[8]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[8]), 
	.D(n45), 
	.CLK(clk));
   DFFSR \out_tmp_reg[9]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[9]), 
	.D(n44), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[10]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[10]), 
	.D(n43), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[11]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[11]), 
	.D(n42), 
	.CLK(clk));
   DFFSR \out_tmp_reg[12]  (.S(FE_OFN6_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[12]), 
	.D(n41), 
	.CLK(clk));
   DFFSR \out_tmp_reg[13]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[13]), 
	.D(n40), 
	.CLK(clk));
   DFFSR \out_tmp_reg[14]  (.S(FE_OFN8_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[14]), 
	.D(n39), 
	.CLK(nclk__L2_N5));
   DFFSR \out_tmp_reg[15]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[15]), 
	.D(n38), 
	.CLK(nclk__L2_N5));
   INVX2 U20 (.Y(n54), 
	.A(n21));
   INVX2 U21 (.Y(n19), 
	.A(stop_clock_shift_enable));
   NAND2X1 U22 (.Y(n21), 
	.B(n19), 
	.A(shift_enable_sd));
   INVX2 U23 (.Y(n22), 
	.A(parallel_out[14]));
   NOR2X1 U24 (.Y(n20), 
	.B(n22), 
	.A(n21));
   XOR2X1 U25 (.Y(n38), 
	.B(n20), 
	.A(parallel_out[15]));
   INVX2 U26 (.Y(n23), 
	.A(parallel_out[13]));
   MUX2X1 U27 (.Y(n39), 
	.S(n54), 
	.B(n22), 
	.A(n23));
   INVX2 U28 (.Y(n24), 
	.A(parallel_out[12]));
   MUX2X1 U29 (.Y(n40), 
	.S(n54), 
	.B(n23), 
	.A(n24));
   INVX2 U30 (.Y(n25), 
	.A(parallel_out[11]));
   MUX2X1 U31 (.Y(n41), 
	.S(n54), 
	.B(n24), 
	.A(n25));
   INVX2 U32 (.Y(n26), 
	.A(parallel_out[10]));
   MUX2X1 U33 (.Y(n42), 
	.S(n54), 
	.B(n25), 
	.A(n26));
   INVX2 U34 (.Y(n27), 
	.A(parallel_out[9]));
   MUX2X1 U35 (.Y(n43), 
	.S(n54), 
	.B(n26), 
	.A(n27));
   INVX2 U36 (.Y(n28), 
	.A(parallel_out[8]));
   MUX2X1 U37 (.Y(n44), 
	.S(n54), 
	.B(n27), 
	.A(n28));
   INVX2 U38 (.Y(n29), 
	.A(parallel_out[7]));
   MUX2X1 U39 (.Y(n45), 
	.S(n54), 
	.B(n28), 
	.A(n29));
   INVX2 U40 (.Y(n30), 
	.A(parallel_out[6]));
   MUX2X1 U41 (.Y(n46), 
	.S(n54), 
	.B(n29), 
	.A(n30));
   INVX2 U42 (.Y(n31), 
	.A(parallel_out[5]));
   MUX2X1 U43 (.Y(n47), 
	.S(n54), 
	.B(n30), 
	.A(n31));
   INVX2 U44 (.Y(n32), 
	.A(parallel_out[4]));
   MUX2X1 U45 (.Y(n48), 
	.S(n54), 
	.B(n31), 
	.A(n32));
   INVX2 U46 (.Y(n33), 
	.A(parallel_out[3]));
   MUX2X1 U47 (.Y(n49), 
	.S(n54), 
	.B(n32), 
	.A(n33));
   INVX2 U48 (.Y(n35), 
	.A(parallel_out[2]));
   MUX2X1 U49 (.Y(n50), 
	.S(n54), 
	.B(n33), 
	.A(n35));
   INVX2 U50 (.Y(n37), 
	.A(parallel_out[15]));
   XOR2X1 U51 (.Y(n34), 
	.B(parallel_out[1]), 
	.A(n37));
   MUX2X1 U52 (.Y(n51), 
	.S(n54), 
	.B(n35), 
	.A(n34));
   INVX2 U53 (.Y(n36), 
	.A(parallel_out[1]));
   INVX2 U54 (.Y(n56), 
	.A(parallel_out[0]));
   MUX2X1 U55 (.Y(n52), 
	.S(n54), 
	.B(n36), 
	.A(n56));
   XOR2X1 U56 (.Y(n55), 
	.B(serial_in), 
	.A(n37));
   MUX2X1 U57 (.Y(n53), 
	.S(n54), 
	.B(n56), 
	.A(n55));
endmodule

module usb_transmitter (
	clk, 
	n_rst, 
	tx_transmit, 
	tx_send_good, 
	tx_send_bad, 
	empty, 
	sd_data, 
	load_enable_sd, 
	d_plus, 
	tx_done, 
	tx_err, 
	d_minus, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst, 
	FE_OFN8_nn_rst, 
	nclk__L2_N5, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input tx_transmit;
   input tx_send_good;
   input tx_send_bad;
   input empty;
   input [7:0] sd_data;
   output load_enable_sd;
   output d_plus;
   output tx_done;
   output tx_err;
   output d_minus;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;
   input FE_OFN8_nn_rst;
   input nclk__L2_N5;
   input nclk__L2_N8;

   // Internal wires
   wire load_enable;
   wire sending;
   wire sd_enable;
   wire load_enable_g;
   wire eop;
   wire crc_sync_rst;
   wire stop_clock;
   wire shift_enable;
   wire stop_clock_shift_enable;
   wire shift_enable_sd;
   wire _0_net_;
   wire serial_in;
   wire d_orig;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire [15:0] crc_value;
   wire [7:0] tcu_data;

   assign tx_err = 1'b0 ;

   tcu TCU (.clk(clk), 
	.n_rst(n_rst), 
	.tx_transmit(tx_transmit), 
	.tx_send_good(tx_send_good), 
	.tx_send_bad(tx_send_bad), 
	.load_enable(load_enable), 
	.empty(empty), 
	.crc_value(crc_value), 
	.data(tcu_data), 
	.sending(sending), 
	.sd_enable(sd_enable), 
	.load_enable_g(load_enable_g), 
	.tx_done(tx_done), 
	.eop(eop), 
	.crc_sync_rst(crc_sync_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.nclk__L2_N5(nclk__L2_N5));
   timerTX SHIFT_ENABLE_GEN (.clk(nclk__L2_N5), 
	.n_rst(n_rst), 
	.sending(sending), 
	.stop_clock(stop_clock), 
	.sd_enable(sd_enable), 
	.load_enable_g(load_enable_g), 
	.stop_clock_shift_enable(stop_clock_shift_enable), 
	.load_enable_sd(load_enable_sd), 
	.shift_enable_sd(shift_enable_sd), 
	.shift_enable(shift_enable), 
	.load_enable(load_enable), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.nclk__L2_N8(nclk__L2_N8));
   flex_pts_tx SHIFT_REGISTER (.clk(nclk__L2_N5), 
	.n_rst(n_rst), 
	.shift_enable(shift_enable), 
	.load_enable(_0_net_), 
	.parallel_in({ n18,
		n17,
		n16,
		n15,
		n14,
		n13,
		n12,
		n11 }), 
	.stop_clock_shift_enable(stop_clock_shift_enable), 
	.serial_out(serial_in), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.nclk__L2_N8(nclk__L2_N8));
   bit_stuffer STOP_CLOCK_GEN (.clk(nclk__L2_N8), 
	.n_rst(n_rst), 
	.serial_in(serial_in), 
	.shift_enable(shift_enable), 
	.stop_clock_shift_enable(stop_clock_shift_enable), 
	.d_orig(d_orig), 
	.stop_clock(stop_clock), 
	.FE_OFN5_nn_rst(FE_OFN5_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst));
   encode ENCODER (.clk(clk), 
	.n_rst(n_rst), 
	.d_orig(d_orig), 
	.shift_enable(shift_enable), 
	.eop(eop), 
	.sending(sending), 
	.d_plus(d_plus), 
	.d_minus(d_minus));
   crc_16bit_gen CRC_GENERATOR (.clk(clk), 
	.n_rst(n_rst), 
	.shift_enable_sd(shift_enable_sd), 
	.serial_in(serial_in), 
	.stop_clock_shift_enable(stop_clock_shift_enable), 
	.crc_sync_rst(crc_sync_rst), 
	.parallel_out(crc_value), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN8_nn_rst(FE_OFN8_nn_rst), 
	.nclk__L2_N5(nclk__L2_N5));
   BUFX2 U2 (.Y(n2), 
	.A(load_enable_sd));
   OR2X2 U3 (.Y(_0_net_), 
	.B(load_enable_g), 
	.A(load_enable));
   MUX2X1 U4 (.Y(n3), 
	.S(n2), 
	.B(tcu_data[0]), 
	.A(sd_data[0]));
   INVX2 U5 (.Y(n11), 
	.A(n3));
   MUX2X1 U6 (.Y(n4), 
	.S(n2), 
	.B(tcu_data[1]), 
	.A(sd_data[1]));
   INVX2 U7 (.Y(n12), 
	.A(n4));
   MUX2X1 U8 (.Y(n5), 
	.S(n2), 
	.B(tcu_data[2]), 
	.A(sd_data[2]));
   INVX2 U9 (.Y(n13), 
	.A(n5));
   MUX2X1 U10 (.Y(n6), 
	.S(n2), 
	.B(tcu_data[3]), 
	.A(sd_data[3]));
   INVX2 U11 (.Y(n14), 
	.A(n6));
   MUX2X1 U12 (.Y(n7), 
	.S(n2), 
	.B(tcu_data[4]), 
	.A(sd_data[4]));
   INVX2 U13 (.Y(n15), 
	.A(n7));
   MUX2X1 U14 (.Y(n8), 
	.S(n2), 
	.B(tcu_data[5]), 
	.A(sd_data[5]));
   INVX2 U15 (.Y(n16), 
	.A(n8));
   MUX2X1 U16 (.Y(n9), 
	.S(n2), 
	.B(tcu_data[6]), 
	.A(sd_data[6]));
   INVX2 U17 (.Y(n17), 
	.A(n9));
   MUX2X1 U18 (.Y(n10), 
	.S(n2), 
	.B(tcu_data[7]), 
	.A(sd_data[7]));
   INVX2 U19 (.Y(n18), 
	.A(n10));
endmodule

module sync_1 (
	clk, 
	n_rst, 
	async_in, 
	sync_out, 
	FE_OFN2_nn_rst);
   input clk;
   input n_rst;
   input async_in;
   output sync_out;
   input FE_OFN2_nn_rst;

   // Internal wires
   wire FE_PHN29_nd_plus;
   wire FE_PHN26_nd_plus;
   wire FE_PHN24_nd_plus;
   wire FE_PHN21_nd_plus;
   wire Q1;

   BUFX2 FE_PHC29_nd_plus (.Y(FE_PHN29_nd_plus), 
	.A(async_in));
   BUFX2 FE_PHC26_nd_plus (.Y(FE_PHN26_nd_plus), 
	.A(FE_PHN29_nd_plus));
   BUFX2 FE_PHC24_nd_plus (.Y(FE_PHN24_nd_plus), 
	.A(FE_PHN26_nd_plus));
   CLKBUF3 FE_PHC21_nd_plus (.Y(FE_PHN21_nd_plus), 
	.A(FE_PHN24_nd_plus));
   DFFSR Q1_reg (.S(1'b1), 
	.R(FE_OFN2_nn_rst), 
	.Q(Q1), 
	.D(FE_PHN21_nd_plus), 
	.CLK(clk));
   DFFSR Q2_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(sync_out), 
	.D(Q1), 
	.CLK(clk));
endmodule

module sync_0 (
	clk, 
	n_rst, 
	async_in, 
	sync_out);
   input clk;
   input n_rst;
   input async_in;
   output sync_out;

   // Internal wires
   wire FE_PHN27_nd_minus;
   wire FE_PHN25_nd_minus;
   wire FE_PHN22_nd_minus;
   wire Q1;

   BUFX2 FE_PHC27_nd_minus (.Y(FE_PHN27_nd_minus), 
	.A(async_in));
   BUFX2 FE_PHC25_nd_minus (.Y(FE_PHN25_nd_minus), 
	.A(FE_PHN27_nd_minus));
   CLKBUF3 FE_PHC22_nd_minus (.Y(FE_PHN22_nd_minus), 
	.A(FE_PHN25_nd_minus));
   DFFSR Q1_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(Q1), 
	.D(FE_PHN22_nd_minus), 
	.CLK(clk));
   DFFSR Q2_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(sync_out), 
	.D(Q1), 
	.CLK(clk));
endmodule

module decode (
	clk, 
	n_rst, 
	d_plus, 
	shift_enable, 
	eop, 
	d_orig, 
	FE_OFN1_nn_rst);
   input clk;
   input n_rst;
   input d_plus;
   input shift_enable;
   input eop;
   output d_orig;
   input FE_OFN1_nn_rst;

   // Internal wires
   wire cur_d;
   wire cur_stored;
   wire n5;
   wire n6;
   wire n7;
   wire n3;
   wire n4;

   DFFSR cur_d_reg (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(cur_d), 
	.D(n3), 
	.CLK(clk));
   DFFSR cur_stored_reg (.S(n_rst), 
	.R(1'b1), 
	.Q(cur_stored), 
	.D(n7), 
	.CLK(clk));
   AOI21X1 U7 (.Y(n5), 
	.C(d_plus), 
	.B(shift_enable), 
	.A(eop));
   OAI21X1 U8 (.Y(n7), 
	.C(n6), 
	.B(n4), 
	.A(shift_enable));
   OAI21X1 U9 (.Y(n6), 
	.C(shift_enable), 
	.B(eop), 
	.A(d_plus));
   XNOR2X1 U5 (.Y(d_orig), 
	.B(cur_d), 
	.A(cur_stored));
   INVX2 U6 (.Y(n3), 
	.A(n5));
   INVX2 U10 (.Y(n4), 
	.A(cur_stored));
endmodule

module edge_detect_0 (
	clk, 
	n_rst, 
	d_plus, 
	d_edge);
   input clk;
   input n_rst;
   input d_plus;
   output d_edge;

   // Internal wires
   wire past_d_plus;
   wire N0;

   DFFSR past_d_plus_reg (.S(n_rst), 
	.R(1'b1), 
	.Q(past_d_plus), 
	.D(d_plus), 
	.CLK(clk));
   DFFSR cur_d_edge_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(d_edge), 
	.D(N0), 
	.CLK(clk));
   XOR2X1 U5 (.Y(N0), 
	.B(d_plus), 
	.A(past_d_plus));
endmodule

module eop_detect (
	d_plus, 
	d_minus, 
	eop);
   input d_plus;
   input d_minus;
   output eop;

   NOR2X1 U1 (.Y(eop), 
	.B(d_minus), 
	.A(d_plus));
endmodule

module flex_counter_1 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN1_nn_rst);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input FE_OFN1_nn_rst;

   // Internal wires
   wire next_flag;
   wire n40;
   wire n42;
   wire n44;
   wire n46;
   wire n1;
   wire n7;
   wire n8;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n41;
   wire n43;
   wire n45;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n40), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n44), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(FE_OFN1_nn_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n42), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n46), 
	.CLK(clk));
   AND2X2 U4 (.Y(n1), 
	.B(n39), 
	.A(n27));
   INVX1 U5 (.Y(n26), 
	.A(n1));
   INVX2 U8 (.Y(n14), 
	.A(n17));
   MUX2X1 U9 (.Y(n40), 
	.S(n66), 
	.B(n24), 
	.A(n52));
   INVX1 U10 (.Y(n66), 
	.A(n65));
   AND2X2 U11 (.Y(n8), 
	.B(n41), 
	.A(n1));
   XOR2X1 U15 (.Y(n53), 
	.B(n7), 
	.A(n24));
   NAND2X1 U16 (.Y(n7), 
	.B(n22), 
	.A(n19));
   INVX2 U17 (.Y(n41), 
	.A(rollover_val[2]));
   INVX1 U18 (.Y(n61), 
	.A(n60));
   OR2X2 U24 (.Y(n63), 
	.B(n60), 
	.A(n59));
   XOR2X1 U25 (.Y(n68), 
	.B(n14), 
	.A(n64));
   AND2X1 U26 (.Y(n15), 
	.B(n22), 
	.A(n19));
   AND2X2 U28 (.Y(n19), 
	.B(count_out[1]), 
	.A(n18));
   INVX1 U29 (.Y(n16), 
	.A(clear));
   AND2X2 U31 (.Y(n17), 
	.B(count_out[3]), 
	.A(n61));
   NAND3X1 U32 (.Y(n18), 
	.C(n45), 
	.B(n47), 
	.A(n48));
   INVX1 U33 (.Y(n27), 
	.A(rollover_val[0]));
   NAND2X1 U34 (.Y(n20), 
	.B(n24), 
	.A(n15));
   INVX1 U35 (.Y(n59), 
	.A(count_out[2]));
   INVX1 U36 (.Y(n54), 
	.A(count_out[1]));
   XNOR2X1 U37 (.Y(n21), 
	.B(n52), 
	.A(rollover_val[0]));
   XNOR2X1 U38 (.Y(n58), 
	.B(n63), 
	.A(n20));
   AND2X2 U39 (.Y(n22), 
	.B(count_enable), 
	.A(clear));
   INVX2 U40 (.Y(n24), 
	.A(n51));
   INVX1 U41 (.Y(n23), 
	.A(n31));
   INVX1 U42 (.Y(n31), 
	.A(rollover_val[3]));
   INVX2 U43 (.Y(n39), 
	.A(rollover_val[1]));
   NAND2X1 U44 (.Y(n33), 
	.B(n1), 
	.A(n41));
   OAI21X1 U45 (.Y(n28), 
	.C(n26), 
	.B(n39), 
	.A(n27));
   XOR2X1 U46 (.Y(n29), 
	.B(count_out[1]), 
	.A(n28));
   NOR2X1 U47 (.Y(n30), 
	.B(n29), 
	.A(n16));
   OAI21X1 U48 (.Y(n50), 
	.C(n30), 
	.B(n33), 
	.A(n23));
   INVX2 U49 (.Y(n52), 
	.A(count_out[0]));
   NOR2X1 U50 (.Y(n32), 
	.B(n8), 
	.A(n31));
   XOR2X1 U51 (.Y(n36), 
	.B(n32), 
	.A(count_out[3]));
   OAI21X1 U52 (.Y(n34), 
	.C(n33), 
	.B(n41), 
	.A(n1));
   XOR2X1 U53 (.Y(n35), 
	.B(count_out[2]), 
	.A(n34));
   NOR2X1 U54 (.Y(n37), 
	.B(n36), 
	.A(n35));
   NAND3X1 U55 (.Y(n49), 
	.C(n37), 
	.B(n21), 
	.A(count_enable));
   INVX2 U56 (.Y(n38), 
	.A(count_enable));
   NAND2X1 U57 (.Y(n65), 
	.B(clear), 
	.A(n38));
   XOR2X1 U58 (.Y(n48), 
	.B(count_out[1]), 
	.A(n39));
   XOR2X1 U59 (.Y(n47), 
	.B(count_out[2]), 
	.A(n41));
   XOR2X1 U60 (.Y(n43), 
	.B(count_out[3]), 
	.A(rollover_val[3]));
   NOR2X1 U61 (.Y(n45), 
	.B(n21), 
	.A(n43));
   OAI22X1 U63 (.Y(next_flag), 
	.D(n18), 
	.C(n65), 
	.B(n50), 
	.A(n49));
   NAND3X1 U64 (.Y(n51), 
	.C(n18), 
	.B(n22), 
	.A(count_out[0]));
   OAI21X1 U65 (.Y(n42), 
	.C(n53), 
	.B(n54), 
	.A(n65));
   NAND2X1 U66 (.Y(n60), 
	.B(n18), 
	.A(clear));
   OAI21X1 U68 (.Y(n44), 
	.C(n58), 
	.B(n59), 
	.A(n65));
   NOR2X1 U69 (.Y(n64), 
	.B(n20), 
	.A(n63));
   NAND2X1 U70 (.Y(n67), 
	.B(n66), 
	.A(count_out[3]));
   NAND2X1 U71 (.Y(n46), 
	.B(n68), 
	.A(n67));
endmodule

module flex_counter_0 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN2_nn_rst);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input FE_OFN2_nn_rst;

   // Internal wires
   wire n2;
   wire n3;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n13;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n58;
   wire n60;
   wire n62;
   wire n64;

   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n58), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(FE_OFN2_nn_rst), 
	.Q(count_out[2]), 
	.D(n60), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n62), 
	.CLK(clk));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n64), 
	.CLK(clk));
   AND2X2 U4 (.Y(n2), 
	.B(n31), 
	.A(n47));
   INVX2 U5 (.Y(n53), 
	.A(n2));
   MUX2X1 U6 (.Y(n64), 
	.S(n2), 
	.B(n10), 
	.A(n32));
   XOR2X1 U7 (.Y(n55), 
	.B(n3), 
	.A(n52));
   AND2X2 U8 (.Y(n3), 
	.B(n9), 
	.A(count_out[3]));
   INVX2 U9 (.Y(n50), 
	.A(n8));
   INVX1 U10 (.Y(n49), 
	.A(count_out[2]));
   AND2X2 U11 (.Y(n8), 
	.B(n9), 
	.A(count_out[2]));
   NAND2X1 U14 (.Y(n7), 
	.B(n6), 
	.A(n2));
   NAND2X1 U15 (.Y(n62), 
	.B(n34), 
	.A(n7));
   INVX1 U16 (.Y(n6), 
	.A(n35));
   NOR3X1 U17 (.Y(n9), 
	.C(clear), 
	.B(n47), 
	.A(n13));
   INVX2 U18 (.Y(n13), 
	.A(n36));
   AND2X2 U19 (.Y(n10), 
	.B(count_out[0]), 
	.A(n9));
   XNOR2X1 U20 (.Y(n11), 
	.B(rollover_val[0]), 
	.A(n32));
   INVX1 U22 (.Y(n47), 
	.A(count_enable));
   INVX1 U23 (.Y(n31), 
	.A(clear));
   INVX2 U26 (.Y(n35), 
	.A(count_out[1]));
   INVX2 U30 (.Y(n32), 
	.A(count_out[0]));
   XOR2X1 U44 (.Y(n28), 
	.B(rollover_val[1]), 
	.A(n35));
   XOR2X1 U45 (.Y(n27), 
	.B(count_out[2]), 
	.A(1'b1));
   XOR2X1 U46 (.Y(n25), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NOR2X1 U47 (.Y(n26), 
	.B(n11), 
	.A(n25));
   NAND3X1 U48 (.Y(n36), 
	.C(n26), 
	.B(n27), 
	.A(n28));
   NAND2X1 U50 (.Y(n33), 
	.B(count_out[1]), 
	.A(n9));
   XOR2X1 U51 (.Y(n34), 
	.B(n33), 
	.A(n10));
   NAND3X1 U52 (.Y(n37), 
	.C(count_out[1]), 
	.B(n36), 
	.A(count_out[0]));
   NOR3X1 U53 (.Y(n51), 
	.C(n47), 
	.B(n37), 
	.A(clear));
   XOR2X1 U54 (.Y(n48), 
	.B(n51), 
	.A(n50));
   OAI21X1 U55 (.Y(n60), 
	.C(n48), 
	.B(n49), 
	.A(n53));
   NAND2X1 U56 (.Y(n52), 
	.B(n8), 
	.A(n51));
   NAND2X1 U57 (.Y(n54), 
	.B(n2), 
	.A(count_out[3]));
   NAND2X1 U58 (.Y(n58), 
	.B(n55), 
	.A(n54));
endmodule

module timerRX (
	clk, 
	n_rst, 
	d_edge, 
	rcving, 
	bit_cnt, 
	shift_stop, 
	shift_enable, 
	byte_received, 
	field_received, 
	FE_OFN2_nn_rst, 
	FE_OFN1_nn_rst, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input d_edge;
   input rcving;
   input [3:0] bit_cnt;
   input shift_stop;
   output shift_enable;
   output byte_received;
   output field_received;
   input FE_OFN2_nn_rst;
   input FE_OFN1_nn_rst;
   input nclk__L2_N9;

   // Internal wires
   wire _1_net_;
   wire flag_temp;
   wire clear_temp;
   wire n1;
   wire n2;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [3:0] useless;
   wire [3:0] clk_count;

   flex_counter_1 BITS (.clk(nclk__L2_N9), 
	.n_rst(FE_OFN2_nn_rst), 
	.clear(rcving), 
	.count_enable(_1_net_), 
	.rollover_val(bit_cnt), 
	.count_out(useless), 
	.rollover_flag(flag_temp), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst));
   flex_counter_0 CLKS (.clk(clk), 
	.n_rst(n_rst), 
	.clear(clear_temp), 
	.count_enable(rcving), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.count_out(clk_count), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst));
   INVX1 U3 (.Y(n2), 
	.A(d_edge));
   INVX2 U4 (.Y(clear_temp), 
	.A(n1));
   AND2X2 U5 (.Y(n1), 
	.B(rcving), 
	.A(n2));
   AND2X2 U8 (.Y(shift_enable), 
	.B(n8), 
	.A(n7));
   INVX1 U9 (.Y(n9), 
	.A(shift_enable));
   NAND2X1 U10 (.Y(n6), 
	.B(clk_count[1]), 
	.A(clk_count[0]));
   INVX2 U11 (.Y(n7), 
	.A(n6));
   NOR2X1 U13 (.Y(n8), 
	.B(clk_count[2]), 
	.A(clk_count[3]));
   NOR2X1 U14 (.Y(_1_net_), 
	.B(n9), 
	.A(shift_stop));
   AND2X2 U15 (.Y(field_received), 
	.B(shift_enable), 
	.A(flag_temp));
   NAND2X1 U16 (.Y(n10), 
	.B(shift_enable), 
	.A(useless[3]));
   NOR2X1 U17 (.Y(n12), 
	.B(n10), 
	.A(useless[0]));
   NOR2X1 U18 (.Y(n11), 
	.B(useless[1]), 
	.A(useless[2]));
   AND2X2 U19 (.Y(byte_received), 
	.B(n11), 
	.A(n12));
endmodule

module flex_counter_stuff_1 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN2_nn_rst, 
	FE_OFN1_nn_rst, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;
   input FE_OFN2_nn_rst;
   input FE_OFN1_nn_rst;
   input nclk__L2_N9;

   // Internal wires
   wire next_flag;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n42;
   wire n43;
   wire n44;
   wire n45;

   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n44), 
	.CLK(nclk__L2_N9));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n45), 
	.CLK(clk));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(FE_OFN1_nn_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(nclk__L2_N9));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_nn_rst), 
	.Q(count_out[0]), 
	.D(n42), 
	.CLK(nclk__L2_N9));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_nn_rst), 
	.Q(count_out[1]), 
	.D(n43), 
	.CLK(nclk__L2_N9));
   XOR2X1 U8 (.Y(n4), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   INVX2 U9 (.Y(n27), 
	.A(count_out[2]));
   XOR2X1 U10 (.Y(n6), 
	.B(1'b1), 
	.A(n27));
   INVX2 U11 (.Y(n21), 
	.A(clear));
   NAND3X1 U13 (.Y(n20), 
	.C(1'b1), 
	.B(n21), 
	.A(n6));
   INVX2 U14 (.Y(n11), 
	.A(count_out[3]));
   XOR2X1 U15 (.Y(n9), 
	.B(1'b1), 
	.A(n11));
   INVX2 U16 (.Y(n7), 
	.A(count_out[1]));
   XOR2X1 U17 (.Y(n8), 
	.B(1'b1), 
	.A(n7));
   NOR2X1 U18 (.Y(n10), 
	.B(n8), 
	.A(n9));
   NAND3X1 U19 (.Y(n19), 
	.C(n10), 
	.B(n4), 
	.A(count_enable));
   XOR2X1 U21 (.Y(n14), 
	.B(rollover_val[3]), 
	.A(n11));
   XOR2X1 U22 (.Y(n12), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   NOR2X1 U23 (.Y(n13), 
	.B(n4), 
	.A(n12));
   NAND3X1 U24 (.Y(n22), 
	.C(n13), 
	.B(n14), 
	.A(n6));
   INVX2 U25 (.Y(n18), 
	.A(count_enable));
   NAND2X1 U26 (.Y(n35), 
	.B(n21), 
	.A(n18));
   OAI22X1 U27 (.Y(next_flag), 
	.D(n35), 
	.C(n22), 
	.B(n19), 
	.A(n20));
   NAND2X1 U28 (.Y(n26), 
	.B(n21), 
	.A(n22));
   INVX2 U29 (.Y(n34), 
	.A(n26));
   NAND3X1 U30 (.Y(n24), 
	.C(n35), 
	.B(n34), 
	.A(count_out[0]));
   OAI21X1 U31 (.Y(n23), 
	.C(n35), 
	.B(n26), 
	.A(count_out[0]));
   INVX2 U32 (.Y(n25), 
	.A(n23));
   MUX2X1 U33 (.Y(n43), 
	.S(count_out[1]), 
	.B(n24), 
	.A(n25));
   INVX2 U34 (.Y(n30), 
	.A(n24));
   NAND3X1 U35 (.Y(n29), 
	.C(n30), 
	.B(count_out[1]), 
	.A(count_out[2]));
   OAI21X1 U36 (.Y(n31), 
	.C(n25), 
	.B(n26), 
	.A(count_out[1]));
   AOI21X1 U37 (.Y(n28), 
	.C(n31), 
	.B(n27), 
	.A(n34));
   MUX2X1 U38 (.Y(n45), 
	.S(count_out[3]), 
	.B(n29), 
	.A(n28));
   NAND2X1 U39 (.Y(n33), 
	.B(n30), 
	.A(count_out[1]));
   INVX2 U40 (.Y(n32), 
	.A(n31));
   MUX2X1 U41 (.Y(n44), 
	.S(count_out[2]), 
	.B(n33), 
	.A(n32));
   NAND2X1 U42 (.Y(n36), 
	.B(n35), 
	.A(n34));
   MUX2X1 U43 (.Y(n42), 
	.S(count_out[0]), 
	.B(n36), 
	.A(n35));
endmodule

module flex_counter_stuff_0 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [3:0] rollover_val;
   output [3:0] count_out;
   output rollover_flag;

   // Internal wires
   wire next_flag;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n15;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n34;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n42), 
	.CLK(clk));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n41), 
	.CLK(clk));
   NAND3X1 U19 (.Y(n49), 
	.C(n46), 
	.B(n47), 
	.A(n48));
   XNOR2X1 U21 (.Y(n47), 
	.B(1'b1), 
	.A(count_out[2]));
   XNOR2X1 U22 (.Y(n48), 
	.B(1'b1), 
	.A(count_out[0]));
   NAND3X1 U23 (.Y(n50), 
	.C(n44), 
	.B(count_enable), 
	.A(n45));
   NOR2X1 U24 (.Y(n44), 
	.B(1'b0), 
	.A(clear));
   DFFSR cur_flag_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(rollover_flag), 
	.D(next_flag), 
	.CLK(clk));
   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n40), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n43), 
	.CLK(clk));
   XOR2X1 U8 (.Y(n46), 
	.B(1'b0), 
	.A(count_out[1]));
   XOR2X1 U9 (.Y(n45), 
	.B(1'b1), 
	.A(count_out[3]));
   XOR2X1 U10 (.Y(n5), 
	.B(count_out[2]), 
	.A(rollover_val[2]));
   XOR2X1 U11 (.Y(n4), 
	.B(count_out[1]), 
	.A(rollover_val[1]));
   NOR2X1 U12 (.Y(n8), 
	.B(n4), 
	.A(n5));
   XNOR2X1 U13 (.Y(n7), 
	.B(rollover_val[0]), 
	.A(count_out[0]));
   XNOR2X1 U14 (.Y(n6), 
	.B(rollover_val[3]), 
	.A(count_out[3]));
   NAND3X1 U15 (.Y(n11), 
	.C(n6), 
	.B(n7), 
	.A(n8));
   INVX2 U16 (.Y(n9), 
	.A(count_enable));
   INVX2 U17 (.Y(n10), 
	.A(clear));
   NAND2X1 U18 (.Y(n26), 
	.B(n10), 
	.A(n9));
   OAI22X1 U20 (.Y(next_flag), 
	.D(n50), 
	.C(n49), 
	.B(n26), 
	.A(n11));
   NAND2X1 U25 (.Y(n17), 
	.B(n10), 
	.A(n11));
   INVX2 U26 (.Y(n25), 
	.A(n17));
   NAND3X1 U27 (.Y(n13), 
	.C(n26), 
	.B(n25), 
	.A(count_out[0]));
   OAI21X1 U28 (.Y(n12), 
	.C(n26), 
	.B(n17), 
	.A(count_out[0]));
   INVX2 U29 (.Y(n15), 
	.A(n12));
   MUX2X1 U30 (.Y(n41), 
	.S(count_out[1]), 
	.B(n13), 
	.A(n15));
   INVX2 U31 (.Y(n21), 
	.A(n13));
   NAND3X1 U32 (.Y(n20), 
	.C(n21), 
	.B(count_out[1]), 
	.A(count_out[2]));
   INVX2 U33 (.Y(n18), 
	.A(count_out[2]));
   OAI21X1 U34 (.Y(n22), 
	.C(n15), 
	.B(n17), 
	.A(count_out[1]));
   AOI21X1 U35 (.Y(n19), 
	.C(n22), 
	.B(n18), 
	.A(n25));
   MUX2X1 U36 (.Y(n43), 
	.S(count_out[3]), 
	.B(n20), 
	.A(n19));
   NAND2X1 U37 (.Y(n24), 
	.B(n21), 
	.A(count_out[1]));
   INVX2 U38 (.Y(n23), 
	.A(n22));
   MUX2X1 U39 (.Y(n42), 
	.S(count_out[2]), 
	.B(n24), 
	.A(n23));
   NAND2X1 U40 (.Y(n34), 
	.B(n26), 
	.A(n25));
   MUX2X1 U41 (.Y(n40), 
	.S(count_out[0]), 
	.B(n34), 
	.A(n26));
endmodule

module bit_unstuff (
	clk, 
	n_rst, 
	d_orig, 
	d_edge, 
	shift_enable, 
	shift_stop, 
	FE_OFN2_nn_rst, 
	FE_OFN1_nn_rst, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input d_orig;
   input d_edge;
   input shift_enable;
   output shift_stop;
   input FE_OFN2_nn_rst;
   input FE_OFN1_nn_rst;
   input nclk__L2_N9;

   // Internal wires
   wire FE_OFN15_shift_stop;
   wire \cur_state[1] ;
   wire stop_prep;
   wire cnt_done;
   wire cnt_clear;
   wire _0_net_;
   wire n7;
   wire n9;
   wire n4;
   wire n5;

   assign shift_stop = \cur_state[1]  ;

   BUFX2 FE_OFC15_shift_stop (.Y(\cur_state[1] ), 
	.A(FE_OFN15_shift_stop));
   DFFSR \cur_state_reg[1]  (.S(1'b1), 
	.R(FE_OFN1_nn_rst), 
	.Q(FE_OFN15_shift_stop), 
	.D(n9), 
	.CLK(nclk__L2_N9));
   OAI21X1 U12 (.Y(n9), 
	.C(n7), 
	.B(\cur_state[1] ), 
	.A(n4));
   NOR2X1 U15 (.Y(cnt_clear), 
	.B(n4), 
	.A(\cur_state[1] ));
   flex_counter_stuff_1 ONES (.clk(clk), 
	.n_rst(n_rst), 
	.clear(d_edge), 
	.count_enable(_0_net_), 
	.rollover_val({ 1'b0,
		1'b1,
		1'b1,
		1'b0 }), 
	.rollover_flag(stop_prep), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst), 
	.nclk__L2_N9(nclk__L2_N9));
   flex_counter_stuff_0 CLKS (.clk(nclk__L2_N9), 
	.n_rst(FE_OFN2_nn_rst), 
	.clear(cnt_clear), 
	.count_enable(\cur_state[1] ), 
	.rollover_val({ 1'b1,
		1'b0,
		1'b0,
		1'b0 }), 
	.rollover_flag(cnt_done));
   AND2X2 U6 (.Y(_0_net_), 
	.B(d_orig), 
	.A(shift_enable));
   INVX2 U7 (.Y(n4), 
	.A(stop_prep));
   INVX2 U8 (.Y(n5), 
	.A(cnt_done));
   NAND2X1 U9 (.Y(n7), 
	.B(\cur_state[1] ), 
	.A(n5));
endmodule

module crc_check_5bit (
	clk, 
	n_rst, 
	shift_enable, 
	serial_in, 
	eop, 
	shift_stop, 
	crc_rcv, 
	sync_rst, 
	parallel_out, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input shift_enable;
   input serial_in;
   input eop;
   input shift_stop;
   input crc_rcv;
   input sync_rst;
   output [4:0] parallel_out;
   input nclk__L2_N9;

   // Internal wires
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n25;
   wire n26;

   DFFSR \out_tmp_reg[0]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[0]), 
	.D(n24), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[1]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[1]), 
	.D(n23), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[2]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[2]), 
	.D(n22), 
	.CLK(clk));
   DFFSR \out_tmp_reg[3]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[3]), 
	.D(n21), 
	.CLK(clk));
   DFFSR \out_tmp_reg[4]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[4]), 
	.D(n20), 
	.CLK(nclk__L2_N9));
   NOR2X1 U8 (.Y(n6), 
	.B(n10), 
	.A(n11));
   INVX1 U10 (.Y(n12), 
	.A(crc_rcv));
   OAI21X1 U11 (.Y(n11), 
	.C(shift_enable), 
	.B(sync_rst), 
	.A(crc_rcv));
   INVX2 U12 (.Y(n9), 
	.A(eop));
   INVX2 U13 (.Y(n8), 
	.A(shift_stop));
   NAND2X1 U14 (.Y(n10), 
	.B(n8), 
	.A(n9));
   NAND2X1 U16 (.Y(n26), 
	.B(n12), 
	.A(n6));
   MUX2X1 U17 (.Y(n13), 
	.S(n6), 
	.B(parallel_out[4]), 
	.A(parallel_out[3]));
   NAND2X1 U18 (.Y(n20), 
	.B(n13), 
	.A(n26));
   MUX2X1 U19 (.Y(n14), 
	.S(n6), 
	.B(parallel_out[3]), 
	.A(parallel_out[2]));
   NAND2X1 U20 (.Y(n21), 
	.B(n14), 
	.A(n26));
   XOR2X1 U21 (.Y(n15), 
	.B(parallel_out[4]), 
	.A(parallel_out[1]));
   MUX2X1 U22 (.Y(n16), 
	.S(n6), 
	.B(parallel_out[2]), 
	.A(n15));
   NAND2X1 U23 (.Y(n22), 
	.B(n16), 
	.A(n26));
   MUX2X1 U24 (.Y(n17), 
	.S(n6), 
	.B(parallel_out[1]), 
	.A(parallel_out[0]));
   NAND2X1 U25 (.Y(n23), 
	.B(n17), 
	.A(n26));
   XOR2X1 U26 (.Y(n19), 
	.B(parallel_out[4]), 
	.A(serial_in));
   MUX2X1 U27 (.Y(n25), 
	.S(n6), 
	.B(parallel_out[0]), 
	.A(n19));
   NAND2X1 U28 (.Y(n24), 
	.B(n25), 
	.A(n26));
endmodule

module crc_check_16bit (
	clk, 
	n_rst, 
	shift_enable, 
	serial_in, 
	eop, 
	shift_stop, 
	crc_rcv, 
	sync_rst, 
	parallel_out, 
	FE_OFN3_nn_rst, 
	FE_OFN1_nn_rst, 
	nclk__L2_N4, 
	nclk__L2_N6);
   input clk;
   input n_rst;
   input shift_enable;
   input serial_in;
   input eop;
   input shift_stop;
   input crc_rcv;
   input sync_rst;
   output [15:0] parallel_out;
   input FE_OFN3_nn_rst;
   input FE_OFN1_nn_rst;
   input nclk__L2_N4;
   input nclk__L2_N6;

   // Internal wires
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n17;
   wire n18;
   wire n19;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n44;
   wire n45;

   DFFSR \out_tmp_reg[0]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[0]), 
	.D(n70), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[1]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[1]), 
	.D(n69), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[2]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[2]), 
	.D(n68), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[3]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[3]), 
	.D(n67), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[4]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[4]), 
	.D(n66), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[5]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[5]), 
	.D(n65), 
	.CLK(clk));
   DFFSR \out_tmp_reg[6]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[6]), 
	.D(n64), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[7]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[7]), 
	.D(n63), 
	.CLK(nclk__L2_N4));
   DFFSR \out_tmp_reg[8]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[8]), 
	.D(n62), 
	.CLK(nclk__L2_N4));
   DFFSR \out_tmp_reg[9]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[9]), 
	.D(n61), 
	.CLK(nclk__L2_N4));
   DFFSR \out_tmp_reg[10]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[10]), 
	.D(n60), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[11]  (.S(FE_OFN3_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[11]), 
	.D(n59), 
	.CLK(nclk__L2_N4));
   DFFSR \out_tmp_reg[12]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[12]), 
	.D(n58), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[13]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[13]), 
	.D(n57), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[14]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[14]), 
	.D(n56), 
	.CLK(nclk__L2_N6));
   DFFSR \out_tmp_reg[15]  (.S(FE_OFN1_nn_rst), 
	.R(1'b1), 
	.Q(parallel_out[15]), 
	.D(n55), 
	.CLK(nclk__L2_N6));
   INVX2 U19 (.Y(n17), 
	.A(n24));
   OR2X2 U21 (.Y(n24), 
	.B(n23), 
	.A(n22));
   AND2X2 U23 (.Y(n18), 
	.B(n25), 
	.A(n17));
   INVX1 U25 (.Y(n25), 
	.A(crc_rcv));
   INVX2 U26 (.Y(n19), 
	.A(n18));
   OR2X1 U27 (.Y(n23), 
	.B(shift_stop), 
	.A(eop));
   OAI21X1 U28 (.Y(n22), 
	.C(shift_enable), 
	.B(crc_rcv), 
	.A(sync_rst));
   NAND2X1 U29 (.Y(n26), 
	.B(n17), 
	.A(parallel_out[14]));
   XOR2X1 U30 (.Y(n27), 
	.B(parallel_out[15]), 
	.A(n26));
   NAND2X1 U31 (.Y(n55), 
	.B(n27), 
	.A(n19));
   MUX2X1 U32 (.Y(n28), 
	.S(n17), 
	.B(parallel_out[14]), 
	.A(parallel_out[13]));
   NAND2X1 U33 (.Y(n56), 
	.B(n28), 
	.A(n19));
   MUX2X1 U34 (.Y(n29), 
	.S(n17), 
	.B(parallel_out[13]), 
	.A(parallel_out[12]));
   NAND2X1 U35 (.Y(n57), 
	.B(n29), 
	.A(n19));
   MUX2X1 U36 (.Y(n30), 
	.S(n17), 
	.B(parallel_out[12]), 
	.A(parallel_out[11]));
   NAND2X1 U37 (.Y(n58), 
	.B(n30), 
	.A(n19));
   MUX2X1 U38 (.Y(n31), 
	.S(n17), 
	.B(parallel_out[11]), 
	.A(parallel_out[10]));
   NAND2X1 U39 (.Y(n59), 
	.B(n31), 
	.A(n19));
   MUX2X1 U40 (.Y(n32), 
	.S(n17), 
	.B(parallel_out[10]), 
	.A(parallel_out[9]));
   NAND2X1 U41 (.Y(n60), 
	.B(n32), 
	.A(n19));
   MUX2X1 U42 (.Y(n33), 
	.S(n17), 
	.B(parallel_out[9]), 
	.A(parallel_out[8]));
   NAND2X1 U43 (.Y(n61), 
	.B(n33), 
	.A(n19));
   MUX2X1 U44 (.Y(n34), 
	.S(n17), 
	.B(parallel_out[8]), 
	.A(parallel_out[7]));
   NAND2X1 U45 (.Y(n62), 
	.B(n34), 
	.A(n19));
   MUX2X1 U46 (.Y(n35), 
	.S(n17), 
	.B(parallel_out[7]), 
	.A(parallel_out[6]));
   NAND2X1 U47 (.Y(n63), 
	.B(n35), 
	.A(n19));
   MUX2X1 U48 (.Y(n36), 
	.S(n17), 
	.B(parallel_out[6]), 
	.A(parallel_out[5]));
   NAND2X1 U49 (.Y(n64), 
	.B(n36), 
	.A(n19));
   MUX2X1 U50 (.Y(n37), 
	.S(n17), 
	.B(parallel_out[5]), 
	.A(parallel_out[4]));
   NAND2X1 U51 (.Y(n65), 
	.B(n37), 
	.A(n19));
   MUX2X1 U52 (.Y(n38), 
	.S(n17), 
	.B(parallel_out[4]), 
	.A(parallel_out[3]));
   NAND2X1 U53 (.Y(n66), 
	.B(n38), 
	.A(n19));
   MUX2X1 U54 (.Y(n39), 
	.S(n17), 
	.B(parallel_out[3]), 
	.A(parallel_out[2]));
   NAND2X1 U55 (.Y(n67), 
	.B(n39), 
	.A(n19));
   XOR2X1 U56 (.Y(n40), 
	.B(parallel_out[15]), 
	.A(parallel_out[1]));
   MUX2X1 U57 (.Y(n41), 
	.S(n17), 
	.B(parallel_out[2]), 
	.A(n40));
   NAND2X1 U58 (.Y(n68), 
	.B(n41), 
	.A(n19));
   MUX2X1 U59 (.Y(n42), 
	.S(n17), 
	.B(parallel_out[1]), 
	.A(parallel_out[0]));
   NAND2X1 U60 (.Y(n69), 
	.B(n42), 
	.A(n19));
   XOR2X1 U61 (.Y(n44), 
	.B(parallel_out[15]), 
	.A(serial_in));
   MUX2X1 U62 (.Y(n45), 
	.S(n17), 
	.B(parallel_out[0]), 
	.A(n44));
   NAND2X1 U63 (.Y(n70), 
	.B(n45), 
	.A(n19));
endmodule

module rcu (
	clk, 
	n_rst, 
	d_edge, 
	eop, 
	shift_enable, 
	rcv_data, 
	crc5_data, 
	crc16_data, 
	byte_received, 
	field_received, 
	sync_rst, 
	pid, 
	rcving, 
	w_enable, 
	r_error, 
	crc_rcv, 
	pid_rdy, 
	bit_cnt, 
	packet_done, 
	clear, 
	nclk__L2_N7);
   input clk;
   input n_rst;
   input d_edge;
   input eop;
   input shift_enable;
   input [7:0] rcv_data;
   input [4:0] crc5_data;
   input [15:0] crc16_data;
   input byte_received;
   input field_received;
   output sync_rst;
   output [3:0] pid;
   output rcving;
   output w_enable;
   output r_error;
   output crc_rcv;
   output pid_rdy;
   output [3:0] bit_cnt;
   output [1:0] packet_done;
   output clear;
   input nclk__L2_N7;

   // Internal wires
   wire FE_OFN14_cur_state_4_;
   wire N751;
   wire N752;
   wire N753;
   wire N754;
   wire N755;
   wire N756;
   wire N757;
   wire N758;
   wire N759;
   wire N760;
   wire N761;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n211;
   wire n212;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n2;
   wire n3;
   wire n13;
   wire n16;
   wire n17;
   wire n18;
   wire n20;
   wire n24;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n38;
   wire n39;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n77;
   wire n100;
   wire n104;
   wire n105;
   wire n106;
   wire n108;
   wire n109;
   wire n110;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n210;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n394;
   wire n402;
   wire n403;
   wire [6:0] cur_state;
   wire [6:0] valid_addr;

   BUFX2 FE_OFC14_cur_state_4_ (.Y(FE_OFN14_cur_state_4_), 
	.A(cur_state[4]));
   DFFSR \cur_state_reg[0]  (.S(n_rst), 
	.R(1'b1), 
	.Q(cur_state[0]), 
	.D(n335), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_state_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(cur_state[5]), 
	.D(n330), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_state_reg[3]  (.S(n_rst), 
	.R(1'b1), 
	.Q(cur_state[3]), 
	.D(n332), 
	.CLK(clk));
   DFFSR \cur_state_reg[2]  (.S(n_rst), 
	.R(1'b1), 
	.Q(cur_state[2]), 
	.D(n333), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_state_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(cur_state[4]), 
	.D(n331), 
	.CLK(clk));
   DFFSR \cur_state_reg[1]  (.S(n_rst), 
	.R(1'b1), 
	.Q(cur_state[1]), 
	.D(n334), 
	.CLK(nclk__L2_N7));
   INVX2 U12 (.Y(n78), 
	.A(pid[0]));
   INVX2 U13 (.Y(n80), 
	.A(pid[1]));
   INVX2 U14 (.Y(n82), 
	.A(pid[2]));
   INVX2 U15 (.Y(n84), 
	.A(pid[3]));
   INVX2 U16 (.Y(n92), 
	.A(valid_addr[3]));
   INVX2 U17 (.Y(n94), 
	.A(valid_addr[4]));
   INVX2 U23 (.Y(n98), 
	.A(valid_addr[6]));
   INVX2 U24 (.Y(n96), 
	.A(valid_addr[5]));
   INVX2 U25 (.Y(n88), 
	.A(valid_addr[1]));
   INVX2 U26 (.Y(n90), 
	.A(valid_addr[2]));
   INVX2 U27 (.Y(n86), 
	.A(valid_addr[0]));
   OAI21X1 U110 (.Y(pid[0]), 
	.C(n79), 
	.B(n78), 
	.A(1'b1));
   NAND2X1 U111 (.Y(n79), 
	.B(1'b1), 
	.A(N758));
   OAI21X1 U112 (.Y(pid[1]), 
	.C(n81), 
	.B(n80), 
	.A(1'b1));
   NAND2X1 U113 (.Y(n81), 
	.B(1'b1), 
	.A(N759));
   OAI21X1 U114 (.Y(pid[2]), 
	.C(n83), 
	.B(n82), 
	.A(1'b1));
   NAND2X1 U115 (.Y(n83), 
	.B(1'b1), 
	.A(N760));
   OAI21X1 U116 (.Y(pid[3]), 
	.C(n85), 
	.B(n84), 
	.A(1'b1));
   NAND2X1 U117 (.Y(n85), 
	.B(1'b1), 
	.A(N761));
   OAI21X1 U118 (.Y(valid_addr[0]), 
	.C(n87), 
	.B(n86), 
	.A(1'b1));
   NAND2X1 U119 (.Y(n87), 
	.B(1'b1), 
	.A(N751));
   OAI21X1 U120 (.Y(valid_addr[1]), 
	.C(n89), 
	.B(n88), 
	.A(1'b1));
   NAND2X1 U121 (.Y(n89), 
	.B(1'b1), 
	.A(N752));
   OAI21X1 U122 (.Y(valid_addr[2]), 
	.C(n91), 
	.B(n90), 
	.A(1'b1));
   NAND2X1 U123 (.Y(n91), 
	.B(1'b1), 
	.A(N753));
   OAI21X1 U124 (.Y(valid_addr[3]), 
	.C(n93), 
	.B(n92), 
	.A(1'b1));
   NAND2X1 U125 (.Y(n93), 
	.B(1'b1), 
	.A(N754));
   OAI21X1 U126 (.Y(valid_addr[4]), 
	.C(n95), 
	.B(n94), 
	.A(1'b1));
   NAND2X1 U127 (.Y(n95), 
	.B(1'b1), 
	.A(N755));
   OAI21X1 U128 (.Y(valid_addr[5]), 
	.C(n97), 
	.B(n96), 
	.A(1'b1));
   NAND2X1 U129 (.Y(n97), 
	.B(1'b1), 
	.A(N756));
   OAI21X1 U130 (.Y(valid_addr[6]), 
	.C(n99), 
	.B(n98), 
	.A(1'b1));
   NAND2X1 U131 (.Y(n99), 
	.B(1'b1), 
	.A(N757));
   XOR2X1 U195 (.Y(n207), 
	.B(n20), 
	.A(n98));
   XOR2X1 U196 (.Y(n206), 
	.B(rcv_data[6]), 
	.A(n96));
   XOR2X1 U197 (.Y(n205), 
	.B(rcv_data[2]), 
	.A(n88));
   XOR2X1 U200 (.Y(n212), 
	.B(rcv_data[5]), 
	.A(valid_addr[4]));
   XOR2X1 U201 (.Y(n211), 
	.B(rcv_data[4]), 
	.A(valid_addr[3]));
   XOR2X1 U202 (.Y(n209), 
	.B(n18), 
	.A(n90));
   XOR2X1 U203 (.Y(n208), 
	.B(rcv_data[1]), 
	.A(n86));
   INVX1 U4 (.Y(n226), 
	.A(n391));
   INVX1 U11 (.Y(n308), 
	.A(n318));
   INVX1 U19 (.Y(n2), 
	.A(n218));
   AND2X2 U20 (.Y(n3), 
	.B(n267), 
	.A(n243));
   INVX1 U21 (.Y(n292), 
	.A(n3));
   INVX1 U30 (.Y(n13), 
	.A(cur_state[0]));
   INVX1 U33 (.Y(n36), 
	.A(cur_state[5]));
   INVX2 U34 (.Y(n403), 
	.A(cur_state[1]));
   AND2X2 U35 (.Y(n16), 
	.B(n242), 
	.A(n35));
   OR2X1 U36 (.Y(n17), 
	.B(n341), 
	.A(n340));
   BUFX2 U37 (.Y(n18), 
	.A(rcv_data[3]));
   NAND2X1 U38 (.Y(clear), 
	.B(n321), 
	.A(n232));
   AND2X2 U39 (.Y(n46), 
	.B(n147), 
	.A(FE_OFN14_cur_state_4_));
   BUFX2 U40 (.Y(n20), 
	.A(rcv_data[7]));
   INVX1 U43 (.Y(n152), 
	.A(crc_rcv));
   INVX2 U45 (.Y(n75), 
	.A(n115));
   INVX1 U47 (.Y(n24), 
	.A(n117));
   INVX2 U49 (.Y(n26), 
	.A(n33));
   INVX2 U50 (.Y(n33), 
	.A(n192));
   INVX1 U51 (.Y(n27), 
	.A(n123));
   INVX2 U52 (.Y(n28), 
	.A(n325));
   INVX2 U53 (.Y(n325), 
	.A(n181));
   INVX2 U54 (.Y(n29), 
	.A(n39));
   INVX2 U55 (.Y(n39), 
	.A(n402));
   INVX2 U56 (.Y(n30), 
	.A(n100));
   AND2X2 U57 (.Y(n47), 
	.B(FE_OFN14_cur_state_4_), 
	.A(n110));
   INVX2 U58 (.Y(n31), 
	.A(n403));
   INVX1 U59 (.Y(n32), 
	.A(n31));
   NAND2X1 U60 (.Y(n35), 
	.B(n357), 
	.A(n34));
   INVX1 U61 (.Y(n34), 
	.A(n148));
   AND2X1 U62 (.Y(n130), 
	.B(n243), 
	.A(n129));
   INVX1 U64 (.Y(n327), 
	.A(n210));
   NOR2X1 U65 (.Y(n344), 
	.B(n17), 
	.A(n342));
   NAND2X1 U66 (.Y(n38), 
	.B(n357), 
	.A(n74));
   AND2X2 U67 (.Y(n42), 
	.B(n374), 
	.A(n38));
   OR2X2 U69 (.Y(bit_cnt[2]), 
	.B(n126), 
	.A(n125));
   INVX2 U70 (.Y(n108), 
	.A(n357));
   AND2X2 U71 (.Y(n41), 
	.B(n3), 
	.A(n42));
   AND2X2 U72 (.Y(n43), 
	.B(n309), 
	.A(n358));
   INVX2 U73 (.Y(n64), 
	.A(n57));
   AND2X2 U74 (.Y(n44), 
	.B(n13), 
	.A(n403));
   AND2X2 U75 (.Y(n45), 
	.B(n36), 
	.A(cur_state[3]));
   MUX2X1 U76 (.Y(n335), 
	.S(n392), 
	.B(n30), 
	.A(n394));
   MUX2X1 U77 (.Y(n379), 
	.S(n366), 
	.B(n367), 
	.A(n368));
   NOR2X1 U79 (.Y(n48), 
	.B(n32), 
	.A(cur_state[5]));
   NAND3X1 U80 (.Y(n54), 
	.C(n48), 
	.B(n29), 
	.A(cur_state[2]));
   NAND3X1 U81 (.Y(n53), 
	.C(FE_OFN14_cur_state_4_), 
	.B(n63), 
	.A(n100));
   NAND2X1 U82 (.Y(n49), 
	.B(n53), 
	.A(pid[0]));
   OAI21X1 U83 (.Y(N758), 
	.C(n49), 
	.B(n269), 
	.A(n53));
   NAND2X1 U84 (.Y(n50), 
	.B(n53), 
	.A(pid[1]));
   OAI21X1 U85 (.Y(N759), 
	.C(n50), 
	.B(n271), 
	.A(n53));
   NAND2X1 U86 (.Y(n51), 
	.B(n53), 
	.A(pid[2]));
   OAI21X1 U87 (.Y(N760), 
	.C(n51), 
	.B(n270), 
	.A(n53));
   NAND2X1 U88 (.Y(n52), 
	.B(n53), 
	.A(pid[3]));
   OAI21X1 U89 (.Y(N761), 
	.C(n52), 
	.B(n65), 
	.A(n53));
   NOR3X1 U90 (.Y(n57), 
	.C(FE_OFN14_cur_state_4_), 
	.B(n100), 
	.A(n54));
   AOI22X1 U91 (.Y(n55), 
	.D(n64), 
	.C(valid_addr[0]), 
	.B(n57), 
	.A(rcv_data[1]));
   INVX1 U92 (.Y(N751), 
	.A(n55));
   AOI22X1 U93 (.Y(n56), 
	.D(n64), 
	.C(valid_addr[1]), 
	.B(n57), 
	.A(rcv_data[2]));
   INVX1 U94 (.Y(N752), 
	.A(n56));
   AOI22X1 U95 (.Y(n58), 
	.D(n64), 
	.C(valid_addr[2]), 
	.B(n57), 
	.A(n18));
   INVX1 U96 (.Y(N753), 
	.A(n58));
   NAND2X1 U97 (.Y(n59), 
	.B(n64), 
	.A(valid_addr[3]));
   OAI21X1 U98 (.Y(N754), 
	.C(n59), 
	.B(n269), 
	.A(n64));
   NAND2X1 U99 (.Y(n60), 
	.B(n64), 
	.A(valid_addr[4]));
   OAI21X1 U100 (.Y(N755), 
	.C(n60), 
	.B(n271), 
	.A(n64));
   NAND2X1 U101 (.Y(n61), 
	.B(n64), 
	.A(valid_addr[5]));
   OAI21X1 U102 (.Y(N756), 
	.C(n61), 
	.B(n270), 
	.A(n64));
   NAND2X1 U103 (.Y(n62), 
	.B(n64), 
	.A(valid_addr[6]));
   OAI21X1 U104 (.Y(N757), 
	.C(n62), 
	.B(n65), 
	.A(n64));
   INVX2 U105 (.Y(n63), 
	.A(n54));
   INVX2 U106 (.Y(n65), 
	.A(n20));
   INVX1 U107 (.Y(n104), 
	.A(n137));
   INVX1 U109 (.Y(n338), 
	.A(n251));
   INVX2 U138 (.Y(n73), 
	.A(n116));
   INVX1 U139 (.Y(n72), 
	.A(n136));
   INVX1 U140 (.Y(n123), 
	.A(n267));
   AND2X2 U142 (.Y(n74), 
	.B(n146), 
	.A(n110));
   AND2X2 U143 (.Y(n77), 
	.B(n251), 
	.A(n299));
   INVX1 U144 (.Y(n121), 
	.A(n77));
   INVX1 U145 (.Y(n100), 
	.A(n13));
   INVX2 U146 (.Y(n307), 
	.A(cur_state[2]));
   INVX2 U148 (.Y(n141), 
	.A(n128));
   INVX1 U149 (.Y(n183), 
	.A(n373));
   NOR2X1 U150 (.Y(n138), 
	.B(n105), 
	.A(n296));
   NAND2X1 U151 (.Y(n105), 
	.B(n104), 
	.A(n77));
   INVX1 U152 (.Y(n258), 
	.A(n257));
   INVX1 U153 (.Y(n106), 
	.A(n324));
   INVX2 U155 (.Y(n146), 
	.A(FE_OFN14_cur_state_4_));
   INVX1 U156 (.Y(n324), 
	.A(n228));
   INVX2 U157 (.Y(n357), 
	.A(n180));
   OR2X2 U158 (.Y(n278), 
	.B(n108), 
	.A(n128));
   INVX1 U159 (.Y(n176), 
	.A(rcving));
   INVX2 U160 (.Y(n192), 
	.A(n365));
   INVX2 U161 (.Y(n149), 
	.A(n197));
   INVX2 U162 (.Y(n402), 
	.A(cur_state[3]));
   NAND3X1 U163 (.Y(n109), 
	.C(cur_state[2]), 
	.B(n36), 
	.A(n402));
   INVX2 U164 (.Y(n110), 
	.A(n109));
   NAND2X1 U165 (.Y(n232), 
	.B(n44), 
	.A(n74));
   NAND2X1 U166 (.Y(n365), 
	.B(n13), 
	.A(n31));
   NAND2X1 U167 (.Y(n321), 
	.B(n192), 
	.A(n47));
   NOR2X1 U169 (.Y(n112), 
	.B(cur_state[2]), 
	.A(FE_OFN14_cur_state_4_));
   NAND3X1 U170 (.Y(n190), 
	.C(n112), 
	.B(n39), 
	.A(cur_state[5]));
   NAND3X1 U171 (.Y(n113), 
	.C(n146), 
	.B(n402), 
	.A(cur_state[5]));
   INVX2 U172 (.Y(n127), 
	.A(n113));
   NAND2X1 U173 (.Y(n364), 
	.B(n127), 
	.A(cur_state[2]));
   NAND2X1 U174 (.Y(n114), 
	.B(n364), 
	.A(n190));
   NAND2X1 U175 (.Y(n253), 
	.B(n114), 
	.A(n44));
   INVX2 U176 (.Y(packet_done[0]), 
	.A(n253));
   NAND2X1 U177 (.Y(n197), 
	.B(n403), 
	.A(cur_state[0]));
   NAND2X1 U178 (.Y(n174), 
	.B(n114), 
	.A(n149));
   INVX2 U179 (.Y(packet_done[1]), 
	.A(n174));
   NAND3X1 U180 (.Y(n115), 
	.C(n45), 
	.B(FE_OFN14_cur_state_4_), 
	.A(n307));
   NAND2X1 U181 (.Y(n373), 
	.B(n192), 
	.A(n75));
   NAND2X1 U182 (.Y(n290), 
	.B(n74), 
	.A(n149));
   INVX2 U183 (.Y(n122), 
	.A(n290));
   NOR2X1 U184 (.Y(n120), 
	.B(n122), 
	.A(n183));
   NAND3X1 U185 (.Y(n116), 
	.C(n45), 
	.B(FE_OFN14_cur_state_4_), 
	.A(cur_state[2]));
   NAND2X1 U186 (.Y(n180), 
	.B(cur_state[1]), 
	.A(cur_state[0]));
   OAI21X1 U187 (.Y(n181), 
	.C(n357), 
	.B(n75), 
	.A(n73));
   NAND2X1 U188 (.Y(n299), 
	.B(n192), 
	.A(n74));
   NAND2X1 U189 (.Y(n251), 
	.B(n149), 
	.A(n73));
   NOR2X1 U190 (.Y(n119), 
	.B(n121), 
	.A(n325));
   NAND3X1 U191 (.Y(n117), 
	.C(n45), 
	.B(n307), 
	.A(n146));
   NAND2X1 U193 (.Y(n374), 
	.B(n44), 
	.A(n24));
   NAND2X1 U194 (.Y(n267), 
	.B(n44), 
	.A(n73));
   AND2X2 U198 (.Y(n118), 
	.B(n27), 
	.A(n374));
   NAND3X1 U199 (.Y(bit_cnt[0]), 
	.C(n118), 
	.B(n119), 
	.A(n120));
   NOR2X1 U204 (.Y(n124), 
	.B(n122), 
	.A(n123));
   NAND3X1 U205 (.Y(bit_cnt[1]), 
	.C(n124), 
	.B(n373), 
	.A(n77));
   NAND3X1 U207 (.Y(n125), 
	.C(n42), 
	.B(n290), 
	.A(n77));
   NAND2X1 U208 (.Y(n243), 
	.B(n192), 
	.A(n73));
   NAND2X1 U209 (.Y(n126), 
	.B(n28), 
	.A(n3));
   NOR2X1 U210 (.Y(bit_cnt[3]), 
	.B(n125), 
	.A(n126));
   NAND2X1 U211 (.Y(n383), 
	.B(n47), 
	.A(n357));
   INVX2 U212 (.Y(pid_rdy), 
	.A(n383));
   NAND2X1 U213 (.Y(n128), 
	.B(n307), 
	.A(n127));
   NAND2X1 U214 (.Y(n145), 
	.B(n192), 
	.A(n141));
   NAND3X1 U215 (.Y(n185), 
	.C(n45), 
	.B(n146), 
	.A(cur_state[2]));
   INVX2 U216 (.Y(n136), 
	.A(n185));
   NAND2X1 U217 (.Y(n129), 
	.B(n192), 
	.A(n136));
   NAND3X1 U218 (.Y(n133), 
	.C(n130), 
	.B(n145), 
	.A(n38));
   NAND2X1 U219 (.Y(n257), 
	.B(n44), 
	.A(n141));
   NAND3X1 U220 (.Y(n132), 
	.C(n290), 
	.B(n374), 
	.A(n257));
   NOR2X1 U221 (.Y(n139), 
	.B(n133), 
	.A(n132));
   NAND2X1 U222 (.Y(n375), 
	.B(n192), 
	.A(n24));
   INVX2 U223 (.Y(n135), 
	.A(n375));
   NAND2X1 U224 (.Y(n203), 
	.B(n149), 
	.A(n24));
   NAND2X1 U225 (.Y(n229), 
	.B(n44), 
	.A(n136));
   NAND3X1 U226 (.Y(n134), 
	.C(n203), 
	.B(n229), 
	.A(n373));
   NOR2X1 U227 (.Y(n315), 
	.B(n134), 
	.A(n135));
   NAND2X1 U228 (.Y(n228), 
	.B(n44), 
	.A(n75));
   NAND2X1 U229 (.Y(n296), 
	.B(n228), 
	.A(n278));
   NAND2X1 U230 (.Y(n240), 
	.B(n149), 
	.A(n136));
   NAND3X1 U231 (.Y(n137), 
	.C(n181), 
	.B(n240), 
	.A(n267));
   NAND3X1 U232 (.Y(crc_rcv), 
	.C(n138), 
	.B(n139), 
	.A(n315));
   NAND3X1 U233 (.Y(n140), 
	.C(n307), 
	.B(n36), 
	.A(n29));
   INVX2 U234 (.Y(n147), 
	.A(n140));
   NAND2X1 U235 (.Y(n254), 
	.B(n46), 
	.A(n149));
   NAND2X1 U236 (.Y(n210), 
	.B(n149), 
	.A(n141));
   INVX2 U240 (.Y(w_enable), 
	.A(n145));
   NAND2X1 U241 (.Y(n148), 
	.B(n146), 
	.A(n147));
   NAND2X1 U242 (.Y(n242), 
	.B(n149), 
	.A(n47));
   NAND2X1 U244 (.Y(n227), 
	.B(n149), 
	.A(n34));
   NAND2X1 U245 (.Y(n195), 
	.B(n227), 
	.A(n16));
   NOR2X1 U246 (.Y(n154), 
	.B(n195), 
	.A(clear));
   NAND2X1 U247 (.Y(n372), 
	.B(n34), 
	.A(n26));
   NAND2X1 U248 (.Y(n336), 
	.B(n149), 
	.A(n75));
   NAND3X1 U249 (.Y(n151), 
	.C(n383), 
	.B(n336), 
	.A(n372));
   NAND2X1 U250 (.Y(n359), 
	.B(n44), 
	.A(n47));
   NAND2X1 U251 (.Y(n277), 
	.B(n46), 
	.A(n357));
   NAND3X1 U252 (.Y(n150), 
	.C(n277), 
	.B(n210), 
	.A(n359));
   NOR2X1 U253 (.Y(n153), 
	.B(n150), 
	.A(n151));
   NAND3X1 U254 (.Y(rcving), 
	.C(n152), 
	.B(n153), 
	.A(n154));
   NAND2X1 U255 (.Y(sync_rst), 
	.B(n383), 
	.A(n16));
   XOR2X1 U256 (.Y(n155), 
	.B(n18), 
	.A(n20));
   NAND2X1 U257 (.Y(n159), 
	.B(n155), 
	.A(rcv_data[2]));
   INVX2 U258 (.Y(n158), 
	.A(n159));
   NOR2X1 U259 (.Y(n156), 
	.B(rcv_data[5]), 
	.A(rcv_data[0]));
   NAND3X1 U260 (.Y(n157), 
	.C(n156), 
	.B(rcv_data[4]), 
	.A(rcv_data[1]));
   INVX2 U261 (.Y(n234), 
	.A(n157));
   INVX2 U262 (.Y(n270), 
	.A(rcv_data[6]));
   NAND3X1 U263 (.Y(n287), 
	.C(n270), 
	.B(n234), 
	.A(n158));
   INVX2 U264 (.Y(n271), 
	.A(rcv_data[5]));
   INVX2 U265 (.Y(n273), 
	.A(rcv_data[0]));
   NOR2X1 U266 (.Y(n162), 
	.B(n273), 
	.A(n271));
   INVX2 U267 (.Y(n164), 
	.A(rcv_data[2]));
   INVX2 U268 (.Y(n166), 
	.A(rcv_data[3]));
   NAND3X1 U269 (.Y(n233), 
	.C(n166), 
	.B(n164), 
	.A(n20));
   MUX2X1 U270 (.Y(n161), 
	.S(rcv_data[6]), 
	.B(n159), 
	.A(n233));
   NOR2X1 U271 (.Y(n160), 
	.B(rcv_data[4]), 
	.A(rcv_data[1]));
   NAND3X1 U272 (.Y(n384), 
	.C(n160), 
	.B(n161), 
	.A(n162));
   NAND2X1 U273 (.Y(n172), 
	.B(n384), 
	.A(n287));
   INVX2 U274 (.Y(n272), 
	.A(rcv_data[1]));
   NOR2X1 U275 (.Y(n163), 
	.B(rcv_data[6]), 
	.A(n20));
   NAND3X1 U276 (.Y(n170), 
	.C(n163), 
	.B(n272), 
	.A(n273));
   NOR2X1 U277 (.Y(n165), 
	.B(n166), 
	.A(n164));
   NAND3X1 U278 (.Y(n169), 
	.C(n165), 
	.B(rcv_data[5]), 
	.A(rcv_data[4]));
   NOR2X1 U279 (.Y(n168), 
	.B(n166), 
	.A(n270));
   NOR2X1 U280 (.Y(n167), 
	.B(rcv_data[2]), 
	.A(n20));
   NAND3X1 U281 (.Y(n237), 
	.C(n167), 
	.B(n234), 
	.A(n168));
   OAI21X1 U282 (.Y(n171), 
	.C(n237), 
	.B(n169), 
	.A(n170));
   OR2X1 U283 (.Y(n244), 
	.B(n171), 
	.A(n172));
   NAND2X1 U284 (.Y(n191), 
	.B(n357), 
	.A(n24));
   NAND2X1 U285 (.Y(n179), 
	.B(n46), 
	.A(n44));
   NAND3X1 U286 (.Y(n178), 
	.C(n179), 
	.B(n364), 
	.A(n191));
   OAI21X1 U287 (.Y(n175), 
	.C(n174), 
	.B(n72), 
	.A(n180));
   INVX2 U288 (.Y(n281), 
	.A(n175));
   NAND3X1 U289 (.Y(n177), 
	.C(n253), 
	.B(n176), 
	.A(n281));
   OAI22X1 U290 (.Y(n391), 
	.D(n177), 
	.C(n178), 
	.B(n244), 
	.A(n383));
   INVX2 U291 (.Y(n188), 
	.A(n179));
   NAND2X1 U292 (.Y(n309), 
	.B(n33), 
	.A(n180));
   INVX2 U293 (.Y(n186), 
	.A(n309));
   NAND3X1 U294 (.Y(n220), 
	.C(n41), 
	.B(n290), 
	.A(n28));
   INVX2 U295 (.Y(n182), 
	.A(field_received));
   OAI21X1 U296 (.Y(n184), 
	.C(n182), 
	.B(n220), 
	.A(n183));
   OAI21X1 U297 (.Y(n187), 
	.C(n184), 
	.B(n72), 
	.A(n186));
   NOR2X1 U298 (.Y(n189), 
	.B(n187), 
	.A(n188));
   NAND3X1 U299 (.Y(n225), 
	.C(n189), 
	.B(n190), 
	.A(n191));
   AOI22X1 U300 (.Y(n194), 
	.D(n46), 
	.C(n26), 
	.B(n34), 
	.A(n44));
   NAND2X1 U301 (.Y(n381), 
	.B(n254), 
	.A(n194));
   NOR2X1 U302 (.Y(n219), 
	.B(n381), 
	.A(packet_done[0]));
   INVX2 U303 (.Y(n196), 
	.A(n277));
   INVX2 U304 (.Y(n201), 
	.A(byte_received));
   OAI21X1 U305 (.Y(n217), 
	.C(n201), 
	.B(n195), 
	.A(n196));
   INVX2 U306 (.Y(n199), 
	.A(d_edge));
   NOR2X1 U307 (.Y(n198), 
	.B(n364), 
	.A(n197));
   OAI21X1 U308 (.Y(n200), 
	.C(n198), 
	.B(n199), 
	.A(eop));
   INVX2 U309 (.Y(n213), 
	.A(n200));
   AOI21X1 U310 (.Y(n202), 
	.C(n213), 
	.B(n201), 
	.A(n324));
   OAI21X1 U311 (.Y(n215), 
	.C(n202), 
	.B(n278), 
	.A(shift_enable));
   NAND3X1 U312 (.Y(n204), 
	.C(n203), 
	.B(n257), 
	.A(n336));
   INVX2 U313 (.Y(n303), 
	.A(n204));
   NAND3X1 U314 (.Y(n214), 
	.C(n375), 
	.B(n210), 
	.A(n303));
   NAND2X1 U315 (.Y(n260), 
	.B(eop), 
	.A(shift_enable));
   OAI22X1 U316 (.Y(n216), 
	.D(n260), 
	.C(n213), 
	.B(n214), 
	.A(n215));
   NAND2X1 U317 (.Y(n223), 
	.B(n216), 
	.A(n217));
   INVX2 U318 (.Y(n218), 
	.A(n223));
   NAND3X1 U319 (.Y(n224), 
	.C(n218), 
	.B(n240), 
	.A(n219));
   INVX2 U320 (.Y(n221), 
	.A(n220));
   NAND3X1 U321 (.Y(n222), 
	.C(n373), 
	.B(n221), 
	.A(d_edge));
   OAI22X1 U322 (.Y(n392), 
	.D(n222), 
	.C(n2), 
	.B(n224), 
	.A(n225));
   NAND2X1 U323 (.Y(n318), 
	.B(n392), 
	.A(n226));
   INVX2 U324 (.Y(n297), 
	.A(n260));
   OAI21X1 U325 (.Y(n239), 
	.C(n227), 
	.B(n106), 
	.A(n297));
   INVX2 U326 (.Y(n367), 
	.A(n229));
   NAND2X1 U327 (.Y(n231), 
	.B(crc5_data[1]), 
	.A(crc5_data[0]));
   NAND3X1 U328 (.Y(n230), 
	.C(crc5_data[2]), 
	.B(crc5_data[4]), 
	.A(crc5_data[3]));
   OR2X1 U329 (.Y(n366), 
	.B(n230), 
	.A(n231));
   INVX2 U330 (.Y(n295), 
	.A(n232));
   INVX2 U331 (.Y(n274), 
	.A(n233));
   NAND3X1 U332 (.Y(n293), 
	.C(n234), 
	.B(n274), 
	.A(rcv_data[6]));
   NAND2X1 U333 (.Y(n311), 
	.B(n293), 
	.A(n295));
   INVX2 U334 (.Y(n235), 
	.A(n311));
   AOI21X1 U335 (.Y(n236), 
	.C(n235), 
	.B(n366), 
	.A(n367));
   OAI21X1 U336 (.Y(n238), 
	.C(n236), 
	.B(n237), 
	.A(n383));
   OR2X1 U337 (.Y(n265), 
	.B(n238), 
	.A(n239));
   NAND3X1 U338 (.Y(n263), 
	.C(n299), 
	.B(n290), 
	.A(n372));
   NAND3X1 U339 (.Y(n256), 
	.C(n240), 
	.B(n242), 
	.A(n243));
   INVX2 U340 (.Y(n322), 
	.A(n244));
   NAND2X1 U341 (.Y(n246), 
	.B(n205), 
	.A(n209));
   NAND2X1 U342 (.Y(n245), 
	.B(n207), 
	.A(n206));
   NOR2X1 U343 (.Y(n250), 
	.B(n245), 
	.A(n246));
   INVX2 U344 (.Y(n247), 
	.A(n211));
   NAND2X1 U345 (.Y(n248), 
	.B(n247), 
	.A(n208));
   NOR2X1 U346 (.Y(n249), 
	.B(n248), 
	.A(n212));
   NAND2X1 U347 (.Y(n337), 
	.B(n249), 
	.A(n250));
   INVX2 U348 (.Y(n252), 
	.A(n337));
   NAND2X1 U349 (.Y(n313), 
	.B(n338), 
	.A(n252));
   OAI21X1 U350 (.Y(n286), 
	.C(n313), 
	.B(n321), 
	.A(n322));
   NAND3X1 U351 (.Y(n255), 
	.C(n373), 
	.B(n253), 
	.A(n254));
   NOR3X1 U352 (.Y(n268), 
	.C(n255), 
	.B(n286), 
	.A(n256));
   NOR2X1 U353 (.Y(n259), 
	.B(w_enable), 
	.A(n258));
   OAI21X1 U354 (.Y(n326), 
	.C(n259), 
	.B(n278), 
	.A(n260));
   INVX2 U355 (.Y(n261), 
	.A(n326));
   NAND3X1 U356 (.Y(n262), 
	.C(n268), 
	.B(n261), 
	.A(n375));
   OR2X1 U357 (.Y(n264), 
	.B(n263), 
	.A(n262));
   OAI21X1 U358 (.Y(n266), 
	.C(n392), 
	.B(n264), 
	.A(n265));
   OAI21X1 U359 (.Y(n334), 
	.C(n266), 
	.B(n308), 
	.A(n32));
   NAND2X1 U360 (.Y(n283), 
	.B(n268), 
	.A(n27));
   INVX2 U361 (.Y(n269), 
	.A(rcv_data[4]));
   NAND3X1 U362 (.Y(n276), 
	.C(n269), 
	.B(n270), 
	.A(n271));
   NAND3X1 U363 (.Y(n275), 
	.C(n272), 
	.B(n273), 
	.A(n274));
   OR2X1 U364 (.Y(n371), 
	.B(n275), 
	.A(n276));
   OAI21X1 U365 (.Y(n301), 
	.C(n277), 
	.B(n359), 
	.A(n371));
   INVX2 U366 (.Y(n280), 
	.A(n301));
   OAI22X1 U367 (.Y(n279), 
	.D(n278), 
	.C(eop), 
	.B(n383), 
	.A(n322));
   INVX2 U368 (.Y(n314), 
	.A(n279));
   NAND3X1 U369 (.Y(n282), 
	.C(n314), 
	.B(n280), 
	.A(n281));
   OAI21X1 U370 (.Y(n285), 
	.C(n392), 
	.B(n282), 
	.A(n283));
   NAND2X1 U371 (.Y(n284), 
	.B(n318), 
	.A(FE_OFN14_cur_state_4_));
   NAND2X1 U372 (.Y(n331), 
	.B(n284), 
	.A(n285));
   INVX2 U373 (.Y(n291), 
	.A(n286));
   INVX2 U374 (.Y(n288), 
	.A(n287));
   AOI21X1 U375 (.Y(n289), 
	.C(n367), 
	.B(pid_rdy), 
	.A(n288));
   NAND3X1 U376 (.Y(n305), 
	.C(n289), 
	.B(n290), 
	.A(n291));
   NOR2X1 U377 (.Y(n300), 
	.B(n292), 
	.A(n327));
   INVX2 U378 (.Y(n294), 
	.A(n293));
   AOI22X1 U379 (.Y(n298), 
	.D(n294), 
	.C(n295), 
	.B(n296), 
	.A(n297));
   NAND3X1 U380 (.Y(n387), 
	.C(n298), 
	.B(n299), 
	.A(n300));
   NOR2X1 U381 (.Y(n302), 
	.B(n301), 
	.A(n387));
   NAND3X1 U382 (.Y(n304), 
	.C(n302), 
	.B(n16), 
	.A(n303));
   OAI21X1 U383 (.Y(n306), 
	.C(n392), 
	.B(n304), 
	.A(n305));
   OAI21X1 U384 (.Y(n333), 
	.C(n306), 
	.B(n308), 
	.A(n307));
   INVX2 U385 (.Y(n310), 
	.A(n372));
   INVX2 U386 (.Y(n358), 
	.A(n364));
   AOI21X1 U387 (.Y(n312), 
	.C(n43), 
	.B(n371), 
	.A(n310));
   NAND3X1 U388 (.Y(n317), 
	.C(n311), 
	.B(n312), 
	.A(n313));
   NAND3X1 U389 (.Y(n316), 
	.C(n314), 
	.B(n41), 
	.A(n315));
   OAI21X1 U390 (.Y(n320), 
	.C(n392), 
	.B(n316), 
	.A(n317));
   NAND2X1 U391 (.Y(n319), 
	.B(n39), 
	.A(n318));
   NAND2X1 U392 (.Y(n332), 
	.B(n319), 
	.A(n320));
   NAND2X1 U393 (.Y(n345), 
	.B(n391), 
	.A(cur_state[5]));
   INVX2 U394 (.Y(n369), 
	.A(n321));
   AOI21X1 U395 (.Y(n323), 
	.C(n43), 
	.B(n322), 
	.A(n369));
   NAND2X1 U396 (.Y(n342), 
	.B(n392), 
	.A(n323));
   NOR2X1 U397 (.Y(n329), 
	.B(n324), 
	.A(n325));
   NOR2X1 U398 (.Y(n328), 
	.B(n326), 
	.A(n327));
   NAND3X1 U399 (.Y(n341), 
	.C(n328), 
	.B(n329), 
	.A(n336));
   INVX2 U400 (.Y(n339), 
	.A(n371));
   NAND2X1 U401 (.Y(n346), 
	.B(n337), 
	.A(n338));
   OAI21X1 U402 (.Y(n340), 
	.C(n346), 
	.B(n339), 
	.A(n359));
   NOR2X1 U403 (.Y(n343), 
	.B(n392), 
	.A(cur_state[5]));
   AOI21X1 U404 (.Y(n330), 
	.C(n343), 
	.B(n344), 
	.A(n345));
   INVX2 U405 (.Y(n363), 
	.A(n346));
   AND2X2 U406 (.Y(n347), 
	.B(crc16_data[9]), 
	.A(crc16_data[8]));
   NAND3X1 U407 (.Y(n350), 
	.C(n347), 
	.B(crc16_data[11]), 
	.A(crc16_data[10]));
   AND2X2 U408 (.Y(n348), 
	.B(crc16_data[13]), 
	.A(crc16_data[12]));
   NAND3X1 U409 (.Y(n349), 
	.C(n348), 
	.B(crc16_data[15]), 
	.A(crc16_data[14]));
   NOR2X1 U410 (.Y(n356), 
	.B(n349), 
	.A(n350));
   AND2X2 U411 (.Y(n351), 
	.B(crc16_data[1]), 
	.A(crc16_data[0]));
   NAND3X1 U412 (.Y(n354), 
	.C(n351), 
	.B(crc16_data[3]), 
	.A(crc16_data[2]));
   AND2X2 U413 (.Y(n352), 
	.B(crc16_data[5]), 
	.A(crc16_data[4]));
   NAND3X1 U414 (.Y(n353), 
	.C(n352), 
	.B(crc16_data[7]), 
	.A(crc16_data[6]));
   NOR2X1 U415 (.Y(n355), 
	.B(n353), 
	.A(n354));
   AND2X2 U416 (.Y(n361), 
	.B(n355), 
	.A(n356));
   NAND2X1 U417 (.Y(n360), 
	.B(n357), 
	.A(n358));
   OAI21X1 U418 (.Y(n362), 
	.C(n359), 
	.B(n360), 
	.A(n361));
   NOR2X1 U419 (.Y(n380), 
	.B(n362), 
	.A(n363));
   NOR2X1 U420 (.Y(n368), 
	.B(n364), 
	.A(n33));
   NOR2X1 U421 (.Y(n370), 
	.B(w_enable), 
	.A(n369));
   OAI21X1 U422 (.Y(n377), 
	.C(n370), 
	.B(n371), 
	.A(n372));
   NAND3X1 U423 (.Y(n376), 
	.C(n373), 
	.B(n374), 
	.A(n375));
   NOR2X1 U424 (.Y(n378), 
	.B(n376), 
	.A(n377));
   NAND3X1 U425 (.Y(n386), 
	.C(n378), 
	.B(n379), 
	.A(n380));
   NOR2X1 U426 (.Y(n382), 
	.B(n381), 
	.A(packet_done[1]));
   OAI21X1 U427 (.Y(n385), 
	.C(n382), 
	.B(n383), 
	.A(n384));
   NOR2X1 U428 (.Y(n389), 
	.B(n385), 
	.A(n386));
   INVX2 U429 (.Y(n388), 
	.A(n387));
   NAND2X1 U430 (.Y(n390), 
	.B(n388), 
	.A(n389));
   AOI21X1 U431 (.Y(n394), 
	.C(n390), 
	.B(n391), 
	.A(n100));
endmodule

module flex_stp_sr_NUM_BITS8_SHIFT_MSB0 (
	clk, 
	n_rst, 
	shift_enable, 
	serial_in, 
	parallel_out, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input shift_enable;
   input serial_in;
   output [7:0] parallel_out;
   input nclk__L2_N9;

   // Internal wires
   wire FE_OFN9_0_net_;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n27;
   wire n28;

   BUFX2 FE_OFC9_0_net_ (.Y(FE_OFN9_0_net_), 
	.A(shift_enable));
   DFFSR \out_tmp_reg[7]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[7]), 
	.D(n26), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[6]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[6]), 
	.D(n24), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[5]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[5]), 
	.D(n22), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[4]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[4]), 
	.D(n20), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[3]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[3]), 
	.D(n18), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[2]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[2]), 
	.D(n16), 
	.CLK(nclk__L2_N9));
   DFFSR \out_tmp_reg[1]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[1]), 
	.D(n14), 
	.CLK(clk));
   DFFSR \out_tmp_reg[0]  (.S(n_rst), 
	.R(1'b1), 
	.Q(parallel_out[0]), 
	.D(n12), 
	.CLK(clk));
   OAI21X1 U17 (.Y(n26), 
	.C(n10), 
	.B(n28), 
	.A(FE_OFN9_0_net_));
   NAND2X1 U18 (.Y(n10), 
	.B(FE_OFN9_0_net_), 
	.A(serial_in));
   INVX2 U5 (.Y(n28), 
	.A(parallel_out[7]));
   INVX2 U6 (.Y(n4), 
	.A(parallel_out[0]));
   INVX2 U7 (.Y(n5), 
	.A(parallel_out[1]));
   MUX2X1 U8 (.Y(n12), 
	.S(FE_OFN9_0_net_), 
	.B(n4), 
	.A(n5));
   INVX2 U9 (.Y(n6), 
	.A(parallel_out[2]));
   MUX2X1 U10 (.Y(n14), 
	.S(FE_OFN9_0_net_), 
	.B(n5), 
	.A(n6));
   INVX2 U11 (.Y(n7), 
	.A(parallel_out[3]));
   MUX2X1 U12 (.Y(n16), 
	.S(FE_OFN9_0_net_), 
	.B(n6), 
	.A(n7));
   INVX2 U13 (.Y(n8), 
	.A(parallel_out[4]));
   MUX2X1 U14 (.Y(n18), 
	.S(FE_OFN9_0_net_), 
	.B(n7), 
	.A(n8));
   INVX2 U15 (.Y(n9), 
	.A(parallel_out[5]));
   MUX2X1 U16 (.Y(n20), 
	.S(FE_OFN9_0_net_), 
	.B(n8), 
	.A(n9));
   INVX2 U19 (.Y(n27), 
	.A(parallel_out[6]));
   MUX2X1 U28 (.Y(n22), 
	.S(FE_OFN9_0_net_), 
	.B(n9), 
	.A(n27));
   MUX2X1 U29 (.Y(n24), 
	.S(FE_OFN9_0_net_), 
	.B(n27), 
	.A(n28));
endmodule

module shift_register (
	clk, 
	n_rst, 
	shift_enable, 
	d_orig, 
	shift_stop, 
	rcv_data, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input shift_enable;
   input d_orig;
   input shift_stop;
   output [7:0] rcv_data;
   input nclk__L2_N9;

   // Internal wires
   wire _0_net_;
   wire n1;

   flex_stp_sr_NUM_BITS8_SHIFT_MSB0 FSS (.clk(clk), 
	.n_rst(n_rst), 
	.shift_enable(_0_net_), 
	.serial_in(d_orig), 
	.parallel_out(rcv_data), 
	.nclk__L2_N9(nclk__L2_N9));
   INVX1 U1 (.Y(n1), 
	.A(shift_enable));
   NOR2X1 U2 (.Y(_0_net_), 
	.B(n1), 
	.A(shift_stop));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_1_DW01_dec_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_1_DW01_inc_1 (
	A, 
	SUM, 
	n65);
   input [11:0] A;
   output [11:0] SUM;
   input n65;

   // Internal wires
   wire n1;
   wire n3;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n38;
   wire n39;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n74;

   assign n9 = A[9] ;
   assign n13 = A[8] ;
   assign n17 = A[7] ;
   assign n21 = A[6] ;
   assign n27 = A[5] ;
   assign n31 = A[4] ;
   assign n36 = A[3] ;
   assign n39 = A[2] ;
   assign n43 = A[1] ;
   assign n45 = A[0] ;

   XNOR2X1 U3 (.Y(SUM[10]), 
	.B(n65), 
	.A(n7));
   NOR2X1 U4 (.Y(n3), 
	.B(n1), 
	.A(n74));
   NOR2X1 U9 (.Y(n7), 
	.B(n1), 
	.A(n8));
   NAND2X1 U10 (.Y(n8), 
	.B(n13), 
	.A(n9));
   XOR2X1 U13 (.Y(SUM[8]), 
	.B(n14), 
	.A(n1));
   NOR2X1 U14 (.Y(n11), 
	.B(n1), 
	.A(n14));
   NAND2X1 U19 (.Y(n1), 
	.B(n15), 
	.A(n34));
   NOR2X1 U20 (.Y(n15), 
	.B(n24), 
	.A(n16));
   NAND2X1 U21 (.Y(n16), 
	.B(n21), 
	.A(n17));
   NOR2X1 U25 (.Y(n19), 
	.B(n33), 
	.A(n20));
   NAND2X1 U26 (.Y(n20), 
	.B(n25), 
	.A(n21));
   NOR2X1 U30 (.Y(n23), 
	.B(n33), 
	.A(n24));
   NAND2X1 U33 (.Y(n24), 
	.B(n31), 
	.A(n27));
   XOR2X1 U36 (.Y(SUM[4]), 
	.B(n32), 
	.A(n33));
   NOR2X1 U37 (.Y(n29), 
	.B(n33), 
	.A(n32));
   NOR2X1 U43 (.Y(n34), 
	.B(n35), 
	.A(n42));
   NAND2X1 U44 (.Y(n35), 
	.B(n39), 
	.A(n36));
   NAND2X1 U48 (.Y(n38), 
	.B(n41), 
	.A(n39));
   NAND2X1 U53 (.Y(n42), 
	.B(n43), 
	.A(n45));
   OR2X1 U60 (.Y(n74), 
	.B(n8), 
	.A(n65));
   XOR2X1 U61 (.Y(SUM[1]), 
	.B(n45), 
	.A(n43));
   XOR2X1 U62 (.Y(SUM[6]), 
	.B(n21), 
	.A(n23));
   XOR2X1 U63 (.Y(SUM[2]), 
	.B(n39), 
	.A(n41));
   XOR2X1 U64 (.Y(SUM[9]), 
	.B(n9), 
	.A(n11));
   XOR2X1 U65 (.Y(SUM[7]), 
	.B(n17), 
	.A(n19));
   XOR2X1 U66 (.Y(SUM[5]), 
	.B(n27), 
	.A(n29));
   XOR2X1 U67 (.Y(SUM[11]), 
	.B(A[11]), 
	.A(n3));
   XNOR2X1 U68 (.Y(SUM[3]), 
	.B(n36), 
	.A(n38));
   INVX2 U70 (.Y(n41), 
	.A(n42));
   INVX2 U71 (.Y(n33), 
	.A(n34));
   INVX2 U72 (.Y(n32), 
	.A(n31));
   INVX2 U73 (.Y(n25), 
	.A(n24));
   INVX2 U74 (.Y(n14), 
	.A(n13));
   INVX2 U75 (.Y(SUM[0]), 
	.A(n45));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_1 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN6_nn_rst, 
	FE_OFN7_nn_rst, 
	nclk__L2_N5, 
	nclk__L2_N7);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [11:0] rollover_val;
   output [11:0] count_out;
   output rollover_flag;
   input FE_OFN6_nn_rst;
   input FE_OFN7_nn_rst;
   input nclk__L2_N5;
   input nclk__L2_N7;

   // Internal wires
   wire FE_UNCONNECTED_100;
   wire FE_UNCONNECTED_90;
   wire FE_UNCONNECTED_89;
   wire FE_UNCONNECTED_88;
   wire FE_UNCONNECTED_87;
   wire FE_UNCONNECTED_86;
   wire FE_UNCONNECTED_85;
   wire FE_UNCONNECTED_72;
   wire FE_UNCONNECTED_71;
   wire FE_UNCONNECTED_70;
   wire FE_UNCONNECTED_69;
   wire FE_UNCONNECTED_68;
   wire FE_UNCONNECTED_63;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire n2;
   wire n4;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n58;
   wire n59;
   wire n60;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n89), 
	.CLK(clk));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[11]), 
	.D(n106), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n90), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n91), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(FE_OFN7_nn_rst), 
	.Q(count_out[3]), 
	.D(n92), 
	.CLK(clk));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[4]), 
	.D(n93), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[5]), 
	.D(n94), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[6]), 
	.D(n101), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[7]), 
	.D(n102), 
	.CLK(nclk__L2_N7));
   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[8]), 
	.D(n103), 
	.CLK(nclk__L2_N5));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[9]), 
	.D(n104), 
	.CLK(nclk__L2_N5));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[10]), 
	.D(n105), 
	.CLK(nclk__L2_N5));
   flex_counter_stuff_NUM_CNT_BITS12_1_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ FE_UNCONNECTED_72,
		FE_UNCONNECTED_63,
		FE_UNCONNECTED_86,
		FE_UNCONNECTED_71,
		FE_UNCONNECTED_87,
		FE_UNCONNECTED_70,
		FE_UNCONNECTED_88,
		FE_UNCONNECTED_69,
		FE_UNCONNECTED_89,
		FE_UNCONNECTED_68,
		FE_UNCONNECTED_90,
		FE_UNCONNECTED_85,
		FE_UNCONNECTED_100 }));
   flex_counter_stuff_NUM_CNT_BITS12_1_DW01_inc_1 add_35 (.A(count_out), 
	.SUM({ N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7 }), 
	.n65(n65));
   INVX1 U3 (.Y(n58), 
	.A(clear));
   INVX1 U18 (.Y(n7), 
	.A(count_enable));
   AND2X2 U19 (.Y(n2), 
	.B(n58), 
	.A(n7));
   INVX2 U22 (.Y(n4), 
	.A(n2));
   INVX2 U23 (.Y(n84), 
	.A(n60));
   INVX2 U24 (.Y(n87), 
	.A(count_out[1]));
   INVX2 U25 (.Y(n88), 
	.A(count_out[9]));
   INVX2 U26 (.Y(n70), 
	.A(count_out[7]));
   XOR2X1 U27 (.Y(n10), 
	.B(rollover_val[7]), 
	.A(n70));
   INVX2 U28 (.Y(n68), 
	.A(count_out[8]));
   XOR2X1 U29 (.Y(n9), 
	.B(rollover_val[8]), 
	.A(n68));
   INVX2 U30 (.Y(n72), 
	.A(count_out[6]));
   XOR2X1 U31 (.Y(n8), 
	.B(rollover_val[6]), 
	.A(n72));
   NAND3X1 U32 (.Y(n27), 
	.C(n8), 
	.B(n9), 
	.A(n10));
   INVX2 U33 (.Y(n65), 
	.A(count_out[10]));
   XOR2X1 U34 (.Y(n13), 
	.B(rollover_val[10]), 
	.A(n65));
   INVX2 U35 (.Y(n83), 
	.A(count_out[11]));
   XOR2X1 U36 (.Y(n12), 
	.B(rollover_val[11]), 
	.A(n83));
   XOR2X1 U37 (.Y(n11), 
	.B(rollover_val[9]), 
	.A(n88));
   NAND3X1 U38 (.Y(n26), 
	.C(n11), 
	.B(n12), 
	.A(n13));
   NOR2X1 U39 (.Y(n37), 
	.B(n26), 
	.A(n27));
   XOR2X1 U40 (.Y(n30), 
	.B(rollover_val[1]), 
	.A(n87));
   INVX2 U41 (.Y(n80), 
	.A(count_out[2]));
   XOR2X1 U42 (.Y(n29), 
	.B(rollover_val[2]), 
	.A(n80));
   INVX2 U43 (.Y(n86), 
	.A(count_out[0]));
   XOR2X1 U44 (.Y(n28), 
	.B(rollover_val[0]), 
	.A(n86));
   NAND3X1 U45 (.Y(n35), 
	.C(n28), 
	.B(n29), 
	.A(n30));
   INVX2 U46 (.Y(n76), 
	.A(count_out[4]));
   XOR2X1 U47 (.Y(n33), 
	.B(rollover_val[4]), 
	.A(n76));
   INVX2 U48 (.Y(n74), 
	.A(count_out[5]));
   XOR2X1 U52 (.Y(n32), 
	.B(rollover_val[5]), 
	.A(n74));
   INVX2 U53 (.Y(n78), 
	.A(count_out[3]));
   XOR2X1 U54 (.Y(n31), 
	.B(rollover_val[3]), 
	.A(n78));
   NAND3X1 U55 (.Y(n34), 
	.C(n31), 
	.B(n32), 
	.A(n33));
   NOR2X1 U56 (.Y(n36), 
	.B(n34), 
	.A(n35));
   NAND2X1 U57 (.Y(n59), 
	.B(n36), 
	.A(n37));
   NAND3X1 U79 (.Y(n60), 
	.C(n4), 
	.B(n58), 
	.A(n59));
   NAND2X1 U80 (.Y(n64), 
	.B(n84), 
	.A(N17));
   OAI21X1 U81 (.Y(n105), 
	.C(n64), 
	.B(n65), 
	.A(n4));
   NAND2X1 U82 (.Y(n66), 
	.B(n84), 
	.A(N16));
   OAI21X1 U83 (.Y(n104), 
	.C(n66), 
	.B(n4), 
	.A(n88));
   NAND2X1 U84 (.Y(n67), 
	.B(n84), 
	.A(N15));
   OAI21X1 U85 (.Y(n103), 
	.C(n67), 
	.B(n68), 
	.A(n4));
   NAND2X1 U86 (.Y(n69), 
	.B(n84), 
	.A(N14));
   OAI21X1 U87 (.Y(n102), 
	.C(n69), 
	.B(n70), 
	.A(n4));
   NAND2X1 U88 (.Y(n71), 
	.B(n84), 
	.A(N13));
   OAI21X1 U89 (.Y(n101), 
	.C(n71), 
	.B(n72), 
	.A(n4));
   NAND2X1 U90 (.Y(n73), 
	.B(n84), 
	.A(N12));
   OAI21X1 U91 (.Y(n94), 
	.C(n73), 
	.B(n74), 
	.A(n4));
   NAND2X1 U92 (.Y(n75), 
	.B(n84), 
	.A(N11));
   OAI21X1 U93 (.Y(n93), 
	.C(n75), 
	.B(n76), 
	.A(n4));
   NAND2X1 U94 (.Y(n77), 
	.B(n84), 
	.A(N10));
   OAI21X1 U95 (.Y(n92), 
	.C(n77), 
	.B(n78), 
	.A(n4));
   NAND2X1 U96 (.Y(n79), 
	.B(n84), 
	.A(N9));
   OAI21X1 U97 (.Y(n91), 
	.C(n79), 
	.B(n80), 
	.A(n4));
   NAND2X1 U98 (.Y(n81), 
	.B(n84), 
	.A(N8));
   OAI21X1 U99 (.Y(n90), 
	.C(n81), 
	.B(n4), 
	.A(n87));
   NAND2X1 U100 (.Y(n82), 
	.B(n84), 
	.A(N18));
   OAI21X1 U101 (.Y(n106), 
	.C(n82), 
	.B(n83), 
	.A(n4));
   NAND2X1 U102 (.Y(n85), 
	.B(n84), 
	.A(N7));
   OAI21X1 U103 (.Y(n89), 
	.C(n85), 
	.B(n86), 
	.A(n4));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_0_DW01_dec_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_0_DW01_inc_1 (
	A, 
	SUM, 
	n65);
   input [11:0] A;
   output [11:0] SUM;
   input n65;

   // Internal wires
   wire n1;
   wire n3;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n38;
   wire n39;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n74;

   assign n9 = A[9] ;
   assign n13 = A[8] ;
   assign n17 = A[7] ;
   assign n21 = A[6] ;
   assign n27 = A[5] ;
   assign n31 = A[4] ;
   assign n36 = A[3] ;
   assign n39 = A[2] ;
   assign n43 = A[1] ;
   assign n45 = A[0] ;

   XNOR2X1 U3 (.Y(SUM[10]), 
	.B(n65), 
	.A(n7));
   NOR2X1 U4 (.Y(n3), 
	.B(n1), 
	.A(n74));
   NOR2X1 U9 (.Y(n7), 
	.B(n1), 
	.A(n8));
   NAND2X1 U10 (.Y(n8), 
	.B(n13), 
	.A(n9));
   XOR2X1 U13 (.Y(SUM[8]), 
	.B(n14), 
	.A(n1));
   NOR2X1 U14 (.Y(n11), 
	.B(n1), 
	.A(n14));
   NAND2X1 U19 (.Y(n1), 
	.B(n15), 
	.A(n34));
   NOR2X1 U20 (.Y(n15), 
	.B(n24), 
	.A(n16));
   NAND2X1 U21 (.Y(n16), 
	.B(n21), 
	.A(n17));
   NOR2X1 U25 (.Y(n19), 
	.B(n33), 
	.A(n20));
   NAND2X1 U26 (.Y(n20), 
	.B(n25), 
	.A(n21));
   NOR2X1 U30 (.Y(n23), 
	.B(n33), 
	.A(n24));
   NAND2X1 U33 (.Y(n24), 
	.B(n31), 
	.A(n27));
   XOR2X1 U36 (.Y(SUM[4]), 
	.B(n32), 
	.A(n33));
   NOR2X1 U37 (.Y(n29), 
	.B(n33), 
	.A(n32));
   NOR2X1 U43 (.Y(n34), 
	.B(n35), 
	.A(n42));
   NAND2X1 U44 (.Y(n35), 
	.B(n39), 
	.A(n36));
   NAND2X1 U48 (.Y(n38), 
	.B(n41), 
	.A(n39));
   NAND2X1 U53 (.Y(n42), 
	.B(n43), 
	.A(n45));
   OR2X1 U60 (.Y(n74), 
	.B(n8), 
	.A(n65));
   XOR2X1 U61 (.Y(SUM[6]), 
	.B(n21), 
	.A(n23));
   XOR2X1 U62 (.Y(SUM[2]), 
	.B(n39), 
	.A(n41));
   XNOR2X1 U63 (.Y(SUM[3]), 
	.B(n36), 
	.A(n38));
   XOR2X1 U64 (.Y(SUM[1]), 
	.B(n45), 
	.A(n43));
   XOR2X1 U65 (.Y(SUM[9]), 
	.B(n9), 
	.A(n11));
   XOR2X1 U66 (.Y(SUM[7]), 
	.B(n17), 
	.A(n19));
   XOR2X1 U67 (.Y(SUM[5]), 
	.B(n27), 
	.A(n29));
   XOR2X1 U68 (.Y(SUM[11]), 
	.B(A[11]), 
	.A(n3));
   INVX2 U70 (.Y(n41), 
	.A(n42));
   INVX2 U71 (.Y(n33), 
	.A(n34));
   INVX2 U72 (.Y(n32), 
	.A(n31));
   INVX2 U73 (.Y(n25), 
	.A(n24));
   INVX2 U74 (.Y(n14), 
	.A(n13));
   INVX2 U75 (.Y(SUM[0]), 
	.A(n45));
endmodule

module flex_counter_stuff_NUM_CNT_BITS12_0 (
	clk, 
	n_rst, 
	clear, 
	count_enable, 
	rollover_val, 
	count_out, 
	rollover_flag, 
	FE_OFN4_nn_rst, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input clear;
   input count_enable;
   input [11:0] rollover_val;
   output [11:0] count_out;
   output rollover_flag;
   input FE_OFN4_nn_rst;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;
   input nclk__L2_N8;

   // Internal wires
   wire FE_UNCONNECTED_100;
   wire FE_UNCONNECTED_85;
   wire FE_UNCONNECTED_84;
   wire FE_UNCONNECTED_83;
   wire FE_UNCONNECTED_82;
   wire FE_UNCONNECTED_81;
   wire FE_UNCONNECTED_80;
   wire FE_UNCONNECTED_68;
   wire FE_UNCONNECTED_67;
   wire FE_UNCONNECTED_66;
   wire FE_UNCONNECTED_65;
   wire FE_UNCONNECTED_64;
   wire FE_UNCONNECTED_63;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire n2;
   wire n4;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n58;
   wire n59;
   wire n60;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;

   DFFSR \cur_count_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[0]), 
	.D(n89), 
	.CLK(clk));
   DFFSR \cur_count_reg[11]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(count_out[11]), 
	.D(n106), 
	.CLK(nclk__L2_N8));
   DFFSR \cur_count_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[1]), 
	.D(n90), 
	.CLK(clk));
   DFFSR \cur_count_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[2]), 
	.D(n91), 
	.CLK(clk));
   DFFSR \cur_count_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[3]), 
	.D(n92), 
	.CLK(clk));
   DFFSR \cur_count_reg[4]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[4]), 
	.D(n93), 
	.CLK(clk));
   DFFSR \cur_count_reg[5]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[5]), 
	.D(n94), 
	.CLK(clk));
   DFFSR \cur_count_reg[6]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[6]), 
	.D(n101), 
	.CLK(clk));
   DFFSR \cur_count_reg[7]  (.S(1'b1), 
	.R(FE_OFN5_nn_rst), 
	.Q(count_out[7]), 
	.D(n102), 
	.CLK(clk));
   DFFSR \cur_count_reg[8]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(count_out[8]), 
	.D(n103), 
	.CLK(nclk__L2_N8));
   DFFSR \cur_count_reg[9]  (.S(1'b1), 
	.R(n_rst), 
	.Q(count_out[9]), 
	.D(n104), 
	.CLK(clk));
   DFFSR \cur_count_reg[10]  (.S(1'b1), 
	.R(FE_OFN6_nn_rst), 
	.Q(count_out[10]), 
	.D(n105), 
	.CLK(nclk__L2_N8));
   flex_counter_stuff_NUM_CNT_BITS12_0_DW01_dec_0 sub_37 (.A({ 1'b0,
		rollover_val }), 
	.SUM({ FE_UNCONNECTED_68,
		FE_UNCONNECTED_63,
		FE_UNCONNECTED_81,
		FE_UNCONNECTED_67,
		FE_UNCONNECTED_82,
		FE_UNCONNECTED_66,
		FE_UNCONNECTED_83,
		FE_UNCONNECTED_65,
		FE_UNCONNECTED_84,
		FE_UNCONNECTED_64,
		FE_UNCONNECTED_85,
		FE_UNCONNECTED_80,
		FE_UNCONNECTED_100 }));
   flex_counter_stuff_NUM_CNT_BITS12_0_DW01_inc_1 add_35 (.A(count_out), 
	.SUM({ N18,
		N17,
		N16,
		N15,
		N14,
		N13,
		N12,
		N11,
		N10,
		N9,
		N8,
		N7 }), 
	.n65(n65));
   INVX1 U3 (.Y(n58), 
	.A(clear));
   AND2X2 U18 (.Y(n2), 
	.B(n58), 
	.A(n7));
   INVX2 U21 (.Y(n4), 
	.A(n2));
   INVX2 U22 (.Y(n84), 
	.A(n60));
   INVX2 U23 (.Y(n87), 
	.A(count_out[1]));
   INVX2 U24 (.Y(n88), 
	.A(count_out[9]));
   INVX2 U25 (.Y(n7), 
	.A(count_enable));
   INVX2 U26 (.Y(n70), 
	.A(count_out[7]));
   XOR2X1 U27 (.Y(n10), 
	.B(rollover_val[7]), 
	.A(n70));
   INVX2 U28 (.Y(n68), 
	.A(count_out[8]));
   XOR2X1 U29 (.Y(n9), 
	.B(rollover_val[8]), 
	.A(n68));
   INVX2 U30 (.Y(n72), 
	.A(count_out[6]));
   XOR2X1 U31 (.Y(n8), 
	.B(rollover_val[6]), 
	.A(n72));
   NAND3X1 U32 (.Y(n27), 
	.C(n8), 
	.B(n9), 
	.A(n10));
   INVX2 U33 (.Y(n65), 
	.A(count_out[10]));
   XOR2X1 U34 (.Y(n13), 
	.B(rollover_val[10]), 
	.A(n65));
   INVX2 U35 (.Y(n83), 
	.A(count_out[11]));
   XOR2X1 U36 (.Y(n12), 
	.B(rollover_val[11]), 
	.A(n83));
   XOR2X1 U37 (.Y(n11), 
	.B(rollover_val[9]), 
	.A(n88));
   NAND3X1 U38 (.Y(n26), 
	.C(n11), 
	.B(n12), 
	.A(n13));
   NOR2X1 U39 (.Y(n37), 
	.B(n26), 
	.A(n27));
   XOR2X1 U40 (.Y(n30), 
	.B(rollover_val[1]), 
	.A(n87));
   INVX2 U41 (.Y(n80), 
	.A(count_out[2]));
   XOR2X1 U42 (.Y(n29), 
	.B(rollover_val[2]), 
	.A(n80));
   INVX2 U43 (.Y(n86), 
	.A(count_out[0]));
   XOR2X1 U44 (.Y(n28), 
	.B(rollover_val[0]), 
	.A(n86));
   NAND3X1 U45 (.Y(n35), 
	.C(n28), 
	.B(n29), 
	.A(n30));
   INVX2 U46 (.Y(n76), 
	.A(count_out[4]));
   XOR2X1 U47 (.Y(n33), 
	.B(rollover_val[4]), 
	.A(n76));
   INVX2 U48 (.Y(n74), 
	.A(count_out[5]));
   XOR2X1 U52 (.Y(n32), 
	.B(rollover_val[5]), 
	.A(n74));
   INVX2 U53 (.Y(n78), 
	.A(count_out[3]));
   XOR2X1 U54 (.Y(n31), 
	.B(rollover_val[3]), 
	.A(n78));
   NAND3X1 U55 (.Y(n34), 
	.C(n31), 
	.B(n32), 
	.A(n33));
   NOR2X1 U56 (.Y(n36), 
	.B(n34), 
	.A(n35));
   NAND2X1 U57 (.Y(n59), 
	.B(n36), 
	.A(n37));
   NAND3X1 U79 (.Y(n60), 
	.C(n4), 
	.B(n58), 
	.A(n59));
   NAND2X1 U80 (.Y(n64), 
	.B(n84), 
	.A(N17));
   OAI21X1 U81 (.Y(n105), 
	.C(n64), 
	.B(n65), 
	.A(n4));
   NAND2X1 U82 (.Y(n66), 
	.B(n84), 
	.A(N16));
   OAI21X1 U83 (.Y(n104), 
	.C(n66), 
	.B(n4), 
	.A(n88));
   NAND2X1 U84 (.Y(n67), 
	.B(n84), 
	.A(N15));
   OAI21X1 U85 (.Y(n103), 
	.C(n67), 
	.B(n68), 
	.A(n4));
   NAND2X1 U86 (.Y(n69), 
	.B(n84), 
	.A(N14));
   OAI21X1 U87 (.Y(n102), 
	.C(n69), 
	.B(n70), 
	.A(n4));
   NAND2X1 U88 (.Y(n71), 
	.B(n84), 
	.A(N13));
   OAI21X1 U89 (.Y(n101), 
	.C(n71), 
	.B(n72), 
	.A(n4));
   NAND2X1 U90 (.Y(n73), 
	.B(n84), 
	.A(N12));
   OAI21X1 U91 (.Y(n94), 
	.C(n73), 
	.B(n74), 
	.A(n4));
   NAND2X1 U92 (.Y(n75), 
	.B(n84), 
	.A(N11));
   OAI21X1 U93 (.Y(n93), 
	.C(n75), 
	.B(n76), 
	.A(n4));
   NAND2X1 U94 (.Y(n77), 
	.B(n84), 
	.A(N10));
   OAI21X1 U95 (.Y(n92), 
	.C(n77), 
	.B(n78), 
	.A(n4));
   NAND2X1 U96 (.Y(n79), 
	.B(n84), 
	.A(N9));
   OAI21X1 U97 (.Y(n91), 
	.C(n79), 
	.B(n80), 
	.A(n4));
   NAND2X1 U98 (.Y(n81), 
	.B(n84), 
	.A(N8));
   OAI21X1 U99 (.Y(n90), 
	.C(n81), 
	.B(n4), 
	.A(n87));
   NAND2X1 U100 (.Y(n82), 
	.B(n84), 
	.A(N18));
   OAI21X1 U101 (.Y(n106), 
	.C(n82), 
	.B(n83), 
	.A(n4));
   NAND2X1 U102 (.Y(n85), 
	.B(n84), 
	.A(N7));
   OAI21X1 U103 (.Y(n89), 
	.C(n85), 
	.B(n86), 
	.A(n4));
endmodule

module myfifo_0_DW01_inc_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;

   // Internal wires
   wire [12:2] carry;
endmodule

module myfifo_0 (
	clk, 
	n_rst, 
	r_enable, 
	w_enable, 
	clear, 
	data_i, 
	sram_o, 
	sram_i, 
	data_o, 
	addr, 
	full, 
	empty, 
	FE_OFN4_nn_rst, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst, 
	FE_OFN7_nn_rst, 
	nclk__L2_N5, 
	nclk__L2_N7, 
	nclk__L2_N8);
   input clk;
   input n_rst;
   input r_enable;
   input w_enable;
   input clear;
   input [7:0] data_i;
   input [7:0] sram_o;
   output [7:0] sram_i;
   output [7:0] data_o;
   output [11:0] addr;
   output full;
   output empty;
   input FE_OFN4_nn_rst;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;
   input FE_OFN7_nn_rst;
   input nclk__L2_N5;
   input nclk__L2_N7;
   input nclk__L2_N8;

   // Internal wires
   wire FE_UNCONNECTED_113;
   wire FE_UNCONNECTED_112;
   wire FE_UNCONNECTED_111;
   wire FE_UNCONNECTED_110;
   wire FE_UNCONNECTED_109;
   wire FE_UNCONNECTED_108;
   wire FE_UNCONNECTED_107;
   wire FE_UNCONNECTED_106;
   wire FE_UNCONNECTED_105;
   wire FE_UNCONNECTED_104;
   wire FE_UNCONNECTED_103;
   wire FE_UNCONNECTED_102;
   wire FE_UNCONNECTED_101;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire [11:0] writeptr;
   wire [11:0] readptr;

   assign sram_i[7] = data_i[7] ;
   assign sram_i[6] = data_i[6] ;
   assign sram_i[5] = data_i[5] ;
   assign sram_i[4] = data_i[4] ;
   assign sram_i[3] = data_i[3] ;
   assign sram_i[2] = data_i[2] ;
   assign sram_i[1] = data_i[1] ;
   assign sram_i[0] = data_i[0] ;
   assign data_o[7] = sram_o[7] ;
   assign data_o[6] = sram_o[6] ;
   assign data_o[5] = sram_o[5] ;
   assign data_o[4] = sram_o[4] ;
   assign data_o[3] = sram_o[3] ;
   assign data_o[2] = sram_o[2] ;
   assign data_o[1] = sram_o[1] ;
   assign data_o[0] = sram_o[0] ;

   flex_counter_stuff_NUM_CNT_BITS12_1 ReadCnt (.clk(clk), 
	.n_rst(n_rst), 
	.clear(clear), 
	.count_enable(r_enable), 
	.rollover_val({ 1'b0,
		1'b0,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1 }), 
	.count_out(readptr), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN7_nn_rst(FE_OFN7_nn_rst), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N7(nclk__L2_N7));
   flex_counter_stuff_NUM_CNT_BITS12_0 WriteCnt (.clk(nclk__L2_N7), 
	.n_rst(n_rst), 
	.clear(clear), 
	.count_enable(w_enable), 
	.rollover_val({ 1'b0,
		1'b0,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1,
		1'b1 }), 
	.count_out(writeptr), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN5_nn_rst(FE_OFN5_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.nclk__L2_N8(nclk__L2_N8));
   myfifo_0_DW01_inc_0 add_34 (.A({ 1'b0,
		readptr }), 
	.SUM({ FE_UNCONNECTED_110,
		FE_UNCONNECTED_105,
		FE_UNCONNECTED_103,
		FE_UNCONNECTED_101,
		FE_UNCONNECTED_102,
		FE_UNCONNECTED_106,
		FE_UNCONNECTED_104,
		FE_UNCONNECTED_107,
		FE_UNCONNECTED_108,
		FE_UNCONNECTED_109,
		FE_UNCONNECTED_111,
		FE_UNCONNECTED_112,
		FE_UNCONNECTED_113 }));
   XNOR2X1 U8 (.Y(n5), 
	.B(writeptr[5]), 
	.A(readptr[5]));
   XNOR2X1 U9 (.Y(n4), 
	.B(writeptr[3]), 
	.A(readptr[3]));
   XNOR2X1 U10 (.Y(n3), 
	.B(writeptr[4]), 
	.A(readptr[4]));
   NAND3X1 U11 (.Y(n10), 
	.C(n3), 
	.B(n4), 
	.A(n5));
   XNOR2X1 U12 (.Y(n8), 
	.B(writeptr[2]), 
	.A(readptr[2]));
   XNOR2X1 U13 (.Y(n7), 
	.B(writeptr[0]), 
	.A(readptr[0]));
   XNOR2X1 U14 (.Y(n6), 
	.B(writeptr[1]), 
	.A(readptr[1]));
   NAND3X1 U15 (.Y(n9), 
	.C(n6), 
	.B(n7), 
	.A(n8));
   NOR2X1 U16 (.Y(n21), 
	.B(n9), 
	.A(n10));
   XNOR2X1 U17 (.Y(n14), 
	.B(writeptr[11]), 
	.A(readptr[11]));
   XNOR2X1 U18 (.Y(n13), 
	.B(writeptr[9]), 
	.A(readptr[9]));
   XNOR2X1 U19 (.Y(n12), 
	.B(writeptr[10]), 
	.A(readptr[10]));
   NAND3X1 U39 (.Y(n19), 
	.C(n12), 
	.B(n13), 
	.A(n14));
   XNOR2X1 U40 (.Y(n17), 
	.B(writeptr[8]), 
	.A(readptr[8]));
   XNOR2X1 U41 (.Y(n16), 
	.B(writeptr[6]), 
	.A(readptr[6]));
   XNOR2X1 U42 (.Y(n15), 
	.B(writeptr[7]), 
	.A(readptr[7]));
   NAND3X1 U43 (.Y(n18), 
	.C(n15), 
	.B(n16), 
	.A(n17));
   NOR2X1 U44 (.Y(n20), 
	.B(n18), 
	.A(n19));
   AND2X2 U45 (.Y(empty), 
	.B(n20), 
	.A(n21));
endmodule

module usb_receiver (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	sram_o, 
	r_enable, 
	sram_i, 
	r_data, 
	empty, 
	packet_done, 
	pid_rdy, 
	pid, 
	addr, 
	r_enable_out, 
	w_enable_out, 
	FE_OFN0_nn_rst, 
	FE_OFN2_nn_rst, 
	FE_OFN3_nn_rst, 
	FE_OFN4_nn_rst, 
	FE_OFN5_nn_rst, 
	FE_OFN6_nn_rst, 
	FE_OFN7_nn_rst, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7, 
	nclk__L2_N8, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input d_plus;
   input d_minus;
   input [7:0] sram_o;
   input r_enable;
   output [7:0] sram_i;
   output [7:0] r_data;
   output empty;
   output [1:0] packet_done;
   output pid_rdy;
   output [3:0] pid;
   output [11:0] addr;
   output r_enable_out;
   output w_enable_out;
   input FE_OFN0_nn_rst;
   input FE_OFN2_nn_rst;
   input FE_OFN3_nn_rst;
   input FE_OFN4_nn_rst;
   input FE_OFN5_nn_rst;
   input FE_OFN6_nn_rst;
   input FE_OFN7_nn_rst;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;
   input nclk__L2_N8;
   input nclk__L2_N9;

   // Internal wires
   wire FE_OFN1_nn_rst;
   wire d_plus_sync;
   wire d_minus_sync;
   wire shift_enable;
   wire eop;
   wire d_orig;
   wire d_edge;
   wire rcving;
   wire shift_stop;
   wire byte_received;
   wire field_received;
   wire crc_rcv;
   wire sync_rst;
   wire clear;
   wire [3:0] bit_cnt;
   wire [4:0] crc5_data;
   wire [15:0] crc16_data;
   wire [7:0] rcv_data;

   assign r_enable_out = r_enable ;

   INVX4 FE_OFC1_nn_rst (.Y(FE_OFN1_nn_rst), 
	.A(FE_OFN0_nn_rst));
   sync_1 CNYS1 (.clk(nclk__L2_N6), 
	.n_rst(n_rst), 
	.async_in(d_plus), 
	.sync_out(d_plus_sync), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst));
   sync_0 CNYS2 (.clk(clk), 
	.n_rst(FE_OFN2_nn_rst), 
	.async_in(d_minus), 
	.sync_out(d_minus_sync));
   decode DCD (.clk(nclk__L2_N6), 
	.n_rst(n_rst), 
	.d_plus(d_plus_sync), 
	.shift_enable(shift_enable), 
	.eop(eop), 
	.d_orig(d_orig), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst));
   edge_detect_0 EDT (.clk(nclk__L2_N6), 
	.n_rst(n_rst), 
	.d_plus(d_plus_sync), 
	.d_edge(d_edge));
   eop_detect PDT (.d_plus(d_plus_sync), 
	.d_minus(d_minus_sync), 
	.eop(eop));
   timerRX TIM (.clk(nclk__L2_N6), 
	.n_rst(n_rst), 
	.d_edge(d_edge), 
	.rcving(rcving), 
	.bit_cnt(bit_cnt), 
	.shift_stop(shift_stop), 
	.shift_enable(shift_enable), 
	.byte_received(byte_received), 
	.field_received(field_received), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst), 
	.nclk__L2_N9(nclk__L2_N9));
   bit_unstuff BST (.clk(nclk__L2_N6), 
	.n_rst(n_rst), 
	.d_orig(d_orig), 
	.d_edge(d_edge), 
	.shift_enable(shift_enable), 
	.shift_stop(shift_stop), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst), 
	.nclk__L2_N9(nclk__L2_N9));
   crc_check_5bit CRC5 (.clk(nclk__L2_N6), 
	.n_rst(FE_OFN1_nn_rst), 
	.shift_enable(shift_enable), 
	.serial_in(d_orig), 
	.eop(eop), 
	.shift_stop(shift_stop), 
	.crc_rcv(crc_rcv), 
	.sync_rst(sync_rst), 
	.parallel_out(crc5_data), 
	.nclk__L2_N9(nclk__L2_N9));
   crc_check_16bit CRC16 (.clk(clk), 
	.n_rst(FE_OFN2_nn_rst), 
	.shift_enable(shift_enable), 
	.serial_in(d_orig), 
	.eop(eop), 
	.shift_stop(shift_stop), 
	.crc_rcv(crc_rcv), 
	.sync_rst(sync_rst), 
	.parallel_out(crc16_data), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst), 
	.FE_OFN1_nn_rst(FE_OFN1_nn_rst), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N6(nclk__L2_N6));
   rcu RCU (.clk(nclk__L2_N4), 
	.n_rst(FE_OFN3_nn_rst), 
	.d_edge(d_edge), 
	.eop(eop), 
	.shift_enable(shift_enable), 
	.rcv_data(rcv_data), 
	.crc5_data(crc5_data), 
	.crc16_data(crc16_data), 
	.byte_received(byte_received), 
	.field_received(field_received), 
	.sync_rst(sync_rst), 
	.pid(pid), 
	.rcving(rcving), 
	.w_enable(w_enable_out), 
	.crc_rcv(crc_rcv), 
	.pid_rdy(pid_rdy), 
	.bit_cnt(bit_cnt), 
	.packet_done(packet_done), 
	.clear(clear), 
	.nclk__L2_N7(nclk__L2_N7));
   shift_register SRG (.clk(nclk__L2_N7), 
	.n_rst(FE_OFN2_nn_rst), 
	.shift_enable(shift_enable), 
	.d_orig(d_orig), 
	.shift_stop(shift_stop), 
	.rcv_data(rcv_data), 
	.nclk__L2_N9(nclk__L2_N9));
   myfifo_0 OFIF (.clk(nclk__L2_N4), 
	.n_rst(FE_OFN3_nn_rst), 
	.r_enable(r_enable), 
	.w_enable(w_enable_out), 
	.clear(clear), 
	.data_i(rcv_data), 
	.sram_o(sram_o), 
	.sram_i(sram_i), 
	.data_o(r_data), 
	.addr(addr), 
	.empty(empty), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN5_nn_rst(FE_OFN5_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN7_nn_rst(FE_OFN7_nn_rst), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N7(nclk__L2_N7), 
	.nclk__L2_N8(nclk__L2_N8));
endmodule

module usbcontroller (
	n_rst, 
	clk, 
	sd_done, 
	sd_err, 
	tx_err, 
	tx_done, 
	rx_pid, 
	rx_packet_done, 
	pid_rdy, 
	sd_read, 
	sd_write, 
	tx_send_good, 
	tx_send_bad, 
	tx_transmit, 
	sd_addr_rdy, 
	FE_OFN7_nn_rst, 
	FE_OFN4_nn_rst);
   input n_rst;
   input clk;
   input sd_done;
   input sd_err;
   input tx_err;
   input tx_done;
   input [3:0] rx_pid;
   input [1:0] rx_packet_done;
   input pid_rdy;
   output sd_read;
   output sd_write;
   output tx_send_good;
   output tx_send_bad;
   output tx_transmit;
   output sd_addr_rdy;
   input FE_OFN7_nn_rst;
   input FE_OFN4_nn_rst;

   // Internal wires
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire n152;
   wire n154;
   wire n155;
   wire n156;
   wire n2;
   wire n8;
   wire n10;
   wire n11;
   wire n12;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire [31:0] state;
   wire [31:0] nextstate;
   wire [2:0] count_packet;

   assign tx_send_bad = 1'b0 ;

   LATCH \count_packet_reg[0]  (.Q(count_packet[0]), 
	.D(N58), 
	.CLK(N57));
   LATCH \count_packet_reg[1]  (.Q(count_packet[1]), 
	.D(N59), 
	.CLK(N57));
   LATCH \count_packet_reg[2]  (.Q(count_packet[2]), 
	.D(N60), 
	.CLK(N57));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(FE_OFN4_nn_rst), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(clk));
   DFFSR \state_reg[1]  (.S(FE_OFN7_nn_rst), 
	.R(1'b1), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(clk));
   DFFSR \state_reg[2]  (.S(n_rst), 
	.R(1'b1), 
	.Q(state[2]), 
	.D(nextstate[2]), 
	.CLK(clk));
   OAI21X1 U186 (.Y(n156), 
	.C(count_packet[2]), 
	.B(n154), 
	.A(count_packet[1]));
   XOR2X1 U187 (.Y(n154), 
	.B(count_packet[1]), 
	.A(count_packet[0]));
   OR2X1 U188 (.Y(n155), 
	.B(count_packet[0]), 
	.A(n152));
   AOI21X1 U189 (.Y(n152), 
	.C(count_packet[2]), 
	.B(count_packet[0]), 
	.A(count_packet[1]));
   DFFSR \state_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(state[4]), 
	.D(nextstate[4]), 
	.CLK(clk));
   DFFSR \state_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(state[3]), 
	.D(nextstate[3]), 
	.CLK(clk));
   INVX1 U6 (.Y(n29), 
	.A(state[4]));
   AND2X2 U8 (.Y(n2), 
	.B(n26), 
	.A(n25));
   INVX1 U12 (.Y(n84), 
	.A(state[1]));
   AND2X2 U13 (.Y(n10), 
	.B(n17), 
	.A(state[3]));
   INVX1 U14 (.Y(n8), 
	.A(n115));
   INVX1 U15 (.Y(n30), 
	.A(n10));
   INVX2 U16 (.Y(n115), 
	.A(state[0]));
   INVX2 U17 (.Y(n11), 
	.A(n62));
   AND2X2 U18 (.Y(n12), 
	.B(n31), 
	.A(n32));
   INVX2 U19 (.Y(n57), 
	.A(n12));
   INVX2 U22 (.Y(n62), 
	.A(state[2]));
   NAND2X1 U23 (.Y(sd_addr_rdy), 
	.B(n2), 
	.A(n15));
   AND2X2 U25 (.Y(n15), 
	.B(n10), 
	.A(n11));
   INVX1 U26 (.Y(n60), 
	.A(n15));
   AND2X1 U27 (.Y(n16), 
	.B(n18), 
	.A(n19));
   AND2X1 U28 (.Y(n23), 
	.B(state[1]), 
	.A(state[0]));
   AND2X2 U29 (.Y(n17), 
	.B(n29), 
	.A(n22));
   AND2X2 U30 (.Y(n18), 
	.B(n29), 
	.A(n23));
   AND2X2 U31 (.Y(n19), 
	.B(n62), 
	.A(n27));
   AND2X2 U32 (.Y(n20), 
	.B(n60), 
	.A(n116));
   AND2X2 U33 (.Y(n21), 
	.B(state[4]), 
	.A(n19));
   AND2X2 U34 (.Y(n22), 
	.B(n115), 
	.A(state[1]));
   INVX2 U35 (.Y(n24), 
	.A(count_packet[1]));
   XOR2X1 U36 (.Y(n89), 
	.B(count_packet[2]), 
	.A(n24));
   INVX2 U37 (.Y(n26), 
	.A(n89));
   INVX2 U38 (.Y(n25), 
	.A(count_packet[0]));
   INVX2 U39 (.Y(n27), 
	.A(state[3]));
   NAND2X1 U40 (.Y(n32), 
	.B(n22), 
	.A(n21));
   INVX2 U41 (.Y(tx_transmit), 
	.A(n32));
   NAND2X1 U42 (.Y(n31), 
	.B(n23), 
	.A(n21));
   INVX2 U43 (.Y(tx_send_good), 
	.A(n31));
   NAND2X1 U44 (.Y(n121), 
	.B(n27), 
	.A(state[2]));
   NOR2X1 U45 (.Y(n28), 
	.B(n121), 
	.A(state[1]));
   NAND3X1 U46 (.Y(n65), 
	.C(n28), 
	.B(n8), 
	.A(state[4]));
   INVX2 U47 (.Y(sd_write), 
	.A(n65));
   NAND3X1 U48 (.Y(n36), 
	.C(n21), 
	.B(n84), 
	.A(n115));
   INVX2 U49 (.Y(sd_read), 
	.A(n36));
   INVX2 U50 (.Y(n40), 
	.A(n121));
   NAND2X1 U51 (.Y(n37), 
	.B(n29), 
	.A(n84));
   INVX2 U52 (.Y(n39), 
	.A(n37));
   NAND3X1 U53 (.Y(n99), 
	.C(n39), 
	.B(n40), 
	.A(n8));
   NAND3X1 U54 (.Y(n35), 
	.C(n39), 
	.B(n8), 
	.A(n19));
   NAND3X1 U55 (.Y(n117), 
	.C(n62), 
	.B(state[3]), 
	.A(n18));
   OAI21X1 U56 (.Y(n58), 
	.C(n117), 
	.B(n30), 
	.A(n11));
   NAND3X1 U57 (.Y(n61), 
	.C(n22), 
	.B(n40), 
	.A(state[4]));
   NAND2X1 U58 (.Y(n33), 
	.B(n61), 
	.A(n12));
   NOR2X1 U59 (.Y(n34), 
	.B(n33), 
	.A(n58));
   NAND3X1 U60 (.Y(n82), 
	.C(n34), 
	.B(n35), 
	.A(n99));
   NAND2X1 U61 (.Y(n52), 
	.B(n65), 
	.A(n36));
   NOR2X1 U62 (.Y(n44), 
	.B(n82), 
	.A(n52));
   NOR2X1 U63 (.Y(n38), 
	.B(n37), 
	.A(n11));
   NAND3X1 U64 (.Y(n78), 
	.C(n38), 
	.B(state[3]), 
	.A(n8));
   INVX2 U65 (.Y(n92), 
	.A(n78));
   NOR2X1 U66 (.Y(n43), 
	.B(n92), 
	.A(n15));
   NAND2X1 U67 (.Y(n107), 
	.B(n115), 
	.A(n39));
   OAI21X1 U68 (.Y(n87), 
	.C(n40), 
	.B(n18), 
	.A(n17));
   OAI21X1 U69 (.Y(n41), 
	.C(n87), 
	.B(n107), 
	.A(n11));
   NOR2X1 U70 (.Y(n42), 
	.B(n41), 
	.A(n16));
   NAND3X1 U71 (.Y(n48), 
	.C(n42), 
	.B(n43), 
	.A(n44));
   INVX2 U72 (.Y(n46), 
	.A(rx_pid[1]));
   INVX2 U73 (.Y(n45), 
	.A(rx_pid[2]));
   NAND3X1 U74 (.Y(n47), 
	.C(n45), 
	.B(n46), 
	.A(rx_pid[0]));
   INVX2 U75 (.Y(n91), 
	.A(n47));
   NAND3X1 U76 (.Y(n68), 
	.C(n18), 
	.B(state[3]), 
	.A(n11));
   INVX2 U77 (.Y(n54), 
	.A(n68));
   MUX2X1 U78 (.Y(n59), 
	.S(n54), 
	.B(n48), 
	.A(n91));
   INVX2 U79 (.Y(n105), 
	.A(tx_done));
   AOI22X1 U80 (.Y(n56), 
	.D(n105), 
	.C(n57), 
	.B(n59), 
	.A(state[4]));
   INVX2 U81 (.Y(n119), 
	.A(rx_packet_done[1]));
   OAI21X1 U82 (.Y(n50), 
	.C(n91), 
	.B(n119), 
	.A(rx_packet_done[0]));
   NAND2X1 U83 (.Y(n63), 
	.B(n50), 
	.A(n92));
   INVX2 U84 (.Y(n97), 
	.A(n58));
   OAI22X1 U86 (.Y(n51), 
	.D(1'b1), 
	.C(n12), 
	.B(n119), 
	.A(n97));
   INVX2 U87 (.Y(n70), 
	.A(n51));
   INVX2 U88 (.Y(n80), 
	.A(n52));
   NAND2X1 U89 (.Y(n53), 
	.B(n80), 
	.A(n70));
   AOI21X1 U90 (.Y(n55), 
	.C(n53), 
	.B(n54), 
	.A(n91));
   NAND3X1 U91 (.Y(nextstate[4]), 
	.C(n55), 
	.B(n63), 
	.A(n56));
   NAND2X1 U92 (.Y(n77), 
	.B(n119), 
	.A(rx_packet_done[0]));
   INVX2 U93 (.Y(n94), 
	.A(n77));
   AOI22X1 U94 (.Y(n76), 
	.D(n57), 
	.C(tx_done), 
	.B(n58), 
	.A(n94));
   AOI21X1 U96 (.Y(n75), 
	.C(n16), 
	.B(sd_done), 
	.A(sd_write));
   INVX2 U97 (.Y(n116), 
	.A(n59));
   OAI21X1 U98 (.Y(n73), 
	.C(n61), 
	.B(n62), 
	.A(n20));
   OAI21X1 U99 (.Y(n67), 
	.C(n63), 
	.B(1'b1), 
	.A(n65));
   INVX2 U100 (.Y(n106), 
	.A(sd_err));
   OAI22X1 U101 (.Y(n66), 
	.D(n106), 
	.C(n80), 
	.B(n87), 
	.A(pid_rdy));
   OR2X1 U102 (.Y(n81), 
	.B(n66), 
	.A(n67));
   INVX2 U103 (.Y(n71), 
	.A(n81));
   OAI22X1 U104 (.Y(n69), 
	.D(n121), 
	.C(n107), 
	.B(n68), 
	.A(rx_pid[3]));
   INVX2 U105 (.Y(n112), 
	.A(n69));
   NAND3X1 U106 (.Y(n72), 
	.C(n70), 
	.B(n112), 
	.A(n71));
   NOR2X1 U107 (.Y(n74), 
	.B(n72), 
	.A(n73));
   NAND3X1 U108 (.Y(nextstate[2]), 
	.C(n74), 
	.B(n75), 
	.A(n76));
   OAI22X1 U109 (.Y(n86), 
	.D(n77), 
	.C(n78), 
	.B(sd_done), 
	.A(n80));
   NOR2X1 U110 (.Y(n83), 
	.B(n81), 
	.A(n82));
   OAI21X1 U111 (.Y(n85), 
	.C(n83), 
	.B(n84), 
	.A(n20));
   OR2X1 U112 (.Y(nextstate[1]), 
	.B(n85), 
	.A(n86));
   INVX2 U113 (.Y(n88), 
	.A(n87));
   AOI22X1 U114 (.Y(n104), 
	.D(pid_rdy), 
	.C(n88), 
	.B(n17), 
	.A(n19));
   OAI21X1 U115 (.Y(n90), 
	.C(n15), 
	.B(n89), 
	.A(count_packet[0]));
   NAND2X1 U116 (.Y(n96), 
	.B(n90), 
	.A(n116));
   NAND2X1 U117 (.Y(n98), 
	.B(n91), 
	.A(n92));
   INVX2 U118 (.Y(n118), 
	.A(n98));
   NAND3X1 U119 (.Y(n93), 
	.C(rx_packet_done[0]), 
	.B(n118), 
	.A(rx_packet_done[1]));
   OAI21X1 U120 (.Y(n95), 
	.C(n93), 
	.B(n107), 
	.A(n94));
   OAI21X1 U121 (.Y(n103), 
	.C(state[3]), 
	.B(n95), 
	.A(n96));
   OAI21X1 U122 (.Y(n101), 
	.C(n97), 
	.B(n98), 
	.A(rx_packet_done[0]));
   INVX2 U123 (.Y(n100), 
	.A(n99));
   AOI21X1 U124 (.Y(n102), 
	.C(n100), 
	.B(n119), 
	.A(n101));
   NAND3X1 U125 (.Y(nextstate[3]), 
	.C(n102), 
	.B(n103), 
	.A(n104));
   AOI22X1 U126 (.Y(n110), 
	.D(n105), 
	.C(tx_send_good), 
	.B(n106), 
	.A(sd_write));
   INVX2 U127 (.Y(n108), 
	.A(n107));
   OAI21X1 U128 (.Y(n109), 
	.C(n19), 
	.B(n108), 
	.A(n17));
   OAI21X1 U129 (.Y(n114), 
	.C(n109), 
	.B(n110), 
	.A(tx_err));
   NAND2X1 U130 (.Y(n113), 
	.B(sd_addr_rdy), 
	.A(n112));
   NOR2X1 U131 (.Y(n126), 
	.B(n113), 
	.A(n114));
   OAI22X1 U132 (.Y(n124), 
	.D(n115), 
	.C(n116), 
	.B(n117), 
	.A(rx_packet_done[1]));
   MUX2X1 U133 (.Y(n122), 
	.S(pid_rdy), 
	.B(n18), 
	.A(n17));
   OAI21X1 U134 (.Y(n120), 
	.C(n118), 
	.B(n119), 
	.A(rx_packet_done[0]));
   OAI21X1 U135 (.Y(n123), 
	.C(n120), 
	.B(n121), 
	.A(n122));
   NOR2X1 U136 (.Y(n125), 
	.B(n123), 
	.A(n124));
   NAND2X1 U137 (.Y(nextstate[0]), 
	.B(n125), 
	.A(n126));
   INVX2 U138 (.Y(n128), 
	.A(pid_rdy));
   OAI21X1 U139 (.Y(n130), 
	.C(n156), 
	.B(n128), 
	.A(n155));
   INVX2 U140 (.Y(n127), 
	.A(n130));
   NAND2X1 U141 (.Y(N57), 
	.B(n127), 
	.A(n128));
   NOR2X1 U142 (.Y(N60), 
	.B(n130), 
	.A(n152));
   INVX2 U143 (.Y(n129), 
	.A(n154));
   NOR2X1 U144 (.Y(N59), 
	.B(n129), 
	.A(n130));
   NOR2X1 U145 (.Y(N58), 
	.B(n130), 
	.A(count_packet[0]));
endmodule

module Sd_Usb_t (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	SDCLK, 
	SDDI, 
	SDDO, 
	SDCS, 
	nclk__L2_N1, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7, 
	nclk__L2_N8, 
	nclk__L2_N9);
   input clk;
   input n_rst;
   input d_plus;
   input d_minus;
   input SDCLK;
   input SDDI;
   input SDDO;
   input SDCS;
   input nclk__L2_N1;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;
   input nclk__L2_N8;
   input nclk__L2_N9;

   // Internal wires
   wire FE_OFN8_nn_rst;
   wire FE_OFN6_nn_rst;
   wire FE_OFN4_nn_rst;
   wire FE_OFN3_nn_rst;
   wire FE_OFN2_nn_rst;
   wire FE_OFN0_nn_rst;
   wire sd_read;
   wire sd_write;
   wire sd_addr_ready;
   wire tx_sd_enable;
   wire rx_FIFO_empty;
   wire sd_done;
   wire sd_err;
   wire sd_rx_enable;
   wire sd_FIFO_empty;
   wire tx_send_good;
   wire tx_transmit;
   wire tx_done;
   wire rx_pid_rdy;
   wire [7:0] rx_r_data;
   wire [7:0] sd_tx_data;
   wire [3:0] rx_pid;
   wire [1:0] rx_packet_done;

   BUFX2 FE_OFC8_nn_rst (.Y(FE_OFN8_nn_rst), 
	.A(FE_OFN4_nn_rst));
   INVX8 FE_OFC6_nn_rst (.Y(FE_OFN6_nn_rst), 
	.A(FE_OFN0_nn_rst));
   INVX8 FE_OFC4_nn_rst (.Y(FE_OFN4_nn_rst), 
	.A(FE_OFN0_nn_rst));
   INVX8 FE_OFC3_nn_rst (.Y(FE_OFN3_nn_rst), 
	.A(FE_OFN0_nn_rst));
   INVX8 FE_OFC2_nn_rst (.Y(FE_OFN2_nn_rst), 
	.A(FE_OFN0_nn_rst));
   INVX2 FE_OFC0_nn_rst (.Y(FE_OFN0_nn_rst), 
	.A(n_rst));
   sd_interface SD (.clk(clk), 
	.n_rst(FE_OFN2_nn_rst), 
	.sd_read(sd_read), 
	.sd_write(sd_write), 
	.sd_addr_ready(sd_addr_ready), 
	.fifo_in(rx_r_data), 
	.tx_r_enable(tx_sd_enable), 
	.test_data_fromFIFO({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.rx_FIFO_empty(rx_FIFO_empty), 
	.sd_done(sd_done), 
	.sd_err(sd_err), 
	.fifo_out(sd_tx_data), 
	.r_enable_o(sd_rx_enable), 
	.sd_FIFO_empty(sd_FIFO_empty), 
	.SDDI(SDDI), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN7_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN8_nn_rst(FE_OFN8_nn_rst), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4));
   usb_transmitter transmit (.clk(nclk__L2_N3), 
	.n_rst(FE_OFN4_nn_rst), 
	.tx_transmit(tx_transmit), 
	.tx_send_good(tx_send_good), 
	.tx_send_bad(1'b0), 
	.empty(sd_FIFO_empty), 
	.sd_data(sd_tx_data), 
	.load_enable_sd(tx_sd_enable), 
	.tx_done(tx_done), 
	.FE_OFN5_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN8_nn_rst(FE_OFN8_nn_rst), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N8(nclk__L2_N8));
   usb_receiver receiveTOP (.clk(nclk__L2_N2), 
	.n_rst(n_rst), 
	.d_plus(d_plus), 
	.d_minus(d_minus), 
	.sram_o({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.r_enable(sd_rx_enable), 
	.r_data(rx_r_data), 
	.empty(rx_FIFO_empty), 
	.packet_done(rx_packet_done), 
	.pid_rdy(rx_pid_rdy), 
	.pid(rx_pid), 
	.FE_OFN0_nn_rst(FE_OFN0_nn_rst), 
	.FE_OFN2_nn_rst(FE_OFN2_nn_rst), 
	.FE_OFN3_nn_rst(FE_OFN3_nn_rst), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN5_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN6_nn_rst(FE_OFN6_nn_rst), 
	.FE_OFN7_nn_rst(FE_OFN4_nn_rst), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7), 
	.nclk__L2_N8(nclk__L2_N8), 
	.nclk__L2_N9(nclk__L2_N9));
   usbcontroller MCU (.n_rst(FE_OFN3_nn_rst), 
	.clk(nclk__L2_N4), 
	.sd_done(sd_done), 
	.sd_err(sd_err), 
	.tx_err(1'b0), 
	.tx_done(tx_done), 
	.rx_pid(rx_pid), 
	.rx_packet_done(rx_packet_done), 
	.pid_rdy(rx_pid_rdy), 
	.sd_read(sd_read), 
	.sd_write(sd_write), 
	.tx_send_good(tx_send_good), 
	.tx_transmit(tx_transmit), 
	.sd_addr_rdy(sd_addr_ready), 
	.FE_OFN7_nn_rst(FE_OFN4_nn_rst), 
	.FE_OFN4_nn_rst(FE_OFN4_nn_rst));
endmodule

module Sd_Usb (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	SDCLK, 
	SDDI, 
	SDDO, 
	SDCS);
   input clk;
   input n_rst;
   input d_plus;
   input d_minus;
   input SDCLK;
   input SDDI;
   input SDDO;
   input SDCS;

   // Internal wires
   wire nclk__L2_N9;
   wire nclk__L2_N8;
   wire nclk__L2_N7;
   wire nclk__L2_N6;
   wire nclk__L2_N5;
   wire nclk__L2_N4;
   wire nclk__L2_N3;
   wire nclk__L2_N2;
   wire nclk__L2_N1;
   wire nclk__L2_N0;
   wire nclk__L1_N1;
   wire nclk__L1_N0;
   wire nclk;
   wire nn_rst;
   wire nd_plus;
   wire nd_minus;
   wire nSDCLK;
   wire nSDDI;
   wire nSDDO;
   wire nSDCS;

   INVX8 nclk__L2_I9 (.Y(nclk__L2_N9), 
	.A(nclk__L1_N1));
   INVX8 nclk__L2_I8 (.Y(nclk__L2_N8), 
	.A(nclk__L1_N1));
   INVX8 nclk__L2_I7 (.Y(nclk__L2_N7), 
	.A(nclk__L1_N1));
   INVX8 nclk__L2_I6 (.Y(nclk__L2_N6), 
	.A(nclk__L1_N1));
   INVX8 nclk__L2_I5 (.Y(nclk__L2_N5), 
	.A(nclk__L1_N1));
   INVX8 nclk__L2_I4 (.Y(nclk__L2_N4), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I3 (.Y(nclk__L2_N3), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I2 (.Y(nclk__L2_N2), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I1 (.Y(nclk__L2_N1), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I0 (.Y(nclk__L2_N0), 
	.A(nclk__L1_N0));
   INVX8 nclk__L1_I1 (.Y(nclk__L1_N1), 
	.A(nclk));
   INVX8 nclk__L1_I0 (.Y(nclk__L1_N0), 
	.A(nclk));
   Sd_Usb_t I0 (.clk(nclk__L2_N0), 
	.n_rst(nn_rst), 
	.d_plus(nd_plus), 
	.d_minus(nd_minus), 
	.SDCLK(nSDCLK), 
	.SDDI(nSDDI), 
	.SDDO(nSDDO), 
	.SDCS(nSDCS), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7), 
	.nclk__L2_N8(nclk__L2_N8), 
	.nclk__L2_N9(nclk__L2_N9));
   PADVDD U1 ();
   PADGND U2 ();
   PADINC U3 (.YPAD(SDCLK), 
	.DI(nSDCLK));
   PADINC U4 (.YPAD(SDCS), 
	.DI(nSDCS));
   PADINC U5 (.YPAD(SDDI), 
	.DI(nSDDI));
   PADINC U6 (.YPAD(SDDO), 
	.DI(nSDDO));
   PADINC U7 (.YPAD(clk), 
	.DI(nclk));
   PADINC U8 (.YPAD(d_minus), 
	.DI(nd_minus));
   PADINC U9 (.YPAD(d_plus), 
	.DI(nd_plus));
   PADINC U10 (.YPAD(n_rst), 
	.DI(nn_rst));
endmodule

