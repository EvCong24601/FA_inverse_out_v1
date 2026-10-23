/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Mon Jun 26 11:19:26 2023
/////////////////////////////////////////////////////////////


module e3_w8_fixed_adder_tree ( clk, rst_n, a, psum );
input [63:0] a;
output [10:0] psum;
input clk, rst_n;
wire   edge_nd_201, edge_nd_200, edge_nd_199, edge_nd_198, edge_nd_197,
edge_nd_196, edge_nd_195, edge_nd_194, edge_nd_193, edge_nd_192,
intadd_94_A_8_, intadd_94_A_7_, intadd_94_A_6_, intadd_94_A_5_,
intadd_94_A_4_, intadd_94_A_3_, intadd_94_A_2_, intadd_94_A_1_,
intadd_94_A_0_, intadd_94_B_7_, intadd_94_B_6_, intadd_94_B_5_,
intadd_94_B_4_, intadd_94_B_3_, intadd_94_B_2_, intadd_94_B_1_,
intadd_94_B_0_, intadd_94_CI, intadd_94_n10, intadd_94_n9,
intadd_94_n8, intadd_94_n7, intadd_94_n6, intadd_94_n5, intadd_94_n4,
intadd_94_n3, intadd_94_n2, intadd_94_n1, intadd_95_A_7_,
intadd_95_A_6_, intadd_95_A_5_, intadd_95_A_4_, intadd_95_A_3_,
intadd_95_A_2_, intadd_95_B_7_, intadd_95_B_6_, intadd_95_B_5_,
intadd_95_B_4_, intadd_95_B_3_, intadd_95_B_2_, intadd_95_B_1_,
intadd_95_SUM_6_, intadd_95_SUM_5_, intadd_95_SUM_4_,
intadd_95_SUM_3_, intadd_95_SUM_2_, intadd_95_SUM_1_,
intadd_95_SUM_0_, intadd_95_n8, intadd_95_n7, intadd_95_n6,
intadd_95_n5, intadd_95_n4, intadd_95_n3, intadd_95_n2, intadd_95_n1,
intadd_96_A_2_, intadd_96_B_7_, intadd_96_B_6_, intadd_96_B_5_,
intadd_96_B_4_, intadd_96_B_3_, intadd_96_B_2_, intadd_96_B_1_,
intadd_96_n8, intadd_96_n7, intadd_96_n6, intadd_96_n5, intadd_96_n4,
intadd_96_n3, intadd_96_n2, intadd_96_n1, intadd_97_A_2_,
intadd_97_B_2_, intadd_97_SUM_1_, intadd_97_SUM_0_, intadd_97_n3,
intadd_97_n2, intadd_97_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;
wire   [63:0] sample_in;

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
DFCNQD1BWP30P140HVT sample_in_reg_0_ ( .D(a[0]), .CP(clk), .CDN(rst_n), .Q(
sample_in[0]) );
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
DFCNQD1BWP30P140HVT psum_reg_10_ ( .D(intadd_94_n1), .CP(clk), .CDN(rst_n),
.Q(psum[10]) );
DFCNQD1BWP30P140HVT psum_reg_9_ ( .D(edge_nd_201), .CP(clk), .CDN(rst_n),
.Q(psum[9]) );
DFCNQD1BWP30P140HVT psum_reg_8_ ( .D(edge_nd_200), .CP(clk), .CDN(rst_n),
.Q(psum[8]) );
DFCNQD1BWP30P140HVT psum_reg_7_ ( .D(edge_nd_199), .CP(clk), .CDN(rst_n),
.Q(psum[7]) );
DFCNQD1BWP30P140HVT psum_reg_6_ ( .D(edge_nd_198), .CP(clk), .CDN(rst_n),
.Q(psum[6]) );
DFCNQD1BWP30P140HVT psum_reg_5_ ( .D(edge_nd_197), .CP(clk), .CDN(rst_n),
.Q(psum[5]) );
DFCNQD1BWP30P140HVT psum_reg_4_ ( .D(edge_nd_196), .CP(clk), .CDN(rst_n),
.Q(psum[4]) );
DFCNQD1BWP30P140HVT psum_reg_3_ ( .D(edge_nd_195), .CP(clk), .CDN(rst_n),
.Q(psum[3]) );
DFCNQD1BWP30P140HVT psum_reg_2_ ( .D(edge_nd_194), .CP(clk), .CDN(rst_n),
.Q(psum[2]) );
DFCNQD1BWP30P140HVT psum_reg_1_ ( .D(edge_nd_193), .CP(clk), .CDN(rst_n),
.Q(psum[1]) );
DFCNQD1BWP30P140HVT psum_reg_0_ ( .D(edge_nd_192), .CP(clk), .CDN(rst_n),
.Q(psum[0]) );
FA1D0BWP30P140HVT intadd_97_U4 ( .A(sample_in[54]), .B(sample_in[62]), .CI(
sample_in[38]), .CO(intadd_97_n3), .S(intadd_97_SUM_0_) );
FA1D0BWP30P140HVT intadd_97_U3 ( .A(sample_in[7]), .B(sample_in[23]), .CI(
intadd_97_n3), .CO(intadd_97_n2), .S(intadd_97_SUM_1_) );
FA1D0BWP30P140HVT intadd_97_U2 ( .A(intadd_97_A_2_), .B(intadd_97_B_2_),
.CI(intadd_97_n2), .CO(intadd_97_n1), .S(intadd_95_A_7_) );
FA1D0BWP30P140HVT intadd_95_U9 ( .A(sample_in[33]), .B(sample_in[49]), .CI(
sample_in[17]), .CO(intadd_95_n8), .S(intadd_95_SUM_0_) );
FA1D0BWP30P140HVT intadd_95_U8 ( .A(sample_in[2]), .B(intadd_95_B_1_), .CI(
intadd_95_n8), .CO(intadd_95_n7), .S(intadd_95_SUM_1_) );
FA1D0BWP30P140HVT intadd_95_U7 ( .A(intadd_95_A_2_), .B(intadd_95_B_2_),
.CI(intadd_95_n7), .CO(intadd_95_n6), .S(intadd_95_SUM_2_) );
FA1D0BWP30P140HVT intadd_95_U6 ( .A(intadd_95_A_3_), .B(intadd_95_B_3_),
.CI(intadd_95_n6), .CO(intadd_95_n5), .S(intadd_95_SUM_3_) );
FA1D0BWP30P140HVT intadd_95_U5 ( .A(intadd_95_A_4_), .B(intadd_95_B_4_),
.CI(intadd_95_n5), .CO(intadd_95_n4), .S(intadd_95_SUM_4_) );
FA1D0BWP30P140HVT intadd_95_U4 ( .A(intadd_95_A_5_), .B(intadd_95_B_5_),
.CI(intadd_95_n4), .CO(intadd_95_n3), .S(intadd_95_SUM_5_) );
FA1D0BWP30P140HVT intadd_95_U3 ( .A(intadd_95_A_6_), .B(intadd_95_B_6_),
.CI(intadd_95_n3), .CO(intadd_95_n2), .S(intadd_95_SUM_6_) );
FA1D0BWP30P140HVT intadd_95_U2 ( .A(intadd_95_A_7_), .B(intadd_95_B_7_),
.CI(intadd_95_n2), .CO(intadd_95_n1), .S(intadd_94_A_8_) );
FA1D0BWP30P140HVT intadd_96_U9 ( .A(sample_in[16]), .B(sample_in[32]), .CI(
sample_in[0]), .CO(intadd_96_n8), .S(intadd_94_CI) );
FA1D0BWP30P140HVT intadd_96_U8 ( .A(sample_in[1]), .B(intadd_96_B_1_), .CI(
intadd_96_n8), .CO(intadd_96_n7), .S(intadd_94_B_1_) );
FA1D0BWP30P140HVT intadd_96_U7 ( .A(intadd_96_A_2_), .B(intadd_96_B_2_),
.CI(intadd_96_n7), .CO(intadd_96_n6), .S(intadd_94_B_2_) );
FA1D0BWP30P140HVT intadd_96_U6 ( .A(intadd_95_SUM_2_), .B(intadd_96_B_3_),
.CI(intadd_96_n6), .CO(intadd_96_n5), .S(intadd_94_A_3_) );
FA1D0BWP30P140HVT intadd_96_U5 ( .A(intadd_95_SUM_3_), .B(intadd_96_B_4_),
.CI(intadd_96_n5), .CO(intadd_96_n4), .S(intadd_94_A_4_) );
FA1D0BWP30P140HVT intadd_96_U4 ( .A(intadd_95_SUM_4_), .B(intadd_96_B_5_),
.CI(intadd_96_n4), .CO(intadd_96_n3), .S(intadd_94_A_5_) );
FA1D0BWP30P140HVT intadd_96_U3 ( .A(intadd_95_SUM_5_), .B(intadd_96_B_6_),
.CI(intadd_96_n3), .CO(intadd_96_n2), .S(intadd_94_A_6_) );
FA1D0BWP30P140HVT intadd_96_U2 ( .A(intadd_95_SUM_6_), .B(intadd_96_B_7_),
.CI(intadd_96_n2), .CO(intadd_96_n1), .S(intadd_94_A_7_) );
FA1D0BWP30P140HVT intadd_94_U11 ( .A(intadd_94_B_0_), .B(intadd_94_CI), .CI(
intadd_94_A_0_), .CO(intadd_94_n10), .S(edge_nd_192) );
FA1D0BWP30P140HVT intadd_94_U10 ( .A(intadd_94_A_1_), .B(intadd_94_B_1_),
.CI(intadd_94_n10), .CO(intadd_94_n9), .S(edge_nd_193) );
FA1D0BWP30P140HVT intadd_94_U9 ( .A(intadd_94_A_2_), .B(intadd_94_B_2_),
.CI(intadd_94_n9), .CO(intadd_94_n8), .S(edge_nd_194) );
FA1D0BWP30P140HVT intadd_94_U8 ( .A(intadd_94_A_3_), .B(intadd_94_B_3_),
.CI(intadd_94_n8), .CO(intadd_94_n7), .S(edge_nd_195) );
FA1D0BWP30P140HVT intadd_94_U7 ( .A(intadd_94_A_4_), .B(intadd_94_B_4_),
.CI(intadd_94_n7), .CO(intadd_94_n6), .S(edge_nd_196) );
FA1D0BWP30P140HVT intadd_94_U6 ( .A(intadd_94_A_5_), .B(intadd_94_B_5_),
.CI(intadd_94_n6), .CO(intadd_94_n5), .S(edge_nd_197) );
FA1D0BWP30P140HVT intadd_94_U5 ( .A(intadd_94_A_6_), .B(intadd_94_B_6_),
.CI(intadd_94_n5), .CO(intadd_94_n4), .S(edge_nd_198) );
FA1D0BWP30P140HVT intadd_94_U4 ( .A(intadd_94_A_7_), .B(intadd_94_B_7_),
.CI(intadd_94_n4), .CO(intadd_94_n3), .S(edge_nd_199) );
FA1D0BWP30P140HVT intadd_94_U3 ( .A(intadd_94_A_8_), .B(intadd_96_n1), .CI(
intadd_94_n3), .CO(intadd_94_n2), .S(edge_nd_200) );
FA1D0BWP30P140HVT intadd_94_U2 ( .A(intadd_97_n1), .B(intadd_95_n1), .CI(
intadd_94_n2), .CO(intadd_94_n1), .S(edge_nd_201) );
AOI21D0P7BWP30P140HVT U4 ( .A1(n3), .A2(n2), .B(n12), .ZN(intadd_96_B_2_) );
ND3D0P7BWP30P140HVT U5 ( .A1(sample_in[8]), .A2(sample_in[24]), .A3(
sample_in[9]), .ZN(n3) );
NR2D0BWP30P140HVT U6 ( .A1(n2), .A2(n3), .ZN(n12) );
OA21D0BWP30P140HVT U7 ( .A1(n4), .A2(sample_in[9]), .B(n3), .Z(n7) );
IAO21D0BWP30P140HVT U8 ( .A1(sample_in[8]), .A2(sample_in[24]), .B(n4), .ZN(
intadd_94_B_0_) );
AN2D0BWP30P140HVT U9 ( .A1(sample_in[8]), .A2(sample_in[24]), .Z(n4) );
FA1D0BWP30P140HVT U10 ( .A(sample_in[48]), .B(sample_in[56]), .CI(
sample_in[40]), .CO(intadd_96_B_1_), .S(intadd_94_A_0_) );
INVD0BWP30P140HVT U11 ( .I(sample_in[10]), .ZN(n2) );
FA1D0BWP30P140HVT U12 ( .A(intadd_95_SUM_1_), .B(n6), .CI(n5), .CO(
intadd_96_B_3_), .S(intadd_94_A_2_) );
FA1D0BWP30P140HVT U13 ( .A(n8), .B(n7), .CI(intadd_95_SUM_0_), .CO(n6), .S(
intadd_94_A_1_) );
FA1D0BWP30P140HVT U14 ( .A(n11), .B(n10), .CI(n9), .CO(intadd_96_B_4_), .S(
intadd_94_B_3_) );
FA1D0BWP30P140HVT U15 ( .A(sample_in[27]), .B(sample_in[11]), .CI(n12), .CO(
n21), .S(n10) );
FA1D0BWP30P140HVT U16 ( .A(n15), .B(n14), .CI(n13), .CO(intadd_96_B_5_), .S(
intadd_94_B_4_) );
FA1D0BWP30P140HVT U17 ( .A(sample_in[36]), .B(sample_in[52]), .CI(
sample_in[60]), .CO(n22), .S(n14) );
FA1D0BWP30P140HVT U18 ( .A(n18), .B(n17), .CI(n16), .CO(intadd_96_B_6_), .S(
intadd_94_B_5_) );
FA1D0BWP30P140HVT U19 ( .A(sample_in[37]), .B(sample_in[53]), .CI(
sample_in[61]), .CO(n23), .S(n17) );
FA1D0BWP30P140HVT U20 ( .A(n20), .B(intadd_97_SUM_0_), .CI(n19), .CO(
intadd_96_B_7_), .S(intadd_94_B_6_) );
FA1D0BWP30P140HVT U21 ( .A(sample_in[57]), .B(sample_in[41]), .CI(
sample_in[25]), .CO(intadd_95_B_1_), .S(n8) );
FA1D0BWP30P140HVT U22 ( .A(sample_in[58]), .B(sample_in[42]), .CI(
sample_in[26]), .CO(intadd_95_B_2_), .S(n5) );
FA1D0BWP30P140HVT U23 ( .A(sample_in[18]), .B(sample_in[34]), .CI(
sample_in[50]), .CO(intadd_95_A_2_), .S(intadd_96_A_2_) );
FA1D0BWP30P140HVT U24 ( .A(sample_in[51]), .B(sample_in[59]), .CI(
sample_in[43]), .CO(intadd_95_B_3_), .S(n11) );
FA1D0BWP30P140HVT U25 ( .A(sample_in[3]), .B(sample_in[19]), .CI(
sample_in[35]), .CO(intadd_95_A_3_), .S(n9) );
FA1D0BWP30P140HVT U26 ( .A(sample_in[4]), .B(sample_in[20]), .CI(n21), .CO(
intadd_95_B_4_), .S(n15) );
FA1D0BWP30P140HVT U27 ( .A(sample_in[44]), .B(sample_in[28]), .CI(
sample_in[12]), .CO(intadd_95_A_4_), .S(n13) );
FA1D0BWP30P140HVT U28 ( .A(sample_in[5]), .B(sample_in[21]), .CI(n22), .CO(
intadd_95_B_5_), .S(n18) );
FA1D0BWP30P140HVT U29 ( .A(sample_in[45]), .B(sample_in[29]), .CI(
sample_in[13]), .CO(intadd_95_A_5_), .S(n16) );
FA1D0BWP30P140HVT U30 ( .A(sample_in[6]), .B(sample_in[22]), .CI(n23), .CO(
intadd_95_B_6_), .S(n20) );
FA1D0BWP30P140HVT U31 ( .A(sample_in[46]), .B(sample_in[30]), .CI(
sample_in[14]), .CO(intadd_95_A_6_), .S(n19) );
FA1D0BWP30P140HVT U32 ( .A(intadd_97_SUM_1_), .B(n25), .CI(n24), .CO(
intadd_95_B_7_), .S(intadd_94_B_7_) );
FA1D0BWP30P140HVT U33 ( .A(sample_in[47]), .B(sample_in[31]), .CI(
sample_in[15]), .CO(intadd_97_B_2_), .S(n24) );
FA1D0BWP30P140HVT U34 ( .A(sample_in[39]), .B(sample_in[55]), .CI(
sample_in[63]), .CO(intadd_97_A_2_), .S(n25) );
endmodule

