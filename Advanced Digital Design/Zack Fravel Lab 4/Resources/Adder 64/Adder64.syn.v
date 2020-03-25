/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12-SP5
// Date      : Sun Nov  5 13:08:42 2017
/////////////////////////////////////////////////////////////


module Adder64 ( A, B, cin, sum, cout );
  input [63:0] A;
  input [63:0] B;
  output [63:0] sum;
  input cin;
  output cout;
  wire   \intadd_0/n64 , \intadd_0/n63 , \intadd_0/n62 , \intadd_0/n61 ,
         \intadd_0/n60 , \intadd_0/n59 , \intadd_0/n58 , \intadd_0/n57 ,
         \intadd_0/n56 , \intadd_0/n55 , \intadd_0/n54 , \intadd_0/n53 ,
         \intadd_0/n52 , \intadd_0/n51 , \intadd_0/n50 , \intadd_0/n49 ,
         \intadd_0/n48 , \intadd_0/n47 , \intadd_0/n46 , \intadd_0/n45 ,
         \intadd_0/n44 , \intadd_0/n43 , \intadd_0/n42 , \intadd_0/n41 ,
         \intadd_0/n40 , \intadd_0/n39 , \intadd_0/n38 , \intadd_0/n37 ,
         \intadd_0/n36 , \intadd_0/n35 , \intadd_0/n34 , \intadd_0/n33 ,
         \intadd_0/n32 , \intadd_0/n31 , \intadd_0/n30 , \intadd_0/n29 ,
         \intadd_0/n28 , \intadd_0/n27 , \intadd_0/n26 , \intadd_0/n25 ,
         \intadd_0/n24 , \intadd_0/n23 , \intadd_0/n22 , \intadd_0/n21 ,
         \intadd_0/n20 , \intadd_0/n19 , \intadd_0/n18 , \intadd_0/n17 ,
         \intadd_0/n16 , \intadd_0/n15 , \intadd_0/n14 , \intadd_0/n13 ,
         \intadd_0/n12 , \intadd_0/n11 , \intadd_0/n10 , \intadd_0/n9 ,
         \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 ;
  assign cout = \intadd_0/n1 ;

  FAX1 \intadd_0/U65  ( .A(cin), .B(B[0]), .C(A[0]), .YC(\intadd_0/n64 ), .YS(
        sum[0]) );
  FAX1 \intadd_0/U64  ( .A(B[1]), .B(A[1]), .C(\intadd_0/n64 ), .YC(
        \intadd_0/n63 ), .YS(sum[1]) );
  FAX1 \intadd_0/U63  ( .A(B[2]), .B(A[2]), .C(\intadd_0/n63 ), .YC(
        \intadd_0/n62 ), .YS(sum[2]) );
  FAX1 \intadd_0/U62  ( .A(B[3]), .B(A[3]), .C(\intadd_0/n62 ), .YC(
        \intadd_0/n61 ), .YS(sum[3]) );
  FAX1 \intadd_0/U61  ( .A(B[4]), .B(A[4]), .C(\intadd_0/n61 ), .YC(
        \intadd_0/n60 ), .YS(sum[4]) );
  FAX1 \intadd_0/U60  ( .A(B[5]), .B(A[5]), .C(\intadd_0/n60 ), .YC(
        \intadd_0/n59 ), .YS(sum[5]) );
  FAX1 \intadd_0/U59  ( .A(B[6]), .B(A[6]), .C(\intadd_0/n59 ), .YC(
        \intadd_0/n58 ), .YS(sum[6]) );
  FAX1 \intadd_0/U58  ( .A(B[7]), .B(A[7]), .C(\intadd_0/n58 ), .YC(
        \intadd_0/n57 ), .YS(sum[7]) );
  FAX1 \intadd_0/U57  ( .A(B[8]), .B(A[8]), .C(\intadd_0/n57 ), .YC(
        \intadd_0/n56 ), .YS(sum[8]) );
  FAX1 \intadd_0/U56  ( .A(B[9]), .B(A[9]), .C(\intadd_0/n56 ), .YC(
        \intadd_0/n55 ), .YS(sum[9]) );
  FAX1 \intadd_0/U55  ( .A(B[10]), .B(A[10]), .C(\intadd_0/n55 ), .YC(
        \intadd_0/n54 ), .YS(sum[10]) );
  FAX1 \intadd_0/U54  ( .A(B[11]), .B(A[11]), .C(\intadd_0/n54 ), .YC(
        \intadd_0/n53 ), .YS(sum[11]) );
  FAX1 \intadd_0/U53  ( .A(B[12]), .B(A[12]), .C(\intadd_0/n53 ), .YC(
        \intadd_0/n52 ), .YS(sum[12]) );
  FAX1 \intadd_0/U52  ( .A(B[13]), .B(A[13]), .C(\intadd_0/n52 ), .YC(
        \intadd_0/n51 ), .YS(sum[13]) );
  FAX1 \intadd_0/U51  ( .A(B[14]), .B(A[14]), .C(\intadd_0/n51 ), .YC(
        \intadd_0/n50 ), .YS(sum[14]) );
  FAX1 \intadd_0/U50  ( .A(B[15]), .B(A[15]), .C(\intadd_0/n50 ), .YC(
        \intadd_0/n49 ), .YS(sum[15]) );
  FAX1 \intadd_0/U49  ( .A(B[16]), .B(A[16]), .C(\intadd_0/n49 ), .YC(
        \intadd_0/n48 ), .YS(sum[16]) );
  FAX1 \intadd_0/U48  ( .A(B[17]), .B(A[17]), .C(\intadd_0/n48 ), .YC(
        \intadd_0/n47 ), .YS(sum[17]) );
  FAX1 \intadd_0/U47  ( .A(B[18]), .B(A[18]), .C(\intadd_0/n47 ), .YC(
        \intadd_0/n46 ), .YS(sum[18]) );
  FAX1 \intadd_0/U46  ( .A(B[19]), .B(A[19]), .C(\intadd_0/n46 ), .YC(
        \intadd_0/n45 ), .YS(sum[19]) );
  FAX1 \intadd_0/U45  ( .A(B[20]), .B(A[20]), .C(\intadd_0/n45 ), .YC(
        \intadd_0/n44 ), .YS(sum[20]) );
  FAX1 \intadd_0/U44  ( .A(B[21]), .B(A[21]), .C(\intadd_0/n44 ), .YC(
        \intadd_0/n43 ), .YS(sum[21]) );
  FAX1 \intadd_0/U43  ( .A(B[22]), .B(A[22]), .C(\intadd_0/n43 ), .YC(
        \intadd_0/n42 ), .YS(sum[22]) );
  FAX1 \intadd_0/U42  ( .A(B[23]), .B(A[23]), .C(\intadd_0/n42 ), .YC(
        \intadd_0/n41 ), .YS(sum[23]) );
  FAX1 \intadd_0/U41  ( .A(B[24]), .B(A[24]), .C(\intadd_0/n41 ), .YC(
        \intadd_0/n40 ), .YS(sum[24]) );
  FAX1 \intadd_0/U40  ( .A(B[25]), .B(A[25]), .C(\intadd_0/n40 ), .YC(
        \intadd_0/n39 ), .YS(sum[25]) );
  FAX1 \intadd_0/U39  ( .A(B[26]), .B(A[26]), .C(\intadd_0/n39 ), .YC(
        \intadd_0/n38 ), .YS(sum[26]) );
  FAX1 \intadd_0/U38  ( .A(B[27]), .B(A[27]), .C(\intadd_0/n38 ), .YC(
        \intadd_0/n37 ), .YS(sum[27]) );
  FAX1 \intadd_0/U37  ( .A(B[28]), .B(A[28]), .C(\intadd_0/n37 ), .YC(
        \intadd_0/n36 ), .YS(sum[28]) );
  FAX1 \intadd_0/U36  ( .A(B[29]), .B(A[29]), .C(\intadd_0/n36 ), .YC(
        \intadd_0/n35 ), .YS(sum[29]) );
  FAX1 \intadd_0/U35  ( .A(B[30]), .B(A[30]), .C(\intadd_0/n35 ), .YC(
        \intadd_0/n34 ), .YS(sum[30]) );
  FAX1 \intadd_0/U34  ( .A(B[31]), .B(A[31]), .C(\intadd_0/n34 ), .YC(
        \intadd_0/n33 ), .YS(sum[31]) );
  FAX1 \intadd_0/U33  ( .A(B[32]), .B(A[32]), .C(\intadd_0/n33 ), .YC(
        \intadd_0/n32 ), .YS(sum[32]) );
  FAX1 \intadd_0/U32  ( .A(B[33]), .B(A[33]), .C(\intadd_0/n32 ), .YC(
        \intadd_0/n31 ), .YS(sum[33]) );
  FAX1 \intadd_0/U31  ( .A(B[34]), .B(A[34]), .C(\intadd_0/n31 ), .YC(
        \intadd_0/n30 ), .YS(sum[34]) );
  FAX1 \intadd_0/U30  ( .A(B[35]), .B(A[35]), .C(\intadd_0/n30 ), .YC(
        \intadd_0/n29 ), .YS(sum[35]) );
  FAX1 \intadd_0/U29  ( .A(B[36]), .B(A[36]), .C(\intadd_0/n29 ), .YC(
        \intadd_0/n28 ), .YS(sum[36]) );
  FAX1 \intadd_0/U28  ( .A(B[37]), .B(A[37]), .C(\intadd_0/n28 ), .YC(
        \intadd_0/n27 ), .YS(sum[37]) );
  FAX1 \intadd_0/U27  ( .A(B[38]), .B(A[38]), .C(\intadd_0/n27 ), .YC(
        \intadd_0/n26 ), .YS(sum[38]) );
  FAX1 \intadd_0/U26  ( .A(B[39]), .B(A[39]), .C(\intadd_0/n26 ), .YC(
        \intadd_0/n25 ), .YS(sum[39]) );
  FAX1 \intadd_0/U25  ( .A(B[40]), .B(A[40]), .C(\intadd_0/n25 ), .YC(
        \intadd_0/n24 ), .YS(sum[40]) );
  FAX1 \intadd_0/U24  ( .A(B[41]), .B(A[41]), .C(\intadd_0/n24 ), .YC(
        \intadd_0/n23 ), .YS(sum[41]) );
  FAX1 \intadd_0/U23  ( .A(B[42]), .B(A[42]), .C(\intadd_0/n23 ), .YC(
        \intadd_0/n22 ), .YS(sum[42]) );
  FAX1 \intadd_0/U22  ( .A(B[43]), .B(A[43]), .C(\intadd_0/n22 ), .YC(
        \intadd_0/n21 ), .YS(sum[43]) );
  FAX1 \intadd_0/U21  ( .A(B[44]), .B(A[44]), .C(\intadd_0/n21 ), .YC(
        \intadd_0/n20 ), .YS(sum[44]) );
  FAX1 \intadd_0/U20  ( .A(B[45]), .B(A[45]), .C(\intadd_0/n20 ), .YC(
        \intadd_0/n19 ), .YS(sum[45]) );
  FAX1 \intadd_0/U19  ( .A(B[46]), .B(A[46]), .C(\intadd_0/n19 ), .YC(
        \intadd_0/n18 ), .YS(sum[46]) );
  FAX1 \intadd_0/U18  ( .A(B[47]), .B(A[47]), .C(\intadd_0/n18 ), .YC(
        \intadd_0/n17 ), .YS(sum[47]) );
  FAX1 \intadd_0/U17  ( .A(B[48]), .B(A[48]), .C(\intadd_0/n17 ), .YC(
        \intadd_0/n16 ), .YS(sum[48]) );
  FAX1 \intadd_0/U16  ( .A(B[49]), .B(A[49]), .C(\intadd_0/n16 ), .YC(
        \intadd_0/n15 ), .YS(sum[49]) );
  FAX1 \intadd_0/U15  ( .A(B[50]), .B(A[50]), .C(\intadd_0/n15 ), .YC(
        \intadd_0/n14 ), .YS(sum[50]) );
  FAX1 \intadd_0/U14  ( .A(B[51]), .B(A[51]), .C(\intadd_0/n14 ), .YC(
        \intadd_0/n13 ), .YS(sum[51]) );
  FAX1 \intadd_0/U13  ( .A(B[52]), .B(A[52]), .C(\intadd_0/n13 ), .YC(
        \intadd_0/n12 ), .YS(sum[52]) );
  FAX1 \intadd_0/U12  ( .A(B[53]), .B(A[53]), .C(\intadd_0/n12 ), .YC(
        \intadd_0/n11 ), .YS(sum[53]) );
  FAX1 \intadd_0/U11  ( .A(B[54]), .B(A[54]), .C(\intadd_0/n11 ), .YC(
        \intadd_0/n10 ), .YS(sum[54]) );
  FAX1 \intadd_0/U10  ( .A(B[55]), .B(A[55]), .C(\intadd_0/n10 ), .YC(
        \intadd_0/n9 ), .YS(sum[55]) );
  FAX1 \intadd_0/U9  ( .A(B[56]), .B(A[56]), .C(\intadd_0/n9 ), .YC(
        \intadd_0/n8 ), .YS(sum[56]) );
  FAX1 \intadd_0/U8  ( .A(B[57]), .B(A[57]), .C(\intadd_0/n8 ), .YC(
        \intadd_0/n7 ), .YS(sum[57]) );
  FAX1 \intadd_0/U7  ( .A(B[58]), .B(A[58]), .C(\intadd_0/n7 ), .YC(
        \intadd_0/n6 ), .YS(sum[58]) );
  FAX1 \intadd_0/U6  ( .A(B[59]), .B(A[59]), .C(\intadd_0/n6 ), .YC(
        \intadd_0/n5 ), .YS(sum[59]) );
  FAX1 \intadd_0/U5  ( .A(B[60]), .B(A[60]), .C(\intadd_0/n5 ), .YC(
        \intadd_0/n4 ), .YS(sum[60]) );
  FAX1 \intadd_0/U4  ( .A(B[61]), .B(A[61]), .C(\intadd_0/n4 ), .YC(
        \intadd_0/n3 ), .YS(sum[61]) );
  FAX1 \intadd_0/U3  ( .A(B[62]), .B(A[62]), .C(\intadd_0/n3 ), .YC(
        \intadd_0/n2 ), .YS(sum[62]) );
  FAX1 \intadd_0/U2  ( .A(B[63]), .B(A[63]), .C(\intadd_0/n2 ), .YC(
        \intadd_0/n1 ), .YS(sum[63]) );
endmodule

