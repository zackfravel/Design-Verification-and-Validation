/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12-SP5
// Date      : Sun Nov  5 13:09:31 2017
/////////////////////////////////////////////////////////////


module Adder128 ( A, B, cin, sum, cout );
  input [127:0] A;
  input [127:0] B;
  output [127:0] sum;
  input cin;
  output cout;
  wire   \intadd_0/n128 , \intadd_0/n127 , \intadd_0/n126 , \intadd_0/n125 ,
         \intadd_0/n124 , \intadd_0/n123 , \intadd_0/n122 , \intadd_0/n121 ,
         \intadd_0/n120 , \intadd_0/n119 , \intadd_0/n118 , \intadd_0/n117 ,
         \intadd_0/n116 , \intadd_0/n115 , \intadd_0/n114 , \intadd_0/n113 ,
         \intadd_0/n112 , \intadd_0/n111 , \intadd_0/n110 , \intadd_0/n109 ,
         \intadd_0/n108 , \intadd_0/n107 , \intadd_0/n106 , \intadd_0/n105 ,
         \intadd_0/n104 , \intadd_0/n103 , \intadd_0/n102 , \intadd_0/n101 ,
         \intadd_0/n100 , \intadd_0/n99 , \intadd_0/n98 , \intadd_0/n97 ,
         \intadd_0/n96 , \intadd_0/n95 , \intadd_0/n94 , \intadd_0/n93 ,
         \intadd_0/n92 , \intadd_0/n91 , \intadd_0/n90 , \intadd_0/n89 ,
         \intadd_0/n88 , \intadd_0/n87 , \intadd_0/n86 , \intadd_0/n85 ,
         \intadd_0/n84 , \intadd_0/n83 , \intadd_0/n82 , \intadd_0/n81 ,
         \intadd_0/n80 , \intadd_0/n79 , \intadd_0/n78 , \intadd_0/n77 ,
         \intadd_0/n76 , \intadd_0/n75 , \intadd_0/n74 , \intadd_0/n73 ,
         \intadd_0/n72 , \intadd_0/n71 , \intadd_0/n70 , \intadd_0/n69 ,
         \intadd_0/n68 , \intadd_0/n67 , \intadd_0/n66 , \intadd_0/n65 ,
         \intadd_0/n64 , \intadd_0/n63 , \intadd_0/n62 , \intadd_0/n61 ,
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

  FAX1 \intadd_0/U129  ( .A(cin), .B(B[0]), .C(A[0]), .YC(\intadd_0/n128 ), 
        .YS(sum[0]) );
  FAX1 \intadd_0/U128  ( .A(B[1]), .B(A[1]), .C(\intadd_0/n128 ), .YC(
        \intadd_0/n127 ), .YS(sum[1]) );
  FAX1 \intadd_0/U127  ( .A(B[2]), .B(A[2]), .C(\intadd_0/n127 ), .YC(
        \intadd_0/n126 ), .YS(sum[2]) );
  FAX1 \intadd_0/U126  ( .A(B[3]), .B(A[3]), .C(\intadd_0/n126 ), .YC(
        \intadd_0/n125 ), .YS(sum[3]) );
  FAX1 \intadd_0/U125  ( .A(B[4]), .B(A[4]), .C(\intadd_0/n125 ), .YC(
        \intadd_0/n124 ), .YS(sum[4]) );
  FAX1 \intadd_0/U124  ( .A(B[5]), .B(A[5]), .C(\intadd_0/n124 ), .YC(
        \intadd_0/n123 ), .YS(sum[5]) );
  FAX1 \intadd_0/U123  ( .A(B[6]), .B(A[6]), .C(\intadd_0/n123 ), .YC(
        \intadd_0/n122 ), .YS(sum[6]) );
  FAX1 \intadd_0/U122  ( .A(B[7]), .B(A[7]), .C(\intadd_0/n122 ), .YC(
        \intadd_0/n121 ), .YS(sum[7]) );
  FAX1 \intadd_0/U121  ( .A(B[8]), .B(A[8]), .C(\intadd_0/n121 ), .YC(
        \intadd_0/n120 ), .YS(sum[8]) );
  FAX1 \intadd_0/U120  ( .A(B[9]), .B(A[9]), .C(\intadd_0/n120 ), .YC(
        \intadd_0/n119 ), .YS(sum[9]) );
  FAX1 \intadd_0/U119  ( .A(B[10]), .B(A[10]), .C(\intadd_0/n119 ), .YC(
        \intadd_0/n118 ), .YS(sum[10]) );
  FAX1 \intadd_0/U118  ( .A(B[11]), .B(A[11]), .C(\intadd_0/n118 ), .YC(
        \intadd_0/n117 ), .YS(sum[11]) );
  FAX1 \intadd_0/U117  ( .A(B[12]), .B(A[12]), .C(\intadd_0/n117 ), .YC(
        \intadd_0/n116 ), .YS(sum[12]) );
  FAX1 \intadd_0/U116  ( .A(B[13]), .B(A[13]), .C(\intadd_0/n116 ), .YC(
        \intadd_0/n115 ), .YS(sum[13]) );
  FAX1 \intadd_0/U115  ( .A(B[14]), .B(A[14]), .C(\intadd_0/n115 ), .YC(
        \intadd_0/n114 ), .YS(sum[14]) );
  FAX1 \intadd_0/U114  ( .A(B[15]), .B(A[15]), .C(\intadd_0/n114 ), .YC(
        \intadd_0/n113 ), .YS(sum[15]) );
  FAX1 \intadd_0/U113  ( .A(B[16]), .B(A[16]), .C(\intadd_0/n113 ), .YC(
        \intadd_0/n112 ), .YS(sum[16]) );
  FAX1 \intadd_0/U112  ( .A(B[17]), .B(A[17]), .C(\intadd_0/n112 ), .YC(
        \intadd_0/n111 ), .YS(sum[17]) );
  FAX1 \intadd_0/U111  ( .A(B[18]), .B(A[18]), .C(\intadd_0/n111 ), .YC(
        \intadd_0/n110 ), .YS(sum[18]) );
  FAX1 \intadd_0/U110  ( .A(B[19]), .B(A[19]), .C(\intadd_0/n110 ), .YC(
        \intadd_0/n109 ), .YS(sum[19]) );
  FAX1 \intadd_0/U109  ( .A(B[20]), .B(A[20]), .C(\intadd_0/n109 ), .YC(
        \intadd_0/n108 ), .YS(sum[20]) );
  FAX1 \intadd_0/U108  ( .A(B[21]), .B(A[21]), .C(\intadd_0/n108 ), .YC(
        \intadd_0/n107 ), .YS(sum[21]) );
  FAX1 \intadd_0/U107  ( .A(B[22]), .B(A[22]), .C(\intadd_0/n107 ), .YC(
        \intadd_0/n106 ), .YS(sum[22]) );
  FAX1 \intadd_0/U106  ( .A(B[23]), .B(A[23]), .C(\intadd_0/n106 ), .YC(
        \intadd_0/n105 ), .YS(sum[23]) );
  FAX1 \intadd_0/U105  ( .A(B[24]), .B(A[24]), .C(\intadd_0/n105 ), .YC(
        \intadd_0/n104 ), .YS(sum[24]) );
  FAX1 \intadd_0/U104  ( .A(B[25]), .B(A[25]), .C(\intadd_0/n104 ), .YC(
        \intadd_0/n103 ), .YS(sum[25]) );
  FAX1 \intadd_0/U103  ( .A(B[26]), .B(A[26]), .C(\intadd_0/n103 ), .YC(
        \intadd_0/n102 ), .YS(sum[26]) );
  FAX1 \intadd_0/U102  ( .A(B[27]), .B(A[27]), .C(\intadd_0/n102 ), .YC(
        \intadd_0/n101 ), .YS(sum[27]) );
  FAX1 \intadd_0/U101  ( .A(B[28]), .B(A[28]), .C(\intadd_0/n101 ), .YC(
        \intadd_0/n100 ), .YS(sum[28]) );
  FAX1 \intadd_0/U100  ( .A(B[29]), .B(A[29]), .C(\intadd_0/n100 ), .YC(
        \intadd_0/n99 ), .YS(sum[29]) );
  FAX1 \intadd_0/U99  ( .A(B[30]), .B(A[30]), .C(\intadd_0/n99 ), .YC(
        \intadd_0/n98 ), .YS(sum[30]) );
  FAX1 \intadd_0/U98  ( .A(B[31]), .B(A[31]), .C(\intadd_0/n98 ), .YC(
        \intadd_0/n97 ), .YS(sum[31]) );
  FAX1 \intadd_0/U97  ( .A(B[32]), .B(A[32]), .C(\intadd_0/n97 ), .YC(
        \intadd_0/n96 ), .YS(sum[32]) );
  FAX1 \intadd_0/U96  ( .A(B[33]), .B(A[33]), .C(\intadd_0/n96 ), .YC(
        \intadd_0/n95 ), .YS(sum[33]) );
  FAX1 \intadd_0/U95  ( .A(B[34]), .B(A[34]), .C(\intadd_0/n95 ), .YC(
        \intadd_0/n94 ), .YS(sum[34]) );
  FAX1 \intadd_0/U94  ( .A(B[35]), .B(A[35]), .C(\intadd_0/n94 ), .YC(
        \intadd_0/n93 ), .YS(sum[35]) );
  FAX1 \intadd_0/U93  ( .A(B[36]), .B(A[36]), .C(\intadd_0/n93 ), .YC(
        \intadd_0/n92 ), .YS(sum[36]) );
  FAX1 \intadd_0/U92  ( .A(B[37]), .B(A[37]), .C(\intadd_0/n92 ), .YC(
        \intadd_0/n91 ), .YS(sum[37]) );
  FAX1 \intadd_0/U91  ( .A(B[38]), .B(A[38]), .C(\intadd_0/n91 ), .YC(
        \intadd_0/n90 ), .YS(sum[38]) );
  FAX1 \intadd_0/U90  ( .A(B[39]), .B(A[39]), .C(\intadd_0/n90 ), .YC(
        \intadd_0/n89 ), .YS(sum[39]) );
  FAX1 \intadd_0/U89  ( .A(B[40]), .B(A[40]), .C(\intadd_0/n89 ), .YC(
        \intadd_0/n88 ), .YS(sum[40]) );
  FAX1 \intadd_0/U88  ( .A(B[41]), .B(A[41]), .C(\intadd_0/n88 ), .YC(
        \intadd_0/n87 ), .YS(sum[41]) );
  FAX1 \intadd_0/U87  ( .A(B[42]), .B(A[42]), .C(\intadd_0/n87 ), .YC(
        \intadd_0/n86 ), .YS(sum[42]) );
  FAX1 \intadd_0/U86  ( .A(B[43]), .B(A[43]), .C(\intadd_0/n86 ), .YC(
        \intadd_0/n85 ), .YS(sum[43]) );
  FAX1 \intadd_0/U85  ( .A(B[44]), .B(A[44]), .C(\intadd_0/n85 ), .YC(
        \intadd_0/n84 ), .YS(sum[44]) );
  FAX1 \intadd_0/U84  ( .A(B[45]), .B(A[45]), .C(\intadd_0/n84 ), .YC(
        \intadd_0/n83 ), .YS(sum[45]) );
  FAX1 \intadd_0/U83  ( .A(B[46]), .B(A[46]), .C(\intadd_0/n83 ), .YC(
        \intadd_0/n82 ), .YS(sum[46]) );
  FAX1 \intadd_0/U82  ( .A(B[47]), .B(A[47]), .C(\intadd_0/n82 ), .YC(
        \intadd_0/n81 ), .YS(sum[47]) );
  FAX1 \intadd_0/U81  ( .A(B[48]), .B(A[48]), .C(\intadd_0/n81 ), .YC(
        \intadd_0/n80 ), .YS(sum[48]) );
  FAX1 \intadd_0/U80  ( .A(B[49]), .B(A[49]), .C(\intadd_0/n80 ), .YC(
        \intadd_0/n79 ), .YS(sum[49]) );
  FAX1 \intadd_0/U79  ( .A(B[50]), .B(A[50]), .C(\intadd_0/n79 ), .YC(
        \intadd_0/n78 ), .YS(sum[50]) );
  FAX1 \intadd_0/U78  ( .A(B[51]), .B(A[51]), .C(\intadd_0/n78 ), .YC(
        \intadd_0/n77 ), .YS(sum[51]) );
  FAX1 \intadd_0/U77  ( .A(B[52]), .B(A[52]), .C(\intadd_0/n77 ), .YC(
        \intadd_0/n76 ), .YS(sum[52]) );
  FAX1 \intadd_0/U76  ( .A(B[53]), .B(A[53]), .C(\intadd_0/n76 ), .YC(
        \intadd_0/n75 ), .YS(sum[53]) );
  FAX1 \intadd_0/U75  ( .A(B[54]), .B(A[54]), .C(\intadd_0/n75 ), .YC(
        \intadd_0/n74 ), .YS(sum[54]) );
  FAX1 \intadd_0/U74  ( .A(B[55]), .B(A[55]), .C(\intadd_0/n74 ), .YC(
        \intadd_0/n73 ), .YS(sum[55]) );
  FAX1 \intadd_0/U73  ( .A(B[56]), .B(A[56]), .C(\intadd_0/n73 ), .YC(
        \intadd_0/n72 ), .YS(sum[56]) );
  FAX1 \intadd_0/U72  ( .A(B[57]), .B(A[57]), .C(\intadd_0/n72 ), .YC(
        \intadd_0/n71 ), .YS(sum[57]) );
  FAX1 \intadd_0/U71  ( .A(B[58]), .B(A[58]), .C(\intadd_0/n71 ), .YC(
        \intadd_0/n70 ), .YS(sum[58]) );
  FAX1 \intadd_0/U70  ( .A(B[59]), .B(A[59]), .C(\intadd_0/n70 ), .YC(
        \intadd_0/n69 ), .YS(sum[59]) );
  FAX1 \intadd_0/U69  ( .A(B[60]), .B(A[60]), .C(\intadd_0/n69 ), .YC(
        \intadd_0/n68 ), .YS(sum[60]) );
  FAX1 \intadd_0/U68  ( .A(B[61]), .B(A[61]), .C(\intadd_0/n68 ), .YC(
        \intadd_0/n67 ), .YS(sum[61]) );
  FAX1 \intadd_0/U67  ( .A(B[62]), .B(A[62]), .C(\intadd_0/n67 ), .YC(
        \intadd_0/n66 ), .YS(sum[62]) );
  FAX1 \intadd_0/U66  ( .A(B[63]), .B(A[63]), .C(\intadd_0/n66 ), .YC(
        \intadd_0/n65 ), .YS(sum[63]) );
  FAX1 \intadd_0/U65  ( .A(B[64]), .B(A[64]), .C(\intadd_0/n65 ), .YC(
        \intadd_0/n64 ), .YS(sum[64]) );
  FAX1 \intadd_0/U64  ( .A(B[65]), .B(A[65]), .C(\intadd_0/n64 ), .YC(
        \intadd_0/n63 ), .YS(sum[65]) );
  FAX1 \intadd_0/U63  ( .A(B[66]), .B(A[66]), .C(\intadd_0/n63 ), .YC(
        \intadd_0/n62 ), .YS(sum[66]) );
  FAX1 \intadd_0/U62  ( .A(B[67]), .B(A[67]), .C(\intadd_0/n62 ), .YC(
        \intadd_0/n61 ), .YS(sum[67]) );
  FAX1 \intadd_0/U61  ( .A(B[68]), .B(A[68]), .C(\intadd_0/n61 ), .YC(
        \intadd_0/n60 ), .YS(sum[68]) );
  FAX1 \intadd_0/U60  ( .A(B[69]), .B(A[69]), .C(\intadd_0/n60 ), .YC(
        \intadd_0/n59 ), .YS(sum[69]) );
  FAX1 \intadd_0/U59  ( .A(B[70]), .B(A[70]), .C(\intadd_0/n59 ), .YC(
        \intadd_0/n58 ), .YS(sum[70]) );
  FAX1 \intadd_0/U58  ( .A(B[71]), .B(A[71]), .C(\intadd_0/n58 ), .YC(
        \intadd_0/n57 ), .YS(sum[71]) );
  FAX1 \intadd_0/U57  ( .A(B[72]), .B(A[72]), .C(\intadd_0/n57 ), .YC(
        \intadd_0/n56 ), .YS(sum[72]) );
  FAX1 \intadd_0/U56  ( .A(B[73]), .B(A[73]), .C(\intadd_0/n56 ), .YC(
        \intadd_0/n55 ), .YS(sum[73]) );
  FAX1 \intadd_0/U55  ( .A(B[74]), .B(A[74]), .C(\intadd_0/n55 ), .YC(
        \intadd_0/n54 ), .YS(sum[74]) );
  FAX1 \intadd_0/U54  ( .A(B[75]), .B(A[75]), .C(\intadd_0/n54 ), .YC(
        \intadd_0/n53 ), .YS(sum[75]) );
  FAX1 \intadd_0/U53  ( .A(B[76]), .B(A[76]), .C(\intadd_0/n53 ), .YC(
        \intadd_0/n52 ), .YS(sum[76]) );
  FAX1 \intadd_0/U52  ( .A(B[77]), .B(A[77]), .C(\intadd_0/n52 ), .YC(
        \intadd_0/n51 ), .YS(sum[77]) );
  FAX1 \intadd_0/U51  ( .A(B[78]), .B(A[78]), .C(\intadd_0/n51 ), .YC(
        \intadd_0/n50 ), .YS(sum[78]) );
  FAX1 \intadd_0/U50  ( .A(B[79]), .B(A[79]), .C(\intadd_0/n50 ), .YC(
        \intadd_0/n49 ), .YS(sum[79]) );
  FAX1 \intadd_0/U49  ( .A(B[80]), .B(A[80]), .C(\intadd_0/n49 ), .YC(
        \intadd_0/n48 ), .YS(sum[80]) );
  FAX1 \intadd_0/U48  ( .A(B[81]), .B(A[81]), .C(\intadd_0/n48 ), .YC(
        \intadd_0/n47 ), .YS(sum[81]) );
  FAX1 \intadd_0/U47  ( .A(B[82]), .B(A[82]), .C(\intadd_0/n47 ), .YC(
        \intadd_0/n46 ), .YS(sum[82]) );
  FAX1 \intadd_0/U46  ( .A(B[83]), .B(A[83]), .C(\intadd_0/n46 ), .YC(
        \intadd_0/n45 ), .YS(sum[83]) );
  FAX1 \intadd_0/U45  ( .A(B[84]), .B(A[84]), .C(\intadd_0/n45 ), .YC(
        \intadd_0/n44 ), .YS(sum[84]) );
  FAX1 \intadd_0/U44  ( .A(B[85]), .B(A[85]), .C(\intadd_0/n44 ), .YC(
        \intadd_0/n43 ), .YS(sum[85]) );
  FAX1 \intadd_0/U43  ( .A(B[86]), .B(A[86]), .C(\intadd_0/n43 ), .YC(
        \intadd_0/n42 ), .YS(sum[86]) );
  FAX1 \intadd_0/U42  ( .A(B[87]), .B(A[87]), .C(\intadd_0/n42 ), .YC(
        \intadd_0/n41 ), .YS(sum[87]) );
  FAX1 \intadd_0/U41  ( .A(B[88]), .B(A[88]), .C(\intadd_0/n41 ), .YC(
        \intadd_0/n40 ), .YS(sum[88]) );
  FAX1 \intadd_0/U40  ( .A(B[89]), .B(A[89]), .C(\intadd_0/n40 ), .YC(
        \intadd_0/n39 ), .YS(sum[89]) );
  FAX1 \intadd_0/U39  ( .A(B[90]), .B(A[90]), .C(\intadd_0/n39 ), .YC(
        \intadd_0/n38 ), .YS(sum[90]) );
  FAX1 \intadd_0/U38  ( .A(B[91]), .B(A[91]), .C(\intadd_0/n38 ), .YC(
        \intadd_0/n37 ), .YS(sum[91]) );
  FAX1 \intadd_0/U37  ( .A(B[92]), .B(A[92]), .C(\intadd_0/n37 ), .YC(
        \intadd_0/n36 ), .YS(sum[92]) );
  FAX1 \intadd_0/U36  ( .A(B[93]), .B(A[93]), .C(\intadd_0/n36 ), .YC(
        \intadd_0/n35 ), .YS(sum[93]) );
  FAX1 \intadd_0/U35  ( .A(B[94]), .B(A[94]), .C(\intadd_0/n35 ), .YC(
        \intadd_0/n34 ), .YS(sum[94]) );
  FAX1 \intadd_0/U34  ( .A(B[95]), .B(A[95]), .C(\intadd_0/n34 ), .YC(
        \intadd_0/n33 ), .YS(sum[95]) );
  FAX1 \intadd_0/U33  ( .A(B[96]), .B(A[96]), .C(\intadd_0/n33 ), .YC(
        \intadd_0/n32 ), .YS(sum[96]) );
  FAX1 \intadd_0/U32  ( .A(B[97]), .B(A[97]), .C(\intadd_0/n32 ), .YC(
        \intadd_0/n31 ), .YS(sum[97]) );
  FAX1 \intadd_0/U31  ( .A(B[98]), .B(A[98]), .C(\intadd_0/n31 ), .YC(
        \intadd_0/n30 ), .YS(sum[98]) );
  FAX1 \intadd_0/U30  ( .A(B[99]), .B(A[99]), .C(\intadd_0/n30 ), .YC(
        \intadd_0/n29 ), .YS(sum[99]) );
  FAX1 \intadd_0/U29  ( .A(B[100]), .B(A[100]), .C(\intadd_0/n29 ), .YC(
        \intadd_0/n28 ), .YS(sum[100]) );
  FAX1 \intadd_0/U28  ( .A(B[101]), .B(A[101]), .C(\intadd_0/n28 ), .YC(
        \intadd_0/n27 ), .YS(sum[101]) );
  FAX1 \intadd_0/U27  ( .A(B[102]), .B(A[102]), .C(\intadd_0/n27 ), .YC(
        \intadd_0/n26 ), .YS(sum[102]) );
  FAX1 \intadd_0/U26  ( .A(B[103]), .B(A[103]), .C(\intadd_0/n26 ), .YC(
        \intadd_0/n25 ), .YS(sum[103]) );
  FAX1 \intadd_0/U25  ( .A(B[104]), .B(A[104]), .C(\intadd_0/n25 ), .YC(
        \intadd_0/n24 ), .YS(sum[104]) );
  FAX1 \intadd_0/U24  ( .A(B[105]), .B(A[105]), .C(\intadd_0/n24 ), .YC(
        \intadd_0/n23 ), .YS(sum[105]) );
  FAX1 \intadd_0/U23  ( .A(B[106]), .B(A[106]), .C(\intadd_0/n23 ), .YC(
        \intadd_0/n22 ), .YS(sum[106]) );
  FAX1 \intadd_0/U22  ( .A(B[107]), .B(A[107]), .C(\intadd_0/n22 ), .YC(
        \intadd_0/n21 ), .YS(sum[107]) );
  FAX1 \intadd_0/U21  ( .A(B[108]), .B(A[108]), .C(\intadd_0/n21 ), .YC(
        \intadd_0/n20 ), .YS(sum[108]) );
  FAX1 \intadd_0/U20  ( .A(B[109]), .B(A[109]), .C(\intadd_0/n20 ), .YC(
        \intadd_0/n19 ), .YS(sum[109]) );
  FAX1 \intadd_0/U19  ( .A(B[110]), .B(A[110]), .C(\intadd_0/n19 ), .YC(
        \intadd_0/n18 ), .YS(sum[110]) );
  FAX1 \intadd_0/U18  ( .A(B[111]), .B(A[111]), .C(\intadd_0/n18 ), .YC(
        \intadd_0/n17 ), .YS(sum[111]) );
  FAX1 \intadd_0/U17  ( .A(B[112]), .B(A[112]), .C(\intadd_0/n17 ), .YC(
        \intadd_0/n16 ), .YS(sum[112]) );
  FAX1 \intadd_0/U16  ( .A(B[113]), .B(A[113]), .C(\intadd_0/n16 ), .YC(
        \intadd_0/n15 ), .YS(sum[113]) );
  FAX1 \intadd_0/U15  ( .A(B[114]), .B(A[114]), .C(\intadd_0/n15 ), .YC(
        \intadd_0/n14 ), .YS(sum[114]) );
  FAX1 \intadd_0/U14  ( .A(B[115]), .B(A[115]), .C(\intadd_0/n14 ), .YC(
        \intadd_0/n13 ), .YS(sum[115]) );
  FAX1 \intadd_0/U13  ( .A(B[116]), .B(A[116]), .C(\intadd_0/n13 ), .YC(
        \intadd_0/n12 ), .YS(sum[116]) );
  FAX1 \intadd_0/U12  ( .A(B[117]), .B(A[117]), .C(\intadd_0/n12 ), .YC(
        \intadd_0/n11 ), .YS(sum[117]) );
  FAX1 \intadd_0/U11  ( .A(B[118]), .B(A[118]), .C(\intadd_0/n11 ), .YC(
        \intadd_0/n10 ), .YS(sum[118]) );
  FAX1 \intadd_0/U10  ( .A(B[119]), .B(A[119]), .C(\intadd_0/n10 ), .YC(
        \intadd_0/n9 ), .YS(sum[119]) );
  FAX1 \intadd_0/U9  ( .A(B[120]), .B(A[120]), .C(\intadd_0/n9 ), .YC(
        \intadd_0/n8 ), .YS(sum[120]) );
  FAX1 \intadd_0/U8  ( .A(B[121]), .B(A[121]), .C(\intadd_0/n8 ), .YC(
        \intadd_0/n7 ), .YS(sum[121]) );
  FAX1 \intadd_0/U7  ( .A(B[122]), .B(A[122]), .C(\intadd_0/n7 ), .YC(
        \intadd_0/n6 ), .YS(sum[122]) );
  FAX1 \intadd_0/U6  ( .A(B[123]), .B(A[123]), .C(\intadd_0/n6 ), .YC(
        \intadd_0/n5 ), .YS(sum[123]) );
  FAX1 \intadd_0/U5  ( .A(B[124]), .B(A[124]), .C(\intadd_0/n5 ), .YC(
        \intadd_0/n4 ), .YS(sum[124]) );
  FAX1 \intadd_0/U4  ( .A(B[125]), .B(A[125]), .C(\intadd_0/n4 ), .YC(
        \intadd_0/n3 ), .YS(sum[125]) );
  FAX1 \intadd_0/U3  ( .A(B[126]), .B(A[126]), .C(\intadd_0/n3 ), .YC(
        \intadd_0/n2 ), .YS(sum[126]) );
  FAX1 \intadd_0/U2  ( .A(B[127]), .B(A[127]), .C(\intadd_0/n2 ), .YC(
        \intadd_0/n1 ), .YS(sum[127]) );
endmodule

