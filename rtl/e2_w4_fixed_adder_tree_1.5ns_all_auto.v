/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Mon Nov 13 10:51:49 2023
/////////////////////////////////////////////////////////////


module e2_w4_fixed_adder_tree ( clk, rst_n, a, psum );
  input [15:0] a;
  output [5:0] psum;
  input clk, rst_n;
  wire   edge_nd_36, edge_nd_35, edge_nd_34, edge_nd_33, edge_nd_32,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_CI, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n1, n2, n3, n4, n5;
  wire   [15:0] sample_in;

  DFCNQD1BWP30P140HVT sample_in_reg_3_ ( .D(a[3]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[3]) );
  DFCNQD1BWP30P140HVT sample_in_reg_2_ ( .D(a[2]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[2]) );
  DFCNQD1BWP30P140HVT sample_in_reg_1_ ( .D(a[1]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[1]) );
  DFCNQD1BWP30P140HVT sample_in_reg_0_ ( .D(a[0]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[0]) );
  DFCNQD1BWP30P140HVT sample_in_reg_7_ ( .D(a[7]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[7]) );
  DFCNQD1BWP30P140HVT sample_in_reg_6_ ( .D(a[6]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[6]) );
  DFCNQD1BWP30P140HVT sample_in_reg_5_ ( .D(a[5]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[5]) );
  DFCNQD1BWP30P140HVT sample_in_reg_4_ ( .D(a[4]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[4]) );
  DFCNQD1BWP30P140HVT sample_in_reg_11_ ( .D(a[11]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[11]) );
  DFCNQD1BWP30P140HVT sample_in_reg_10_ ( .D(a[10]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[10]) );
  DFCNQD1BWP30P140HVT sample_in_reg_9_ ( .D(a[9]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[9]) );
  DFCNQD1BWP30P140HVT sample_in_reg_8_ ( .D(a[8]), .CP(clk), .CDN(rst_n), .Q(
        sample_in[8]) );
  DFCNQD1BWP30P140HVT sample_in_reg_15_ ( .D(a[15]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[15]) );
  DFCNQD1BWP30P140HVT sample_in_reg_14_ ( .D(a[14]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[14]) );
  DFCNQD1BWP30P140HVT sample_in_reg_13_ ( .D(a[13]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[13]) );
  DFCNQD1BWP30P140HVT sample_in_reg_12_ ( .D(a[12]), .CP(clk), .CDN(rst_n),
        .Q(sample_in[12]) );
  DFCNQD1BWP30P140HVT psum_reg_5_ ( .D(intadd_0_n1), .CP(clk), .CDN(rst_n),
        .Q(psum[5]) );
  DFCNQD1BWP30P140HVT psum_reg_4_ ( .D(edge_nd_36), .CP(clk), .CDN(rst_n), .Q(
        psum[4]) );
  DFCNQD1BWP30P140HVT psum_reg_3_ ( .D(edge_nd_35), .CP(clk), .CDN(rst_n), .Q(
        psum[3]) );
  DFCNQD1BWP30P140HVT psum_reg_2_ ( .D(edge_nd_34), .CP(clk), .CDN(rst_n), .Q(
        psum[2]) );
  DFCNQD1BWP30P140HVT psum_reg_1_ ( .D(edge_nd_33), .CP(clk), .CDN(rst_n), .Q(
        psum[1]) );
  DFCNQD1BWP30P140HVT psum_reg_0_ ( .D(edge_nd_32), .CP(clk), .CDN(rst_n), .Q(
        psum[0]) );
  FA1D0BWP30P140HVT intadd_0_U6 ( .A(sample_in[8]), .B(sample_in[4]), .CI(
        intadd_0_CI), .CO(intadd_0_n5), .S(edge_nd_32) );
  FA1D0BWP30P140HVT intadd_0_U5 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(edge_nd_33) );
  FA1D0BWP30P140HVT intadd_0_U4 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(edge_nd_34) );
  FA1D0BWP30P140HVT intadd_0_U3 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(edge_nd_35) );
  FA1D0BWP30P140HVT intadd_0_U2 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(edge_nd_36) );
  AN2D0BWP30P140HVT U3 ( .A1(sample_in[12]), .A2(sample_in[0]), .Z(n3) );
  AN2D0BWP30P140HVT U4 ( .A1(sample_in[13]), .A2(sample_in[5]), .Z(n1) );
  IAO21D0BWP30P140HVT U5 ( .A1(sample_in[12]), .A2(sample_in[0]), .B(n3), .ZN(
        intadd_0_CI) );
  IAO21D0BWP30P140HVT U6 ( .A1(sample_in[13]), .A2(sample_in[5]), .B(n1), .ZN(
        intadd_0_B_1_) );
  FA1D0BWP30P140HVT U7 ( .A(sample_in[2]), .B(n2), .CI(n1), .CO(intadd_0_B_3_),
        .S(intadd_0_A_2_) );
  FA1D0BWP30P140HVT U8 ( .A(sample_in[9]), .B(sample_in[1]), .CI(n3), .CO(n2),
        .S(intadd_0_A_1_) );
  FA1D0BWP30P140HVT U9 ( .A(sample_in[3]), .B(n5), .CI(n4), .CO(intadd_0_B_4_),
        .S(intadd_0_A_3_) );
  FA1D0BWP30P140HVT U10 ( .A(sample_in[10]), .B(sample_in[6]), .CI(
        sample_in[14]), .CO(n4), .S(intadd_0_B_2_) );
  FA1D0BWP30P140HVT U11 ( .A(sample_in[11]), .B(sample_in[7]), .CI(
        sample_in[15]), .CO(intadd_0_A_4_), .S(n5) );
endmodule

