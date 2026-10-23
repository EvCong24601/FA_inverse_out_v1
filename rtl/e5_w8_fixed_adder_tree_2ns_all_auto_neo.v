/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Wed Oct 18 13:56:22 2023
/////////////////////////////////////////////////////////////


module e5_w8_fixed_adder_tree ( clk, rst_n, a, psum );
input [255:0] a;
output [12:0] psum;
input clk, rst_n;
wire intadd_52_U2_intadd_38_U2,intadd_42_U4_intadd_42_U3,intadd_42_U3_intadd_42_U2,intadd_42_U3_intadd_38_U4,intadd_49_U3_intadd_49_U2,intadd_43_U5_intadd_43_U4,intadd_43_U4_intadd_40_U4,intadd_43_U3_intadd_36_U4,intadd_43_U2_intadd_33_U4,intadd_38_U7_intadd_38_U6,intadd_38_U4_intadd_38_U3,intadd_38_U3_intadd_33_U3,intadd_40_U4_intadd_40_U3,intadd_44_U3_intadd_44_U2,intadd_44_U2_intadd_39_U2,intadd_55_U4_intadd_55_U3,intadd_55_U3_intadd_39_U5,intadd_36_U6_intadd_36_U5,intadd_36_U4_intadd_36_U3,intadd_33_U7_intadd_33_U6,intadd_33_U6_intadd_31_U5,intadd_33_U3_intadd_33_U2,intadd_33_U2_intadd_30_U2,intadd_54_U4_intadd_54_U3,intadd_54_U3_intadd_31_U8,intadd_37_U7_intadd_37_U6,intadd_37_U4_intadd_37_U3,intadd_37_U3_intadd_32_U3,intadd_37_U2_intadd_31_U2,intadd_37_U2_intadd_32_U2,intadd_39_U5_intadd_39_U4,intadd_45_U3_intadd_45_U2,intadd_45_U2_intadd_30_U7,intadd_48_U4_intadd_48_U3,intadd_48_U3_intadd_30_U11,intadd_46_U4_intadd_46_U3,intadd_31_U8_intadd_31_U7,intadd_31_U5_intadd_31_U4,intadd_31_U4_intadd_30_U6,intadd_31_U2_intadd_30_U3,intadd_58_U4_intadd_58_U3,intadd_32_U9_intadd_32_U8,intadd_32_U5_intadd_32_U4,intadd_32_U4_intadd_35_U2,intadd_47_U3_intadd_47_U2,intadd_30_U11_intadd_30_U10,intadd_56_U3_intadd_56_U2,intadd_56_U2_intadd_51_U3,intadd_35_U8_intadd_35_U7,intadd_35_U8_intadd_41_U6,intadd_35_U7_intadd_51_U4,intadd_35_U3_intadd_57_U2,intadd_57_U3_intadd_34_U5,intadd_57_U2_intadd_34_U3,intadd_51_U4_intadd_34_U8,intadd_51_U3_intadd_51_U2,intadd_51_U3_intadd_34_U7,intadd_34_U9_psum_reg_0_,intadd_34_U7_psum_reg_2_,intadd_34_U5_psum_reg_4_,intadd_34_U5_intadd_34_U4,intadd_34_U4_psum_reg_5_,intadd_34_U3_intadd_34_U2,intadd_34_U2_intadd_30_U5,intadd_30_U5_intadd_30_U4,intadd_30_U3_psum_reg_10_,U16_intadd_35_U8,U38_intadd_35_U3,U39_intadd_35_U4,U51_intadd_32_U5,U58_intadd_45_U3,U76_intadd_37_U4,U88_intadd_36_U6,U95_U96,U96_intadd_53_U;
wire   edge_nd_1291, edge_nd_1290, edge_nd_1289, edge_nd_1288, edge_nd_1287,
edge_nd_1286, edge_nd_1285, edge_nd_1284, edge_nd_1283, edge_nd_1282,
edge_nd_1281, edge_nd_1280, intadd_30_A_10_, intadd_30_A_7_,
intadd_30_A_6_, intadd_30_A_5_, intadd_30_A_4_, intadd_30_A_3_,
intadd_30_A_2_, intadd_30_A_1_, intadd_30_B_9_, intadd_30_B_8_,
intadd_30_B_7_, intadd_30_B_6_, intadd_30_B_4_, intadd_30_B_3_,
intadd_30_B_2_, intadd_30_B_1_, intadd_30_SUM_7_, intadd_30_SUM_6_,
intadd_30_SUM_5_, intadd_30_SUM_4_, intadd_30_SUM_3_,
intadd_30_SUM_2_, intadd_30_SUM_1_, intadd_30_SUM_0_, intadd_30_n12,
intadd_30_n11, intadd_30_n10, intadd_30_n9, intadd_30_n8,
intadd_30_n7, intadd_30_n6, intadd_30_n5, intadd_30_n4, intadd_30_n3,
intadd_30_n2, intadd_30_n1, intadd_31_A_8_, intadd_31_A_7_,
intadd_31_A_6_, intadd_31_A_5_, intadd_31_A_4_, intadd_31_A_3_,
intadd_31_A_2_, intadd_31_A_1_, intadd_31_B_5_, intadd_31_B_3_,
intadd_31_B_2_, intadd_31_B_1_, intadd_31_SUM_7_, intadd_31_SUM_3_,
intadd_31_SUM_2_, intadd_31_SUM_1_, intadd_31_SUM_0_, intadd_31_n9,
intadd_31_n8, intadd_31_n7, intadd_31_n6, intadd_31_n5, intadd_31_n4,
intadd_31_n3, intadd_31_n2, intadd_31_n1, intadd_32_A_7_,
intadd_32_A_6_, intadd_32_A_5_, intadd_32_A_4_, intadd_32_A_3_,
intadd_32_A_2_, intadd_32_A_1_, intadd_32_B_8_, intadd_32_B_7_,
intadd_32_B_6_, intadd_32_B_5_, intadd_32_B_4_, intadd_32_B_2_,
intadd_32_B_1_, intadd_32_SUM_6_, intadd_32_SUM_5_, intadd_32_SUM_4_,
intadd_32_SUM_3_, intadd_32_SUM_2_, intadd_32_SUM_1_,
intadd_32_SUM_0_, intadd_32_n9, intadd_32_n8, intadd_32_n7,
intadd_32_n6, intadd_32_n5, intadd_32_n4, intadd_32_n3, intadd_32_n2,
intadd_32_n1, intadd_33_A_7_, intadd_33_A_6_, intadd_33_A_5_,
intadd_33_A_4_, intadd_33_A_3_, intadd_33_A_2_, intadd_33_A_1_,
intadd_33_B_6_, intadd_33_B_5_, intadd_33_B_4_, intadd_33_B_3_,
intadd_33_B_2_, intadd_33_B_1_, intadd_33_SUM_0_, intadd_33_n8,
intadd_33_n7, intadd_33_n6, intadd_33_n5, intadd_33_n4, intadd_33_n3,
intadd_33_n2, intadd_33_n1, intadd_34_A_6_, intadd_34_A_4_,
intadd_34_A_3_, intadd_34_A_2_, intadd_34_A_1_, intadd_34_A_0_,
intadd_34_B_5_, intadd_34_B_4_, intadd_34_B_3_, intadd_34_B_2_,
intadd_34_B_1_, intadd_34_B_0_, intadd_34_CI, intadd_34_n8,
intadd_34_n7, intadd_34_n6, intadd_34_n5, intadd_34_n4, intadd_34_n3,
intadd_34_n2, intadd_34_n1, intadd_35_A_4_, intadd_35_A_3_,
intadd_35_A_2_, intadd_35_A_1_, intadd_35_A_0_, intadd_35_B_5_,
intadd_35_B_1_, intadd_35_B_0_, intadd_35_CI, intadd_35_SUM_5_,
intadd_35_SUM_4_, intadd_35_SUM_3_, intadd_35_SUM_2_,
intadd_35_SUM_1_, intadd_35_SUM_0_, intadd_35_n7, intadd_35_n6,
intadd_35_n5, intadd_35_n4, intadd_35_n3, intadd_35_n2, intadd_35_n1,
intadd_36_A_6_, intadd_36_A_5_, intadd_36_A_4_, intadd_36_A_3_,
intadd_36_A_2_, intadd_36_A_1_, intadd_36_B_4_, intadd_36_B_2_,
intadd_36_B_1_, intadd_36_SUM_5_, intadd_36_SUM_4_, intadd_36_SUM_3_,
intadd_36_SUM_2_, intadd_36_SUM_1_, intadd_36_SUM_0_, intadd_36_n7,
intadd_36_n6, intadd_36_n5, intadd_36_n4, intadd_36_n3, intadd_36_n2,
intadd_36_n1, intadd_37_A_6_, intadd_37_A_5_, intadd_37_A_4_,
intadd_37_A_3_, intadd_37_A_2_, intadd_37_A_1_, intadd_37_B_5_,
intadd_37_B_4_, intadd_37_B_2_, intadd_37_B_1_, intadd_37_SUM_3_,
intadd_37_SUM_2_, intadd_37_n7, intadd_37_n6, intadd_37_n5,
intadd_37_n4, intadd_37_n3, intadd_37_n2, intadd_37_n1,
intadd_38_A_5_, intadd_38_A_4_, intadd_38_A_3_, intadd_38_A_2_,
intadd_38_A_1_, intadd_38_B_3_, intadd_38_B_2_, intadd_38_B_1_,
intadd_38_SUM_0_, intadd_38_n7, intadd_38_n6, intadd_38_n5,
intadd_38_n4, intadd_38_n3, intadd_38_n2, intadd_38_n1,
intadd_39_A_5_, intadd_39_A_4_, intadd_39_A_3_, intadd_39_A_2_,
intadd_39_A_1_, intadd_39_B_4_, intadd_39_B_3_, intadd_39_B_2_,
intadd_39_B_1_, intadd_39_SUM_3_, intadd_39_SUM_0_, intadd_39_n6,
intadd_39_n5, intadd_39_n4, intadd_39_n3, intadd_39_n2, intadd_39_n1,
intadd_40_A_4_, intadd_40_A_3_, intadd_40_A_2_, intadd_40_A_1_,
intadd_40_B_4_, intadd_40_B_3_, intadd_40_B_2_, intadd_40_B_1_,
intadd_40_SUM_0_, intadd_40_n5, intadd_40_n4, intadd_40_n3,
intadd_40_n2, intadd_40_n1, intadd_41_A_3_, intadd_41_A_2_,
intadd_41_A_1_, intadd_41_A_0_, intadd_41_B_3_, intadd_41_B_1_,
intadd_41_n5, intadd_41_n4, intadd_41_n3, intadd_41_n2, intadd_41_n1,
intadd_42_A_3_, intadd_42_A_2_, intadd_42_A_1_, intadd_42_B_2_,
intadd_42_B_1_, intadd_42_n4, intadd_42_n3, intadd_42_n2,
intadd_42_n1, intadd_43_A_3_, intadd_43_A_2_, intadd_43_B_2_,
intadd_43_SUM_0_, intadd_43_n4, intadd_43_n3, intadd_43_n2,
intadd_43_n1, intadd_44_A_3_, intadd_44_A_2_, intadd_44_B_3_,
intadd_44_B_2_, intadd_44_B_1_, intadd_44_SUM_1_, intadd_44_n4,
intadd_44_n3, intadd_44_n2, intadd_44_n1, intadd_45_A_2_,
intadd_45_A_1_, intadd_45_B_3_, intadd_45_B_1_, intadd_45_B_0_,
intadd_45_CI, intadd_45_SUM_0_, intadd_45_n4, intadd_45_n3,
intadd_45_n2, intadd_45_n1, intadd_46_A_1_, intadd_46_B_2_,
intadd_46_B_1_, intadd_46_SUM_3_, intadd_46_SUM_2_, intadd_46_SUM_1_,
intadd_46_SUM_0_, intadd_46_n4, intadd_46_n3, intadd_46_n2,
intadd_46_n1, intadd_47_B_2_, intadd_47_B_1_, intadd_47_B_0_,
intadd_47_CI, intadd_47_SUM_3_, intadd_47_n4, intadd_47_n3,
intadd_47_n2, intadd_47_n1, intadd_48_A_2_, intadd_48_A_1_,
intadd_48_B_2_, intadd_48_B_1_, intadd_48_SUM_2_, intadd_48_n3,
intadd_48_n2, intadd_48_n1, intadd_49_A_2_, intadd_49_A_1_,
intadd_49_B_2_, intadd_49_B_1_, intadd_49_SUM_0_, intadd_49_n3,
intadd_49_n2, intadd_49_n1, intadd_50_A_2_, intadd_50_A_1_,
intadd_50_B_2_, intadd_50_B_1_, intadd_50_SUM_0_, intadd_50_n3,
intadd_50_n2, intadd_50_n1, intadd_51_A_1_, intadd_51_A_0_,
intadd_51_B_2_, intadd_51_B_1_, intadd_51_CI, intadd_51_n3,
intadd_51_n2, intadd_51_n1, intadd_52_A_2_, intadd_52_A_1_,
intadd_52_B_2_, intadd_52_B_1_, intadd_52_SUM_1_, intadd_52_n3,
intadd_52_n2, intadd_52_n1, intadd_53_A_2_, intadd_53_A_1_,
intadd_53_B_2_, intadd_53_B_1_, intadd_53_SUM_1_, intadd_53_SUM_0_,
intadd_53_n3, intadd_53_n2, intadd_53_n1, intadd_54_A_1_,
intadd_54_B_2_, intadd_54_B_1_, intadd_54_SUM_2_, intadd_54_SUM_0_,
intadd_54_n3, intadd_54_n2, intadd_54_n1, intadd_55_A_2_,
intadd_55_A_1_, intadd_55_B_2_, intadd_55_B_1_, intadd_55_SUM_2_,
intadd_55_n3, intadd_55_n2, intadd_55_n1, intadd_56_A_2_,
intadd_56_A_0_, intadd_56_B_2_, intadd_56_B_1_, intadd_56_B_0_,
intadd_56_n3, intadd_56_n2, intadd_56_n1, intadd_57_CI, intadd_57_n3,
intadd_57_n2, intadd_57_n1, intadd_58_A_1_, intadd_58_B_2_,
intadd_58_B_1_, intadd_58_n3, intadd_58_n2, intadd_58_n1, n2, n3, n4,
n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88;
wire   [255:0] sample_in;

DFCNQD1BWP30P140HVT sample_in_reg_7_ ( .D(a[7]), .CP(clk), .CDN(rst_n), .Q(sample_in[7]) );
DFCNQD1BWP30P140HVT sample_in_reg_6_ ( .D(a[6]), .CP(clk), .CDN(rst_n), .Q(sample_in[6]) );
DFCNQD1BWP30P140HVT sample_in_reg_5_ ( .D(a[5]), .CP(clk), .CDN(rst_n), .Q(sample_in[5]) );
DFCNQD1BWP30P140HVT sample_in_reg_4_ ( .D(a[4]), .CP(clk), .CDN(rst_n), .Q(sample_in[4]) );
DFCNQD1BWP30P140HVT sample_in_reg_3_ ( .D(a[3]), .CP(clk), .CDN(rst_n), .Q(sample_in[3]) );
DFCNQD1BWP30P140HVT sample_in_reg_2_ ( .D(a[2]), .CP(clk), .CDN(rst_n), .Q(sample_in[2]) );
DFCNQD1BWP30P140HVT sample_in_reg_1_ ( .D(a[1]), .CP(clk), .CDN(rst_n), .Q(sample_in[1]) );
DFCNQD1BWP30P140HVT sample_in_reg_0_ ( .D(a[0]), .CP(clk), .CDN(rst_n), .Q(sample_in[0]) );
DFCNQD1BWP30P140HVT sample_in_reg_15_ ( .D(a[15]), .CP(clk), .CDN(rst_n),.Q(sample_in[15]) );
DFCNQD1BWP30P140HVT sample_in_reg_14_ ( .D(a[14]), .CP(clk), .CDN(rst_n),.Q(sample_in[14]) );
DFCNQD1BWP30P140HVT sample_in_reg_13_ ( .D(a[13]), .CP(clk), .CDN(rst_n),.Q(sample_in[13]) );
DFCNQD1BWP30P140HVT sample_in_reg_12_ ( .D(a[12]), .CP(clk), .CDN(rst_n),.Q(sample_in[12]) );
DFCNQD1BWP30P140HVT sample_in_reg_11_ ( .D(a[11]), .CP(clk), .CDN(rst_n),.Q(sample_in[11]) );
DFCNQD1BWP30P140HVT sample_in_reg_10_ ( .D(a[10]), .CP(clk), .CDN(rst_n),.Q(sample_in[10]) );
DFCNQD1BWP30P140HVT sample_in_reg_9_ ( .D(a[9]), .CP(clk), .CDN(rst_n), .Q(sample_in[9]) );
DFCNQD1BWP30P140HVT sample_in_reg_8_ ( .D(a[8]), .CP(clk), .CDN(rst_n), .Q(sample_in[8]) );
DFCNQD1BWP30P140HVT sample_in_reg_23_ ( .D(a[23]), .CP(clk), .CDN(rst_n),.Q(sample_in[23]) );
DFCNQD1BWP30P140HVT sample_in_reg_22_ ( .D(a[22]), .CP(clk), .CDN(rst_n),.Q(sample_in[22]) );
DFCNQD1BWP30P140HVT sample_in_reg_21_ ( .D(a[21]), .CP(clk), .CDN(rst_n),.Q(sample_in[21]) );
DFCNQD1BWP30P140HVT sample_in_reg_20_ ( .D(a[20]), .CP(clk), .CDN(rst_n),.Q(sample_in[20]) );
DFCNQD1BWP30P140HVT sample_in_reg_19_ ( .D(a[19]), .CP(clk), .CDN(rst_n),.Q(sample_in[19]) );
DFCNQD1BWP30P140HVT sample_in_reg_18_ ( .D(a[18]), .CP(clk), .CDN(rst_n),.Q(sample_in[18]) );
DFCNQD1BWP30P140HVT sample_in_reg_17_ ( .D(a[17]), .CP(clk), .CDN(rst_n),.Q(sample_in[17]) );
DFCNQD1BWP30P140HVT sample_in_reg_16_ ( .D(a[16]), .CP(clk), .CDN(rst_n),.Q(sample_in[16]) );
DFCNQD1BWP30P140HVT sample_in_reg_31_ ( .D(a[31]), .CP(clk), .CDN(rst_n),.Q(sample_in[31]) );
DFCNQD1BWP30P140HVT sample_in_reg_30_ ( .D(a[30]), .CP(clk), .CDN(rst_n),.Q(sample_in[30]) );
DFCNQD1BWP30P140HVT sample_in_reg_29_ ( .D(a[29]), .CP(clk), .CDN(rst_n),.Q(sample_in[29]) );
DFCNQD1BWP30P140HVT sample_in_reg_28_ ( .D(a[28]), .CP(clk), .CDN(rst_n),.Q(sample_in[28]) );
DFCNQD1BWP30P140HVT sample_in_reg_27_ ( .D(a[27]), .CP(clk), .CDN(rst_n),.Q(sample_in[27]) );
DFCNQD1BWP30P140HVT sample_in_reg_26_ ( .D(a[26]), .CP(clk), .CDN(rst_n),.Q(sample_in[26]) );
DFCNQD1BWP30P140HVT sample_in_reg_25_ ( .D(a[25]), .CP(clk), .CDN(rst_n),.Q(sample_in[25]) );
DFCNQD1BWP30P140HVT sample_in_reg_24_ ( .D(a[24]), .CP(clk), .CDN(rst_n),.Q(sample_in[24]) );
DFCNQD1BWP30P140HVT sample_in_reg_39_ ( .D(a[39]), .CP(clk), .CDN(rst_n),.Q(sample_in[39]) );
DFCNQD1BWP30P140HVT sample_in_reg_38_ ( .D(a[38]), .CP(clk), .CDN(rst_n),.Q(sample_in[38]) );
DFCNQD1BWP30P140HVT sample_in_reg_37_ ( .D(a[37]), .CP(clk), .CDN(rst_n),.Q(sample_in[37]) );
DFCNQD1BWP30P140HVT sample_in_reg_36_ ( .D(a[36]), .CP(clk), .CDN(rst_n),.Q(sample_in[36]) );
DFCNQD1BWP30P140HVT sample_in_reg_35_ ( .D(a[35]), .CP(clk), .CDN(rst_n),.Q(sample_in[35]) );
DFCNQD1BWP30P140HVT sample_in_reg_34_ ( .D(a[34]), .CP(clk), .CDN(rst_n),.Q(sample_in[34]) );
DFCNQD1BWP30P140HVT sample_in_reg_33_ ( .D(a[33]), .CP(clk), .CDN(rst_n),.Q(sample_in[33]) );
DFCNQD1BWP30P140HVT sample_in_reg_32_ ( .D(a[32]), .CP(clk), .CDN(rst_n),.Q(sample_in[32]) );
DFCNQD1BWP30P140HVT sample_in_reg_47_ ( .D(a[47]), .CP(clk), .CDN(rst_n),.Q(sample_in[47]) );
DFCNQD1BWP30P140HVT sample_in_reg_46_ ( .D(a[46]), .CP(clk), .CDN(rst_n),.Q(sample_in[46]) );
DFCNQD1BWP30P140HVT sample_in_reg_45_ ( .D(a[45]), .CP(clk), .CDN(rst_n),.Q(sample_in[45]) );
DFCNQD1BWP30P140HVT sample_in_reg_44_ ( .D(a[44]), .CP(clk), .CDN(rst_n),.Q(sample_in[44]) );
DFCNQD1BWP30P140HVT sample_in_reg_43_ ( .D(a[43]), .CP(clk), .CDN(rst_n),.Q(sample_in[43]) );
DFCNQD1BWP30P140HVT sample_in_reg_42_ ( .D(a[42]), .CP(clk), .CDN(rst_n),.Q(sample_in[42]) );
DFCNQD1BWP30P140HVT sample_in_reg_41_ ( .D(a[41]), .CP(clk), .CDN(rst_n),.Q(sample_in[41]) );
DFCNQD1BWP30P140HVT sample_in_reg_40_ ( .D(a[40]), .CP(clk), .CDN(rst_n),.Q(sample_in[40]) );
DFCNQD1BWP30P140HVT sample_in_reg_55_ ( .D(a[55]), .CP(clk), .CDN(rst_n),.Q(sample_in[55]) );
DFCNQD1BWP30P140HVT sample_in_reg_54_ ( .D(a[54]), .CP(clk), .CDN(rst_n),.Q(sample_in[54]) );
DFCNQD1BWP30P140HVT sample_in_reg_53_ ( .D(a[53]), .CP(clk), .CDN(rst_n),.Q(sample_in[53]) );
DFCNQD1BWP30P140HVT sample_in_reg_52_ ( .D(a[52]), .CP(clk), .CDN(rst_n),.Q(sample_in[52]) );
DFCNQD1BWP30P140HVT sample_in_reg_51_ ( .D(a[51]), .CP(clk), .CDN(rst_n),.Q(sample_in[51]) );
DFCNQD1BWP30P140HVT sample_in_reg_50_ ( .D(a[50]), .CP(clk), .CDN(rst_n),.Q(sample_in[50]) );
DFCNQD1BWP30P140HVT sample_in_reg_49_ ( .D(a[49]), .CP(clk), .CDN(rst_n),.Q(sample_in[49]) );
DFCNQD1BWP30P140HVT sample_in_reg_48_ ( .D(a[48]), .CP(clk), .CDN(rst_n),.Q(sample_in[48]) );
DFCNQD1BWP30P140HVT sample_in_reg_63_ ( .D(a[63]), .CP(clk), .CDN(rst_n),.Q(sample_in[63]) );
DFCNQD1BWP30P140HVT sample_in_reg_62_ ( .D(a[62]), .CP(clk), .CDN(rst_n),.Q(sample_in[62]) );
DFCNQD1BWP30P140HVT sample_in_reg_61_ ( .D(a[61]), .CP(clk), .CDN(rst_n),.Q(sample_in[61]) );
DFCNQD1BWP30P140HVT sample_in_reg_60_ ( .D(a[60]), .CP(clk), .CDN(rst_n),.Q(sample_in[60]) );
DFCNQD1BWP30P140HVT sample_in_reg_59_ ( .D(a[59]), .CP(clk), .CDN(rst_n),.Q(sample_in[59]) );
DFCNQD1BWP30P140HVT sample_in_reg_58_ ( .D(a[58]), .CP(clk), .CDN(rst_n),.Q(sample_in[58]) );
DFCNQD1BWP30P140HVT sample_in_reg_57_ ( .D(a[57]), .CP(clk), .CDN(rst_n),.Q(sample_in[57]) );
DFCNQD1BWP30P140HVT sample_in_reg_56_ ( .D(a[56]), .CP(clk), .CDN(rst_n),.Q(sample_in[56]) );
DFCNQD1BWP30P140HVT sample_in_reg_71_ ( .D(a[71]), .CP(clk), .CDN(rst_n),.Q(sample_in[71]) );
DFCNQD1BWP30P140HVT sample_in_reg_70_ ( .D(a[70]), .CP(clk), .CDN(rst_n),.Q(sample_in[70]) );
DFCNQD1BWP30P140HVT sample_in_reg_69_ ( .D(a[69]), .CP(clk), .CDN(rst_n),.Q(sample_in[69]) );
DFCNQD1BWP30P140HVT sample_in_reg_68_ ( .D(a[68]), .CP(clk), .CDN(rst_n),.Q(sample_in[68]) );
DFCNQD1BWP30P140HVT sample_in_reg_67_ ( .D(a[67]), .CP(clk), .CDN(rst_n),.Q(sample_in[67]) );
DFCNQD1BWP30P140HVT sample_in_reg_66_ ( .D(a[66]), .CP(clk), .CDN(rst_n),.Q(sample_in[66]) );
DFCNQD1BWP30P140HVT sample_in_reg_65_ ( .D(a[65]), .CP(clk), .CDN(rst_n),.Q(sample_in[65]) );
DFCNQD1BWP30P140HVT sample_in_reg_64_ ( .D(a[64]), .CP(clk), .CDN(rst_n),.Q(sample_in[64]) );
DFCNQD1BWP30P140HVT sample_in_reg_79_ ( .D(a[79]), .CP(clk), .CDN(rst_n),.Q(sample_in[79]) );
DFCNQD1BWP30P140HVT sample_in_reg_78_ ( .D(a[78]), .CP(clk), .CDN(rst_n),.Q(sample_in[78]) );
DFCNQD1BWP30P140HVT sample_in_reg_77_ ( .D(a[77]), .CP(clk), .CDN(rst_n),.Q(sample_in[77]) );
DFCNQD1BWP30P140HVT sample_in_reg_76_ ( .D(a[76]), .CP(clk), .CDN(rst_n),.Q(sample_in[76]) );
DFCNQD1BWP30P140HVT sample_in_reg_75_ ( .D(a[75]), .CP(clk), .CDN(rst_n),.Q(sample_in[75]) );
DFCNQD1BWP30P140HVT sample_in_reg_74_ ( .D(a[74]), .CP(clk), .CDN(rst_n),.Q(sample_in[74]) );
DFCNQD1BWP30P140HVT sample_in_reg_73_ ( .D(a[73]), .CP(clk), .CDN(rst_n),.Q(sample_in[73]) );
DFCNQD1BWP30P140HVT sample_in_reg_72_ ( .D(a[72]), .CP(clk), .CDN(rst_n),.Q(sample_in[72]) );
DFCNQD1BWP30P140HVT sample_in_reg_87_ ( .D(a[87]), .CP(clk), .CDN(rst_n),.Q(sample_in[87]) );
DFCNQD1BWP30P140HVT sample_in_reg_86_ ( .D(a[86]), .CP(clk), .CDN(rst_n),.Q(sample_in[86]) );
DFCNQD1BWP30P140HVT sample_in_reg_85_ ( .D(a[85]), .CP(clk), .CDN(rst_n),.Q(sample_in[85]) );
DFCNQD1BWP30P140HVT sample_in_reg_84_ ( .D(a[84]), .CP(clk), .CDN(rst_n),.Q(sample_in[84]) );
DFCNQD1BWP30P140HVT sample_in_reg_83_ ( .D(a[83]), .CP(clk), .CDN(rst_n),.Q(sample_in[83]) );
DFCNQD1BWP30P140HVT sample_in_reg_82_ ( .D(a[82]), .CP(clk), .CDN(rst_n),.Q(sample_in[82]) );
DFCNQD1BWP30P140HVT sample_in_reg_81_ ( .D(a[81]), .CP(clk), .CDN(rst_n),.Q(sample_in[81]) );
DFCNQD1BWP30P140HVT sample_in_reg_80_ ( .D(a[80]), .CP(clk), .CDN(rst_n),.Q(sample_in[80]) );
DFCNQD1BWP30P140HVT sample_in_reg_95_ ( .D(a[95]), .CP(clk), .CDN(rst_n),.Q(sample_in[95]) );
DFCNQD1BWP30P140HVT sample_in_reg_94_ ( .D(a[94]), .CP(clk), .CDN(rst_n),.Q(sample_in[94]) );
DFCNQD1BWP30P140HVT sample_in_reg_93_ ( .D(a[93]), .CP(clk), .CDN(rst_n),.Q(sample_in[93]) );
DFCNQD1BWP30P140HVT sample_in_reg_92_ ( .D(a[92]), .CP(clk), .CDN(rst_n),.Q(sample_in[92]) );
DFCNQD1BWP30P140HVT sample_in_reg_91_ ( .D(a[91]), .CP(clk), .CDN(rst_n),.Q(sample_in[91]) );
DFCNQD1BWP30P140HVT sample_in_reg_90_ ( .D(a[90]), .CP(clk), .CDN(rst_n),.Q(sample_in[90]) );
DFCNQD1BWP30P140HVT sample_in_reg_89_ ( .D(a[89]), .CP(clk), .CDN(rst_n),.Q(sample_in[89]) );
DFCNQD1BWP30P140HVT sample_in_reg_88_ ( .D(a[88]), .CP(clk), .CDN(rst_n),.Q(sample_in[88]) );
DFCNQD1BWP30P140HVT sample_in_reg_103_ ( .D(a[103]), .CP(clk), .CDN(rst_n),.Q(sample_in[103]) );
DFCNQD1BWP30P140HVT sample_in_reg_102_ ( .D(a[102]), .CP(clk), .CDN(rst_n),.Q(sample_in[102]) );
DFCNQD1BWP30P140HVT sample_in_reg_101_ ( .D(a[101]), .CP(clk), .CDN(rst_n),.Q(sample_in[101]) );
DFCNQD1BWP30P140HVT sample_in_reg_100_ ( .D(a[100]), .CP(clk), .CDN(rst_n),.Q(sample_in[100]) );
DFCNQD1BWP30P140HVT sample_in_reg_99_ ( .D(a[99]), .CP(clk), .CDN(rst_n),.Q(sample_in[99]) );
DFCNQD1BWP30P140HVT sample_in_reg_98_ ( .D(a[98]), .CP(clk), .CDN(rst_n),.Q(sample_in[98]) );
DFCNQD1BWP30P140HVT sample_in_reg_97_ ( .D(a[97]), .CP(clk), .CDN(rst_n),.Q(sample_in[97]) );
DFCNQD1BWP30P140HVT sample_in_reg_96_ ( .D(a[96]), .CP(clk), .CDN(rst_n),.Q(sample_in[96]) );
DFCNQD1BWP30P140HVT sample_in_reg_111_ ( .D(a[111]), .CP(clk), .CDN(rst_n),.Q(sample_in[111]) );
DFCNQD1BWP30P140HVT sample_in_reg_110_ ( .D(a[110]), .CP(clk), .CDN(rst_n),.Q(sample_in[110]) );
DFCNQD1BWP30P140HVT sample_in_reg_109_ ( .D(a[109]), .CP(clk), .CDN(rst_n),.Q(sample_in[109]) );
DFCNQD1BWP30P140HVT sample_in_reg_108_ ( .D(a[108]), .CP(clk), .CDN(rst_n),.Q(sample_in[108]) );
DFCNQD1BWP30P140HVT sample_in_reg_107_ ( .D(a[107]), .CP(clk), .CDN(rst_n),.Q(sample_in[107]) );
DFCNQD1BWP30P140HVT sample_in_reg_106_ ( .D(a[106]), .CP(clk), .CDN(rst_n),.Q(sample_in[106]) );
DFCNQD1BWP30P140HVT sample_in_reg_105_ ( .D(a[105]), .CP(clk), .CDN(rst_n),.Q(sample_in[105]) );
DFCNQD1BWP30P140HVT sample_in_reg_104_ ( .D(a[104]), .CP(clk), .CDN(rst_n),.Q(sample_in[104]) );
DFCNQD1BWP30P140HVT sample_in_reg_119_ ( .D(a[119]), .CP(clk), .CDN(rst_n),.Q(sample_in[119]) );
DFCNQD1BWP30P140HVT sample_in_reg_118_ ( .D(a[118]), .CP(clk), .CDN(rst_n),.Q(sample_in[118]) );
DFCNQD1BWP30P140HVT sample_in_reg_117_ ( .D(a[117]), .CP(clk), .CDN(rst_n),.Q(sample_in[117]) );
DFCNQD1BWP30P140HVT sample_in_reg_116_ ( .D(a[116]), .CP(clk), .CDN(rst_n),.Q(sample_in[116]) );
DFCNQD1BWP30P140HVT sample_in_reg_115_ ( .D(a[115]), .CP(clk), .CDN(rst_n),.Q(sample_in[115]) );
DFCNQD1BWP30P140HVT sample_in_reg_114_ ( .D(a[114]), .CP(clk), .CDN(rst_n),.Q(sample_in[114]) );
DFCNQD1BWP30P140HVT sample_in_reg_113_ ( .D(a[113]), .CP(clk), .CDN(rst_n),.Q(sample_in[113]) );
DFCNQD1BWP30P140HVT sample_in_reg_112_ ( .D(a[112]), .CP(clk), .CDN(rst_n),.Q(sample_in[112]) );
DFCNQD1BWP30P140HVT sample_in_reg_127_ ( .D(a[127]), .CP(clk), .CDN(rst_n),.Q(sample_in[127]) );
DFCNQD1BWP30P140HVT sample_in_reg_126_ ( .D(a[126]), .CP(clk), .CDN(rst_n),.Q(sample_in[126]) );
DFCNQD1BWP30P140HVT sample_in_reg_125_ ( .D(a[125]), .CP(clk), .CDN(rst_n),.Q(sample_in[125]) );
DFCNQD1BWP30P140HVT sample_in_reg_124_ ( .D(a[124]), .CP(clk), .CDN(rst_n),.Q(sample_in[124]) );
DFCNQD1BWP30P140HVT sample_in_reg_123_ ( .D(a[123]), .CP(clk), .CDN(rst_n),.Q(sample_in[123]) );
DFCNQD1BWP30P140HVT sample_in_reg_122_ ( .D(a[122]), .CP(clk), .CDN(rst_n),.Q(sample_in[122]) );
DFCNQD1BWP30P140HVT sample_in_reg_121_ ( .D(a[121]), .CP(clk), .CDN(rst_n),.Q(sample_in[121]) );
DFCNQD1BWP30P140HVT sample_in_reg_120_ ( .D(a[120]), .CP(clk), .CDN(rst_n),.Q(sample_in[120]) );
DFCNQD1BWP30P140HVT sample_in_reg_135_ ( .D(a[135]), .CP(clk), .CDN(rst_n),.Q(sample_in[135]) );
DFCNQD1BWP30P140HVT sample_in_reg_134_ ( .D(a[134]), .CP(clk), .CDN(rst_n),.Q(sample_in[134]) );
DFCNQD1BWP30P140HVT sample_in_reg_133_ ( .D(a[133]), .CP(clk), .CDN(rst_n),.Q(sample_in[133]) );
DFCNQD1BWP30P140HVT sample_in_reg_132_ ( .D(a[132]), .CP(clk), .CDN(rst_n),.Q(sample_in[132]) );
DFCNQD1BWP30P140HVT sample_in_reg_131_ ( .D(a[131]), .CP(clk), .CDN(rst_n),.Q(sample_in[131]) );
DFCNQD1BWP30P140HVT sample_in_reg_130_ ( .D(a[130]), .CP(clk), .CDN(rst_n),.Q(sample_in[130]) );
DFCNQD1BWP30P140HVT sample_in_reg_129_ ( .D(a[129]), .CP(clk), .CDN(rst_n),.Q(sample_in[129]) );
DFCNQD1BWP30P140HVT sample_in_reg_128_ ( .D(a[128]), .CP(clk), .CDN(rst_n),.Q(sample_in[128]) );
DFCNQD1BWP30P140HVT sample_in_reg_143_ ( .D(a[143]), .CP(clk), .CDN(rst_n),.Q(sample_in[143]) );
DFCNQD1BWP30P140HVT sample_in_reg_142_ ( .D(a[142]), .CP(clk), .CDN(rst_n),.Q(sample_in[142]) );
DFCNQD1BWP30P140HVT sample_in_reg_141_ ( .D(a[141]), .CP(clk), .CDN(rst_n),.Q(sample_in[141]) );
DFCNQD1BWP30P140HVT sample_in_reg_140_ ( .D(a[140]), .CP(clk), .CDN(rst_n),.Q(sample_in[140]) );
DFCNQD1BWP30P140HVT sample_in_reg_139_ ( .D(a[139]), .CP(clk), .CDN(rst_n),.Q(sample_in[139]) );
DFCNQD1BWP30P140HVT sample_in_reg_138_ ( .D(a[138]), .CP(clk), .CDN(rst_n),.Q(sample_in[138]) );
DFCNQD1BWP30P140HVT sample_in_reg_137_ ( .D(a[137]), .CP(clk), .CDN(rst_n),.Q(sample_in[137]) );
DFCNQD1BWP30P140HVT sample_in_reg_136_ ( .D(a[136]), .CP(clk), .CDN(rst_n),.Q(sample_in[136]) );
DFCNQD1BWP30P140HVT sample_in_reg_151_ ( .D(a[151]), .CP(clk), .CDN(rst_n),.Q(sample_in[151]) );
DFCNQD1BWP30P140HVT sample_in_reg_150_ ( .D(a[150]), .CP(clk), .CDN(rst_n),.Q(sample_in[150]) );
DFCNQD1BWP30P140HVT sample_in_reg_149_ ( .D(a[149]), .CP(clk), .CDN(rst_n),.Q(sample_in[149]) );
DFCNQD1BWP30P140HVT sample_in_reg_148_ ( .D(a[148]), .CP(clk), .CDN(rst_n),.Q(sample_in[148]) );
DFCNQD1BWP30P140HVT sample_in_reg_147_ ( .D(a[147]), .CP(clk), .CDN(rst_n),.Q(sample_in[147]) );
DFCNQD1BWP30P140HVT sample_in_reg_146_ ( .D(a[146]), .CP(clk), .CDN(rst_n),.Q(sample_in[146]) );
DFCNQD1BWP30P140HVT sample_in_reg_145_ ( .D(a[145]), .CP(clk), .CDN(rst_n),.Q(sample_in[145]) );
DFCNQD1BWP30P140HVT sample_in_reg_144_ ( .D(a[144]), .CP(clk), .CDN(rst_n),.Q(sample_in[144]) );
DFCNQD1BWP30P140HVT sample_in_reg_159_ ( .D(a[159]), .CP(clk), .CDN(rst_n),.Q(sample_in[159]) );
DFCNQD1BWP30P140HVT sample_in_reg_158_ ( .D(a[158]), .CP(clk), .CDN(rst_n),.Q(sample_in[158]) );
DFCNQD1BWP30P140HVT sample_in_reg_157_ ( .D(a[157]), .CP(clk), .CDN(rst_n),.Q(sample_in[157]) );
DFCNQD1BWP30P140HVT sample_in_reg_156_ ( .D(a[156]), .CP(clk), .CDN(rst_n),.Q(sample_in[156]) );
DFCNQD1BWP30P140HVT sample_in_reg_155_ ( .D(a[155]), .CP(clk), .CDN(rst_n),.Q(sample_in[155]) );
DFCNQD1BWP30P140HVT sample_in_reg_154_ ( .D(a[154]), .CP(clk), .CDN(rst_n),.Q(sample_in[154]) );
DFCNQD1BWP30P140HVT sample_in_reg_153_ ( .D(a[153]), .CP(clk), .CDN(rst_n),.Q(sample_in[153]) );
DFCNQD1BWP30P140HVT sample_in_reg_152_ ( .D(a[152]), .CP(clk), .CDN(rst_n),.Q(sample_in[152]) );
DFCNQD1BWP30P140HVT sample_in_reg_167_ ( .D(a[167]), .CP(clk), .CDN(rst_n),.Q(sample_in[167]) );
DFCNQD1BWP30P140HVT sample_in_reg_166_ ( .D(a[166]), .CP(clk), .CDN(rst_n),.Q(sample_in[166]) );
DFCNQD1BWP30P140HVT sample_in_reg_165_ ( .D(a[165]), .CP(clk), .CDN(rst_n),.Q(sample_in[165]) );
DFCNQD1BWP30P140HVT sample_in_reg_164_ ( .D(a[164]), .CP(clk), .CDN(rst_n),.Q(sample_in[164]) );
DFCNQD1BWP30P140HVT sample_in_reg_163_ ( .D(a[163]), .CP(clk), .CDN(rst_n),.Q(sample_in[163]) );
DFCNQD1BWP30P140HVT sample_in_reg_162_ ( .D(a[162]), .CP(clk), .CDN(rst_n),.Q(sample_in[162]) );
DFCNQD1BWP30P140HVT sample_in_reg_161_ ( .D(a[161]), .CP(clk), .CDN(rst_n),.Q(sample_in[161]) );
DFCNQD1BWP30P140HVT sample_in_reg_160_ ( .D(a[160]), .CP(clk), .CDN(rst_n),.Q(sample_in[160]) );
DFCNQD1BWP30P140HVT sample_in_reg_175_ ( .D(a[175]), .CP(clk), .CDN(rst_n),.Q(sample_in[175]) );
DFCNQD1BWP30P140HVT sample_in_reg_174_ ( .D(a[174]), .CP(clk), .CDN(rst_n),.Q(sample_in[174]) );
DFCNQD1BWP30P140HVT sample_in_reg_173_ ( .D(a[173]), .CP(clk), .CDN(rst_n),.Q(sample_in[173]) );
DFCNQD1BWP30P140HVT sample_in_reg_172_ ( .D(a[172]), .CP(clk), .CDN(rst_n),.Q(sample_in[172]) );
DFCNQD1BWP30P140HVT sample_in_reg_171_ ( .D(a[171]), .CP(clk), .CDN(rst_n),.Q(sample_in[171]) );
DFCNQD1BWP30P140HVT sample_in_reg_170_ ( .D(a[170]), .CP(clk), .CDN(rst_n),.Q(sample_in[170]) );
DFCNQD1BWP30P140HVT sample_in_reg_169_ ( .D(a[169]), .CP(clk), .CDN(rst_n),.Q(sample_in[169]) );
DFCNQD1BWP30P140HVT sample_in_reg_168_ ( .D(a[168]), .CP(clk), .CDN(rst_n),.Q(sample_in[168]) );
DFCNQD1BWP30P140HVT sample_in_reg_183_ ( .D(a[183]), .CP(clk), .CDN(rst_n),.Q(sample_in[183]) );
DFCNQD1BWP30P140HVT sample_in_reg_182_ ( .D(a[182]), .CP(clk), .CDN(rst_n),.Q(sample_in[182]) );
DFCNQD1BWP30P140HVT sample_in_reg_181_ ( .D(a[181]), .CP(clk), .CDN(rst_n),.Q(sample_in[181]) );
DFCNQD1BWP30P140HVT sample_in_reg_180_ ( .D(a[180]), .CP(clk), .CDN(rst_n),.Q(sample_in[180]) );
DFCNQD1BWP30P140HVT sample_in_reg_179_ ( .D(a[179]), .CP(clk), .CDN(rst_n),.Q(sample_in[179]) );
DFCNQD1BWP30P140HVT sample_in_reg_178_ ( .D(a[178]), .CP(clk), .CDN(rst_n),.Q(sample_in[178]) );
DFCNQD1BWP30P140HVT sample_in_reg_177_ ( .D(a[177]), .CP(clk), .CDN(rst_n),.Q(sample_in[177]) );
DFCNQD1BWP30P140HVT sample_in_reg_176_ ( .D(a[176]), .CP(clk), .CDN(rst_n),.Q(sample_in[176]) );
DFCNQD1BWP30P140HVT sample_in_reg_191_ ( .D(a[191]), .CP(clk), .CDN(rst_n),.Q(sample_in[191]) );
DFCNQD1BWP30P140HVT sample_in_reg_190_ ( .D(a[190]), .CP(clk), .CDN(rst_n),.Q(sample_in[190]) );
DFCNQD1BWP30P140HVT sample_in_reg_189_ ( .D(a[189]), .CP(clk), .CDN(rst_n),.Q(sample_in[189]) );
DFCNQD1BWP30P140HVT sample_in_reg_188_ ( .D(a[188]), .CP(clk), .CDN(rst_n),.Q(sample_in[188]) );
DFCNQD1BWP30P140HVT sample_in_reg_187_ ( .D(a[187]), .CP(clk), .CDN(rst_n),.Q(sample_in[187]) );
DFCNQD1BWP30P140HVT sample_in_reg_186_ ( .D(a[186]), .CP(clk), .CDN(rst_n),.Q(sample_in[186]) );
DFCNQD1BWP30P140HVT sample_in_reg_185_ ( .D(a[185]), .CP(clk), .CDN(rst_n),.Q(sample_in[185]) );
DFCNQD1BWP30P140HVT sample_in_reg_184_ ( .D(a[184]), .CP(clk), .CDN(rst_n),.Q(sample_in[184]) );
DFCNQD1BWP30P140HVT sample_in_reg_199_ ( .D(a[199]), .CP(clk), .CDN(rst_n),.Q(sample_in[199]) );
DFCNQD1BWP30P140HVT sample_in_reg_198_ ( .D(a[198]), .CP(clk), .CDN(rst_n),.Q(sample_in[198]) );
DFCNQD1BWP30P140HVT sample_in_reg_197_ ( .D(a[197]), .CP(clk), .CDN(rst_n),.Q(sample_in[197]) );
DFCNQD1BWP30P140HVT sample_in_reg_196_ ( .D(a[196]), .CP(clk), .CDN(rst_n),.Q(sample_in[196]) );
DFCNQD1BWP30P140HVT sample_in_reg_195_ ( .D(a[195]), .CP(clk), .CDN(rst_n),.Q(sample_in[195]) );
DFCNQD1BWP30P140HVT sample_in_reg_194_ ( .D(a[194]), .CP(clk), .CDN(rst_n),.Q(sample_in[194]) );
DFCNQD1BWP30P140HVT sample_in_reg_193_ ( .D(a[193]), .CP(clk), .CDN(rst_n),.Q(sample_in[193]) );
DFCNQD1BWP30P140HVT sample_in_reg_192_ ( .D(a[192]), .CP(clk), .CDN(rst_n),.Q(sample_in[192]) );
DFCNQD1BWP30P140HVT sample_in_reg_207_ ( .D(a[207]), .CP(clk), .CDN(rst_n),.Q(sample_in[207]) );
DFCNQD1BWP30P140HVT sample_in_reg_206_ ( .D(a[206]), .CP(clk), .CDN(rst_n),.Q(sample_in[206]) );
DFCNQD1BWP30P140HVT sample_in_reg_205_ ( .D(a[205]), .CP(clk), .CDN(rst_n),.Q(sample_in[205]) );
DFCNQD1BWP30P140HVT sample_in_reg_204_ ( .D(a[204]), .CP(clk), .CDN(rst_n),.Q(sample_in[204]) );
DFCNQD1BWP30P140HVT sample_in_reg_203_ ( .D(a[203]), .CP(clk), .CDN(rst_n),.Q(sample_in[203]) );
DFCNQD1BWP30P140HVT sample_in_reg_202_ ( .D(a[202]), .CP(clk), .CDN(rst_n),.Q(sample_in[202]) );
DFCNQD1BWP30P140HVT sample_in_reg_201_ ( .D(a[201]), .CP(clk), .CDN(rst_n),.Q(sample_in[201]) );
DFCNQD1BWP30P140HVT sample_in_reg_200_ ( .D(a[200]), .CP(clk), .CDN(rst_n),.Q(sample_in[200]) );
DFCNQD1BWP30P140HVT sample_in_reg_215_ ( .D(a[215]), .CP(clk), .CDN(rst_n),.Q(sample_in[215]) );
DFCNQD1BWP30P140HVT sample_in_reg_214_ ( .D(a[214]), .CP(clk), .CDN(rst_n),.Q(sample_in[214]) );
DFCNQD1BWP30P140HVT sample_in_reg_213_ ( .D(a[213]), .CP(clk), .CDN(rst_n),.Q(sample_in[213]) );
DFCNQD1BWP30P140HVT sample_in_reg_212_ ( .D(a[212]), .CP(clk), .CDN(rst_n),.Q(sample_in[212]) );
DFCNQD1BWP30P140HVT sample_in_reg_211_ ( .D(a[211]), .CP(clk), .CDN(rst_n),.Q(sample_in[211]) );
DFCNQD1BWP30P140HVT sample_in_reg_210_ ( .D(a[210]), .CP(clk), .CDN(rst_n),.Q(sample_in[210]) );
DFCNQD1BWP30P140HVT sample_in_reg_209_ ( .D(a[209]), .CP(clk), .CDN(rst_n),.Q(sample_in[209]) );
DFCNQD1BWP30P140HVT sample_in_reg_208_ ( .D(a[208]), .CP(clk), .CDN(rst_n),.Q(sample_in[208]) );
DFCNQD1BWP30P140HVT sample_in_reg_223_ ( .D(a[223]), .CP(clk), .CDN(rst_n),.Q(sample_in[223]) );
DFCNQD1BWP30P140HVT sample_in_reg_222_ ( .D(a[222]), .CP(clk), .CDN(rst_n),.Q(sample_in[222]) );
DFCNQD1BWP30P140HVT sample_in_reg_221_ ( .D(a[221]), .CP(clk), .CDN(rst_n),.Q(sample_in[221]) );
DFCNQD1BWP30P140HVT sample_in_reg_220_ ( .D(a[220]), .CP(clk), .CDN(rst_n),.Q(sample_in[220]) );
DFCNQD1BWP30P140HVT sample_in_reg_219_ ( .D(a[219]), .CP(clk), .CDN(rst_n),.Q(sample_in[219]) );
DFCNQD1BWP30P140HVT sample_in_reg_218_ ( .D(a[218]), .CP(clk), .CDN(rst_n),.Q(sample_in[218]) );
DFCNQD1BWP30P140HVT sample_in_reg_217_ ( .D(a[217]), .CP(clk), .CDN(rst_n),.Q(sample_in[217]) );
DFCNQD1BWP30P140HVT sample_in_reg_216_ ( .D(a[216]), .CP(clk), .CDN(rst_n),.Q(sample_in[216]) );
DFCNQD1BWP30P140HVT sample_in_reg_231_ ( .D(a[231]), .CP(clk), .CDN(rst_n),.Q(sample_in[231]) );
DFCNQD1BWP30P140HVT sample_in_reg_230_ ( .D(a[230]), .CP(clk), .CDN(rst_n),.Q(sample_in[230]) );
DFCNQD1BWP30P140HVT sample_in_reg_229_ ( .D(a[229]), .CP(clk), .CDN(rst_n),.Q(sample_in[229]) );
DFCNQD1BWP30P140HVT sample_in_reg_228_ ( .D(a[228]), .CP(clk), .CDN(rst_n),.Q(sample_in[228]) );
DFCNQD1BWP30P140HVT sample_in_reg_227_ ( .D(a[227]), .CP(clk), .CDN(rst_n),.Q(sample_in[227]) );
DFCNQD1BWP30P140HVT sample_in_reg_226_ ( .D(a[226]), .CP(clk), .CDN(rst_n),.Q(sample_in[226]) );
DFCNQD1BWP30P140HVT sample_in_reg_225_ ( .D(a[225]), .CP(clk), .CDN(rst_n),.Q(sample_in[225]) );
DFCNQD1BWP30P140HVT sample_in_reg_224_ ( .D(a[224]), .CP(clk), .CDN(rst_n),.Q(sample_in[224]) );
DFCNQD1BWP30P140HVT sample_in_reg_239_ ( .D(a[239]), .CP(clk), .CDN(rst_n),.Q(sample_in[239]) );
DFCNQD1BWP30P140HVT sample_in_reg_238_ ( .D(a[238]), .CP(clk), .CDN(rst_n),.Q(sample_in[238]) );
DFCNQD1BWP30P140HVT sample_in_reg_237_ ( .D(a[237]), .CP(clk), .CDN(rst_n),.Q(sample_in[237]) );
DFCNQD1BWP30P140HVT sample_in_reg_236_ ( .D(a[236]), .CP(clk), .CDN(rst_n),.Q(sample_in[236]) );
DFCNQD1BWP30P140HVT sample_in_reg_235_ ( .D(a[235]), .CP(clk), .CDN(rst_n),.Q(sample_in[235]) );
DFCNQD1BWP30P140HVT sample_in_reg_234_ ( .D(a[234]), .CP(clk), .CDN(rst_n),.Q(sample_in[234]) );
DFCNQD1BWP30P140HVT sample_in_reg_233_ ( .D(a[233]), .CP(clk), .CDN(rst_n),.Q(sample_in[233]) );
DFCNQD1BWP30P140HVT sample_in_reg_232_ ( .D(a[232]), .CP(clk), .CDN(rst_n),.Q(sample_in[232]) );
DFCNQD1BWP30P140HVT sample_in_reg_247_ ( .D(a[247]), .CP(clk), .CDN(rst_n),.Q(sample_in[247]) );
DFCNQD1BWP30P140HVT sample_in_reg_246_ ( .D(a[246]), .CP(clk), .CDN(rst_n),.Q(sample_in[246]) );
DFCNQD1BWP30P140HVT sample_in_reg_245_ ( .D(a[245]), .CP(clk), .CDN(rst_n),.Q(sample_in[245]) );
DFCNQD1BWP30P140HVT sample_in_reg_244_ ( .D(a[244]), .CP(clk), .CDN(rst_n),.Q(sample_in[244]) );
DFCNQD1BWP30P140HVT sample_in_reg_243_ ( .D(a[243]), .CP(clk), .CDN(rst_n),.Q(sample_in[243]) );
DFCNQD1BWP30P140HVT sample_in_reg_242_ ( .D(a[242]), .CP(clk), .CDN(rst_n),.Q(sample_in[242]) );
DFCNQD1BWP30P140HVT sample_in_reg_241_ ( .D(a[241]), .CP(clk), .CDN(rst_n),.Q(sample_in[241]) );
DFCNQD1BWP30P140HVT sample_in_reg_240_ ( .D(a[240]), .CP(clk), .CDN(rst_n),.Q(sample_in[240]) );
DFCNQD1BWP30P140HVT sample_in_reg_255_ ( .D(a[255]), .CP(clk), .CDN(rst_n),.Q(sample_in[255]) );
DFCNQD1BWP30P140HVT sample_in_reg_254_ ( .D(a[254]), .CP(clk), .CDN(rst_n),.Q(sample_in[254]) );
DFCNQD1BWP30P140HVT sample_in_reg_253_ ( .D(a[253]), .CP(clk), .CDN(rst_n),.Q(sample_in[253]) );
DFCNQD1BWP30P140HVT sample_in_reg_252_ ( .D(a[252]), .CP(clk), .CDN(rst_n),.Q(sample_in[252]) );
DFCNQD1BWP30P140HVT sample_in_reg_251_ ( .D(a[251]), .CP(clk), .CDN(rst_n),.Q(sample_in[251]) );
DFCNQD1BWP30P140HVT sample_in_reg_250_ ( .D(a[250]), .CP(clk), .CDN(rst_n),.Q(sample_in[250]) );
DFCNQD1BWP30P140HVT sample_in_reg_249_ ( .D(a[249]), .CP(clk), .CDN(rst_n),.Q(sample_in[249]) );
DFCNQD1BWP30P140HVT sample_in_reg_248_ ( .D(a[248]), .CP(clk), .CDN(rst_n),.Q(sample_in[248]) );
DFCNQD1BWP30P140HVT psum_reg_12_ ( .D(intadd_30_n1), .CP(clk), .CDN(rst_n),.Q(psum[12]) );
DFCNQD1BWP30P140HVT psum_reg_11_ ( .D(edge_nd_1291), .CP(clk), .CDN(rst_n),.Q(psum[11]) );
DFCNQD1BWP30P140HVT psum_reg_10_ ( .D(intadd_30_U3_psum_reg_10_), .CP(clk), .CDN(rst_n),.Q(psum[10]) );
DFCNQD1BWP30P140HVT psum_reg_9_ ( .D(edge_nd_1289), .CP(clk), .CDN(rst_n),.Q(psum[9]) );
DFCNQD1BWP30P140HVT psum_reg_8_ ( .D(edge_nd_1288), .CP(clk), .CDN(rst_n),.Q(psum[8]) );
DFCNQD1BWP30P140HVT psum_reg_7_ ( .D(edge_nd_1287), .CP(clk), .CDN(rst_n),.Q(psum[7]) );
DFCNQD1BWP30P140HVT psum_reg_6_ ( .D(edge_nd_1286), .CP(clk), .CDN(rst_n),.Q(psum[6]) );
DFCNQD1BWP30P140HVT psum_reg_5_ ( .D(intadd_34_U4_psum_reg_5_), .CP(clk), .CDN(rst_n),.Q(psum[5]) );
DFCNQD1BWP30P140HVT psum_reg_4_ ( .D(intadd_34_U5_psum_reg_4_), .CP(clk), .CDN(rst_n),.Q(psum[4]) );
DFCNQD1BWP30P140HVT psum_reg_3_ ( .D(edge_nd_1283), .CP(clk), .CDN(rst_n),.Q(psum[3]) );
DFCNQD1BWP30P140HVT psum_reg_2_ ( .D(intadd_34_U7_psum_reg_2_), .CP(clk), .CDN(rst_n),.Q(psum[2]) );
DFCNQD1BWP30P140HVT psum_reg_1_ ( .D(edge_nd_1281), .CP(clk), .CDN(rst_n),.Q(psum[1]) );
DFCNQD1BWP30P140HVT psum_reg_0_ ( .D(intadd_34_U9_psum_reg_0_), .CP(clk), .CDN(rst_n),.Q(psum[0]) );
FA_INVERSE intadd_52_U4 ( .A(sample_in[223]), .B(sample_in[159]),.CI(sample_in[207]), .CO(intadd_52_n3), .S(intadd_43_B_2_) );
FA_INVERSE intadd_52_U3 ( .A(intadd_52_A_1_), .B(intadd_52_B_1_),.CI(intadd_52_n3), .CO(intadd_52_n2), .S(intadd_52_SUM_1_) );
FA_INVERSE intadd_52_U2 ( .A(intadd_52_A_2_), .B(intadd_52_B_2_),.CI(intadd_52_n2), .CO(intadd_52_n1), .S(intadd_42_A_3_) );
FA_INVERSE intadd_50_U4 ( .A(sample_in[6]), .B(sample_in[14]), .CI(sample_in[22]), .CO(intadd_50_n3), .S(intadd_50_SUM_0_) );
FA_INVERSE intadd_50_U3 ( .A(intadd_50_A_1_), .B(intadd_50_B_1_),.CI(intadd_50_n3), .CO(intadd_50_n2), .S(intadd_40_B_3_) );
FA_INVERSE intadd_50_U2 ( .A(intadd_50_A_2_), .B(intadd_50_B_2_),.CI(intadd_50_n2), .CO(intadd_50_n1), .S(intadd_40_A_4_) );
FA_INVERSE intadd_42_U5 ( .A(sample_in[166]), .B(sample_in[94]), .CI(sample_in[182]), .CO(intadd_42_n4), .S(intadd_38_A_2_) );
FA_INVERSE intadd_42_U4 ( .A(intadd_42_A_1_), .B(intadd_42_B_1_),.CI(intadd_42_n4), .CO(intadd_42_n3), .S(intadd_38_A_3_) );
FA_INVERSE intadd_42_U3 ( .A(intadd_42_A_2_), .B(intadd_42_B_2_),.CI(intadd_42_U4_intadd_42_U3), .CO(intadd_42_n2), .S(intadd_38_A_4_) );
FA_INVERSE intadd_42_U2 ( .A(intadd_42_A_3_), .B(intadd_50_n1), .CI(intadd_42_U3_intadd_42_U2), .CO(intadd_42_n1), .S(intadd_36_A_6_) );
FA_INVERSE intadd_49_U4 ( .A(sample_in[165]), .B(sample_in[93]), .CI(sample_in[181]), .CO(intadd_49_n3), .S(intadd_49_SUM_0_) );
FA_INVERSE intadd_49_U3 ( .A(intadd_49_A_1_), .B(intadd_49_B_1_),.CI(intadd_49_n3), .CO(intadd_49_n2), .S(intadd_44_A_2_) );
FA_INVERSE intadd_49_U2 ( .A(intadd_49_A_2_), .B(intadd_49_B_2_),.CI(intadd_49_U3_intadd_49_U2), .CO(intadd_49_n1), .S(intadd_44_B_3_) );
FA_INVERSE intadd_43_U5 ( .A(sample_in[221]), .B(sample_in[157]),.CI(sample_in[205]), .CO(intadd_43_n4), .S(intadd_43_SUM_0_) );
FA_INVERSE intadd_43_U4 ( .A(sample_in[190]), .B(sample_in[174]),.CI(intadd_43_U5_intadd_43_U4), .CO(intadd_43_n3), .S(intadd_40_A_2_) );
FA_INVERSE intadd_43_U3 ( .A(intadd_43_A_2_), .B(intadd_43_B_2_),.CI(intadd_43_n3), .CO(intadd_43_n2), .S(intadd_36_A_4_) );
FA_INVERSE intadd_43_U2 ( .A(intadd_43_A_3_), .B(intadd_49_n1), .CI(intadd_43_n2), .CO(intadd_43_n1), .S(intadd_33_A_5_) );
FA_INVERSE intadd_53_U4 ( .A(sample_in[5]), .B(sample_in[13]), .CI(sample_in[21]), .CO(intadd_53_n3), .S(intadd_53_SUM_0_) );
FA_INVERSE intadd_53_U3 ( .A(intadd_53_A_1_), .B(intadd_53_B_1_),.CI(intadd_53_n3), .CO(intadd_53_n2), .S(intadd_53_SUM_1_) );
FA_INVERSE intadd_53_U2 ( .A(U96_intadd_53_U2), .B(intadd_53_B_2_),.CI(intadd_53_n2), .CO(intadd_53_n1), .S(intadd_36_B_4_) );
FA_INVERSE intadd_38_U8 ( .A(sample_in[244]), .B(sample_in[140]),.CI(sample_in[252]), .CO(intadd_38_n7), .S(intadd_38_SUM_0_) );
FA_INVERSE intadd_38_U7 ( .A(intadd_38_A_1_), .B(intadd_38_B_1_),.CI(intadd_38_n7), .CO(intadd_38_n6), .S(intadd_33_A_2_) );
FA_INVERSE intadd_38_U6 ( .A(intadd_38_A_2_), .B(intadd_38_B_2_),.CI(intadd_38_U7_intadd_38_U6), .CO(intadd_38_n5), .S(intadd_33_B_3_) );
FA_INVERSE intadd_38_U5 ( .A(intadd_38_A_3_), .B(intadd_38_B_3_),.CI(intadd_38_n5), .CO(intadd_38_n4), .S(intadd_33_A_4_) );
FA_INVERSE intadd_38_U4 ( .A(intadd_42_U3_intadd_38_U4), .B(intadd_53_n1), .CI(intadd_38_n4), .CO(intadd_38_n3), .S(intadd_33_B_5_) );
FA_INVERSE intadd_38_U3 ( .A(intadd_38_A_5_), .B(intadd_43_n1), .CI(intadd_38_U4_intadd_38_U3), .CO(intadd_38_n2), .S(intadd_33_B_6_) );
FA_INVERSE intadd_38_U2 ( .A(intadd_42_n1), .B(intadd_52_U2_intadd_38_U2), .CI(intadd_38_n2), .CO(intadd_38_n1), .S(intadd_33_A_7_) );
FA_INVERSE intadd_40_U6 ( .A(sample_in[204]), .B(sample_in[172]),.CI(sample_in[188]), .CO(intadd_40_n5), .S(intadd_40_SUM_0_) );
FA_INVERSE intadd_40_U5 ( .A(intadd_40_A_1_), .B(intadd_40_B_1_),.CI(intadd_40_n5), .CO(intadd_40_n4), .S(intadd_37_A_3_) );
FA_INVERSE intadd_40_U4 ( .A(intadd_43_U4_intadd_40_U4), .B(intadd_40_B_2_),.CI(intadd_40_n4), .CO(intadd_40_n3), .S(intadd_37_B_4_) );
FA_INVERSE intadd_40_U3 ( .A(intadd_40_A_3_), .B(intadd_40_B_3_),.CI(intadd_40_U4_intadd_40_U3), .CO(intadd_40_n2), .S(intadd_37_B_5_) );
FA_INVERSE intadd_40_U2 ( .A(intadd_40_A_4_), .B(intadd_40_B_4_),.CI(intadd_40_n2), .CO(intadd_40_n1), .S(intadd_37_A_6_) );
FA_INVERSE intadd_44_U5 ( .A(sample_in[212]), .B(sample_in[124]),.CI(sample_in[228]), .CO(intadd_44_n4), .S(intadd_37_A_2_) );
FA_INVERSE intadd_44_U4 ( .A(intadd_43_SUM_0_), .B(intadd_44_B_1_),.CI(intadd_44_n4), .CO(intadd_44_n3), .S(intadd_44_SUM_1_) );
FA_INVERSE intadd_44_U3 ( .A(intadd_44_A_2_), .B(intadd_44_B_2_),.CI(intadd_44_n3), .CO(intadd_44_n2), .S(intadd_39_A_4_) );
FA_INVERSE intadd_44_U2 ( .A(intadd_44_A_3_), .B(intadd_44_B_3_),.CI(intadd_44_U3_intadd_44_U2), .CO(intadd_44_n1), .S(intadd_39_A_5_) );
FA_INVERSE intadd_55_U4 ( .A(sample_in[203]), .B(sample_in[171]),.CI(sample_in[187]), .CO(intadd_55_n3), .S(intadd_48_A_2_) );
FA_INVERSE intadd_55_U3 ( .A(intadd_55_A_1_), .B(intadd_55_B_1_),.CI(intadd_55_U4_intadd_55_U3), .CO(intadd_55_n2), .S(intadd_39_A_2_) );
FA_INVERSE intadd_55_U2 ( .A(intadd_55_A_2_), .B(intadd_55_B_2_),.CI(intadd_55_n2), .CO(intadd_55_n1), .S(intadd_55_SUM_2_) );
FA_INVERSE intadd_36_U8 ( .A(sample_in[211]), .B(sample_in[123]),.CI(sample_in[227]), .CO(intadd_36_n7), .S(intadd_36_SUM_0_) );
FA_INVERSE intadd_36_U7 ( .A(intadd_36_A_1_), .B(intadd_36_B_1_),.CI(intadd_36_n7), .CO(intadd_36_n6), .S(intadd_36_SUM_1_) );
FA_INVERSE intadd_36_U6 ( .A(U88_intadd_36_U6), .B(intadd_36_B_2_),.CI(intadd_36_n6), .CO(intadd_36_n5), .S(intadd_36_SUM_2_) );
FA_INVERSE intadd_36_U5 ( .A(intadd_36_A_3_), .B(intadd_55_n1), .CI(intadd_36_U6_intadd_36_U5), .CO(intadd_36_n4), .S(intadd_36_SUM_3_) );
FA_INVERSE intadd_36_U4 ( .A(intadd_43_U3_intadd_36_U4), .B(intadd_36_B_4_),.CI(intadd_36_n4), .CO(intadd_36_n3), .S(intadd_36_SUM_4_) );
FA_INVERSE intadd_36_U3 ( .A(intadd_36_A_5_), .B(intadd_44_n1), .CI(intadd_36_U4_intadd_36_U3), .CO(intadd_36_n2), .S(intadd_36_SUM_5_) );
FA_INVERSE intadd_36_U2 ( .A(intadd_36_A_6_), .B(intadd_40_n1), .CI(intadd_36_n2), .CO(intadd_36_n1), .S(intadd_33_A_6_) );
FA_INVERSE intadd_33_U9 ( .A(sample_in[51]), .B(sample_in[43]), .CI(sample_in[67]), .CO(intadd_33_n8), .S(intadd_33_SUM_0_) );
FA_INVERSE intadd_33_U8 ( .A(intadd_33_A_1_), .B(intadd_33_B_1_),.CI(intadd_33_n8), .CO(intadd_33_n7), .S(intadd_31_A_3_) );
FA_INVERSE intadd_33_U7 ( .A(intadd_33_A_2_), .B(intadd_33_B_2_),.CI(intadd_33_n7), .CO(intadd_33_n6), .S(intadd_31_A_4_) );
FA_INVERSE intadd_33_U6 ( .A(intadd_33_A_3_), .B(intadd_33_B_3_),.CI(intadd_33_U7_intadd_33_U6), .CO(intadd_33_n5), .S(intadd_31_A_5_) );
FA_INVERSE intadd_33_U5 ( .A(intadd_33_A_4_), .B(intadd_33_B_4_),.CI(intadd_33_n5), .CO(intadd_33_n4), .S(intadd_31_A_6_) );
FA_INVERSE intadd_33_U4 ( .A(intadd_43_U2_intadd_33_U4), .B(intadd_33_B_5_),.CI(intadd_33_n4), .CO(intadd_33_n3), .S(intadd_31_A_7_) );
FA_INVERSE intadd_33_U3 ( .A(intadd_33_A_6_), .B(intadd_38_U3_intadd_33_U3),.CI(intadd_33_n3), .CO(intadd_33_n2), .S(intadd_31_A_8_) );
FA_INVERSE intadd_33_U2 ( .A(intadd_33_A_7_), .B(intadd_36_n1), .CI(intadd_33_U3_intadd_33_U2), .CO(intadd_33_n1), .S(intadd_30_A_10_) );
FA_INVERSE intadd_54_U4 ( .A(sample_in[202]), .B(sample_in[170]),.CI(sample_in[186]), .CO(intadd_54_n3), .S(intadd_54_SUM_0_) );
FA_INVERSE intadd_54_U3 ( .A(intadd_54_A_1_), .B(intadd_54_B_1_),.CI(intadd_54_U4_intadd_54_U3), .CO(intadd_54_n2), .S(intadd_31_A_2_) );
FA_INVERSE intadd_54_U2 ( .A(intadd_40_SUM_0_), .B(intadd_54_B_2_),.CI(intadd_54_n2), .CO(intadd_54_n1), .S(intadd_54_SUM_2_) );
FA_INVERSE intadd_37_U8 ( .A(sample_in[210]), .B(sample_in[122]),.CI(sample_in[226]), .CO(intadd_37_n7), .S(intadd_32_A_2_) );
FA_INVERSE intadd_37_U7 ( .A(intadd_37_A_1_), .B(intadd_37_B_1_),.CI(intadd_37_n7), .CO(intadd_37_n6), .S(intadd_32_A_3_) );
FA_INVERSE intadd_37_U6 ( .A(intadd_37_A_2_), .B(intadd_37_B_2_),.CI(intadd_37_U7_intadd_37_U6), .CO(intadd_37_n5), .S(intadd_37_SUM_2_) );
FA_INVERSE intadd_37_U5 ( .A(intadd_37_A_3_), .B(intadd_54_n1), .CI(intadd_37_n5), .CO(intadd_37_n4), .S(intadd_37_SUM_3_) );
FA_INVERSE intadd_37_U4 ( .A(U76_intadd_37_U4), .B(intadd_37_B_4_),.CI(intadd_37_n4), .CO(intadd_37_n3), .S(intadd_31_B_5_) );
FA_INVERSE intadd_37_U3 ( .A(intadd_37_A_5_), .B(intadd_37_B_5_),.CI(intadd_37_U4_intadd_37_U3), .CO(intadd_37_n2), .S(intadd_32_B_7_) );
FA_INVERSE intadd_37_U2 ( .A(intadd_37_A_6_), .B(intadd_36_SUM_5_),.CI(intadd_37_n2), .CO(intadd_37_n1), .S(intadd_32_B_8_) );
FA_INVERSE intadd_39_U7 ( .A(sample_in[50]), .B(sample_in[42]), .CI(sample_in[66]), .CO(intadd_39_n6), .S(intadd_39_SUM_0_) );
FA_INVERSE intadd_39_U6 ( .A(intadd_39_A_1_), .B(intadd_39_B_1_),.CI(intadd_39_n6), .CO(intadd_39_n5), .S(intadd_30_A_3_) );
FA_INVERSE intadd_39_U5 ( .A(intadd_55_U3_intadd_39_U5), .B(intadd_39_B_2_),.CI(intadd_39_n5), .CO(intadd_39_n4), .S(intadd_32_A_4_) );
FA_INVERSE intadd_39_U4 ( .A(intadd_39_A_3_), .B(intadd_39_B_3_),.CI(intadd_39_U5_intadd_39_U4), .CO(intadd_39_n3), .S(intadd_39_SUM_3_) );
FA_INVERSE intadd_39_U3 ( .A(intadd_39_A_4_), .B(intadd_39_B_4_),.CI(intadd_39_n3), .CO(intadd_39_n2), .S(intadd_32_A_6_) );
FA_INVERSE intadd_39_U2 ( .A(intadd_44_U2_intadd_39_U2), .B(intadd_36_SUM_4_),.CI(intadd_39_n2), .CO(intadd_39_n1), .S(intadd_32_A_7_) );
FA_INVERSE intadd_45_U5 ( .A(intadd_45_B_0_), .B(intadd_45_CI), .CI(intadd_33_SUM_0_), .CO(intadd_45_n4), .S(intadd_45_SUM_0_) );
FA_INVERSE intadd_45_U4 ( .A(intadd_45_A_1_), .B(intadd_45_B_1_),.CI(intadd_45_n4), .CO(intadd_45_n3), .S(intadd_30_A_4_) );
FA_INVERSE intadd_45_U3 ( .A(U58_intadd_45_U3), .B(intadd_36_SUM_2_),.CI(intadd_45_n3), .CO(intadd_45_n2), .S(intadd_32_B_5_) );
FA_INVERSE intadd_45_U2 ( .A(intadd_36_SUM_3_), .B(intadd_45_B_3_),.CI(intadd_45_U3_intadd_45_U2), .CO(intadd_45_n1), .S(intadd_30_A_6_) );
FA_INVERSE intadd_48_U4 ( .A(sample_in[201]), .B(sample_in[169]),.CI(sample_in[185]), .CO(intadd_48_n3), .S(intadd_47_B_0_) );
FA_INVERSE intadd_48_U3 ( .A(intadd_48_A_1_), .B(intadd_48_B_1_),.CI(intadd_48_U4_intadd_48_U3), .CO(intadd_48_n2), .S(intadd_30_A_2_) );
FA_INVERSE intadd_48_U2 ( .A(intadd_48_A_2_), .B(intadd_48_B_2_),.CI(intadd_48_n2), .CO(intadd_48_n1), .S(intadd_48_SUM_2_) );
FA_INVERSE intadd_46_U5 ( .A(sample_in[145]), .B(sample_in[89]), .CI(sample_in[161]), .CO(intadd_46_n4), .S(intadd_46_SUM_0_) );
FA_INVERSE intadd_46_U4 ( .A(intadd_46_A_1_), .B(intadd_46_B_1_),.CI(intadd_46_n4), .CO(intadd_46_n3), .S(intadd_46_SUM_1_) );
FA_INVERSE intadd_46_U3 ( .A(intadd_36_SUM_0_), .B(intadd_46_B_2_),.CI(intadd_46_U4_intadd_46_U3), .CO(intadd_46_n2), .S(intadd_46_SUM_2_) );
FA_INVERSE intadd_46_U2 ( .A(intadd_36_SUM_1_), .B(intadd_48_n1),.CI(intadd_46_n2), .CO(intadd_46_n1), .S(intadd_46_SUM_3_) );
FA_INVERSE intadd_31_U10 ( .A(sample_in[17]), .B(sample_in[25]), .CI(sample_in[33]), .CO(intadd_31_n9), .S(intadd_31_SUM_0_) );
FA_INVERSE intadd_31_U9 ( .A(intadd_31_A_1_), .B(intadd_31_B_1_),.CI(intadd_31_n9), .CO(intadd_31_n8), .S(intadd_31_SUM_1_) );
FA_INVERSE intadd_31_U8 ( .A(intadd_54_U3_intadd_31_U8), .B(intadd_31_B_2_),.CI(intadd_31_n8), .CO(intadd_31_n7), .S(intadd_31_SUM_2_) );
FA_INVERSE intadd_31_U7 ( .A(intadd_31_A_3_), .B(intadd_31_B_3_),.CI(intadd_31_U8_intadd_31_U7), .CO(intadd_31_n6), .S(intadd_31_SUM_3_) );
FA_INVERSE intadd_31_U6 ( .A(intadd_31_A_4_), .B(intadd_46_n1), .CI(intadd_31_n6), .CO(intadd_31_n5), .S(intadd_30_A_5_) );
FA_INVERSE intadd_31_U5 ( .A(intadd_33_U6_intadd_31_U5), .B(intadd_31_B_5_),.CI(intadd_31_n5), .CO(intadd_31_n4), .S(intadd_30_B_6_) );
FA_INVERSE intadd_31_U4 ( .A(intadd_31_A_6_), .B(intadd_45_n1), .CI(intadd_31_U5_intadd_31_U4), .CO(intadd_31_n3), .S(intadd_30_A_7_) );
FA_INVERSE intadd_31_U3 ( .A(intadd_31_A_7_), .B(intadd_39_n1), .CI(intadd_31_n3), .CO(intadd_31_n2), .S(intadd_31_SUM_7_) );
FA_INVERSE intadd_31_U2 ( .A(intadd_31_A_8_), .B(intadd_37_U2_intadd_31_U2), .CI(intadd_31_n2), .CO(intadd_31_n1), .S(intadd_30_B_9_) );
FA_INVERSE intadd_58_U4 ( .A(sample_in[216]), .B(sample_in[184]),.CI(sample_in[200]), .CO(intadd_58_n3), .S(intadd_35_A_0_) );
FA_INVERSE intadd_58_U3 ( .A(intadd_58_A_1_), .B(intadd_58_B_1_),.CI(intadd_58_U4_intadd_58_U3), .CO(intadd_58_n2), .S(intadd_35_B_1_) );
FA_INVERSE intadd_58_U2 ( .A(intadd_54_SUM_0_), .B(intadd_58_B_2_),.CI(intadd_58_n2), .CO(intadd_58_n1), .S(intadd_56_B_2_) );
FA_INVERSE intadd_32_U10 ( .A(sample_in[160]), .B(sample_in[120]),.CI(sample_in[176]), .CO(intadd_32_n9), .S(intadd_32_SUM_0_) );
FA_INVERSE intadd_32_U9 ( .A(intadd_32_A_1_), .B(intadd_32_B_1_),.CI(intadd_32_n9), .CO(intadd_32_n8), .S(intadd_32_SUM_1_) );
FA_INVERSE intadd_32_U8 ( .A(intadd_32_A_2_), .B(intadd_32_B_2_),.CI(intadd_32_U9_intadd_32_U8), .CO(intadd_32_n7), .S(intadd_32_SUM_2_) );
FA_INVERSE intadd_32_U7 ( .A(intadd_32_A_3_), .B(intadd_58_n1), .CI(intadd_32_n7), .CO(intadd_32_n6), .S(intadd_32_SUM_3_) );
FA_INVERSE intadd_32_U6 ( .A(intadd_32_A_4_), .B(intadd_32_B_4_),.CI(intadd_32_n6), .CO(intadd_32_n5), .S(intadd_32_SUM_4_) );
FA_INVERSE intadd_32_U5 ( .A(U51_intadd_32_U5), .B(intadd_32_B_5_),.CI(intadd_32_n5), .CO(intadd_32_n4), .S(intadd_32_SUM_5_) );
FA_INVERSE intadd_32_U4 ( .A(intadd_32_A_6_), .B(intadd_32_B_6_),.CI(intadd_32_U5_intadd_32_U4), .CO(intadd_32_n3), .S(intadd_32_SUM_6_) );
FA_INVERSE intadd_32_U3 ( .A(intadd_32_A_7_), .B(intadd_37_U3_intadd_32_U3),.CI(intadd_32_n3), .CO(intadd_32_n2), .S(intadd_30_B_7_) );
FA_INVERSE intadd_32_U2 ( .A(intadd_31_SUM_7_), .B(intadd_37_U2_intadd_32_U2),.CI(intadd_32_n2), .CO(intadd_32_n1), .S(intadd_30_B_8_) );
FA_INVERSE intadd_47_U5 ( .A(intadd_47_B_0_), .B(intadd_47_CI), .CI(intadd_31_SUM_0_), .CO(intadd_47_n4), .S(intadd_41_B_1_) );
FA_INVERSE intadd_47_U4 ( .A(intadd_46_SUM_1_), .B(intadd_47_B_1_),.CI(intadd_47_n4), .CO(intadd_47_n3), .S(intadd_41_A_2_) );
FA_INVERSE intadd_47_U3 ( .A(intadd_31_SUM_2_), .B(intadd_47_B_2_),.CI(intadd_47_n3), .CO(intadd_47_n2), .S(intadd_41_A_3_) );
FA_INVERSE intadd_47_U2 ( .A(intadd_46_SUM_3_), .B(intadd_31_SUM_3_),.CI(intadd_47_U3_intadd_47_U2), .CO(intadd_47_n1), .S(intadd_47_SUM_3_) );
FA_INVERSE intadd_30_U13 ( .A(sample_in[32]), .B(sample_in[56]), .CI(sample_in[48]), .CO(intadd_30_n12), .S(intadd_30_SUM_0_) );
FA_INVERSE intadd_30_U12 ( .A(intadd_30_A_1_), .B(intadd_30_B_1_),.CI(intadd_30_n12), .CO(intadd_30_n11), .S(intadd_30_SUM_1_) );
FA_INVERSE intadd_30_U11 ( .A(intadd_48_U3_intadd_30_U11), .B(intadd_30_B_2_),.CI(intadd_30_n11), .CO(intadd_30_n10), .S(intadd_30_SUM_2_) );
FA_INVERSE intadd_30_U10 ( .A(intadd_30_A_3_), .B(intadd_30_B_3_),.CI(intadd_30_U11_intadd_30_U10), .CO(intadd_30_n9), .S(intadd_30_SUM_3_) );
FA_INVERSE intadd_30_U9 ( .A(intadd_30_A_4_), .B(intadd_30_B_4_),.CI(intadd_30_n9), .CO(intadd_30_n8), .S(intadd_30_SUM_4_) );
FA_INVERSE intadd_30_U8 ( .A(intadd_30_A_5_), .B(intadd_47_n1), .CI(intadd_30_n8), .CO(intadd_30_n7), .S(intadd_30_SUM_5_) );
FA_INVERSE intadd_30_U7 ( .A(intadd_45_U2_intadd_30_U7), .B(intadd_30_B_6_),.CI(intadd_30_n7), .CO(intadd_30_n6), .S(intadd_30_SUM_6_) );
FA_INVERSE intadd_56_U4 ( .A(intadd_56_B_0_), .B(intadd_30_SUM_0_),.CI(intadd_56_A_0_), .CO(intadd_56_n3), .S(intadd_34_B_0_) );
FA_INVERSE intadd_56_U3 ( .A(intadd_32_SUM_1_), .B(intadd_56_B_1_),.CI(intadd_56_n3), .CO(intadd_56_n2), .S(intadd_51_A_0_) );
FA_INVERSE intadd_56_U2 ( .A(intadd_56_A_2_), .B(intadd_56_B_2_),.CI(intadd_56_U3_intadd_56_U2), .CO(intadd_56_n1), .S(intadd_51_A_1_) );
FA_INVERSE intadd_35_U8 ( .A(U16_intadd_35_U8), .B(intadd_35_CI), .CI(intadd_35_A_0_), .CO(intadd_35_n7), .S(intadd_35_SUM_0_) );
FA_INVERSE intadd_35_U7 ( .A(intadd_35_A_1_), .B(intadd_35_B_1_),.CI(intadd_35_U8_intadd_35_U7), .CO(intadd_35_n6), .S(intadd_35_SUM_1_) );
FA_INVERSE intadd_35_U6 ( .A(intadd_35_A_2_), .B(intadd_32_SUM_2_),.CI(intadd_35_n6), .CO(intadd_35_n5), .S(intadd_35_SUM_2_) );
FA_INVERSE intadd_35_U5 ( .A(intadd_35_A_3_), .B(intadd_56_n1), .CI(intadd_35_n5), .CO(intadd_35_n4), .S(intadd_35_SUM_3_) );
FA_INVERSE intadd_35_U4 ( .A(U39_intadd_35_U4), .B(intadd_32_SUM_4_),.CI(intadd_35_n4), .CO(intadd_35_n3), .S(intadd_35_SUM_4_) );
FA_INVERSE intadd_35_U3 ( .A(intadd_32_SUM_5_), .B(U38_intadd_35_U3),.CI(intadd_35_n3), .CO(intadd_35_n2), .S(intadd_35_SUM_5_) );
FA_INVERSE intadd_35_U2 ( .A(intadd_30_SUM_6_), .B(intadd_32_U4_intadd_35_U2),.CI(intadd_35_n2), .CO(intadd_35_n1), .S(intadd_34_A_6_) );
FA_INVERSE intadd_30_U6 ( .A(intadd_31_U4_intadd_30_U6), .B(intadd_30_B_7_),.CI(intadd_30_n6), .CO(intadd_30_n5), .S(intadd_30_SUM_7_) );
FA_INVERSE intadd_57_U4 ( .A(intadd_32_SUM_3_), .B(intadd_57_CI),.CI(intadd_30_SUM_3_), .CO(intadd_57_n3), .S(intadd_51_B_2_) );
FA_INVERSE intadd_57_U3 ( .A(intadd_30_SUM_4_), .B(intadd_47_SUM_3_),.CI(intadd_57_n3), .CO(intadd_57_n2), .S(intadd_34_A_4_) );
FA_INVERSE intadd_57_U2 ( .A(intadd_30_SUM_5_), .B(intadd_35_U3_intadd_57_U2),.CI(intadd_57_n2), .CO(intadd_57_n1), .S(intadd_34_B_5_) );
FA_INVERSE intadd_51_U4 ( .A(intadd_35_U7_intadd_51_U4), .B(intadd_51_CI),.CI(intadd_51_A_0_), .CO(intadd_51_n3), .S(intadd_34_A_1_) );
FA_INVERSE intadd_51_U3 ( .A(intadd_56_U2_intadd_51_U3), .B(intadd_51_B_1_),.CI(intadd_51_n3), .CO(intadd_51_n2), .S(intadd_34_B_2_) );
FA_INVERSE intadd_51_U2 ( .A(intadd_35_SUM_3_), .B(intadd_51_B_2_),.CI(intadd_51_U3_intadd_51_U2), .CO(intadd_51_n1), .S(intadd_34_B_3_) );
FA_INVERSE intadd_41_U6 ( .A(intadd_32_SUM_0_), .B(intadd_35_U8_intadd_41_U6),.CI(intadd_41_A_0_), .CO(intadd_41_n5), .S(intadd_34_A_0_) );
FA_INVERSE intadd_41_U5 ( .A(intadd_41_A_1_), .B(intadd_41_B_1_),.CI(intadd_41_n5), .CO(intadd_41_n4), .S(intadd_34_B_1_) );
FA_INVERSE intadd_41_U4 ( .A(intadd_41_A_2_), .B(intadd_35_SUM_2_),.CI(intadd_41_n4), .CO(intadd_41_n3), .S(intadd_34_A_2_) );
FA_INVERSE intadd_41_U3 ( .A(intadd_41_A_3_), .B(intadd_41_B_3_),.CI(intadd_41_n3), .CO(intadd_41_n2), .S(intadd_34_A_3_) );
FA_INVERSE intadd_41_U2 ( .A(intadd_35_SUM_4_), .B(intadd_51_n1),.CI(intadd_41_n2), .CO(intadd_41_n1), .S(intadd_34_B_4_) );
FA_INVERSE intadd_34_U9 ( .A(intadd_34_B_0_), .B(intadd_34_CI), .CI(intadd_34_A_0_), .CO(intadd_34_n8), .S(edge_nd_1280) );
FA_INVERSE intadd_34_U8 ( .A(intadd_51_U4_intadd_34_U8), .B(intadd_34_B_1_),.CI(intadd_34_n8), .CO(intadd_34_n7), .S(edge_nd_1281) );
FA_INVERSE intadd_34_U7 ( .A(intadd_34_A_2_), .B(intadd_51_U3_intadd_34_U7),.CI(intadd_34_n7), .CO(intadd_34_n6), .S(edge_nd_1282) );
FA_INVERSE intadd_34_U6 ( .A(intadd_34_A_3_), .B(intadd_34_B_3_),.CI(intadd_34_n6), .CO(intadd_34_n5), .S(edge_nd_1283) );
FA_INVERSE intadd_34_U5 ( .A(intadd_57_U3_intadd_34_U5), .B(intadd_34_B_4_),.CI(intadd_34_n5), .CO(intadd_34_n4), .S(edge_nd_1284) );
FA_INVERSE intadd_34_U4 ( .A(intadd_41_n1), .B(intadd_34_B_5_), .CI(intadd_34_U5_intadd_34_U4), .CO(intadd_34_n3), .S(edge_nd_1285) );
FA_INVERSE intadd_34_U3 ( .A(intadd_34_A_6_), .B(intadd_57_U2_intadd_34_U3), .CI(intadd_34_n3), .CO(intadd_34_n2), .S(edge_nd_1286) );
FA_INVERSE intadd_34_U2 ( .A(intadd_35_n1), .B(intadd_30_SUM_7_),.CI(intadd_34_U3_intadd_34_U2), .CO(intadd_34_n1), .S(edge_nd_1287) );
FA_INVERSE intadd_30_U5 ( .A(intadd_34_U2_intadd_30_U5), .B(intadd_30_B_8_), .CI(intadd_30_n5), .CO(intadd_30_n4), .S(edge_nd_1288) );
FA_INVERSE intadd_30_U4 ( .A(intadd_32_n1), .B(intadd_30_B_9_), .CI(intadd_30_U5_intadd_30_U4), .CO(intadd_30_n3), .S(edge_nd_1289) );
FA_INVERSE intadd_30_U3 ( .A(intadd_30_A_10_), .B(intadd_31_U2_intadd_30_U3), .CI(intadd_30_n3), .CO(intadd_30_n2), .S(edge_nd_1290) );
FA_INVERSE intadd_30_U2 ( .A(intadd_38_n1), .B(intadd_33_U2_intadd_30_U2), .CI(intadd_30_n2), .CO(intadd_30_n1), .S(edge_nd_1291) );
AN2D0BWP30P140HVT U4 ( .A1(sample_in[12]), .A2(sample_in[4]), .Z(n51) );
AN2D0BWP30P140HVT U5 ( .A1(sample_in[11]), .A2(sample_in[3]), .Z(intadd_55_B_1_) );
AN2D0BWP30P140HVT U6 ( .A1(sample_in[10]), .A2(sample_in[2]), .Z(intadd_54_B_1_) );
IAO21D0BWP30P140HVT U7 ( .A1(sample_in[12]), .A2(sample_in[4]), .B(n51),.ZN(intadd_55_A_1_) );
AN2D0BWP30P140HVT U8 ( .A1(sample_in[9]), .A2(sample_in[1]), .Z(intadd_48_B_1_) );
IAO21D0BWP30P140HVT U9 ( .A1(sample_in[11]), .A2(sample_in[3]), .B(intadd_55_B_1_), .ZN(intadd_54_A_1_) );
IAO21D0BWP30P140HVT U10 ( .A1(sample_in[10]), .A2(sample_in[2]), .B(intadd_54_B_1_), .ZN(intadd_48_A_1_) );
FA_INVERSE U11 ( .A(sample_in[249]), .B(sample_in[241]), .CI(sample_in[137]), .CO(n30), .S(n3) );
FA_INVERSE U12 ( .A(intadd_46_SUM_0_), .B(n3), .CI(n2), .CO(n17), .S(n6) );
FA_INVERSE U13 ( .A(intadd_30_SUM_2_), .B(n5), .CI(n4), .CO(intadd_41_B_3_), .S(intadd_51_B_1_) );
FA_INVERSE U14 ( .A(intadd_30_SUM_1_), .B(n7), .CI(n6), .CO(n5), .S(intadd_51_CI) );
AN2D0BWP30P140HVT U15 ( .A1(sample_in[8]), .A2(sample_in[24]), .Z(intadd_58_B_1_) );
IAO21D0BWP30P140HVT U16 ( .A1(sample_in[8]), .A2(sample_in[24]), .B(intadd_58_B_1_), .ZN(intadd_35_B_0_) );
FA_INVERSE U17 ( .A(sample_in[80]), .B(sample_in[64]), .CI(sample_in[72]), .CO(n12), .S(n10) );
FA_INVERSE U18 ( .A(sample_in[112]), .B(sample_in[96]), .CI(sample_in[88]), .CO(n11), .S(n8) );
FA_INVERSE U19 ( .A(n10), .B(n9), .CI(n8), .CO(intadd_56_B_1_), .S(intadd_34_CI) );
FA_INVERSE U20 ( .A(sample_in[16]), .B(sample_in[0]), .CI(sample_in[40]), .CO(intadd_30_B_1_), .S(intadd_56_A_0_) );
FA_INVERSE U21 ( .A(sample_in[232]), .B(sample_in[248]), .CI(sample_in[168]), .CO(intadd_30_A_1_), .S(intadd_35_CI) );
FA_INVERSE U22 ( .A(n13), .B(n12), .CI(n11), .CO(intadd_30_B_2_), .S(n7) );
FA_INVERSE U23 ( .A(sample_in[240]), .B(sample_in[224]), .CI(sample_in[152]), .CO(n13), .S(intadd_56_B_0_) );
FA_INVERSE U24 ( .A(intadd_48_SUM_2_), .B(intadd_45_SUM_0_), .CI(intadd_46_SUM_2_), .CO(intadd_30_B_4_), .S(intadd_57_CI) );
FA_INVERSE U25 ( .A(sample_in[97]), .B(sample_in[81]), .CI(sample_in[57]), .CO(n29), .S(n16) );
FA_INVERSE U26 ( .A(sample_in[129]), .B(sample_in[113]), .CI(sample_in[73]), .CO(n31), .S(n14) );
FA_INVERSE U27 ( .A(n16), .B(n15), .CI(n14), .CO(intadd_47_B_1_), .S(intadd_41_A_1_) );
FA_INVERSE U28 ( .A(n18), .B(n17), .CI(intadd_31_SUM_1_), .CO(intadd_47_B_2_), .S(n4) );
FA_INVERSE U29 ( .A(sample_in[208]), .B(sample_in[192]), .CI(sample_in[136]), .CO(intadd_32_B_1_), .S(n9) );
FA_INVERSE U30 ( .A(sample_in[144]), .B(sample_in[128]), .CI(sample_in[104]), .CO(intadd_32_A_1_), .S(intadd_41_A_0_) );
IAO21D0BWP30P140HVT U31 ( .A1(sample_in[9]), .A2(sample_in[1]), .B(intadd_48_B_1_), .ZN(intadd_58_A_1_) );
FA_INVERSE U32 ( .A(sample_in[98]), .B(sample_in[82]), .CI(sample_in[58]), .CO(n36), .S(n25) );
FA_INVERSE U33 ( .A(sample_in[130]), .B(sample_in[114]), .CI(sample_in[74]), .CO(n37), .S(n24) );
FA_INVERSE U34 ( .A(sample_in[250]), .B(sample_in[242]), .CI(sample_in[138]), .CO(n35), .S(n23) );
FA_INVERSE U35 ( .A(n21), .B(n20), .CI(n19), .CO(intadd_32_B_4_), .S(intadd_35_A_3_) );
FA_INVERSE U36 ( .A(n24), .B(n23), .CI(n22), .CO(n19), .S(intadd_35_A_2_) );
FA_INVERSE U37 ( .A(intadd_39_SUM_0_), .B(n26), .CI(n25), .CO(n20),.S(intadd_56_A_2_) );
FA_INVERSE U38 ( .A(intadd_37_SUM_3_), .B(n27), .CI(intadd_39_SUM_3_),.CO(intadd_32_B_6_), .S(intadd_35_B_5_) );
FA_INVERSE U39 ( .A(intadd_54_SUM_2_), .B(n28), .CI(intadd_37_SUM_2_),.CO(n27), .S(intadd_35_A_4_) );
FA_INVERSE U40 ( .A(sample_in[217]), .B(sample_in[233]), .CI(sample_in[153]), .CO(intadd_31_B_1_), .S(n15) );
FA_INVERSE U41 ( .A(sample_in[65]), .B(sample_in[49]), .CI(sample_in[41]), .CO(intadd_31_A_1_), .S(intadd_47_CI) );
FA_INVERSE U42 ( .A(n31), .B(n30), .CI(n29), .CO(intadd_31_B_2_), .S(n18) );
FA_INVERSE U43 ( .A(sample_in[225]), .B(sample_in[209]), .CI(sample_in[121]), .CO(intadd_46_B_1_), .S(intadd_35_A_1_) );
FA_INVERSE U44 ( .A(sample_in[193]), .B(sample_in[177]), .CI(sample_in[105]), .CO(intadd_46_A_1_), .S(n2) );
FA_INVERSE U45 ( .A(n34), .B(n33), .CI(n32), .CO(intadd_45_B_1_), .S(intadd_30_B_3_) );
FA_INVERSE U46 ( .A(sample_in[218]), .B(sample_in[234]), .CI(sample_in[154]), .CO(intadd_39_B_1_), .S(n26) );
FA_INVERSE U47 ( .A(sample_in[34]), .B(sample_in[18]), .CI(sample_in[26]), .CO(intadd_39_A_1_), .S(intadd_58_B_2_) );
FA_INVERSE U48 ( .A(n37), .B(n36), .CI(n35), .CO(intadd_39_B_2_), .S(n21) );
FA_INVERSE U49 ( .A(n40), .B(n39), .CI(n38), .CO(intadd_39_B_3_), .S(n28) );
FA_INVERSE U50 ( .A(n42), .B(intadd_38_SUM_0_), .CI(n41), .CO(intadd_39_A_3_), .S(intadd_31_B_3_) );
FA_INVERSE U51 ( .A(n43), .B(intadd_44_SUM_1_), .CI(intadd_55_SUM_2_),.CO(intadd_39_B_4_), .S(intadd_32_A_5_) );
FA_INVERSE U52 ( .A(sample_in[162]), .B(sample_in[146]), .CI(sample_in[90]), .CO(intadd_37_B_1_), .S(n22) );
FA_INVERSE U53 ( .A(sample_in[194]), .B(sample_in[178]), .CI(sample_in[106]), .CO(intadd_37_A_1_), .S(intadd_32_B_2_) );
FA_INVERSE U54 ( .A(sample_in[219]), .B(sample_in[235]), .CI(sample_in[155]), .CO(intadd_33_B_1_), .S(intadd_45_B_0_) );
FA_INVERSE U55 ( .A(sample_in[35]), .B(sample_in[19]), .CI(sample_in[27]), .CO(intadd_33_A_1_), .S(intadd_48_B_2_) );
FA_INVERSE U56 ( .A(sample_in[189]), .B(sample_in[173]), .CI(n51),.CO(n66), .S(n52) );
FA_INVERSE U57 ( .A(intadd_53_SUM_1_), .B(n45), .CI(n44), .CO(intadd_33_B_4_), .S(intadd_45_B_3_) );
FA_INVERSE U58 ( .A(n47), .B(intadd_49_SUM_0_), .CI(n46), .CO(n45),.S(intadd_45_A_2_) );
FA_INVERSE U59 ( .A(sample_in[163]), .B(sample_in[147]), .CI(sample_in[91]), .CO(intadd_36_B_1_), .S(n32) );
FA_INVERSE U60 ( .A(sample_in[195]), .B(sample_in[179]), .CI(sample_in[107]), .CO(intadd_36_A_1_), .S(intadd_46_B_2_) );
FA_INVERSE U61 ( .A(sample_in[251]), .B(sample_in[243]), .CI(sample_in[139]), .CO(n49), .S(n33) );
FA_INVERSE U62 ( .A(sample_in[131]), .B(sample_in[115]), .CI(sample_in[75]), .CO(n48), .S(n34) );
FA_INVERSE U63 ( .A(n50), .B(n49), .CI(n48), .CO(intadd_36_B_2_), .S(intadd_45_A_1_) );
FA_INVERSE U64 ( .A(sample_in[99]), .B(sample_in[83]), .CI(sample_in[59]), .CO(n50), .S(intadd_45_CI) );
FA_INVERSE U65 ( .A(intadd_53_SUM_0_), .B(n53), .CI(n52), .CO(intadd_44_B_2_), .S(n43) );
FA_INVERSE U66 ( .A(sample_in[68]), .B(sample_in[52]), .CI(sample_in[44]), .CO(intadd_40_B_1_), .S(n40) );
FA_INVERSE U67 ( .A(sample_in[36]), .B(sample_in[20]), .CI(sample_in[28]), .CO(intadd_40_A_1_), .S(intadd_54_B_2_) );
FA_INVERSE U68 ( .A(sample_in[132]), .B(sample_in[116]), .CI(sample_in[76]), .CO(n56), .S(n41) );
FA_INVERSE U69 ( .A(sample_in[220]), .B(sample_in[236]), .CI(sample_in[156]), .CO(n55), .S(n39) );
FA_INVERSE U70 ( .A(sample_in[100]), .B(sample_in[84]), .CI(sample_in[60]), .CO(n54), .S(n38) );
FA_INVERSE U71 ( .A(n56), .B(n55), .CI(n54), .CO(intadd_40_B_2_), .S(intadd_33_B_2_) );
FA_INVERSE U72 ( .A(sample_in[86]), .B(sample_in[70]), .CI(sample_in[46]), .CO(n81), .S(n64) );
FA_INVERSE U73 ( .A(sample_in[118]), .B(sample_in[102]), .CI(sample_in[62]), .CO(n80), .S(n62) );
FA_INVERSE U74 ( .A(sample_in[246]), .B(sample_in[230]), .CI(sample_in[126]), .CO(n82), .S(n60) );
FA_INVERSE U75 ( .A(n59), .B(n58), .CI(n57), .CO(intadd_40_B_4_), .S(intadd_37_A_5_) );
FA_INVERSE U76 ( .A(n61), .B(n60), .CI(intadd_50_SUM_0_), .CO(n57),.S(intadd_37_A_4_) );
FA_INVERSE U77 ( .A(n64), .B(n63), .CI(n62), .CO(n58), .S(intadd_33_A_3_) );
FA_INVERSE U78 ( .A(sample_in[196]), .B(sample_in[180]), .CI(sample_in[108]), .CO(intadd_38_B_1_), .S(intadd_37_B_2_) );
FA_INVERSE U79 ( .A(sample_in[164]), .B(sample_in[148]), .CI(sample_in[92]), .CO(intadd_38_A_1_), .S(n42) );
FA_INVERSE U80 ( .A(n67), .B(n66), .CI(n65), .CO(intadd_38_B_3_), .S(n44) );
FA_INVERSE U81 ( .A(sample_in[237]), .B(sample_in[253]), .CI(sample_in[141]), .CO(intadd_53_B_1_), .S(intadd_44_B_1_) );
FA_INVERSE U82 ( .A(sample_in[53]), .B(sample_in[37]), .CI(sample_in[29]), .CO(intadd_53_A_1_), .S(intadd_55_B_2_) );
FA_INVERSE U83 ( .A(sample_in[117]), .B(sample_in[101]), .CI(sample_in[61]), .CO(n70), .S(n46) );
FA_INVERSE U84 ( .A(sample_in[245]), .B(sample_in[229]), .CI(sample_in[125]), .CO(n69), .S(n53) );
FA_INVERSE U85 ( .A(sample_in[85]), .B(sample_in[69]), .CI(sample_in[45]), .CO(n68), .S(n47) );
FA_INVERSE U86 ( .A(n70), .B(n69), .CI(n68), .CO(intadd_53_B_2_), .S(intadd_36_A_3_) );
FA_INVERSE U87 ( .A(sample_in[213]), .B(sample_in[197]), .CI(sample_in[109]), .CO(intadd_49_B_1_), .S(intadd_55_A_2_) );
FA_INVERSE U88 ( .A(sample_in[149]), .B(sample_in[133]), .CI(sample_in[77]), .CO(intadd_49_A_1_), .S(intadd_36_A_2_) );
FA_INVERSE U89 ( .A(intadd_52_SUM_1_), .B(n72), .CI(n71), .CO(intadd_38_A_5_), .S(intadd_36_A_5_) );
FA_INVERSE U90 ( .A(n75), .B(n74), .CI(n73), .CO(n71), .S(intadd_44_A_3_) );
FA_INVERSE U91 ( .A(n78), .B(n77), .CI(n76), .CO(n72), .S(intadd_40_A_3_) );
FA_INVERSE U92 ( .A(sample_in[214]), .B(sample_in[198]), .CI(sample_in[110]), .CO(intadd_42_B_1_), .S(n63) );
FA_INVERSE U93 ( .A(sample_in[150]), .B(sample_in[134]), .CI(sample_in[78]), .CO(intadd_42_A_1_), .S(intadd_38_B_2_) );
FA_INVERSE U94 ( .A(sample_in[215]), .B(sample_in[199]), .CI(sample_in[111]), .CO(intadd_42_B_2_), .S(intadd_49_B_2_) );
FA_INVERSE U95 ( .A(sample_in[206]), .B(sample_in[222]), .CI(sample_in[158]), .CO(n79), .S(n65) );
FA_INVERSE U96 ( .A(sample_in[191]), .B(sample_in[175]), .CI(U95_U96),.CO(intadd_42_A_2_), .S(intadd_53_A_2_) );
FA_INVERSE U97 ( .A(sample_in[238]), .B(sample_in[254]), .CI(sample_in[142]), .CO(intadd_50_B_1_), .S(n67) );
FA_INVERSE U98 ( .A(sample_in[54]), .B(sample_in[38]), .CI(sample_in[30]), .CO(intadd_50_A_1_), .S(n61) );
FA_INVERSE U99 ( .A(n82), .B(n81), .CI(n80), .CO(intadd_50_B_2_), .S(n59) );
FA_INVERSE U100 ( .A(sample_in[55]), .B(sample_in[39]), .CI(sample_in[31]), .CO(intadd_52_B_1_), .S(n73) );
FA_INVERSE U101 ( .A(sample_in[23]), .B(sample_in[7]), .CI(sample_in[15]), .CO(intadd_52_A_1_), .S(intadd_43_A_2_) );
FA_INVERSE U102 ( .A(sample_in[247]), .B(sample_in[231]), .CI(sample_in[127]), .CO(n84), .S(n77) );
FA_INVERSE U103 ( .A(sample_in[151]), .B(sample_in[135]), .CI(sample_in[79]), .CO(n83), .S(n78) );
FA_INVERSE U104 ( .A(n85), .B(n84), .CI(n83), .CO(intadd_52_B_2_),.S(intadd_50_A_2_) );
FA_INVERSE U105 ( .A(sample_in[183]), .B(sample_in[167]), .CI(sample_in[95]), .CO(n85), .S(intadd_49_A_2_) );
FA_INVERSE U106 ( .A(sample_in[87]), .B(sample_in[71]), .CI(sample_in[47]), .CO(n88), .S(n75) );
FA_INVERSE U107 ( .A(sample_in[119]), .B(sample_in[103]), .CI(sample_in[63]), .CO(n87), .S(n76) );
FA_INVERSE U108 ( .A(sample_in[239]), .B(sample_in[255]), .CI(sample_in[143]), .CO(n86), .S(n74) );
FA_INVERSE U109 ( .A(n88), .B(n87), .CI(n86), .CO(intadd_52_A_2_),.S(intadd_43_A_3_) );
INVD0BWP30P140HVT inv_0_ (.I(intadd_52_n1),.ZN(intadd_52_U2_intadd_38_U2));
INVD0BWP30P140HVT inv_1_ (.I(intadd_42_n3),.ZN(intadd_42_U4_intadd_42_U3));
INVD0BWP30P140HVT inv_2_ (.I(intadd_42_n2),.ZN(intadd_42_U3_intadd_42_U2));
INVD0BWP30P140HVT inv_3_ (.I(intadd_38_A_4_),.ZN(intadd_42_U3_intadd_38_U4));
INVD0BWP30P140HVT inv_4_ (.I(intadd_49_n2),.ZN(intadd_49_U3_intadd_49_U2));
INVD0BWP30P140HVT inv_5_ (.I(intadd_43_n4),.ZN(intadd_43_U5_intadd_43_U4));
INVD0BWP30P140HVT inv_6_ (.I(intadd_40_A_2_),.ZN(intadd_43_U4_intadd_40_U4));
INVD0BWP30P140HVT inv_7_ (.I(intadd_36_A_4_),.ZN(intadd_43_U3_intadd_36_U4));
INVD0BWP30P140HVT inv_8_ (.I(intadd_33_A_5_),.ZN(intadd_43_U2_intadd_33_U4));
INVD0BWP30P140HVT inv_9_ (.I(intadd_38_n6),.ZN(intadd_38_U7_intadd_38_U6));
INVD0BWP30P140HVT inv_10_ (.I(intadd_38_n3),.ZN(intadd_38_U4_intadd_38_U3));
INVD0BWP30P140HVT inv_11_ (.I(intadd_33_B_6_),.ZN(intadd_38_U3_intadd_33_U3));
INVD0BWP30P140HVT inv_12_ (.I(intadd_40_n3),.ZN(intadd_40_U4_intadd_40_U3));
INVD0BWP30P140HVT inv_13_ (.I(intadd_44_n2),.ZN(intadd_44_U3_intadd_44_U2));
INVD0BWP30P140HVT inv_14_ (.I(intadd_39_A_5_),.ZN(intadd_44_U2_intadd_39_U2));
INVD0BWP30P140HVT inv_15_ (.I(intadd_55_n3),.ZN(intadd_55_U4_intadd_55_U3));
INVD0BWP30P140HVT inv_16_ (.I(intadd_39_A_2_),.ZN(intadd_55_U3_intadd_39_U5));
INVD0BWP30P140HVT inv_17_ (.I(intadd_36_n5),.ZN(intadd_36_U6_intadd_36_U5));
INVD0BWP30P140HVT inv_18_ (.I(intadd_36_n3),.ZN(intadd_36_U4_intadd_36_U3));
INVD0BWP30P140HVT inv_19_ (.I(intadd_33_n6),.ZN(intadd_33_U7_intadd_33_U6));
INVD0BWP30P140HVT inv_20_ (.I(intadd_31_A_5_),.ZN(intadd_33_U6_intadd_31_U5));
INVD0BWP30P140HVT inv_21_ (.I(intadd_33_n2),.ZN(intadd_33_U3_intadd_33_U2));
INVD0BWP30P140HVT inv_22_ (.I(intadd_33_n1),.ZN(intadd_33_U2_intadd_30_U2));
INVD0BWP30P140HVT inv_23_ (.I(intadd_54_n3),.ZN(intadd_54_U4_intadd_54_U3));
INVD0BWP30P140HVT inv_24_ (.I(intadd_31_A_2_),.ZN(intadd_54_U3_intadd_31_U8));
INVD0BWP30P140HVT inv_25_ (.I(intadd_37_n6),.ZN(intadd_37_U7_intadd_37_U6));
INVD0BWP30P140HVT inv_26_ (.I(intadd_37_n3),.ZN(intadd_37_U4_intadd_37_U3));
INVD0BWP30P140HVT inv_27_ (.I(intadd_32_B_7_),.ZN(intadd_37_U3_intadd_32_U3));
INVD0BWP30P140HVT inv_28_ (.I(intadd_37_n1),.ZN(intadd_37_U2_intadd_31_U2));
INVD0BWP30P140HVT inv_29_ (.I(intadd_32_B_8_),.ZN(intadd_37_U2_intadd_32_U2));
INVD0BWP30P140HVT inv_30_ (.I(intadd_39_n4),.ZN(intadd_39_U5_intadd_39_U4));
INVD0BWP30P140HVT inv_31_ (.I(intadd_45_n2),.ZN(intadd_45_U3_intadd_45_U2));
INVD0BWP30P140HVT inv_32_ (.I(intadd_30_A_6_),.ZN(intadd_45_U2_intadd_30_U7));
INVD0BWP30P140HVT inv_33_ (.I(intadd_48_n3),.ZN(intadd_48_U4_intadd_48_U3));
INVD0BWP30P140HVT inv_34_ (.I(intadd_30_A_2_),.ZN(intadd_48_U3_intadd_30_U11));
INVD0BWP30P140HVT inv_35_ (.I(intadd_46_n3),.ZN(intadd_46_U4_intadd_46_U3));
INVD0BWP30P140HVT inv_36_ (.I(intadd_31_n7),.ZN(intadd_31_U8_intadd_31_U7));
INVD0BWP30P140HVT inv_37_ (.I(intadd_31_n4),.ZN(intadd_31_U5_intadd_31_U4));
INVD0BWP30P140HVT inv_38_ (.I(intadd_30_A_7_),.ZN(intadd_31_U4_intadd_30_U6));
INVD0BWP30P140HVT inv_39_ (.I(intadd_31_n1),.ZN(intadd_31_U2_intadd_30_U3));
INVD0BWP30P140HVT inv_40_ (.I(intadd_58_n3),.ZN(intadd_58_U4_intadd_58_U3));
INVD0BWP30P140HVT inv_41_ (.I(intadd_32_n8),.ZN(intadd_32_U9_intadd_32_U8));
INVD0BWP30P140HVT inv_42_ (.I(intadd_32_n4),.ZN(intadd_32_U5_intadd_32_U4));
INVD0BWP30P140HVT inv_43_ (.I(intadd_32_SUM_6_),.ZN(intadd_32_U4_intadd_35_U2));
INVD0BWP30P140HVT inv_44_ (.I(intadd_47_n2),.ZN(intadd_47_U3_intadd_47_U2));
INVD0BWP30P140HVT inv_45_ (.I(intadd_30_n10),.ZN(intadd_30_U11_intadd_30_U10));
INVD0BWP30P140HVT inv_46_ (.I(intadd_56_n2),.ZN(intadd_56_U3_intadd_56_U2));
INVD0BWP30P140HVT inv_47_ (.I(intadd_51_A_1_),.ZN(intadd_56_U2_intadd_51_U3));
INVD0BWP30P140HVT inv_48_ (.I(intadd_35_n7),.ZN(intadd_35_U8_intadd_35_U7));
INVD0BWP30P140HVT inv_49_ (.I(intadd_35_SUM_0_),.ZN(intadd_35_U8_intadd_41_U6));
INVD0BWP30P140HVT inv_50_ (.I(intadd_35_SUM_1_),.ZN(intadd_35_U7_intadd_51_U4));
INVD0BWP30P140HVT inv_51_ (.I(intadd_35_SUM_5_),.ZN(intadd_35_U3_intadd_57_U2));
INVD0BWP30P140HVT inv_52_ (.I(intadd_34_A_4_),.ZN(intadd_57_U3_intadd_34_U5));
INVD0BWP30P140HVT inv_53_ (.I(intadd_57_n1),.ZN(intadd_57_U2_intadd_34_U3));
INVD0BWP30P140HVT inv_54_ (.I(intadd_34_A_1_),.ZN(intadd_51_U4_intadd_34_U8));
INVD0BWP30P140HVT inv_55_ (.I(intadd_51_n2),.ZN(intadd_51_U3_intadd_51_U2));
INVD0BWP30P140HVT inv_56_ (.I(intadd_34_B_2_),.ZN(intadd_51_U3_intadd_34_U7));
INVD0BWP30P140HVT inv_57_ (.I(edge_nd_1280),.ZN(intadd_34_U9_psum_reg_0_));
INVD0BWP30P140HVT inv_58_ (.I(edge_nd_1282),.ZN(intadd_34_U7_psum_reg_2_));
INVD0BWP30P140HVT inv_59_ (.I(edge_nd_1284),.ZN(intadd_34_U5_psum_reg_4_));
INVD0BWP30P140HVT inv_60_ (.I(intadd_34_n4),.ZN(intadd_34_U5_intadd_34_U4));
INVD0BWP30P140HVT inv_61_ (.I(edge_nd_1285),.ZN(intadd_34_U4_psum_reg_5_));
INVD0BWP30P140HVT inv_62_ (.I(intadd_34_n2),.ZN(intadd_34_U3_intadd_34_U2));
INVD0BWP30P140HVT inv_63_ (.I(intadd_34_n1),.ZN(intadd_34_U2_intadd_30_U5));
INVD0BWP30P140HVT inv_64_ (.I(intadd_30_n4),.ZN(intadd_30_U5_intadd_30_U4));
INVD0BWP30P140HVT inv_65_ (.I(edge_nd_1290),.ZN(intadd_30_U3_psum_reg_10_));
INVD0BWP30P140HVT inv_66_ (.I(intadd_35_B_0_),.ZN(U16_intadd_35_U8));
INVD0BWP30P140HVT inv_67_ (.I(intadd_35_B_5_),.ZN(U38_intadd_35_U3));
INVD0BWP30P140HVT inv_68_ (.I(intadd_35_A_4_),.ZN(U39_intadd_35_U4));
INVD0BWP30P140HVT inv_69_ (.I(intadd_32_A_5_),.ZN(U51_intadd_32_U5));
INVD0BWP30P140HVT inv_70_ (.I(intadd_45_A_2_),.ZN(U58_intadd_45_U3));
INVD0BWP30P140HVT inv_71_ (.I(intadd_37_A_4_),.ZN(U76_intadd_37_U4));
INVD0BWP30P140HVT inv_72_ (.I(intadd_36_A_2_),.ZN(U88_intadd_36_U6));
INVD0BWP30P140HVT inv_73_ (.I(n79),.ZN(U95_U96));
INVD0BWP30P140HVT inv_74_ (.I(intadd_53_A_2_),.ZN(U96_intadd_53_U2));
endmodule

