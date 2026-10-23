/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Wed Sep  6 21:04:33 2023
/////////////////////////////////////////////////////////////


module e5_w8_ripple_adder_tree ( clk, rst_n, a, psum );
input [255:0] a;
output [12:0] psum;
input clk, rst_n;
wire   edge_nd_1291, edge_nd_1290, edge_nd_1289, edge_nd_1288, edge_nd_1287,
edge_nd_1286, edge_nd_1285, edge_nd_1284, edge_nd_1283, edge_nd_1282,
edge_nd_1281, edge_nd_1280, intadd_0_A_9_, intadd_0_A_8_,
intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_n11, intadd_0_n10,
intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_8_,
intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_,
intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
intadd_1_B_8_, intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_,
intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
intadd_1_B_0_, intadd_1_CI, intadd_1_n10, intadd_1_n9, intadd_1_n8,
intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
intadd_1_n2, intadd_1_n1, intadd_2_CI, intadd_2_SUM_8_,
intadd_2_SUM_7_, intadd_2_SUM_6_, intadd_2_SUM_5_, intadd_2_SUM_4_,
intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6,
intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
intadd_3_CI, intadd_3_SUM_8_, intadd_3_SUM_7_, intadd_3_SUM_6_,
intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_SUM_2_,
intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n9, intadd_3_n8,
intadd_3_n7, intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3,
intadd_3_n2, intadd_3_n1, intadd_4_A_7_, intadd_4_A_6_, intadd_4_A_5_,
intadd_4_A_4_, intadd_4_A_3_, intadd_4_A_2_, intadd_4_A_1_,
intadd_4_A_0_, intadd_4_B_7_, intadd_4_B_6_, intadd_4_B_5_,
intadd_4_B_4_, intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_,
intadd_4_B_0_, intadd_4_CI, intadd_4_n9, intadd_4_n8, intadd_4_n7,
intadd_4_n6, intadd_4_n5, intadd_4_n4, intadd_4_n3, intadd_4_n2,
intadd_4_n1, intadd_5_A_7_, intadd_5_A_6_, intadd_5_A_5_,
intadd_5_A_4_, intadd_5_A_3_, intadd_5_A_2_, intadd_5_A_1_,
intadd_5_A_0_, intadd_5_B_7_, intadd_5_B_6_, intadd_5_B_5_,
intadd_5_B_4_, intadd_5_B_3_, intadd_5_B_2_, intadd_5_B_1_,
intadd_5_B_0_, intadd_5_CI, intadd_5_n9, intadd_5_n8, intadd_5_n7,
intadd_5_n6, intadd_5_n5, intadd_5_n4, intadd_5_n3, intadd_5_n2,
intadd_5_n1, intadd_6_CI, intadd_6_SUM_7_, intadd_6_SUM_6_,
intadd_6_SUM_5_, intadd_6_SUM_4_, intadd_6_SUM_3_, intadd_6_SUM_2_,
intadd_6_SUM_1_, intadd_6_SUM_0_, intadd_6_n9, intadd_6_n8,
intadd_6_n7, intadd_6_n6, intadd_6_n5, intadd_6_n4, intadd_6_n3,
intadd_6_n2, intadd_6_n1, intadd_7_CI, intadd_7_SUM_7_,
intadd_7_SUM_6_, intadd_7_SUM_5_, intadd_7_SUM_4_, intadd_7_SUM_3_,
intadd_7_SUM_2_, intadd_7_SUM_1_, intadd_7_SUM_0_, intadd_7_n8,
intadd_7_n7, intadd_7_n6, intadd_7_n5, intadd_7_n4, intadd_7_n3,
intadd_7_n2, intadd_7_n1, intadd_8_A_6_, intadd_8_A_5_, intadd_8_A_4_,
intadd_8_A_3_, intadd_8_A_2_, intadd_8_A_1_, intadd_8_A_0_,
intadd_8_B_6_, intadd_8_B_5_, intadd_8_B_4_, intadd_8_B_3_,
intadd_8_B_2_, intadd_8_B_1_, intadd_8_B_0_, intadd_8_CI, intadd_8_n8,
intadd_8_n7, intadd_8_n6, intadd_8_n5, intadd_8_n4, intadd_8_n3,
intadd_8_n2, intadd_8_n1, intadd_9_A_6_, intadd_9_A_5_, intadd_9_A_4_,
intadd_9_A_3_, intadd_9_A_2_, intadd_9_A_1_, intadd_9_A_0_,
intadd_9_B_6_, intadd_9_B_5_, intadd_9_B_4_, intadd_9_B_3_,
intadd_9_B_2_, intadd_9_B_1_, intadd_9_B_0_, intadd_9_CI, intadd_9_n8,
intadd_9_n7, intadd_9_n6, intadd_9_n5, intadd_9_n4, intadd_9_n3,
intadd_9_n2, intadd_9_n1, intadd_10_CI, intadd_10_SUM_6_,
intadd_10_SUM_5_, intadd_10_SUM_4_, intadd_10_SUM_3_,
intadd_10_SUM_2_, intadd_10_SUM_1_, intadd_10_SUM_0_, intadd_10_n8,
intadd_10_n7, intadd_10_n6, intadd_10_n5, intadd_10_n4, intadd_10_n3,
intadd_10_n2, intadd_10_n1, intadd_11_CI, intadd_11_SUM_7_,
intadd_11_SUM_6_, intadd_11_SUM_5_, intadd_11_SUM_4_,
intadd_11_SUM_3_, intadd_11_SUM_2_, intadd_11_SUM_1_,
intadd_11_SUM_0_, intadd_11_n8, intadd_11_n7, intadd_11_n6,
intadd_11_n5, intadd_11_n4, intadd_11_n3, intadd_11_n2, intadd_11_n1,
intadd_12_A_6_, intadd_12_A_5_, intadd_12_A_4_, intadd_12_A_3_,
intadd_12_A_2_, intadd_12_A_1_, intadd_12_A_0_, intadd_12_B_6_,
intadd_12_B_5_, intadd_12_B_4_, intadd_12_B_3_, intadd_12_B_2_,
intadd_12_B_1_, intadd_12_B_0_, intadd_12_CI, intadd_12_n8,
intadd_12_n7, intadd_12_n6, intadd_12_n5, intadd_12_n4, intadd_12_n3,
intadd_12_n2, intadd_12_n1, intadd_13_CI, intadd_13_SUM_7_,
intadd_13_SUM_6_, intadd_13_SUM_5_, intadd_13_SUM_4_,
intadd_13_SUM_3_, intadd_13_SUM_2_, intadd_13_SUM_1_,
intadd_13_SUM_0_, intadd_13_n8, intadd_13_n7, intadd_13_n6,
intadd_13_n5, intadd_13_n4, intadd_13_n3, intadd_13_n2, intadd_13_n1,
intadd_14_A_6_, intadd_14_A_5_, intadd_14_A_4_, intadd_14_A_3_,
intadd_14_A_2_, intadd_14_A_1_, intadd_14_A_0_, intadd_14_B_6_,
intadd_14_B_5_, intadd_14_B_4_, intadd_14_B_3_, intadd_14_B_2_,
intadd_14_B_1_, intadd_14_B_0_, intadd_14_CI, intadd_14_n8,
intadd_14_n7, intadd_14_n6, intadd_14_n5, intadd_14_n4, intadd_14_n3,
intadd_14_n2, intadd_14_n1, intadd_15_CI, intadd_15_SUM_6_,
intadd_15_SUM_5_, intadd_15_SUM_4_, intadd_15_SUM_3_,
intadd_15_SUM_2_, intadd_15_SUM_1_, intadd_15_SUM_0_, intadd_15_n7,
intadd_15_n6, intadd_15_n5, intadd_15_n4, intadd_15_n3, intadd_15_n2,
intadd_15_n1, intadd_16_A_0_, intadd_16_n7, intadd_16_n6,
intadd_16_n5, intadd_16_n4, intadd_16_n3, intadd_16_n2, intadd_16_n1,
intadd_17_CI, intadd_17_SUM_6_, intadd_17_SUM_5_, intadd_17_SUM_4_,
intadd_17_SUM_3_, intadd_17_SUM_2_, intadd_17_SUM_1_,
intadd_17_SUM_0_, intadd_17_n7, intadd_17_n6, intadd_17_n5,
intadd_17_n4, intadd_17_n3, intadd_17_n2, intadd_17_n1,
intadd_18_A_0_, intadd_18_n7, intadd_18_n6, intadd_18_n5,
intadd_18_n4, intadd_18_n3, intadd_18_n2, intadd_18_n1, intadd_19_CI,
intadd_19_SUM_6_, intadd_19_SUM_5_, intadd_19_SUM_4_,
intadd_19_SUM_3_, intadd_19_SUM_2_, intadd_19_SUM_1_,
intadd_19_SUM_0_, intadd_19_n7, intadd_19_n6, intadd_19_n5,
intadd_19_n4, intadd_19_n3, intadd_19_n2, intadd_19_n1,
intadd_20_A_0_, intadd_20_n7, intadd_20_n6, intadd_20_n5,
intadd_20_n4, intadd_20_n3, intadd_20_n2, intadd_20_n1, intadd_21_CI,
intadd_21_n7, intadd_21_n6, intadd_21_n5, intadd_21_n4, intadd_21_n3,
intadd_21_n2, intadd_21_n1, intadd_22_CI, intadd_22_n7, intadd_22_n6,
intadd_22_n5, intadd_22_n4, intadd_22_n3, intadd_22_n2, intadd_22_n1,
intadd_23_CI, intadd_23_SUM_6_, intadd_23_SUM_5_, intadd_23_SUM_4_,
intadd_23_SUM_3_, intadd_23_SUM_2_, intadd_23_SUM_1_,
intadd_23_SUM_0_, intadd_23_n7, intadd_23_n6, intadd_23_n5,
intadd_23_n4, intadd_23_n3, intadd_23_n2, intadd_23_n1,
intadd_24_A_0_, intadd_24_n7, intadd_24_n6, intadd_24_n5,
intadd_24_n4, intadd_24_n3, intadd_24_n2, intadd_24_n1, intadd_25_CI,
intadd_25_SUM_6_, intadd_25_SUM_5_, intadd_25_SUM_4_,
intadd_25_SUM_3_, intadd_25_SUM_2_, intadd_25_SUM_1_,
intadd_25_SUM_0_, intadd_25_n7, intadd_25_n6, intadd_25_n5,
intadd_25_n4, intadd_25_n3, intadd_25_n2, intadd_25_n1,
intadd_26_A_0_, intadd_26_n7, intadd_26_n6, intadd_26_n5,
intadd_26_n4, intadd_26_n3, intadd_26_n2, intadd_26_n1, intadd_27_CI,
intadd_27_SUM_6_, intadd_27_SUM_5_, intadd_27_SUM_4_,
intadd_27_SUM_3_, intadd_27_SUM_2_, intadd_27_SUM_1_,
intadd_27_SUM_0_, intadd_27_n7, intadd_27_n6, intadd_27_n5,
intadd_27_n4, intadd_27_n3, intadd_27_n2, intadd_27_n1,
intadd_28_A_0_, intadd_28_n7, intadd_28_n6, intadd_28_n5,
intadd_28_n4, intadd_28_n3, intadd_28_n2, intadd_28_n1, intadd_29_CI,
intadd_29_SUM_6_, intadd_29_SUM_5_, intadd_29_SUM_4_,
intadd_29_SUM_3_, intadd_29_SUM_2_, intadd_29_SUM_1_,
intadd_29_SUM_0_, intadd_29_n7, intadd_29_n6, intadd_29_n5,
intadd_29_n4, intadd_29_n3, intadd_29_n2, intadd_29_n1,
intadd_30_A_0_, intadd_30_n7, intadd_30_n6, intadd_30_n5,
intadd_30_n4, intadd_30_n3, intadd_30_n2, intadd_30_n1, n552, n553,
n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597;
wire   [255:0] sample_in;

DFCNQD1BWP30P140HVT sample_in_reg_7_ ( .D(a[7]), .CP(clk), .CDN(rst_n), .Q(
sample_in[7]) );
DFCNQD1BWP30P140HVT sample_in_reg_6_ ( .D(a[6]), .CP(clk), .CDN(rst_n), .Q(
sample_in[6]) );
DFCNQD1BWP30P140HVT sample_in_reg_5_ ( .D(a[5]), .CP(clk), .CDN(rst_n), .Q(
sample_in[5]) );
DFCNQD1BWP30P140HVT sample_in_reg_4_ ( .D(a[4]), .CP(clk), .CDN(rst_n), .Q(
sample_in[4]) );
DFCNQD1BWP30P140HVT sample_in_reg_3_ ( .D(a[3]), .CP(clk), .CDN(rst_n), .Q(
sample_in[3]) );
DFCNQD1BWP30P140HVT sample_in_reg_2_ ( .D(a[2]), .CP(clk), .CDN(rst_n), .Q(
sample_in[2]) );
DFCNQD1BWP30P140HVT sample_in_reg_1_ ( .D(a[1]), .CP(clk), .CDN(rst_n), .Q(
sample_in[1]) );
DFCNQD1BWP30P140HVT sample_in_reg_15_ ( .D(a[15]), .CP(clk), .CDN(rst_n),
.Q(sample_in[15]) );
DFCNQD1BWP30P140HVT sample_in_reg_14_ ( .D(a[14]), .CP(clk), .CDN(rst_n),
.Q(sample_in[14]) );
DFCNQD1BWP30P140HVT sample_in_reg_13_ ( .D(a[13]), .CP(clk), .CDN(rst_n),
.Q(sample_in[13]) );
DFCNQD1BWP30P140HVT sample_in_reg_12_ ( .D(a[12]), .CP(clk), .CDN(rst_n),
.Q(sample_in[12]) );
DFCNQD1BWP30P140HVT sample_in_reg_11_ ( .D(a[11]), .CP(clk), .CDN(rst_n),
.Q(sample_in[11]) );
DFCNQD1BWP30P140HVT sample_in_reg_10_ ( .D(a[10]), .CP(clk), .CDN(rst_n),
.Q(sample_in[10]) );
DFCNQD1BWP30P140HVT sample_in_reg_9_ ( .D(a[9]), .CP(clk), .CDN(rst_n), .Q(
sample_in[9]) );
DFCNQD1BWP30P140HVT sample_in_reg_8_ ( .D(a[8]), .CP(clk), .CDN(rst_n), .Q(
sample_in[8]) );
DFCNQD1BWP30P140HVT sample_in_reg_23_ ( .D(a[23]), .CP(clk), .CDN(rst_n),
.Q(sample_in[23]) );
DFCNQD1BWP30P140HVT sample_in_reg_22_ ( .D(a[22]), .CP(clk), .CDN(rst_n),
.Q(sample_in[22]) );
DFCNQD1BWP30P140HVT sample_in_reg_21_ ( .D(a[21]), .CP(clk), .CDN(rst_n),
.Q(sample_in[21]) );
DFCNQD1BWP30P140HVT sample_in_reg_20_ ( .D(a[20]), .CP(clk), .CDN(rst_n),
.Q(sample_in[20]) );
DFCNQD1BWP30P140HVT sample_in_reg_19_ ( .D(a[19]), .CP(clk), .CDN(rst_n),
.Q(sample_in[19]) );
DFCNQD1BWP30P140HVT sample_in_reg_18_ ( .D(a[18]), .CP(clk), .CDN(rst_n),
.Q(sample_in[18]) );
DFCNQD1BWP30P140HVT sample_in_reg_17_ ( .D(a[17]), .CP(clk), .CDN(rst_n),
.Q(sample_in[17]) );
DFCNQD1BWP30P140HVT sample_in_reg_16_ ( .D(a[16]), .CP(clk), .CDN(rst_n),
.Q(sample_in[16]) );
DFCNQD1BWP30P140HVT sample_in_reg_31_ ( .D(a[31]), .CP(clk), .CDN(rst_n),
.Q(sample_in[31]) );
DFCNQD1BWP30P140HVT sample_in_reg_30_ ( .D(a[30]), .CP(clk), .CDN(rst_n),
.Q(sample_in[30]) );
DFCNQD1BWP30P140HVT sample_in_reg_29_ ( .D(a[29]), .CP(clk), .CDN(rst_n),
.Q(sample_in[29]) );
DFCNQD1BWP30P140HVT sample_in_reg_28_ ( .D(a[28]), .CP(clk), .CDN(rst_n),
.Q(sample_in[28]) );
DFCNQD1BWP30P140HVT sample_in_reg_27_ ( .D(a[27]), .CP(clk), .CDN(rst_n),
.Q(sample_in[27]) );
DFCNQD1BWP30P140HVT sample_in_reg_26_ ( .D(a[26]), .CP(clk), .CDN(rst_n),
.Q(sample_in[26]) );
DFCNQD1BWP30P140HVT sample_in_reg_25_ ( .D(a[25]), .CP(clk), .CDN(rst_n),
.Q(sample_in[25]) );
DFCNQD1BWP30P140HVT sample_in_reg_24_ ( .D(a[24]), .CP(clk), .CDN(rst_n),
.Q(sample_in[24]) );
DFCNQD1BWP30P140HVT sample_in_reg_39_ ( .D(a[39]), .CP(clk), .CDN(rst_n),
.Q(sample_in[39]) );
DFCNQD1BWP30P140HVT sample_in_reg_38_ ( .D(a[38]), .CP(clk), .CDN(rst_n),
.Q(sample_in[38]) );
DFCNQD1BWP30P140HVT sample_in_reg_37_ ( .D(a[37]), .CP(clk), .CDN(rst_n),
.Q(sample_in[37]) );
DFCNQD1BWP30P140HVT sample_in_reg_36_ ( .D(a[36]), .CP(clk), .CDN(rst_n),
.Q(sample_in[36]) );
DFCNQD1BWP30P140HVT sample_in_reg_35_ ( .D(a[35]), .CP(clk), .CDN(rst_n),
.Q(sample_in[35]) );
DFCNQD1BWP30P140HVT sample_in_reg_34_ ( .D(a[34]), .CP(clk), .CDN(rst_n),
.Q(sample_in[34]) );
DFCNQD1BWP30P140HVT sample_in_reg_33_ ( .D(a[33]), .CP(clk), .CDN(rst_n),
.Q(sample_in[33]) );
DFCNQD1BWP30P140HVT sample_in_reg_32_ ( .D(a[32]), .CP(clk), .CDN(rst_n),
.Q(sample_in[32]) );
DFCNQD1BWP30P140HVT sample_in_reg_47_ ( .D(a[47]), .CP(clk), .CDN(rst_n),
.Q(sample_in[47]) );
DFCNQD1BWP30P140HVT sample_in_reg_46_ ( .D(a[46]), .CP(clk), .CDN(rst_n),
.Q(sample_in[46]) );
DFCNQD1BWP30P140HVT sample_in_reg_45_ ( .D(a[45]), .CP(clk), .CDN(rst_n),
.Q(sample_in[45]) );
DFCNQD1BWP30P140HVT sample_in_reg_44_ ( .D(a[44]), .CP(clk), .CDN(rst_n),
.Q(sample_in[44]) );
DFCNQD1BWP30P140HVT sample_in_reg_43_ ( .D(a[43]), .CP(clk), .CDN(rst_n),
.Q(sample_in[43]) );
DFCNQD1BWP30P140HVT sample_in_reg_42_ ( .D(a[42]), .CP(clk), .CDN(rst_n),
.Q(sample_in[42]) );
DFCNQD1BWP30P140HVT sample_in_reg_41_ ( .D(a[41]), .CP(clk), .CDN(rst_n),
.Q(sample_in[41]) );
DFCNQD1BWP30P140HVT sample_in_reg_40_ ( .D(a[40]), .CP(clk), .CDN(rst_n),
.Q(sample_in[40]) );
DFCNQD1BWP30P140HVT sample_in_reg_55_ ( .D(a[55]), .CP(clk), .CDN(rst_n),
.Q(sample_in[55]) );
DFCNQD1BWP30P140HVT sample_in_reg_54_ ( .D(a[54]), .CP(clk), .CDN(rst_n),
.Q(sample_in[54]) );
DFCNQD1BWP30P140HVT sample_in_reg_53_ ( .D(a[53]), .CP(clk), .CDN(rst_n),
.Q(sample_in[53]) );
DFCNQD1BWP30P140HVT sample_in_reg_52_ ( .D(a[52]), .CP(clk), .CDN(rst_n),
.Q(sample_in[52]) );
DFCNQD1BWP30P140HVT sample_in_reg_51_ ( .D(a[51]), .CP(clk), .CDN(rst_n),
.Q(sample_in[51]) );
DFCNQD1BWP30P140HVT sample_in_reg_50_ ( .D(a[50]), .CP(clk), .CDN(rst_n),
.Q(sample_in[50]) );
DFCNQD1BWP30P140HVT sample_in_reg_49_ ( .D(a[49]), .CP(clk), .CDN(rst_n),
.Q(sample_in[49]) );
DFCNQD1BWP30P140HVT sample_in_reg_48_ ( .D(a[48]), .CP(clk), .CDN(rst_n),
.Q(sample_in[48]) );
DFCNQD1BWP30P140HVT sample_in_reg_63_ ( .D(a[63]), .CP(clk), .CDN(rst_n),
.Q(sample_in[63]) );
DFCNQD1BWP30P140HVT sample_in_reg_62_ ( .D(a[62]), .CP(clk), .CDN(rst_n),
.Q(sample_in[62]) );
DFCNQD1BWP30P140HVT sample_in_reg_61_ ( .D(a[61]), .CP(clk), .CDN(rst_n),
.Q(sample_in[61]) );
DFCNQD1BWP30P140HVT sample_in_reg_60_ ( .D(a[60]), .CP(clk), .CDN(rst_n),
.Q(sample_in[60]) );
DFCNQD1BWP30P140HVT sample_in_reg_59_ ( .D(a[59]), .CP(clk), .CDN(rst_n),
.Q(sample_in[59]) );
DFCNQD1BWP30P140HVT sample_in_reg_58_ ( .D(a[58]), .CP(clk), .CDN(rst_n),
.Q(sample_in[58]) );
DFCNQD1BWP30P140HVT sample_in_reg_57_ ( .D(a[57]), .CP(clk), .CDN(rst_n),
.Q(sample_in[57]) );
DFCNQD1BWP30P140HVT sample_in_reg_56_ ( .D(a[56]), .CP(clk), .CDN(rst_n),
.Q(sample_in[56]) );
DFCNQD1BWP30P140HVT sample_in_reg_71_ ( .D(a[71]), .CP(clk), .CDN(rst_n),
.Q(sample_in[71]) );
DFCNQD1BWP30P140HVT sample_in_reg_70_ ( .D(a[70]), .CP(clk), .CDN(rst_n),
.Q(sample_in[70]) );
DFCNQD1BWP30P140HVT sample_in_reg_69_ ( .D(a[69]), .CP(clk), .CDN(rst_n),
.Q(sample_in[69]) );
DFCNQD1BWP30P140HVT sample_in_reg_68_ ( .D(a[68]), .CP(clk), .CDN(rst_n),
.Q(sample_in[68]) );
DFCNQD1BWP30P140HVT sample_in_reg_67_ ( .D(a[67]), .CP(clk), .CDN(rst_n),
.Q(sample_in[67]) );
DFCNQD1BWP30P140HVT sample_in_reg_66_ ( .D(a[66]), .CP(clk), .CDN(rst_n),
.Q(sample_in[66]) );
DFCNQD1BWP30P140HVT sample_in_reg_65_ ( .D(a[65]), .CP(clk), .CDN(rst_n),
.Q(sample_in[65]) );
DFCNQD1BWP30P140HVT sample_in_reg_64_ ( .D(a[64]), .CP(clk), .CDN(rst_n),
.Q(sample_in[64]) );
DFCNQD1BWP30P140HVT sample_in_reg_79_ ( .D(a[79]), .CP(clk), .CDN(rst_n),
.Q(sample_in[79]) );
DFCNQD1BWP30P140HVT sample_in_reg_78_ ( .D(a[78]), .CP(clk), .CDN(rst_n),
.Q(sample_in[78]) );
DFCNQD1BWP30P140HVT sample_in_reg_77_ ( .D(a[77]), .CP(clk), .CDN(rst_n),
.Q(sample_in[77]) );
DFCNQD1BWP30P140HVT sample_in_reg_76_ ( .D(a[76]), .CP(clk), .CDN(rst_n),
.Q(sample_in[76]) );
DFCNQD1BWP30P140HVT sample_in_reg_75_ ( .D(a[75]), .CP(clk), .CDN(rst_n),
.Q(sample_in[75]) );
DFCNQD1BWP30P140HVT sample_in_reg_74_ ( .D(a[74]), .CP(clk), .CDN(rst_n),
.Q(sample_in[74]) );
DFCNQD1BWP30P140HVT sample_in_reg_73_ ( .D(a[73]), .CP(clk), .CDN(rst_n),
.Q(sample_in[73]) );
DFCNQD1BWP30P140HVT sample_in_reg_72_ ( .D(a[72]), .CP(clk), .CDN(rst_n),
.Q(sample_in[72]) );
DFCNQD1BWP30P140HVT sample_in_reg_87_ ( .D(a[87]), .CP(clk), .CDN(rst_n),
.Q(sample_in[87]) );
DFCNQD1BWP30P140HVT sample_in_reg_86_ ( .D(a[86]), .CP(clk), .CDN(rst_n),
.Q(sample_in[86]) );
DFCNQD1BWP30P140HVT sample_in_reg_85_ ( .D(a[85]), .CP(clk), .CDN(rst_n),
.Q(sample_in[85]) );
DFCNQD1BWP30P140HVT sample_in_reg_84_ ( .D(a[84]), .CP(clk), .CDN(rst_n),
.Q(sample_in[84]) );
DFCNQD1BWP30P140HVT sample_in_reg_83_ ( .D(a[83]), .CP(clk), .CDN(rst_n),
.Q(sample_in[83]) );
DFCNQD1BWP30P140HVT sample_in_reg_82_ ( .D(a[82]), .CP(clk), .CDN(rst_n),
.Q(sample_in[82]) );
DFCNQD1BWP30P140HVT sample_in_reg_81_ ( .D(a[81]), .CP(clk), .CDN(rst_n),
.Q(sample_in[81]) );
DFCNQD1BWP30P140HVT sample_in_reg_80_ ( .D(a[80]), .CP(clk), .CDN(rst_n),
.Q(sample_in[80]) );
DFCNQD1BWP30P140HVT sample_in_reg_95_ ( .D(a[95]), .CP(clk), .CDN(rst_n),
.Q(sample_in[95]) );
DFCNQD1BWP30P140HVT sample_in_reg_94_ ( .D(a[94]), .CP(clk), .CDN(rst_n),
.Q(sample_in[94]) );
DFCNQD1BWP30P140HVT sample_in_reg_93_ ( .D(a[93]), .CP(clk), .CDN(rst_n),
.Q(sample_in[93]) );
DFCNQD1BWP30P140HVT sample_in_reg_92_ ( .D(a[92]), .CP(clk), .CDN(rst_n),
.Q(sample_in[92]) );
DFCNQD1BWP30P140HVT sample_in_reg_91_ ( .D(a[91]), .CP(clk), .CDN(rst_n),
.Q(sample_in[91]) );
DFCNQD1BWP30P140HVT sample_in_reg_90_ ( .D(a[90]), .CP(clk), .CDN(rst_n),
.Q(sample_in[90]) );
DFCNQD1BWP30P140HVT sample_in_reg_89_ ( .D(a[89]), .CP(clk), .CDN(rst_n),
.Q(sample_in[89]) );
DFCNQD1BWP30P140HVT sample_in_reg_88_ ( .D(a[88]), .CP(clk), .CDN(rst_n),
.Q(sample_in[88]) );
DFCNQD1BWP30P140HVT sample_in_reg_103_ ( .D(a[103]), .CP(clk), .CDN(rst_n),
.Q(sample_in[103]) );
DFCNQD1BWP30P140HVT sample_in_reg_102_ ( .D(a[102]), .CP(clk), .CDN(rst_n),
.Q(sample_in[102]) );
DFCNQD1BWP30P140HVT sample_in_reg_101_ ( .D(a[101]), .CP(clk), .CDN(rst_n),
.Q(sample_in[101]) );
DFCNQD1BWP30P140HVT sample_in_reg_100_ ( .D(a[100]), .CP(clk), .CDN(rst_n),
.Q(sample_in[100]) );
DFCNQD1BWP30P140HVT sample_in_reg_99_ ( .D(a[99]), .CP(clk), .CDN(rst_n),
.Q(sample_in[99]) );
DFCNQD1BWP30P140HVT sample_in_reg_98_ ( .D(a[98]), .CP(clk), .CDN(rst_n),
.Q(sample_in[98]) );
DFCNQD1BWP30P140HVT sample_in_reg_97_ ( .D(a[97]), .CP(clk), .CDN(rst_n),
.Q(sample_in[97]) );
DFCNQD1BWP30P140HVT sample_in_reg_111_ ( .D(a[111]), .CP(clk), .CDN(rst_n),
.Q(sample_in[111]) );
DFCNQD1BWP30P140HVT sample_in_reg_110_ ( .D(a[110]), .CP(clk), .CDN(rst_n),
.Q(sample_in[110]) );
DFCNQD1BWP30P140HVT sample_in_reg_109_ ( .D(a[109]), .CP(clk), .CDN(rst_n),
.Q(sample_in[109]) );
DFCNQD1BWP30P140HVT sample_in_reg_108_ ( .D(a[108]), .CP(clk), .CDN(rst_n),
.Q(sample_in[108]) );
DFCNQD1BWP30P140HVT sample_in_reg_107_ ( .D(a[107]), .CP(clk), .CDN(rst_n),
.Q(sample_in[107]) );
DFCNQD1BWP30P140HVT sample_in_reg_106_ ( .D(a[106]), .CP(clk), .CDN(rst_n),
.Q(sample_in[106]) );
DFCNQD1BWP30P140HVT sample_in_reg_105_ ( .D(a[105]), .CP(clk), .CDN(rst_n),
.Q(sample_in[105]) );
DFCNQD1BWP30P140HVT sample_in_reg_104_ ( .D(a[104]), .CP(clk), .CDN(rst_n),
.Q(sample_in[104]) );
DFCNQD1BWP30P140HVT sample_in_reg_119_ ( .D(a[119]), .CP(clk), .CDN(rst_n),
.Q(sample_in[119]) );
DFCNQD1BWP30P140HVT sample_in_reg_118_ ( .D(a[118]), .CP(clk), .CDN(rst_n),
.Q(sample_in[118]) );
DFCNQD1BWP30P140HVT sample_in_reg_117_ ( .D(a[117]), .CP(clk), .CDN(rst_n),
.Q(sample_in[117]) );
DFCNQD1BWP30P140HVT sample_in_reg_116_ ( .D(a[116]), .CP(clk), .CDN(rst_n),
.Q(sample_in[116]) );
DFCNQD1BWP30P140HVT sample_in_reg_115_ ( .D(a[115]), .CP(clk), .CDN(rst_n),
.Q(sample_in[115]) );
DFCNQD1BWP30P140HVT sample_in_reg_114_ ( .D(a[114]), .CP(clk), .CDN(rst_n),
.Q(sample_in[114]) );
DFCNQD1BWP30P140HVT sample_in_reg_113_ ( .D(a[113]), .CP(clk), .CDN(rst_n),
.Q(sample_in[113]) );
DFCNQD1BWP30P140HVT sample_in_reg_112_ ( .D(a[112]), .CP(clk), .CDN(rst_n),
.Q(sample_in[112]) );
DFCNQD1BWP30P140HVT sample_in_reg_127_ ( .D(a[127]), .CP(clk), .CDN(rst_n),
.Q(sample_in[127]) );
DFCNQD1BWP30P140HVT sample_in_reg_126_ ( .D(a[126]), .CP(clk), .CDN(rst_n),
.Q(sample_in[126]) );
DFCNQD1BWP30P140HVT sample_in_reg_125_ ( .D(a[125]), .CP(clk), .CDN(rst_n),
.Q(sample_in[125]) );
DFCNQD1BWP30P140HVT sample_in_reg_124_ ( .D(a[124]), .CP(clk), .CDN(rst_n),
.Q(sample_in[124]) );
DFCNQD1BWP30P140HVT sample_in_reg_123_ ( .D(a[123]), .CP(clk), .CDN(rst_n),
.Q(sample_in[123]) );
DFCNQD1BWP30P140HVT sample_in_reg_122_ ( .D(a[122]), .CP(clk), .CDN(rst_n),
.Q(sample_in[122]) );
DFCNQD1BWP30P140HVT sample_in_reg_121_ ( .D(a[121]), .CP(clk), .CDN(rst_n),
.Q(sample_in[121]) );
DFCNQD1BWP30P140HVT sample_in_reg_120_ ( .D(a[120]), .CP(clk), .CDN(rst_n),
.Q(sample_in[120]) );
DFCNQD1BWP30P140HVT sample_in_reg_135_ ( .D(a[135]), .CP(clk), .CDN(rst_n),
.Q(sample_in[135]) );
DFCNQD1BWP30P140HVT sample_in_reg_134_ ( .D(a[134]), .CP(clk), .CDN(rst_n),
.Q(sample_in[134]) );
DFCNQD1BWP30P140HVT sample_in_reg_133_ ( .D(a[133]), .CP(clk), .CDN(rst_n),
.Q(sample_in[133]) );
DFCNQD1BWP30P140HVT sample_in_reg_132_ ( .D(a[132]), .CP(clk), .CDN(rst_n),
.Q(sample_in[132]) );
DFCNQD1BWP30P140HVT sample_in_reg_131_ ( .D(a[131]), .CP(clk), .CDN(rst_n),
.Q(sample_in[131]) );
DFCNQD1BWP30P140HVT sample_in_reg_130_ ( .D(a[130]), .CP(clk), .CDN(rst_n),
.Q(sample_in[130]) );
DFCNQD1BWP30P140HVT sample_in_reg_129_ ( .D(a[129]), .CP(clk), .CDN(rst_n),
.Q(sample_in[129]) );
DFCNQD1BWP30P140HVT sample_in_reg_128_ ( .D(a[128]), .CP(clk), .CDN(rst_n),
.Q(sample_in[128]) );
DFCNQD1BWP30P140HVT sample_in_reg_143_ ( .D(a[143]), .CP(clk), .CDN(rst_n),
.Q(sample_in[143]) );
DFCNQD1BWP30P140HVT sample_in_reg_142_ ( .D(a[142]), .CP(clk), .CDN(rst_n),
.Q(sample_in[142]) );
DFCNQD1BWP30P140HVT sample_in_reg_141_ ( .D(a[141]), .CP(clk), .CDN(rst_n),
.Q(sample_in[141]) );
DFCNQD1BWP30P140HVT sample_in_reg_140_ ( .D(a[140]), .CP(clk), .CDN(rst_n),
.Q(sample_in[140]) );
DFCNQD1BWP30P140HVT sample_in_reg_139_ ( .D(a[139]), .CP(clk), .CDN(rst_n),
.Q(sample_in[139]) );
DFCNQD1BWP30P140HVT sample_in_reg_138_ ( .D(a[138]), .CP(clk), .CDN(rst_n),
.Q(sample_in[138]) );
DFCNQD1BWP30P140HVT sample_in_reg_137_ ( .D(a[137]), .CP(clk), .CDN(rst_n),
.Q(sample_in[137]) );
DFCNQD1BWP30P140HVT sample_in_reg_136_ ( .D(a[136]), .CP(clk), .CDN(rst_n),
.Q(sample_in[136]) );
DFCNQD1BWP30P140HVT sample_in_reg_151_ ( .D(a[151]), .CP(clk), .CDN(rst_n),
.Q(sample_in[151]) );
DFCNQD1BWP30P140HVT sample_in_reg_150_ ( .D(a[150]), .CP(clk), .CDN(rst_n),
.Q(sample_in[150]) );
DFCNQD1BWP30P140HVT sample_in_reg_149_ ( .D(a[149]), .CP(clk), .CDN(rst_n),
.Q(sample_in[149]) );
DFCNQD1BWP30P140HVT sample_in_reg_148_ ( .D(a[148]), .CP(clk), .CDN(rst_n),
.Q(sample_in[148]) );
DFCNQD1BWP30P140HVT sample_in_reg_147_ ( .D(a[147]), .CP(clk), .CDN(rst_n),
.Q(sample_in[147]) );
DFCNQD1BWP30P140HVT sample_in_reg_146_ ( .D(a[146]), .CP(clk), .CDN(rst_n),
.Q(sample_in[146]) );
DFCNQD1BWP30P140HVT sample_in_reg_145_ ( .D(a[145]), .CP(clk), .CDN(rst_n),
.Q(sample_in[145]) );
DFCNQD1BWP30P140HVT sample_in_reg_144_ ( .D(a[144]), .CP(clk), .CDN(rst_n),
.Q(sample_in[144]) );
DFCNQD1BWP30P140HVT sample_in_reg_159_ ( .D(a[159]), .CP(clk), .CDN(rst_n),
.Q(sample_in[159]) );
DFCNQD1BWP30P140HVT sample_in_reg_158_ ( .D(a[158]), .CP(clk), .CDN(rst_n),
.Q(sample_in[158]) );
DFCNQD1BWP30P140HVT sample_in_reg_157_ ( .D(a[157]), .CP(clk), .CDN(rst_n),
.Q(sample_in[157]) );
DFCNQD1BWP30P140HVT sample_in_reg_156_ ( .D(a[156]), .CP(clk), .CDN(rst_n),
.Q(sample_in[156]) );
DFCNQD1BWP30P140HVT sample_in_reg_155_ ( .D(a[155]), .CP(clk), .CDN(rst_n),
.Q(sample_in[155]) );
DFCNQD1BWP30P140HVT sample_in_reg_154_ ( .D(a[154]), .CP(clk), .CDN(rst_n),
.Q(sample_in[154]) );
DFCNQD1BWP30P140HVT sample_in_reg_153_ ( .D(a[153]), .CP(clk), .CDN(rst_n),
.Q(sample_in[153]) );
DFCNQD1BWP30P140HVT sample_in_reg_152_ ( .D(a[152]), .CP(clk), .CDN(rst_n),
.Q(sample_in[152]) );
DFCNQD1BWP30P140HVT sample_in_reg_167_ ( .D(a[167]), .CP(clk), .CDN(rst_n),
.Q(sample_in[167]) );
DFCNQD1BWP30P140HVT sample_in_reg_166_ ( .D(a[166]), .CP(clk), .CDN(rst_n),
.Q(sample_in[166]) );
DFCNQD1BWP30P140HVT sample_in_reg_165_ ( .D(a[165]), .CP(clk), .CDN(rst_n),
.Q(sample_in[165]) );
DFCNQD1BWP30P140HVT sample_in_reg_164_ ( .D(a[164]), .CP(clk), .CDN(rst_n),
.Q(sample_in[164]) );
DFCNQD1BWP30P140HVT sample_in_reg_163_ ( .D(a[163]), .CP(clk), .CDN(rst_n),
.Q(sample_in[163]) );
DFCNQD1BWP30P140HVT sample_in_reg_162_ ( .D(a[162]), .CP(clk), .CDN(rst_n),
.Q(sample_in[162]) );
DFCNQD1BWP30P140HVT sample_in_reg_161_ ( .D(a[161]), .CP(clk), .CDN(rst_n),
.Q(sample_in[161]) );
DFCNQD1BWP30P140HVT sample_in_reg_160_ ( .D(a[160]), .CP(clk), .CDN(rst_n),
.Q(sample_in[160]) );
DFCNQD1BWP30P140HVT sample_in_reg_175_ ( .D(a[175]), .CP(clk), .CDN(rst_n),
.Q(sample_in[175]) );
DFCNQD1BWP30P140HVT sample_in_reg_174_ ( .D(a[174]), .CP(clk), .CDN(rst_n),
.Q(sample_in[174]) );
DFCNQD1BWP30P140HVT sample_in_reg_173_ ( .D(a[173]), .CP(clk), .CDN(rst_n),
.Q(sample_in[173]) );
DFCNQD1BWP30P140HVT sample_in_reg_172_ ( .D(a[172]), .CP(clk), .CDN(rst_n),
.Q(sample_in[172]) );
DFCNQD1BWP30P140HVT sample_in_reg_171_ ( .D(a[171]), .CP(clk), .CDN(rst_n),
.Q(sample_in[171]) );
DFCNQD1BWP30P140HVT sample_in_reg_170_ ( .D(a[170]), .CP(clk), .CDN(rst_n),
.Q(sample_in[170]) );
DFCNQD1BWP30P140HVT sample_in_reg_169_ ( .D(a[169]), .CP(clk), .CDN(rst_n),
.Q(sample_in[169]) );
DFCNQD1BWP30P140HVT sample_in_reg_168_ ( .D(a[168]), .CP(clk), .CDN(rst_n),
.Q(sample_in[168]) );
DFCNQD1BWP30P140HVT sample_in_reg_183_ ( .D(a[183]), .CP(clk), .CDN(rst_n),
.Q(sample_in[183]) );
DFCNQD1BWP30P140HVT sample_in_reg_182_ ( .D(a[182]), .CP(clk), .CDN(rst_n),
.Q(sample_in[182]) );
DFCNQD1BWP30P140HVT sample_in_reg_181_ ( .D(a[181]), .CP(clk), .CDN(rst_n),
.Q(sample_in[181]) );
DFCNQD1BWP30P140HVT sample_in_reg_180_ ( .D(a[180]), .CP(clk), .CDN(rst_n),
.Q(sample_in[180]) );
DFCNQD1BWP30P140HVT sample_in_reg_179_ ( .D(a[179]), .CP(clk), .CDN(rst_n),
.Q(sample_in[179]) );
DFCNQD1BWP30P140HVT sample_in_reg_178_ ( .D(a[178]), .CP(clk), .CDN(rst_n),
.Q(sample_in[178]) );
DFCNQD1BWP30P140HVT sample_in_reg_177_ ( .D(a[177]), .CP(clk), .CDN(rst_n),
.Q(sample_in[177]) );
DFCNQD1BWP30P140HVT sample_in_reg_176_ ( .D(a[176]), .CP(clk), .CDN(rst_n),
.Q(sample_in[176]) );
DFCNQD1BWP30P140HVT sample_in_reg_191_ ( .D(a[191]), .CP(clk), .CDN(rst_n),
.Q(sample_in[191]) );
DFCNQD1BWP30P140HVT sample_in_reg_190_ ( .D(a[190]), .CP(clk), .CDN(rst_n),
.Q(sample_in[190]) );
DFCNQD1BWP30P140HVT sample_in_reg_189_ ( .D(a[189]), .CP(clk), .CDN(rst_n),
.Q(sample_in[189]) );
DFCNQD1BWP30P140HVT sample_in_reg_188_ ( .D(a[188]), .CP(clk), .CDN(rst_n),
.Q(sample_in[188]) );
DFCNQD1BWP30P140HVT sample_in_reg_187_ ( .D(a[187]), .CP(clk), .CDN(rst_n),
.Q(sample_in[187]) );
DFCNQD1BWP30P140HVT sample_in_reg_186_ ( .D(a[186]), .CP(clk), .CDN(rst_n),
.Q(sample_in[186]) );
DFCNQD1BWP30P140HVT sample_in_reg_185_ ( .D(a[185]), .CP(clk), .CDN(rst_n),
.Q(sample_in[185]) );
DFCNQD1BWP30P140HVT sample_in_reg_184_ ( .D(a[184]), .CP(clk), .CDN(rst_n),
.Q(sample_in[184]) );
DFCNQD1BWP30P140HVT sample_in_reg_199_ ( .D(a[199]), .CP(clk), .CDN(rst_n),
.Q(sample_in[199]) );
DFCNQD1BWP30P140HVT sample_in_reg_198_ ( .D(a[198]), .CP(clk), .CDN(rst_n),
.Q(sample_in[198]) );
DFCNQD1BWP30P140HVT sample_in_reg_197_ ( .D(a[197]), .CP(clk), .CDN(rst_n),
.Q(sample_in[197]) );
DFCNQD1BWP30P140HVT sample_in_reg_196_ ( .D(a[196]), .CP(clk), .CDN(rst_n),
.Q(sample_in[196]) );
DFCNQD1BWP30P140HVT sample_in_reg_195_ ( .D(a[195]), .CP(clk), .CDN(rst_n),
.Q(sample_in[195]) );
DFCNQD1BWP30P140HVT sample_in_reg_194_ ( .D(a[194]), .CP(clk), .CDN(rst_n),
.Q(sample_in[194]) );
DFCNQD1BWP30P140HVT sample_in_reg_193_ ( .D(a[193]), .CP(clk), .CDN(rst_n),
.Q(sample_in[193]) );
DFCNQD1BWP30P140HVT sample_in_reg_192_ ( .D(a[192]), .CP(clk), .CDN(rst_n),
.Q(sample_in[192]) );
DFCNQD1BWP30P140HVT sample_in_reg_207_ ( .D(a[207]), .CP(clk), .CDN(rst_n),
.Q(sample_in[207]) );
DFCNQD1BWP30P140HVT sample_in_reg_206_ ( .D(a[206]), .CP(clk), .CDN(rst_n),
.Q(sample_in[206]) );
DFCNQD1BWP30P140HVT sample_in_reg_205_ ( .D(a[205]), .CP(clk), .CDN(rst_n),
.Q(sample_in[205]) );
DFCNQD1BWP30P140HVT sample_in_reg_204_ ( .D(a[204]), .CP(clk), .CDN(rst_n),
.Q(sample_in[204]) );
DFCNQD1BWP30P140HVT sample_in_reg_203_ ( .D(a[203]), .CP(clk), .CDN(rst_n),
.Q(sample_in[203]) );
DFCNQD1BWP30P140HVT sample_in_reg_202_ ( .D(a[202]), .CP(clk), .CDN(rst_n),
.Q(sample_in[202]) );
DFCNQD1BWP30P140HVT sample_in_reg_201_ ( .D(a[201]), .CP(clk), .CDN(rst_n),
.Q(sample_in[201]) );
DFCNQD1BWP30P140HVT sample_in_reg_200_ ( .D(a[200]), .CP(clk), .CDN(rst_n),
.Q(sample_in[200]) );
DFCNQD1BWP30P140HVT sample_in_reg_215_ ( .D(a[215]), .CP(clk), .CDN(rst_n),
.Q(sample_in[215]) );
DFCNQD1BWP30P140HVT sample_in_reg_214_ ( .D(a[214]), .CP(clk), .CDN(rst_n),
.Q(sample_in[214]) );
DFCNQD1BWP30P140HVT sample_in_reg_213_ ( .D(a[213]), .CP(clk), .CDN(rst_n),
.Q(sample_in[213]) );
DFCNQD1BWP30P140HVT sample_in_reg_212_ ( .D(a[212]), .CP(clk), .CDN(rst_n),
.Q(sample_in[212]) );
DFCNQD1BWP30P140HVT sample_in_reg_211_ ( .D(a[211]), .CP(clk), .CDN(rst_n),
.Q(sample_in[211]) );
DFCNQD1BWP30P140HVT sample_in_reg_210_ ( .D(a[210]), .CP(clk), .CDN(rst_n),
.Q(sample_in[210]) );
DFCNQD1BWP30P140HVT sample_in_reg_209_ ( .D(a[209]), .CP(clk), .CDN(rst_n),
.Q(sample_in[209]) );
DFCNQD1BWP30P140HVT sample_in_reg_223_ ( .D(a[223]), .CP(clk), .CDN(rst_n),
.Q(sample_in[223]) );
DFCNQD1BWP30P140HVT sample_in_reg_222_ ( .D(a[222]), .CP(clk), .CDN(rst_n),
.Q(sample_in[222]) );
DFCNQD1BWP30P140HVT sample_in_reg_221_ ( .D(a[221]), .CP(clk), .CDN(rst_n),
.Q(sample_in[221]) );
DFCNQD1BWP30P140HVT sample_in_reg_220_ ( .D(a[220]), .CP(clk), .CDN(rst_n),
.Q(sample_in[220]) );
DFCNQD1BWP30P140HVT sample_in_reg_219_ ( .D(a[219]), .CP(clk), .CDN(rst_n),
.Q(sample_in[219]) );
DFCNQD1BWP30P140HVT sample_in_reg_218_ ( .D(a[218]), .CP(clk), .CDN(rst_n),
.Q(sample_in[218]) );
DFCNQD1BWP30P140HVT sample_in_reg_217_ ( .D(a[217]), .CP(clk), .CDN(rst_n),
.Q(sample_in[217]) );
DFCNQD1BWP30P140HVT sample_in_reg_216_ ( .D(a[216]), .CP(clk), .CDN(rst_n),
.Q(sample_in[216]) );
DFCNQD1BWP30P140HVT sample_in_reg_231_ ( .D(a[231]), .CP(clk), .CDN(rst_n),
.Q(sample_in[231]) );
DFCNQD1BWP30P140HVT sample_in_reg_230_ ( .D(a[230]), .CP(clk), .CDN(rst_n),
.Q(sample_in[230]) );
DFCNQD1BWP30P140HVT sample_in_reg_229_ ( .D(a[229]), .CP(clk), .CDN(rst_n),
.Q(sample_in[229]) );
DFCNQD1BWP30P140HVT sample_in_reg_228_ ( .D(a[228]), .CP(clk), .CDN(rst_n),
.Q(sample_in[228]) );
DFCNQD1BWP30P140HVT sample_in_reg_227_ ( .D(a[227]), .CP(clk), .CDN(rst_n),
.Q(sample_in[227]) );
DFCNQD1BWP30P140HVT sample_in_reg_226_ ( .D(a[226]), .CP(clk), .CDN(rst_n),
.Q(sample_in[226]) );
DFCNQD1BWP30P140HVT sample_in_reg_225_ ( .D(a[225]), .CP(clk), .CDN(rst_n),
.Q(sample_in[225]) );
DFCNQD1BWP30P140HVT sample_in_reg_224_ ( .D(a[224]), .CP(clk), .CDN(rst_n),
.Q(sample_in[224]) );
DFCNQD1BWP30P140HVT sample_in_reg_239_ ( .D(a[239]), .CP(clk), .CDN(rst_n),
.Q(sample_in[239]) );
DFCNQD1BWP30P140HVT sample_in_reg_238_ ( .D(a[238]), .CP(clk), .CDN(rst_n),
.Q(sample_in[238]) );
DFCNQD1BWP30P140HVT sample_in_reg_237_ ( .D(a[237]), .CP(clk), .CDN(rst_n),
.Q(sample_in[237]) );
DFCNQD1BWP30P140HVT sample_in_reg_236_ ( .D(a[236]), .CP(clk), .CDN(rst_n),
.Q(sample_in[236]) );
DFCNQD1BWP30P140HVT sample_in_reg_235_ ( .D(a[235]), .CP(clk), .CDN(rst_n),
.Q(sample_in[235]) );
DFCNQD1BWP30P140HVT sample_in_reg_234_ ( .D(a[234]), .CP(clk), .CDN(rst_n),
.Q(sample_in[234]) );
DFCNQD1BWP30P140HVT sample_in_reg_233_ ( .D(a[233]), .CP(clk), .CDN(rst_n),
.Q(sample_in[233]) );
DFCNQD1BWP30P140HVT sample_in_reg_232_ ( .D(a[232]), .CP(clk), .CDN(rst_n),
.Q(sample_in[232]) );
DFCNQD1BWP30P140HVT sample_in_reg_247_ ( .D(a[247]), .CP(clk), .CDN(rst_n),
.Q(sample_in[247]) );
DFCNQD1BWP30P140HVT sample_in_reg_246_ ( .D(a[246]), .CP(clk), .CDN(rst_n),
.Q(sample_in[246]) );
DFCNQD1BWP30P140HVT sample_in_reg_245_ ( .D(a[245]), .CP(clk), .CDN(rst_n),
.Q(sample_in[245]) );
DFCNQD1BWP30P140HVT sample_in_reg_244_ ( .D(a[244]), .CP(clk), .CDN(rst_n),
.Q(sample_in[244]) );
DFCNQD1BWP30P140HVT sample_in_reg_243_ ( .D(a[243]), .CP(clk), .CDN(rst_n),
.Q(sample_in[243]) );
DFCNQD1BWP30P140HVT sample_in_reg_242_ ( .D(a[242]), .CP(clk), .CDN(rst_n),
.Q(sample_in[242]) );
DFCNQD1BWP30P140HVT sample_in_reg_241_ ( .D(a[241]), .CP(clk), .CDN(rst_n),
.Q(sample_in[241]) );
DFCNQD1BWP30P140HVT sample_in_reg_240_ ( .D(a[240]), .CP(clk), .CDN(rst_n),
.Q(sample_in[240]) );
DFCNQD1BWP30P140HVT sample_in_reg_255_ ( .D(a[255]), .CP(clk), .CDN(rst_n),
.Q(sample_in[255]) );
DFCNQD1BWP30P140HVT sample_in_reg_254_ ( .D(a[254]), .CP(clk), .CDN(rst_n),
.Q(sample_in[254]) );
DFCNQD1BWP30P140HVT sample_in_reg_253_ ( .D(a[253]), .CP(clk), .CDN(rst_n),
.Q(sample_in[253]) );
DFCNQD1BWP30P140HVT sample_in_reg_252_ ( .D(a[252]), .CP(clk), .CDN(rst_n),
.Q(sample_in[252]) );
DFCNQD1BWP30P140HVT sample_in_reg_251_ ( .D(a[251]), .CP(clk), .CDN(rst_n),
.Q(sample_in[251]) );
DFCNQD1BWP30P140HVT sample_in_reg_250_ ( .D(a[250]), .CP(clk), .CDN(rst_n),
.Q(sample_in[250]) );
DFCNQD1BWP30P140HVT sample_in_reg_249_ ( .D(a[249]), .CP(clk), .CDN(rst_n),
.Q(sample_in[249]) );
DFCNQD1BWP30P140HVT sample_in_reg_248_ ( .D(a[248]), .CP(clk), .CDN(rst_n),
.Q(sample_in[248]) );
DFCNQD1BWP30P140HVT psum_reg_12_ ( .D(intadd_0_n1), .CP(clk), .CDN(rst_n),
.Q(psum[12]) );
DFCNQD1BWP30P140HVT psum_reg_11_ ( .D(edge_nd_1291), .CP(clk), .CDN(rst_n),
.Q(psum[11]) );
DFCNQD1BWP30P140HVT psum_reg_10_ ( .D(edge_nd_1290), .CP(clk), .CDN(rst_n),
.Q(psum[10]) );
DFCNQD1BWP30P140HVT psum_reg_9_ ( .D(edge_nd_1289), .CP(clk), .CDN(rst_n),
.Q(psum[9]) );
DFCNQD1BWP30P140HVT psum_reg_8_ ( .D(edge_nd_1288), .CP(clk), .CDN(rst_n),
.Q(psum[8]) );
DFCNQD1BWP30P140HVT psum_reg_7_ ( .D(edge_nd_1287), .CP(clk), .CDN(rst_n),
.Q(psum[7]) );
DFCNQD1BWP30P140HVT psum_reg_6_ ( .D(edge_nd_1286), .CP(clk), .CDN(rst_n),
.Q(psum[6]) );
DFCNQD1BWP30P140HVT psum_reg_5_ ( .D(edge_nd_1285), .CP(clk), .CDN(rst_n),
.Q(psum[5]) );
DFCNQD1BWP30P140HVT psum_reg_4_ ( .D(edge_nd_1284), .CP(clk), .CDN(rst_n),
.Q(psum[4]) );
DFCNQD1BWP30P140HVT psum_reg_3_ ( .D(edge_nd_1283), .CP(clk), .CDN(rst_n),
.Q(psum[3]) );
DFCNQD1BWP30P140HVT psum_reg_2_ ( .D(edge_nd_1282), .CP(clk), .CDN(rst_n),
.Q(psum[2]) );
DFCNQD1BWP30P140HVT psum_reg_1_ ( .D(edge_nd_1281), .CP(clk), .CDN(rst_n),
.Q(psum[1]) );
DFCNQD1BWP30P140HVT psum_reg_0_ ( .D(edge_nd_1280), .CP(clk), .CDN(rst_n),
.Q(psum[0]) );
DFCNQD1BWP30P140HVT sample_in_reg_0_ ( .D(a[0]), .CP(clk), .CDN(rst_n), .Q(
sample_in[0]) );
DFCNQD1BWP30P140HVT sample_in_reg_96_ ( .D(a[96]), .CP(clk), .CDN(rst_n),
.Q(sample_in[96]) );
DFCNQD1BWP30P140HVT sample_in_reg_208_ ( .D(a[208]), .CP(clk), .CDN(rst_n),
.Q(sample_in[208]) );
FA_INVERSE intadd_0_U2 ( .A(intadd_1_n1), .B(intadd_2_n1), .CI(
intadd_0_n2), .CO(intadd_0_n1), .S(edge_nd_1291) );
FA_INVERSE_CO intadd_0_U3 ( .A(intadd_0_B_9_), .B(intadd_0_A_9_), .CI(
intadd_0_n3), .CO(intadd_0_n2), .S(edge_nd_1290) );
FA1D1BWP30P140HVT intadd_0_U4 ( .A(intadd_0_B_8_), .B(intadd_0_A_8_), .CI(
intadd_0_n4), .CO(intadd_0_n3), .S(edge_nd_1289) );
FA1D1BWP30P140HVT intadd_0_U5 ( .A(intadd_0_B_7_), .B(intadd_0_A_7_), .CI(
intadd_0_n5), .CO(intadd_0_n4), .S(edge_nd_1288) );
FA1D1BWP30P140HVT intadd_0_U6 ( .A(intadd_0_B_6_), .B(intadd_0_A_6_), .CI(
intadd_0_n6), .CO(intadd_0_n5), .S(edge_nd_1287) );
FA1D1BWP30P140HVT intadd_0_U7 ( .A(intadd_0_B_5_), .B(intadd_0_A_5_), .CI(
intadd_0_n7), .CO(intadd_0_n6), .S(edge_nd_1286) );
FA1D1BWP30P140HVT intadd_0_U8 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(
intadd_0_n8), .CO(intadd_0_n7), .S(edge_nd_1285) );
FA1D1BWP30P140HVT intadd_0_U9 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(
intadd_0_n9), .CO(intadd_0_n8), .S(edge_nd_1284) );
FA1D1BWP30P140HVT intadd_0_U10 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
intadd_0_n10), .CO(intadd_0_n9), .S(edge_nd_1283) );
FA1D1BWP30P140HVT intadd_0_U11 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
intadd_0_n11), .CO(intadd_0_n10), .S(edge_nd_1282) );
FA1D1BWP30P140HVT intadd_0_U12 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(
intadd_0_CI), .CO(intadd_0_n11), .S(edge_nd_1281) );
FA_INVERSE_S intadd_2_U2 ( .A(intadd_3_n1), .B(intadd_4_n1), .CI(
intadd_2_n2), .CO(intadd_2_n1), .S(intadd_0_B_9_) );
FA_INVERSE_S intadd_1_U2 ( .A(intadd_5_n1), .B(intadd_6_n1), .CI(
intadd_1_n2), .CO(intadd_1_n1), .S(intadd_0_A_9_) );
FA_INVERSE_CO intadd_4_U2 ( .A(intadd_3_SUM_8_), .B(intadd_2_SUM_8_),
.CI(intadd_4_n2), .CO(intadd_4_n1), .S(intadd_0_B_8_) );
FA_INVERSE_CO intadd_1_U3 ( .A(intadd_1_B_8_), .B(intadd_1_A_8_), .CI(
intadd_1_n3), .CO(intadd_1_n2), .S(intadd_0_A_8_) );
FA1D1BWP30P140HVT intadd_4_U3 ( .A(intadd_4_B_7_), .B(intadd_4_A_7_), .CI(
intadd_4_n3), .CO(intadd_4_n2), .S(intadd_0_B_7_) );
FA1D1BWP30P140HVT intadd_1_U4 ( .A(intadd_1_B_7_), .B(intadd_1_A_7_), .CI(
intadd_1_n4), .CO(intadd_1_n3), .S(intadd_0_A_7_) );
FA1D1BWP30P140HVT intadd_4_U4 ( .A(intadd_4_B_6_), .B(intadd_4_A_6_), .CI(
intadd_4_n4), .CO(intadd_4_n3), .S(intadd_0_B_6_) );
FA1D1BWP30P140HVT intadd_1_U5 ( .A(intadd_1_B_6_), .B(intadd_1_A_6_), .CI(
intadd_1_n5), .CO(intadd_1_n4), .S(intadd_0_A_6_) );
FA1D1BWP30P140HVT intadd_4_U5 ( .A(intadd_4_B_5_), .B(intadd_4_A_5_), .CI(
intadd_4_n5), .CO(intadd_4_n4), .S(intadd_0_B_5_) );
FA1D1BWP30P140HVT intadd_1_U6 ( .A(intadd_1_B_5_), .B(intadd_1_A_5_), .CI(
intadd_1_n6), .CO(intadd_1_n5), .S(intadd_0_A_5_) );
FA1D1BWP30P140HVT intadd_4_U6 ( .A(intadd_4_B_4_), .B(intadd_4_A_4_), .CI(
intadd_4_n6), .CO(intadd_4_n5), .S(intadd_0_B_4_) );
FA1D1BWP30P140HVT intadd_1_U7 ( .A(intadd_1_B_4_), .B(intadd_1_A_4_), .CI(
intadd_1_n7), .CO(intadd_1_n6), .S(intadd_0_A_4_) );
FA1D1BWP30P140HVT intadd_4_U7 ( .A(intadd_4_B_3_), .B(intadd_4_A_3_), .CI(
intadd_4_n7), .CO(intadd_4_n6), .S(intadd_0_B_3_) );
FA1D1BWP30P140HVT intadd_1_U8 ( .A(intadd_1_B_3_), .B(intadd_1_A_3_), .CI(
intadd_1_n8), .CO(intadd_1_n7), .S(intadd_0_A_3_) );
FA1D1BWP30P140HVT intadd_4_U8 ( .A(intadd_4_B_2_), .B(intadd_4_A_2_), .CI(
intadd_4_n8), .CO(intadd_4_n7), .S(intadd_0_B_2_) );
FA1D1BWP30P140HVT intadd_1_U9 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(
intadd_1_n9), .CO(intadd_1_n8), .S(intadd_0_A_2_) );
FA1D1BWP30P140HVT intadd_4_U9 ( .A(intadd_4_B_1_), .B(intadd_4_A_1_), .CI(
intadd_4_n9), .CO(intadd_4_n8), .S(intadd_0_B_1_) );
FA1D1BWP30P140HVT intadd_1_U10 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(
intadd_1_n10), .CO(intadd_1_n9), .S(intadd_0_A_1_) );
FA1D1BWP30P140HVT intadd_4_U10 ( .A(intadd_4_B_0_), .B(intadd_4_A_0_), .CI(
intadd_4_CI), .CO(intadd_4_n9), .S(intadd_0_CI) );
FA1D1BWP30P140HVT intadd_1_U11 ( .A(intadd_1_B_0_), .B(intadd_1_A_0_), .CI(
intadd_1_CI), .CO(intadd_1_n10), .S(intadd_0_B_0_) );
FA_INVERSE_S intadd_2_U3 ( .A(intadd_13_n1), .B(intadd_14_n1), .CI(
intadd_2_n3), .CO(intadd_2_n2), .S(intadd_2_SUM_8_) );
FA_INVERSE_S intadd_3_U2 ( .A(intadd_11_n1), .B(intadd_12_n1), .CI(
intadd_3_n2), .CO(intadd_3_n1), .S(intadd_3_SUM_8_) );
FA_INVERSE_S intadd_5_U2 ( .A(intadd_9_n1), .B(intadd_10_n1), .CI(
intadd_5_n2), .CO(intadd_5_n1), .S(intadd_1_A_8_) );
FA_INVERSE_S intadd_6_U2 ( .A(intadd_7_n1), .B(intadd_8_n1), .CI(
intadd_6_n2), .CO(intadd_6_n1), .S(intadd_1_B_8_) );
FA_INVERSE_CO intadd_14_U2 ( .A(intadd_13_SUM_7_), .B(intadd_2_SUM_7_),
.CI(intadd_14_n2), .CO(intadd_14_n1), .S(intadd_4_A_7_) );
FA_INVERSE_CO intadd_12_U2 ( .A(intadd_11_SUM_7_), .B(intadd_3_SUM_7_),
.CI(intadd_12_n2), .CO(intadd_12_n1), .S(intadd_4_B_7_) );
FA_INVERSE_CO intadd_5_U3 ( .A(intadd_5_B_7_), .B(intadd_5_A_7_), .CI(
intadd_5_n3), .CO(intadd_5_n2), .S(intadd_1_A_7_) );
FA_INVERSE_CO intadd_8_U2 ( .A(intadd_7_SUM_7_), .B(intadd_6_SUM_7_),
.CI(intadd_8_n2), .CO(intadd_8_n1), .S(intadd_1_B_7_) );
FA1D1BWP30P140HVT intadd_14_U3 ( .A(intadd_14_B_6_), .B(intadd_14_A_6_),
.CI(intadd_14_n3), .CO(intadd_14_n2), .S(intadd_4_A_6_) );
FA1D1BWP30P140HVT intadd_12_U3 ( .A(intadd_12_B_6_), .B(intadd_12_A_6_),
.CI(intadd_12_n3), .CO(intadd_12_n2), .S(intadd_4_B_6_) );
FA1D1BWP30P140HVT intadd_5_U4 ( .A(intadd_5_B_6_), .B(intadd_5_A_6_), .CI(
intadd_5_n4), .CO(intadd_5_n3), .S(intadd_1_A_6_) );
FA1D1BWP30P140HVT intadd_8_U3 ( .A(intadd_8_B_6_), .B(intadd_8_A_6_), .CI(
intadd_8_n3), .CO(intadd_8_n2), .S(intadd_1_B_6_) );
FA1D1BWP30P140HVT intadd_14_U4 ( .A(intadd_14_B_5_), .B(intadd_14_A_5_),
.CI(intadd_14_n4), .CO(intadd_14_n3), .S(intadd_4_A_5_) );
FA1D1BWP30P140HVT intadd_12_U4 ( .A(intadd_12_B_5_), .B(intadd_12_A_5_),
.CI(intadd_12_n4), .CO(intadd_12_n3), .S(intadd_4_B_5_) );
FA1D1BWP30P140HVT intadd_5_U5 ( .A(intadd_5_B_5_), .B(intadd_5_A_5_), .CI(
intadd_5_n5), .CO(intadd_5_n4), .S(intadd_1_A_5_) );
FA1D1BWP30P140HVT intadd_8_U4 ( .A(intadd_8_B_5_), .B(intadd_8_A_5_), .CI(
intadd_8_n4), .CO(intadd_8_n3), .S(intadd_1_B_5_) );
FA1D1BWP30P140HVT intadd_14_U5 ( .A(intadd_14_B_4_), .B(intadd_14_A_4_),
.CI(intadd_14_n5), .CO(intadd_14_n4), .S(intadd_4_A_4_) );
FA1D1BWP30P140HVT intadd_12_U5 ( .A(intadd_12_B_4_), .B(intadd_12_A_4_),
.CI(intadd_12_n5), .CO(intadd_12_n4), .S(intadd_4_B_4_) );
FA1D1BWP30P140HVT intadd_5_U6 ( .A(intadd_5_B_4_), .B(intadd_5_A_4_), .CI(
intadd_5_n6), .CO(intadd_5_n5), .S(intadd_1_A_4_) );
FA1D1BWP30P140HVT intadd_8_U5 ( .A(intadd_8_B_4_), .B(intadd_8_A_4_), .CI(
intadd_8_n5), .CO(intadd_8_n4), .S(intadd_1_B_4_) );
FA1D1BWP30P140HVT intadd_14_U6 ( .A(intadd_14_B_3_), .B(intadd_14_A_3_),
.CI(intadd_14_n6), .CO(intadd_14_n5), .S(intadd_4_A_3_) );
FA1D1BWP30P140HVT intadd_12_U6 ( .A(intadd_12_B_3_), .B(intadd_12_A_3_),
.CI(intadd_12_n6), .CO(intadd_12_n5), .S(intadd_4_B_3_) );
FA1D1BWP30P140HVT intadd_5_U7 ( .A(intadd_5_B_3_), .B(intadd_5_A_3_), .CI(
intadd_5_n7), .CO(intadd_5_n6), .S(intadd_1_A_3_) );
FA1D1BWP30P140HVT intadd_8_U6 ( .A(intadd_8_B_3_), .B(intadd_8_A_3_), .CI(
intadd_8_n6), .CO(intadd_8_n5), .S(intadd_1_B_3_) );
FA1D1BWP30P140HVT intadd_14_U7 ( .A(intadd_14_B_2_), .B(intadd_14_A_2_),
.CI(intadd_14_n7), .CO(intadd_14_n6), .S(intadd_4_A_2_) );
FA1D1BWP30P140HVT intadd_12_U7 ( .A(intadd_12_B_2_), .B(intadd_12_A_2_),
.CI(intadd_12_n7), .CO(intadd_12_n6), .S(intadd_4_B_2_) );
FA1D1BWP30P140HVT intadd_5_U8 ( .A(intadd_5_B_2_), .B(intadd_5_A_2_), .CI(
intadd_5_n8), .CO(intadd_5_n7), .S(intadd_1_A_2_) );
FA1D1BWP30P140HVT intadd_8_U7 ( .A(intadd_8_B_2_), .B(intadd_8_A_2_), .CI(
intadd_8_n7), .CO(intadd_8_n6), .S(intadd_1_B_2_) );
FA1D1BWP30P140HVT intadd_14_U8 ( .A(intadd_14_B_1_), .B(intadd_14_A_1_),
.CI(intadd_14_n8), .CO(intadd_14_n7), .S(intadd_4_A_1_) );
FA1D1BWP30P140HVT intadd_12_U8 ( .A(intadd_12_B_1_), .B(intadd_12_A_1_),
.CI(intadd_12_n8), .CO(intadd_12_n7), .S(intadd_4_B_1_) );
FA1D1BWP30P140HVT intadd_5_U9 ( .A(intadd_5_B_1_), .B(intadd_5_A_1_), .CI(
intadd_5_n9), .CO(intadd_5_n8), .S(intadd_1_A_1_) );
FA1D1BWP30P140HVT intadd_8_U8 ( .A(intadd_8_B_1_), .B(intadd_8_A_1_), .CI(
intadd_8_n8), .CO(intadd_8_n7), .S(intadd_1_B_1_) );
FA1D1BWP30P140HVT intadd_14_U9 ( .A(intadd_14_B_0_), .B(intadd_14_A_0_),
.CI(intadd_14_CI), .CO(intadd_14_n8), .S(intadd_4_B_0_) );
FA1D1BWP30P140HVT intadd_12_U9 ( .A(intadd_12_B_0_), .B(intadd_12_A_0_),
.CI(intadd_12_CI), .CO(intadd_12_n8), .S(intadd_4_CI) );
FA1D1BWP30P140HVT intadd_5_U10 ( .A(intadd_5_B_0_), .B(intadd_5_A_0_), .CI(
intadd_5_CI), .CO(intadd_5_n9), .S(intadd_1_B_0_) );
FA1D1BWP30P140HVT intadd_8_U9 ( .A(intadd_8_B_0_), .B(intadd_8_A_0_), .CI(
intadd_8_CI), .CO(intadd_8_n8), .S(intadd_1_CI) );
FA_INVERSE_S intadd_2_U4 ( .A(intadd_29_n1), .B(intadd_30_n1), .CI(
intadd_2_n4), .CO(intadd_2_n3), .S(intadd_2_SUM_7_) );
FA_INVERSE_S intadd_13_U2 ( .A(intadd_15_n1), .B(intadd_16_n1), .CI(
intadd_13_n2), .CO(intadd_13_n1), .S(intadd_13_SUM_7_) );
FA_INVERSE_S intadd_3_U3 ( .A(intadd_27_n1), .B(intadd_28_n1), .CI(
intadd_3_n3), .CO(intadd_3_n2), .S(intadd_3_SUM_7_) );
FA_INVERSE_S intadd_11_U2 ( .A(intadd_17_n1), .B(intadd_18_n1), .CI(
intadd_11_n2), .CO(intadd_11_n1), .S(intadd_11_SUM_7_) );
FA_INVERSE_S intadd_9_U2 ( .A(intadd_21_n1), .B(intadd_22_n1), .CI(
intadd_9_n2), .CO(intadd_9_n1), .S(intadd_5_A_7_) );
FA_INVERSE_S intadd_10_U2 ( .A(intadd_19_n1), .B(intadd_20_n1), .CI(
intadd_10_n2), .CO(intadd_10_n1), .S(intadd_5_B_7_) );
FA_INVERSE_S intadd_6_U3 ( .A(intadd_25_n1), .B(intadd_26_n1), .CI(
intadd_6_n3), .CO(intadd_6_n2), .S(intadd_6_SUM_7_) );
FA_INVERSE_S intadd_7_U2 ( .A(intadd_23_n1), .B(intadd_24_n1), .CI(
intadd_7_n2), .CO(intadd_7_n1), .S(intadd_7_SUM_7_) );
FA_INVERSE_CO intadd_30_U2 ( .A(intadd_29_SUM_6_), .B(intadd_2_SUM_6_),
.CI(intadd_30_n2), .CO(intadd_30_n1), .S(intadd_14_A_6_) );
FA_INVERSE_CO intadd_16_U2 ( .A(intadd_15_SUM_6_), .B(intadd_13_SUM_6_),
.CI(intadd_16_n2), .CO(intadd_16_n1), .S(intadd_14_B_6_) );
FA_INVERSE_CO intadd_28_U2 ( .A(intadd_27_SUM_6_), .B(intadd_3_SUM_6_),
.CI(intadd_28_n2), .CO(intadd_28_n1), .S(intadd_12_A_6_) );
FA_INVERSE_CO intadd_18_U2 ( .A(intadd_17_SUM_6_), .B(intadd_11_SUM_6_),
.CI(intadd_18_n2), .CO(intadd_18_n1), .S(intadd_12_B_6_) );
FA_INVERSE_CO intadd_9_U3 ( .A(intadd_9_B_6_), .B(intadd_9_A_6_), .CI(
intadd_9_n3), .CO(intadd_9_n2), .S(intadd_5_A_6_) );
FA_INVERSE_CO intadd_20_U2 ( .A(intadd_19_SUM_6_), .B(intadd_10_SUM_6_),
.CI(intadd_20_n2), .CO(intadd_20_n1), .S(intadd_5_B_6_) );
FA_INVERSE_CO intadd_26_U2 ( .A(intadd_25_SUM_6_), .B(intadd_6_SUM_6_),
.CI(intadd_26_n2), .CO(intadd_26_n1), .S(intadd_8_A_6_) );
FA_INVERSE_CO intadd_24_U2 ( .A(intadd_23_SUM_6_), .B(intadd_7_SUM_6_),
.CI(intadd_24_n2), .CO(intadd_24_n1), .S(intadd_8_B_6_) );
FA1D1BWP30P140HVT intadd_30_U3 ( .A(intadd_29_SUM_5_), .B(intadd_2_SUM_5_),
.CI(intadd_30_n3), .CO(intadd_30_n2), .S(intadd_14_A_5_) );
FA1D1BWP30P140HVT intadd_16_U3 ( .A(intadd_15_SUM_5_), .B(intadd_13_SUM_5_),
.CI(intadd_16_n3), .CO(intadd_16_n2), .S(intadd_14_B_5_) );
FA1D1BWP30P140HVT intadd_28_U3 ( .A(intadd_27_SUM_5_), .B(intadd_3_SUM_5_),
.CI(intadd_28_n3), .CO(intadd_28_n2), .S(intadd_12_A_5_) );
FA1D1BWP30P140HVT intadd_18_U3 ( .A(intadd_17_SUM_5_), .B(intadd_11_SUM_5_),
.CI(intadd_18_n3), .CO(intadd_18_n2), .S(intadd_12_B_5_) );
FA1D1BWP30P140HVT intadd_9_U4 ( .A(intadd_9_B_5_), .B(intadd_9_A_5_), .CI(
intadd_9_n4), .CO(intadd_9_n3), .S(intadd_5_A_5_) );
FA1D1BWP30P140HVT intadd_20_U3 ( .A(intadd_19_SUM_5_), .B(intadd_10_SUM_5_),
.CI(intadd_20_n3), .CO(intadd_20_n2), .S(intadd_5_B_5_) );
FA1D1BWP30P140HVT intadd_26_U3 ( .A(intadd_25_SUM_5_), .B(intadd_6_SUM_5_),
.CI(intadd_26_n3), .CO(intadd_26_n2), .S(intadd_8_A_5_) );
FA1D1BWP30P140HVT intadd_24_U3 ( .A(intadd_23_SUM_5_), .B(intadd_7_SUM_5_),
.CI(intadd_24_n3), .CO(intadd_24_n2), .S(intadd_8_B_5_) );
FA1D1BWP30P140HVT intadd_30_U4 ( .A(intadd_29_SUM_4_), .B(intadd_2_SUM_4_),
.CI(intadd_30_n4), .CO(intadd_30_n3), .S(intadd_14_A_4_) );
FA1D1BWP30P140HVT intadd_16_U4 ( .A(intadd_15_SUM_4_), .B(intadd_13_SUM_4_),
.CI(intadd_16_n4), .CO(intadd_16_n3), .S(intadd_14_B_4_) );
FA1D1BWP30P140HVT intadd_28_U4 ( .A(intadd_27_SUM_4_), .B(intadd_3_SUM_4_),
.CI(intadd_28_n4), .CO(intadd_28_n3), .S(intadd_12_A_4_) );
FA1D1BWP30P140HVT intadd_18_U4 ( .A(intadd_17_SUM_4_), .B(intadd_11_SUM_4_),
.CI(intadd_18_n4), .CO(intadd_18_n3), .S(intadd_12_B_4_) );
FA1D1BWP30P140HVT intadd_9_U5 ( .A(intadd_9_B_4_), .B(intadd_9_A_4_), .CI(
intadd_9_n5), .CO(intadd_9_n4), .S(intadd_5_A_4_) );
FA1D1BWP30P140HVT intadd_20_U4 ( .A(intadd_19_SUM_4_), .B(intadd_10_SUM_4_),
.CI(intadd_20_n4), .CO(intadd_20_n3), .S(intadd_5_B_4_) );
FA1D1BWP30P140HVT intadd_26_U4 ( .A(intadd_25_SUM_4_), .B(intadd_6_SUM_4_),
.CI(intadd_26_n4), .CO(intadd_26_n3), .S(intadd_8_A_4_) );
FA1D1BWP30P140HVT intadd_24_U4 ( .A(intadd_23_SUM_4_), .B(intadd_7_SUM_4_),
.CI(intadd_24_n4), .CO(intadd_24_n3), .S(intadd_8_B_4_) );
FA1D1BWP30P140HVT intadd_30_U5 ( .A(intadd_29_SUM_3_), .B(intadd_2_SUM_3_),
.CI(intadd_30_n5), .CO(intadd_30_n4), .S(intadd_14_A_3_) );
FA1D1BWP30P140HVT intadd_16_U5 ( .A(intadd_15_SUM_3_), .B(intadd_13_SUM_3_),
.CI(intadd_16_n5), .CO(intadd_16_n4), .S(intadd_14_B_3_) );
FA1D1BWP30P140HVT intadd_28_U5 ( .A(intadd_27_SUM_3_), .B(intadd_3_SUM_3_),
.CI(intadd_28_n5), .CO(intadd_28_n4), .S(intadd_12_A_3_) );
FA1D1BWP30P140HVT intadd_18_U5 ( .A(intadd_17_SUM_3_), .B(intadd_11_SUM_3_),
.CI(intadd_18_n5), .CO(intadd_18_n4), .S(intadd_12_B_3_) );
FA1D1BWP30P140HVT intadd_9_U6 ( .A(intadd_9_B_3_), .B(intadd_9_A_3_), .CI(
intadd_9_n6), .CO(intadd_9_n5), .S(intadd_5_A_3_) );
FA1D1BWP30P140HVT intadd_20_U5 ( .A(intadd_19_SUM_3_), .B(intadd_10_SUM_3_),
.CI(intadd_20_n5), .CO(intadd_20_n4), .S(intadd_5_B_3_) );
FA1D1BWP30P140HVT intadd_26_U5 ( .A(intadd_25_SUM_3_), .B(intadd_6_SUM_3_),
.CI(intadd_26_n5), .CO(intadd_26_n4), .S(intadd_8_A_3_) );
FA1D1BWP30P140HVT intadd_24_U5 ( .A(intadd_23_SUM_3_), .B(intadd_7_SUM_3_),
.CI(intadd_24_n5), .CO(intadd_24_n4), .S(intadd_8_B_3_) );
FA1D1BWP30P140HVT intadd_30_U6 ( .A(intadd_29_SUM_2_), .B(intadd_2_SUM_2_),
.CI(intadd_30_n6), .CO(intadd_30_n5), .S(intadd_14_A_2_) );
FA1D1BWP30P140HVT intadd_16_U6 ( .A(intadd_15_SUM_2_), .B(intadd_13_SUM_2_),
.CI(intadd_16_n6), .CO(intadd_16_n5), .S(intadd_14_B_2_) );
FA1D1BWP30P140HVT intadd_28_U6 ( .A(intadd_27_SUM_2_), .B(intadd_3_SUM_2_),
.CI(intadd_28_n6), .CO(intadd_28_n5), .S(intadd_12_A_2_) );
FA1D1BWP30P140HVT intadd_18_U6 ( .A(intadd_17_SUM_2_), .B(intadd_11_SUM_2_),
.CI(intadd_18_n6), .CO(intadd_18_n5), .S(intadd_12_B_2_) );
FA1D1BWP30P140HVT intadd_9_U7 ( .A(intadd_9_B_2_), .B(intadd_9_A_2_), .CI(
intadd_9_n7), .CO(intadd_9_n6), .S(intadd_5_A_2_) );
FA1D1BWP30P140HVT intadd_20_U6 ( .A(intadd_19_SUM_2_), .B(intadd_10_SUM_2_),
.CI(intadd_20_n6), .CO(intadd_20_n5), .S(intadd_5_B_2_) );
FA1D1BWP30P140HVT intadd_26_U6 ( .A(intadd_25_SUM_2_), .B(intadd_6_SUM_2_),
.CI(intadd_26_n6), .CO(intadd_26_n5), .S(intadd_8_A_2_) );
FA1D1BWP30P140HVT intadd_24_U6 ( .A(intadd_23_SUM_2_), .B(intadd_7_SUM_2_),
.CI(intadd_24_n6), .CO(intadd_24_n5), .S(intadd_8_B_2_) );
FA1D1BWP30P140HVT intadd_30_U7 ( .A(intadd_29_SUM_1_), .B(intadd_2_SUM_1_),
.CI(intadd_30_n7), .CO(intadd_30_n6), .S(intadd_14_A_1_) );
FA1D1BWP30P140HVT intadd_16_U7 ( .A(intadd_15_SUM_1_), .B(intadd_13_SUM_1_),
.CI(intadd_16_n7), .CO(intadd_16_n6), .S(intadd_14_B_1_) );
FA1D1BWP30P140HVT intadd_28_U7 ( .A(intadd_27_SUM_1_), .B(intadd_3_SUM_1_),
.CI(intadd_28_n7), .CO(intadd_28_n6), .S(intadd_12_A_1_) );
FA1D1BWP30P140HVT intadd_18_U7 ( .A(intadd_17_SUM_1_), .B(intadd_11_SUM_1_),
.CI(intadd_18_n7), .CO(intadd_18_n6), .S(intadd_12_B_1_) );
FA1D1BWP30P140HVT intadd_9_U8 ( .A(intadd_9_B_1_), .B(intadd_9_A_1_), .CI(
intadd_9_n8), .CO(intadd_9_n7), .S(intadd_5_A_1_) );
FA1D1BWP30P140HVT intadd_20_U7 ( .A(intadd_19_SUM_1_), .B(intadd_10_SUM_1_),
.CI(intadd_20_n7), .CO(intadd_20_n6), .S(intadd_5_B_1_) );
FA1D1BWP30P140HVT intadd_26_U7 ( .A(intadd_25_SUM_1_), .B(intadd_6_SUM_1_),
.CI(intadd_26_n7), .CO(intadd_26_n6), .S(intadd_8_A_1_) );
FA1D1BWP30P140HVT intadd_24_U7 ( .A(intadd_23_SUM_1_), .B(intadd_7_SUM_1_),
.CI(intadd_24_n7), .CO(intadd_24_n6), .S(intadd_8_B_1_) );
FA1D1BWP30P140HVT intadd_30_U8 ( .A(intadd_2_SUM_0_), .B(intadd_30_A_0_),
.CI(intadd_29_SUM_0_), .CO(intadd_30_n7), .S(intadd_14_B_0_) );
FA1D1BWP30P140HVT intadd_16_U8 ( .A(intadd_13_SUM_0_), .B(intadd_16_A_0_),
.CI(intadd_15_SUM_0_), .CO(intadd_16_n7), .S(intadd_14_CI) );
FA1D1BWP30P140HVT intadd_28_U8 ( .A(intadd_3_SUM_0_), .B(intadd_28_A_0_),
.CI(intadd_27_SUM_0_), .CO(intadd_28_n7), .S(intadd_12_B_0_) );
FA1D1BWP30P140HVT intadd_18_U8 ( .A(intadd_11_SUM_0_), .B(intadd_18_A_0_),
.CI(intadd_17_SUM_0_), .CO(intadd_18_n7), .S(intadd_12_CI) );
FA1D1BWP30P140HVT intadd_9_U9 ( .A(intadd_9_B_0_), .B(intadd_9_A_0_), .CI(
intadd_9_CI), .CO(intadd_9_n8), .S(intadd_5_B_0_) );
FA1D1BWP30P140HVT intadd_20_U8 ( .A(intadd_10_SUM_0_), .B(intadd_20_A_0_),
.CI(intadd_19_SUM_0_), .CO(intadd_20_n7), .S(intadd_5_CI) );
FA1D1BWP30P140HVT intadd_24_U8 ( .A(intadd_7_SUM_0_), .B(intadd_24_A_0_),
.CI(intadd_23_SUM_0_), .CO(intadd_24_n7), .S(intadd_8_CI) );
FA1D1BWP30P140HVT intadd_26_U8 ( .A(intadd_6_SUM_0_), .B(intadd_26_A_0_),
.CI(intadd_25_SUM_0_), .CO(intadd_26_n7), .S(intadd_8_B_0_) );
FA_INVERSE_CO intadd_2_U5 ( .A(sample_in[215]), .B(sample_in[223]), .CI(
intadd_2_n5), .CO(intadd_2_n4), .S(intadd_2_SUM_6_) );
FA_INVERSE_CO intadd_29_U2 ( .A(sample_in[199]), .B(sample_in[207]),
.CI(intadd_29_n2), .CO(intadd_29_n1), .S(intadd_29_SUM_6_) );
FA_INVERSE_CO intadd_13_U3 ( .A(sample_in[247]), .B(sample_in[255]),
.CI(intadd_13_n3), .CO(intadd_13_n2), .S(intadd_13_SUM_6_) );
FA_INVERSE_CO intadd_15_U2 ( .A(sample_in[231]), .B(sample_in[239]),
.CI(intadd_15_n2), .CO(intadd_15_n1), .S(intadd_15_SUM_6_) );
FA_INVERSE_CO intadd_3_U4 ( .A(sample_in[151]), .B(sample_in[159]), .CI(
intadd_3_n4), .CO(intadd_3_n3), .S(intadd_3_SUM_6_) );
FA_INVERSE_CO intadd_27_U2 ( .A(sample_in[135]), .B(sample_in[143]),
.CI(intadd_27_n2), .CO(intadd_27_n1), .S(intadd_27_SUM_6_) );
FA_INVERSE_CO intadd_11_U3 ( .A(sample_in[183]), .B(sample_in[191]),
.CI(intadd_11_n3), .CO(intadd_11_n2), .S(intadd_11_SUM_6_) );
FA_INVERSE_CO intadd_17_U2 ( .A(sample_in[167]), .B(sample_in[175]),
.CI(intadd_17_n2), .CO(intadd_17_n1), .S(intadd_17_SUM_6_) );
FA_INVERSE_CO intadd_21_U2 ( .A(sample_in[39]), .B(sample_in[47]), .CI(
intadd_21_n2), .CO(intadd_21_n1), .S(intadd_9_A_6_) );
FA_INVERSE_CO intadd_22_U2 ( .A(sample_in[55]), .B(sample_in[63]), .CI(
intadd_22_n2), .CO(intadd_22_n1), .S(intadd_9_B_6_) );
FA_INVERSE_CO intadd_10_U3 ( .A(sample_in[7]), .B(sample_in[15]), .CI(
intadd_10_n3), .CO(intadd_10_n2), .S(intadd_10_SUM_6_) );
FA_INVERSE_CO intadd_19_U2 ( .A(sample_in[23]), .B(sample_in[31]), .CI(
intadd_19_n2), .CO(intadd_19_n1), .S(intadd_19_SUM_6_) );
FA_INVERSE_CO intadd_6_U4 ( .A(sample_in[103]), .B(sample_in[111]), .CI(
intadd_6_n4), .CO(intadd_6_n3), .S(intadd_6_SUM_6_) );
FA_INVERSE_CO intadd_25_U2 ( .A(sample_in[119]), .B(sample_in[127]),
.CI(intadd_25_n2), .CO(intadd_25_n1), .S(intadd_25_SUM_6_) );
FA_INVERSE_CO intadd_7_U3 ( .A(sample_in[71]), .B(sample_in[79]), .CI(
intadd_7_n3), .CO(intadd_7_n2), .S(intadd_7_SUM_6_) );
FA_INVERSE_CO intadd_23_U2 ( .A(sample_in[87]), .B(sample_in[95]), .CI(
intadd_23_n2), .CO(intadd_23_n1), .S(intadd_23_SUM_6_) );
FA1D1BWP30P140HVT intadd_2_U6 ( .A(sample_in[214]), .B(sample_in[222]), .CI(
intadd_2_n6), .CO(intadd_2_n5), .S(intadd_2_SUM_5_) );
FA1D1BWP30P140HVT intadd_29_U3 ( .A(sample_in[198]), .B(sample_in[206]),
.CI(intadd_29_n3), .CO(intadd_29_n2), .S(intadd_29_SUM_5_) );
FA1D1BWP30P140HVT intadd_13_U4 ( .A(sample_in[246]), .B(sample_in[254]),
.CI(intadd_13_n4), .CO(intadd_13_n3), .S(intadd_13_SUM_5_) );
FA1D1BWP30P140HVT intadd_15_U3 ( .A(sample_in[230]), .B(sample_in[238]),
.CI(intadd_15_n3), .CO(intadd_15_n2), .S(intadd_15_SUM_5_) );
FA1D1BWP30P140HVT intadd_3_U5 ( .A(sample_in[150]), .B(sample_in[158]), .CI(
intadd_3_n5), .CO(intadd_3_n4), .S(intadd_3_SUM_5_) );
FA1D1BWP30P140HVT intadd_27_U3 ( .A(sample_in[134]), .B(sample_in[142]),
.CI(intadd_27_n3), .CO(intadd_27_n2), .S(intadd_27_SUM_5_) );
FA1D1BWP30P140HVT intadd_11_U4 ( .A(sample_in[182]), .B(sample_in[190]),
.CI(intadd_11_n4), .CO(intadd_11_n3), .S(intadd_11_SUM_5_) );
FA1D1BWP30P140HVT intadd_17_U3 ( .A(sample_in[166]), .B(sample_in[174]),
.CI(intadd_17_n3), .CO(intadd_17_n2), .S(intadd_17_SUM_5_) );
FA1D1BWP30P140HVT intadd_21_U3 ( .A(sample_in[38]), .B(sample_in[46]), .CI(
intadd_21_n3), .CO(intadd_21_n2), .S(intadd_9_A_5_) );
FA1D1BWP30P140HVT intadd_22_U3 ( .A(sample_in[54]), .B(sample_in[62]), .CI(
intadd_22_n3), .CO(intadd_22_n2), .S(intadd_9_B_5_) );
FA1D1BWP30P140HVT intadd_10_U4 ( .A(sample_in[6]), .B(sample_in[14]), .CI(
intadd_10_n4), .CO(intadd_10_n3), .S(intadd_10_SUM_5_) );
FA1D1BWP30P140HVT intadd_19_U3 ( .A(sample_in[22]), .B(sample_in[30]), .CI(
intadd_19_n3), .CO(intadd_19_n2), .S(intadd_19_SUM_5_) );
FA1D1BWP30P140HVT intadd_6_U5 ( .A(sample_in[102]), .B(sample_in[110]), .CI(
intadd_6_n5), .CO(intadd_6_n4), .S(intadd_6_SUM_5_) );
FA1D1BWP30P140HVT intadd_25_U3 ( .A(sample_in[118]), .B(sample_in[126]),
.CI(intadd_25_n3), .CO(intadd_25_n2), .S(intadd_25_SUM_5_) );
FA1D1BWP30P140HVT intadd_7_U4 ( .A(sample_in[70]), .B(sample_in[78]), .CI(
intadd_7_n4), .CO(intadd_7_n3), .S(intadd_7_SUM_5_) );
FA1D1BWP30P140HVT intadd_23_U3 ( .A(sample_in[86]), .B(sample_in[94]), .CI(
intadd_23_n3), .CO(intadd_23_n2), .S(intadd_23_SUM_5_) );
FA1D1BWP30P140HVT intadd_2_U7 ( .A(sample_in[213]), .B(sample_in[221]), .CI(
intadd_2_n7), .CO(intadd_2_n6), .S(intadd_2_SUM_4_) );
FA1D1BWP30P140HVT intadd_29_U4 ( .A(sample_in[197]), .B(sample_in[205]),
.CI(intadd_29_n4), .CO(intadd_29_n3), .S(intadd_29_SUM_4_) );
FA1D1BWP30P140HVT intadd_13_U5 ( .A(sample_in[245]), .B(sample_in[253]),
.CI(intadd_13_n5), .CO(intadd_13_n4), .S(intadd_13_SUM_4_) );
FA1D1BWP30P140HVT intadd_15_U4 ( .A(sample_in[229]), .B(sample_in[237]),
.CI(intadd_15_n4), .CO(intadd_15_n3), .S(intadd_15_SUM_4_) );
FA1D1BWP30P140HVT intadd_3_U6 ( .A(sample_in[149]), .B(sample_in[157]), .CI(
intadd_3_n6), .CO(intadd_3_n5), .S(intadd_3_SUM_4_) );
FA1D1BWP30P140HVT intadd_27_U4 ( .A(sample_in[133]), .B(sample_in[141]),
.CI(intadd_27_n4), .CO(intadd_27_n3), .S(intadd_27_SUM_4_) );
FA1D1BWP30P140HVT intadd_11_U5 ( .A(sample_in[181]), .B(sample_in[189]),
.CI(intadd_11_n5), .CO(intadd_11_n4), .S(intadd_11_SUM_4_) );
FA1D1BWP30P140HVT intadd_17_U4 ( .A(sample_in[165]), .B(sample_in[173]),
.CI(intadd_17_n4), .CO(intadd_17_n3), .S(intadd_17_SUM_4_) );
FA1D1BWP30P140HVT intadd_21_U4 ( .A(sample_in[37]), .B(sample_in[45]), .CI(
intadd_21_n4), .CO(intadd_21_n3), .S(intadd_9_A_4_) );
FA1D1BWP30P140HVT intadd_22_U4 ( .A(sample_in[53]), .B(sample_in[61]), .CI(
intadd_22_n4), .CO(intadd_22_n3), .S(intadd_9_B_4_) );
FA1D1BWP30P140HVT intadd_10_U5 ( .A(sample_in[5]), .B(sample_in[13]), .CI(
intadd_10_n5), .CO(intadd_10_n4), .S(intadd_10_SUM_4_) );
FA1D1BWP30P140HVT intadd_19_U4 ( .A(sample_in[21]), .B(sample_in[29]), .CI(
intadd_19_n4), .CO(intadd_19_n3), .S(intadd_19_SUM_4_) );
FA1D1BWP30P140HVT intadd_6_U6 ( .A(sample_in[101]), .B(sample_in[109]), .CI(
intadd_6_n6), .CO(intadd_6_n5), .S(intadd_6_SUM_4_) );
FA1D1BWP30P140HVT intadd_25_U4 ( .A(sample_in[117]), .B(sample_in[125]),
.CI(intadd_25_n4), .CO(intadd_25_n3), .S(intadd_25_SUM_4_) );
FA1D1BWP30P140HVT intadd_7_U5 ( .A(sample_in[69]), .B(sample_in[77]), .CI(
intadd_7_n5), .CO(intadd_7_n4), .S(intadd_7_SUM_4_) );
FA1D1BWP30P140HVT intadd_23_U4 ( .A(sample_in[85]), .B(sample_in[93]), .CI(
intadd_23_n4), .CO(intadd_23_n3), .S(intadd_23_SUM_4_) );
FA1D1BWP30P140HVT intadd_2_U8 ( .A(sample_in[212]), .B(sample_in[220]), .CI(
intadd_2_n8), .CO(intadd_2_n7), .S(intadd_2_SUM_3_) );
FA1D1BWP30P140HVT intadd_29_U5 ( .A(sample_in[196]), .B(sample_in[204]),
.CI(intadd_29_n5), .CO(intadd_29_n4), .S(intadd_29_SUM_3_) );
FA1D1BWP30P140HVT intadd_13_U6 ( .A(sample_in[244]), .B(sample_in[252]),
.CI(intadd_13_n6), .CO(intadd_13_n5), .S(intadd_13_SUM_3_) );
FA1D1BWP30P140HVT intadd_15_U5 ( .A(sample_in[228]), .B(sample_in[236]),
.CI(intadd_15_n5), .CO(intadd_15_n4), .S(intadd_15_SUM_3_) );
FA1D1BWP30P140HVT intadd_3_U7 ( .A(sample_in[148]), .B(sample_in[156]), .CI(
intadd_3_n7), .CO(intadd_3_n6), .S(intadd_3_SUM_3_) );
FA1D1BWP30P140HVT intadd_27_U5 ( .A(sample_in[132]), .B(sample_in[140]),
.CI(intadd_27_n5), .CO(intadd_27_n4), .S(intadd_27_SUM_3_) );
FA1D1BWP30P140HVT intadd_11_U6 ( .A(sample_in[180]), .B(sample_in[188]),
.CI(intadd_11_n6), .CO(intadd_11_n5), .S(intadd_11_SUM_3_) );
FA1D1BWP30P140HVT intadd_17_U5 ( .A(sample_in[164]), .B(sample_in[172]),
.CI(intadd_17_n5), .CO(intadd_17_n4), .S(intadd_17_SUM_3_) );
FA1D1BWP30P140HVT intadd_21_U5 ( .A(sample_in[36]), .B(sample_in[44]), .CI(
intadd_21_n5), .CO(intadd_21_n4), .S(intadd_9_A_3_) );
FA1D1BWP30P140HVT intadd_22_U5 ( .A(sample_in[52]), .B(sample_in[60]), .CI(
intadd_22_n5), .CO(intadd_22_n4), .S(intadd_9_B_3_) );
FA1D1BWP30P140HVT intadd_10_U6 ( .A(sample_in[4]), .B(sample_in[12]), .CI(
intadd_10_n6), .CO(intadd_10_n5), .S(intadd_10_SUM_3_) );
FA1D1BWP30P140HVT intadd_19_U5 ( .A(sample_in[20]), .B(sample_in[28]), .CI(
intadd_19_n5), .CO(intadd_19_n4), .S(intadd_19_SUM_3_) );
FA1D1BWP30P140HVT intadd_6_U7 ( .A(sample_in[100]), .B(sample_in[108]), .CI(
intadd_6_n7), .CO(intadd_6_n6), .S(intadd_6_SUM_3_) );
FA1D1BWP30P140HVT intadd_25_U5 ( .A(sample_in[116]), .B(sample_in[124]),
.CI(intadd_25_n5), .CO(intadd_25_n4), .S(intadd_25_SUM_3_) );
FA1D1BWP30P140HVT intadd_7_U6 ( .A(sample_in[68]), .B(sample_in[76]), .CI(
intadd_7_n6), .CO(intadd_7_n5), .S(intadd_7_SUM_3_) );
FA1D1BWP30P140HVT intadd_23_U5 ( .A(sample_in[84]), .B(sample_in[92]), .CI(
intadd_23_n5), .CO(intadd_23_n4), .S(intadd_23_SUM_3_) );
FA1D1BWP30P140HVT intadd_2_U9 ( .A(sample_in[211]), .B(sample_in[219]), .CI(
intadd_2_n9), .CO(intadd_2_n8), .S(intadd_2_SUM_2_) );
FA1D1BWP30P140HVT intadd_29_U6 ( .A(sample_in[195]), .B(sample_in[203]),
.CI(intadd_29_n6), .CO(intadd_29_n5), .S(intadd_29_SUM_2_) );
FA1D1BWP30P140HVT intadd_13_U7 ( .A(sample_in[243]), .B(sample_in[251]),
.CI(intadd_13_n7), .CO(intadd_13_n6), .S(intadd_13_SUM_2_) );
FA1D1BWP30P140HVT intadd_15_U6 ( .A(sample_in[227]), .B(sample_in[235]),
.CI(intadd_15_n6), .CO(intadd_15_n5), .S(intadd_15_SUM_2_) );
FA1D1BWP30P140HVT intadd_3_U8 ( .A(sample_in[147]), .B(sample_in[155]), .CI(
intadd_3_n8), .CO(intadd_3_n7), .S(intadd_3_SUM_2_) );
FA1D1BWP30P140HVT intadd_27_U6 ( .A(sample_in[131]), .B(sample_in[139]),
.CI(intadd_27_n6), .CO(intadd_27_n5), .S(intadd_27_SUM_2_) );
FA1D1BWP30P140HVT intadd_11_U7 ( .A(sample_in[179]), .B(sample_in[187]),
.CI(intadd_11_n7), .CO(intadd_11_n6), .S(intadd_11_SUM_2_) );
FA1D1BWP30P140HVT intadd_17_U6 ( .A(sample_in[163]), .B(sample_in[171]),
.CI(intadd_17_n6), .CO(intadd_17_n5), .S(intadd_17_SUM_2_) );
FA1D1BWP30P140HVT intadd_21_U6 ( .A(sample_in[35]), .B(sample_in[43]), .CI(
intadd_21_n6), .CO(intadd_21_n5), .S(intadd_9_A_2_) );
FA1D1BWP30P140HVT intadd_22_U6 ( .A(sample_in[51]), .B(sample_in[59]), .CI(
intadd_22_n6), .CO(intadd_22_n5), .S(intadd_9_B_2_) );
FA1D1BWP30P140HVT intadd_10_U7 ( .A(sample_in[3]), .B(sample_in[11]), .CI(
intadd_10_n7), .CO(intadd_10_n6), .S(intadd_10_SUM_2_) );
FA1D1BWP30P140HVT intadd_19_U6 ( .A(sample_in[19]), .B(sample_in[27]), .CI(
intadd_19_n6), .CO(intadd_19_n5), .S(intadd_19_SUM_2_) );
FA1D1BWP30P140HVT intadd_6_U8 ( .A(sample_in[99]), .B(sample_in[107]), .CI(
intadd_6_n8), .CO(intadd_6_n7), .S(intadd_6_SUM_2_) );
FA1D1BWP30P140HVT intadd_25_U6 ( .A(sample_in[115]), .B(sample_in[123]),
.CI(intadd_25_n6), .CO(intadd_25_n5), .S(intadd_25_SUM_2_) );
FA1D1BWP30P140HVT intadd_7_U7 ( .A(sample_in[67]), .B(sample_in[75]), .CI(
intadd_7_n7), .CO(intadd_7_n6), .S(intadd_7_SUM_2_) );
FA1D1BWP30P140HVT intadd_23_U6 ( .A(sample_in[83]), .B(sample_in[91]), .CI(
intadd_23_n6), .CO(intadd_23_n5), .S(intadd_23_SUM_2_) );
FA1D1BWP30P140HVT intadd_2_U10 ( .A(sample_in[210]), .B(sample_in[218]),
.CI(intadd_2_n10), .CO(intadd_2_n9), .S(intadd_2_SUM_1_) );
FA1D1BWP30P140HVT intadd_29_U7 ( .A(sample_in[194]), .B(sample_in[202]),
.CI(intadd_29_n7), .CO(intadd_29_n6), .S(intadd_29_SUM_1_) );
FA1D1BWP30P140HVT intadd_13_U8 ( .A(sample_in[242]), .B(sample_in[250]),
.CI(intadd_13_n8), .CO(intadd_13_n7), .S(intadd_13_SUM_1_) );
FA1D1BWP30P140HVT intadd_15_U7 ( .A(sample_in[226]), .B(sample_in[234]),
.CI(intadd_15_n7), .CO(intadd_15_n6), .S(intadd_15_SUM_1_) );
FA1D1BWP30P140HVT intadd_3_U9 ( .A(sample_in[146]), .B(sample_in[154]), .CI(
intadd_3_n9), .CO(intadd_3_n8), .S(intadd_3_SUM_1_) );
FA1D1BWP30P140HVT intadd_27_U7 ( .A(sample_in[130]), .B(sample_in[138]),
.CI(intadd_27_n7), .CO(intadd_27_n6), .S(intadd_27_SUM_1_) );
FA1D1BWP30P140HVT intadd_11_U8 ( .A(sample_in[178]), .B(sample_in[186]),
.CI(intadd_11_n8), .CO(intadd_11_n7), .S(intadd_11_SUM_1_) );
FA1D1BWP30P140HVT intadd_17_U7 ( .A(sample_in[162]), .B(sample_in[170]),
.CI(intadd_17_n7), .CO(intadd_17_n6), .S(intadd_17_SUM_1_) );
FA1D1BWP30P140HVT intadd_21_U7 ( .A(sample_in[34]), .B(sample_in[42]), .CI(
intadd_21_n7), .CO(intadd_21_n6), .S(intadd_9_A_1_) );
FA1D1BWP30P140HVT intadd_22_U7 ( .A(sample_in[50]), .B(sample_in[58]), .CI(
intadd_22_n7), .CO(intadd_22_n6), .S(intadd_9_B_1_) );
FA1D1BWP30P140HVT intadd_10_U8 ( .A(sample_in[2]), .B(sample_in[10]), .CI(
intadd_10_n8), .CO(intadd_10_n7), .S(intadd_10_SUM_1_) );
FA1D1BWP30P140HVT intadd_19_U7 ( .A(sample_in[18]), .B(sample_in[26]), .CI(
intadd_19_n7), .CO(intadd_19_n6), .S(intadd_19_SUM_1_) );
FA1D1BWP30P140HVT intadd_6_U9 ( .A(sample_in[98]), .B(sample_in[106]), .CI(
intadd_6_n9), .CO(intadd_6_n8), .S(intadd_6_SUM_1_) );
FA1D1BWP30P140HVT intadd_25_U7 ( .A(sample_in[114]), .B(sample_in[122]),
.CI(intadd_25_n7), .CO(intadd_25_n6), .S(intadd_25_SUM_1_) );
FA1D1BWP30P140HVT intadd_7_U8 ( .A(sample_in[66]), .B(sample_in[74]), .CI(
intadd_7_n8), .CO(intadd_7_n7), .S(intadd_7_SUM_1_) );
FA1D1BWP30P140HVT intadd_23_U7 ( .A(sample_in[82]), .B(sample_in[90]), .CI(
intadd_23_n7), .CO(intadd_23_n6), .S(intadd_23_SUM_1_) );
FA1D1BWP30P140HVT intadd_2_U11 ( .A(sample_in[209]), .B(sample_in[217]),
.CI(intadd_2_CI), .CO(intadd_2_n10), .S(intadd_2_SUM_0_) );
FA1D1BWP30P140HVT intadd_29_U8 ( .A(sample_in[193]), .B(sample_in[201]),
.CI(intadd_29_CI), .CO(intadd_29_n7), .S(intadd_29_SUM_0_) );
FA1D1BWP30P140HVT intadd_13_U9 ( .A(sample_in[241]), .B(sample_in[249]),
.CI(intadd_13_CI), .CO(intadd_13_n8), .S(intadd_13_SUM_0_) );
FA1D1BWP30P140HVT intadd_15_U8 ( .A(sample_in[225]), .B(sample_in[233]),
.CI(intadd_15_CI), .CO(intadd_15_n7), .S(intadd_15_SUM_0_) );
FA1D1BWP30P140HVT intadd_3_U10 ( .A(sample_in[145]), .B(sample_in[153]),
.CI(intadd_3_CI), .CO(intadd_3_n9), .S(intadd_3_SUM_0_) );
FA1D1BWP30P140HVT intadd_27_U8 ( .A(sample_in[129]), .B(sample_in[137]),
.CI(intadd_27_CI), .CO(intadd_27_n7), .S(intadd_27_SUM_0_) );
FA1D1BWP30P140HVT intadd_11_U9 ( .A(sample_in[177]), .B(sample_in[185]),
.CI(intadd_11_CI), .CO(intadd_11_n8), .S(intadd_11_SUM_0_) );
FA1D1BWP30P140HVT intadd_17_U8 ( .A(sample_in[161]), .B(sample_in[169]),
.CI(intadd_17_CI), .CO(intadd_17_n7), .S(intadd_17_SUM_0_) );
FA1D1BWP30P140HVT intadd_22_U8 ( .A(sample_in[49]), .B(sample_in[57]), .CI(
intadd_22_CI), .CO(intadd_22_n7), .S(intadd_9_CI) );
FA1D1BWP30P140HVT intadd_21_U8 ( .A(sample_in[33]), .B(sample_in[41]), .CI(
intadd_21_CI), .CO(intadd_21_n7), .S(intadd_9_B_0_) );
FA1D1BWP30P140HVT intadd_19_U8 ( .A(sample_in[17]), .B(sample_in[25]), .CI(
intadd_19_CI), .CO(intadd_19_n7), .S(intadd_19_SUM_0_) );
FA1D1BWP30P140HVT intadd_10_U9 ( .A(sample_in[1]), .B(sample_in[9]), .CI(
intadd_10_CI), .CO(intadd_10_n8), .S(intadd_10_SUM_0_) );
FA1D1BWP30P140HVT intadd_23_U8 ( .A(sample_in[81]), .B(sample_in[89]), .CI(
intadd_23_CI), .CO(intadd_23_n7), .S(intadd_23_SUM_0_) );
FA1D1BWP30P140HVT intadd_7_U9 ( .A(sample_in[65]), .B(sample_in[73]), .CI(
intadd_7_CI), .CO(intadd_7_n8), .S(intadd_7_SUM_0_) );
FA1D1BWP30P140HVT intadd_25_U8 ( .A(sample_in[113]), .B(sample_in[121]),
.CI(intadd_25_CI), .CO(intadd_25_n7), .S(intadd_25_SUM_0_) );
FA1D1BWP30P140HVT intadd_6_U10 ( .A(sample_in[97]), .B(sample_in[105]), .CI(
intadd_6_CI), .CO(intadd_6_n9), .S(intadd_6_SUM_0_) );
ND2D0BWP30P140HVT U324 ( .A1(sample_in[216]), .A2(sample_in[208]), .ZN(n582)
);
OAI21D0BWP30P140HVT U325 ( .A1(sample_in[216]), .A2(sample_in[208]), .B(n582), .ZN(n557) );
ND2D0BWP30P140HVT U326 ( .A1(sample_in[200]), .A2(sample_in[192]), .ZN(n583)
);
OAI21D0BWP30P140HVT U327 ( .A1(sample_in[200]), .A2(sample_in[192]), .B(n583), .ZN(n556) );
NR2D0BWP30P140HVT U328 ( .A1(n557), .A2(n556), .ZN(intadd_30_A_0_) );
ND2D0BWP30P140HVT U329 ( .A1(sample_in[248]), .A2(sample_in[240]), .ZN(n584)
);
OAI21D0BWP30P140HVT U330 ( .A1(sample_in[248]), .A2(sample_in[240]), .B(n584), .ZN(n553) );
ND2D0BWP30P140HVT U331 ( .A1(sample_in[232]), .A2(sample_in[224]), .ZN(n585)
);
OAI21D0BWP30P140HVT U332 ( .A1(sample_in[232]), .A2(sample_in[224]), .B(n585), .ZN(n552) );
NR2D0BWP30P140HVT U333 ( .A1(n553), .A2(n552), .ZN(intadd_16_A_0_) );
AO21D0BWP30P140HVT U334 ( .A1(n553), .A2(n552), .B(intadd_16_A_0_), .Z(n558)
);
AOI211D0BWP30P140HVT U335 ( .A1(n557), .A2(n556), .B(intadd_30_A_0_), .C(
n558), .ZN(intadd_14_A_0_) );
ND2D0BWP30P140HVT U336 ( .A1(sample_in[152]), .A2(sample_in[144]), .ZN(n586)
);
OAI21D0BWP30P140HVT U337 ( .A1(sample_in[152]), .A2(sample_in[144]), .B(n586), .ZN(n561) );
ND2D0BWP30P140HVT U338 ( .A1(sample_in[136]), .A2(sample_in[128]), .ZN(n587)
);
OAI21D0BWP30P140HVT U339 ( .A1(sample_in[136]), .A2(sample_in[128]), .B(n587), .ZN(n560) );
NR2D0BWP30P140HVT U340 ( .A1(n561), .A2(n560), .ZN(intadd_28_A_0_) );
ND2D0BWP30P140HVT U341 ( .A1(sample_in[184]), .A2(sample_in[176]), .ZN(n588)
);
OAI21D0BWP30P140HVT U342 ( .A1(sample_in[184]), .A2(sample_in[176]), .B(n588), .ZN(n555) );
ND2D0BWP30P140HVT U343 ( .A1(sample_in[168]), .A2(sample_in[160]), .ZN(n589)
);
OAI21D0BWP30P140HVT U344 ( .A1(sample_in[168]), .A2(sample_in[160]), .B(n589), .ZN(n554) );
NR2D0BWP30P140HVT U345 ( .A1(n555), .A2(n554), .ZN(intadd_18_A_0_) );
AO21D0BWP30P140HVT U346 ( .A1(n555), .A2(n554), .B(intadd_18_A_0_), .Z(n562)
);
AOI211D0BWP30P140HVT U347 ( .A1(n561), .A2(n560), .B(intadd_28_A_0_), .C(
n562), .ZN(intadd_12_A_0_) );
AO21D0BWP30P140HVT U348 ( .A1(n557), .A2(n556), .B(intadd_30_A_0_), .Z(n559)
);
AO21D0BWP30P140HVT U349 ( .A1(n559), .A2(n558), .B(intadd_14_A_0_), .Z(n579)
);
AO21D0BWP30P140HVT U350 ( .A1(n561), .A2(n560), .B(intadd_28_A_0_), .Z(n563)
);
AO21D0BWP30P140HVT U351 ( .A1(n563), .A2(n562), .B(intadd_12_A_0_), .Z(n578)
);
NR2D0BWP30P140HVT U352 ( .A1(n579), .A2(n578), .ZN(intadd_4_A_0_) );
ND2D0BWP30P140HVT U353 ( .A1(sample_in[24]), .A2(sample_in[16]), .ZN(n595)
);
OAI21D0BWP30P140HVT U354 ( .A1(sample_in[24]), .A2(sample_in[16]), .B(n595),
.ZN(n569) );
ND2D0BWP30P140HVT U355 ( .A1(sample_in[8]), .A2(sample_in[0]), .ZN(n594) );
OAI21D0BWP30P140HVT U356 ( .A1(sample_in[8]), .A2(sample_in[0]), .B(n594),
.ZN(n568) );
NR2D0BWP30P140HVT U357 ( .A1(n569), .A2(n568), .ZN(intadd_20_A_0_) );
ND2D0BWP30P140HVT U358 ( .A1(sample_in[56]), .A2(sample_in[48]), .ZN(n596)
);
OAI21D0BWP30P140HVT U359 ( .A1(sample_in[56]), .A2(sample_in[48]), .B(n596),
.ZN(n565) );
ND2D0BWP30P140HVT U360 ( .A1(sample_in[40]), .A2(sample_in[32]), .ZN(n597)
);
OAI21D0BWP30P140HVT U361 ( .A1(sample_in[40]), .A2(sample_in[32]), .B(n597),
.ZN(n564) );
NR2D0BWP30P140HVT U362 ( .A1(n565), .A2(n564), .ZN(intadd_9_A_0_) );
AO21D0BWP30P140HVT U363 ( .A1(n565), .A2(n564), .B(intadd_9_A_0_), .Z(n570)
);
AOI211D0BWP30P140HVT U364 ( .A1(n569), .A2(n568), .B(intadd_20_A_0_), .C(
n570), .ZN(intadd_5_A_0_) );
ND2D0BWP30P140HVT U365 ( .A1(sample_in[88]), .A2(sample_in[80]), .ZN(n593)
);
OAI21D0BWP30P140HVT U366 ( .A1(sample_in[88]), .A2(sample_in[80]), .B(n593),
.ZN(n573) );
ND2D0BWP30P140HVT U367 ( .A1(sample_in[72]), .A2(sample_in[64]), .ZN(n592)
);
OAI21D0BWP30P140HVT U368 ( .A1(sample_in[72]), .A2(sample_in[64]), .B(n592),
.ZN(n572) );
NR2D0BWP30P140HVT U369 ( .A1(n573), .A2(n572), .ZN(intadd_24_A_0_) );
ND2D0BWP30P140HVT U370 ( .A1(sample_in[120]), .A2(sample_in[112]), .ZN(n591)
);
OAI21D0BWP30P140HVT U371 ( .A1(sample_in[120]), .A2(sample_in[112]), .B(n591), .ZN(n567) );
ND2D0BWP30P140HVT U372 ( .A1(sample_in[104]), .A2(sample_in[96]), .ZN(n590)
);
OAI21D0BWP30P140HVT U373 ( .A1(sample_in[104]), .A2(sample_in[96]), .B(n590),
.ZN(n566) );
NR2D0BWP30P140HVT U374 ( .A1(n567), .A2(n566), .ZN(intadd_26_A_0_) );
AO21D0BWP30P140HVT U375 ( .A1(n567), .A2(n566), .B(intadd_26_A_0_), .Z(n574)
);
AOI211D0BWP30P140HVT U376 ( .A1(n573), .A2(n572), .B(intadd_24_A_0_), .C(
n574), .ZN(intadd_8_A_0_) );
AO21D0BWP30P140HVT U377 ( .A1(n569), .A2(n568), .B(intadd_20_A_0_), .Z(n571)
);
AO21D0BWP30P140HVT U378 ( .A1(n571), .A2(n570), .B(intadd_5_A_0_), .Z(n577)
);
AO21D0BWP30P140HVT U379 ( .A1(n573), .A2(n572), .B(intadd_24_A_0_), .Z(n575)
);
AO21D0BWP30P140HVT U380 ( .A1(n575), .A2(n574), .B(intadd_8_A_0_), .Z(n576)
);
NR2D0BWP30P140HVT U381 ( .A1(n577), .A2(n576), .ZN(intadd_1_A_0_) );
AO21D0BWP30P140HVT U382 ( .A1(n577), .A2(n576), .B(intadd_1_A_0_), .Z(n580)
);
AOI211D0BWP30P140HVT U383 ( .A1(n579), .A2(n578), .B(intadd_4_A_0_), .C(n580), .ZN(intadd_0_A_0_) );
AO21D0BWP30P140HVT U384 ( .A1(n579), .A2(n578), .B(intadd_4_A_0_), .Z(n581)
);
AOI21D0BWP30P140HVT U385 ( .A1(n581), .A2(n580), .B(intadd_0_A_0_), .ZN(
edge_nd_1280) );
INVD0BWP30P140HVT U386 ( .I(n582), .ZN(intadd_2_CI) );
INVD0BWP30P140HVT U387 ( .I(n583), .ZN(intadd_29_CI) );
INVD0BWP30P140HVT U388 ( .I(n584), .ZN(intadd_13_CI) );
INVD0BWP30P140HVT U389 ( .I(n585), .ZN(intadd_15_CI) );
INVD0BWP30P140HVT U390 ( .I(n586), .ZN(intadd_3_CI) );
INVD0BWP30P140HVT U391 ( .I(n587), .ZN(intadd_27_CI) );
INVD0BWP30P140HVT U392 ( .I(n588), .ZN(intadd_11_CI) );
INVD0BWP30P140HVT U393 ( .I(n589), .ZN(intadd_17_CI) );
INVD0BWP30P140HVT U394 ( .I(n590), .ZN(intadd_6_CI) );
INVD0BWP30P140HVT U395 ( .I(n591), .ZN(intadd_25_CI) );
INVD0BWP30P140HVT U396 ( .I(n592), .ZN(intadd_7_CI) );
INVD0BWP30P140HVT U397 ( .I(n593), .ZN(intadd_23_CI) );
INVD0BWP30P140HVT U398 ( .I(n594), .ZN(intadd_10_CI) );
INVD0BWP30P140HVT U399 ( .I(n595), .ZN(intadd_19_CI) );
INVD0BWP30P140HVT U400 ( .I(n596), .ZN(intadd_22_CI) );
INVD0BWP30P140HVT U401 ( .I(n597), .ZN(intadd_21_CI) );
endmodule

