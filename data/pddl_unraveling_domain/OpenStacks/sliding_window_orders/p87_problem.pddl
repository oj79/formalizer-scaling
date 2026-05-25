(define (problem p87)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200)
(stacks-avail n0)

(waiting o1)
(includes o1 p7)(includes o1 p8)(includes o1 p9)

(waiting o2)
(includes o2 p8)(includes o2 p9)(includes o2 p10)

(waiting o3)
(includes o3 p9)(includes o3 p10)(includes o3 p11)

(waiting o4)
(includes o4 p10)(includes o4 p11)(includes o4 p12)

(waiting o5)
(includes o5 p11)(includes o5 p12)(includes o5 p1)

(waiting o6)
(includes o6 p12)(includes o6 p1)(includes o6 p2)

(waiting o7)
(includes o7 p1)(includes o7 p2)(includes o7 p3)

(waiting o8)
(includes o8 p2)(includes o8 p3)(includes o8 p4)

(waiting o9)
(includes o9 p3)(includes o9 p4)(includes o9 p5)

(waiting o10)
(includes o10 p4)(includes o10 p5)(includes o10 p6)

(waiting o11)
(includes o11 p5)(includes o11 p6)(includes o11 p7)

(waiting o12)
(includes o12 p6)(includes o12 p7)(includes o12 p8)

(waiting o13)
(includes o13 p7)(includes o13 p8)(includes o13 p9)

(waiting o14)
(includes o14 p8)(includes o14 p9)(includes o14 p10)

(waiting o15)
(includes o15 p9)(includes o15 p10)(includes o15 p11)

(waiting o16)
(includes o16 p10)(includes o16 p11)(includes o16 p12)

(waiting o17)
(includes o17 p11)(includes o17 p12)(includes o17 p1)

(waiting o18)
(includes o18 p12)(includes o18 p1)(includes o18 p2)

(waiting o19)
(includes o19 p1)(includes o19 p2)(includes o19 p3)

(waiting o20)
(includes o20 p2)(includes o20 p3)(includes o20 p4)

(waiting o21)
(includes o21 p3)(includes o21 p4)(includes o21 p5)

(waiting o22)
(includes o22 p4)(includes o22 p5)(includes o22 p6)

(waiting o23)
(includes o23 p5)(includes o23 p6)(includes o23 p7)

(waiting o24)
(includes o24 p6)(includes o24 p7)(includes o24 p8)

(waiting o25)
(includes o25 p7)(includes o25 p8)(includes o25 p9)

(waiting o26)
(includes o26 p8)(includes o26 p9)(includes o26 p10)

(waiting o27)
(includes o27 p9)(includes o27 p10)(includes o27 p11)

(waiting o28)
(includes o28 p10)(includes o28 p11)(includes o28 p12)

(waiting o29)
(includes o29 p11)(includes o29 p12)(includes o29 p1)

(waiting o30)
(includes o30 p12)(includes o30 p1)(includes o30 p2)

(waiting o31)
(includes o31 p1)(includes o31 p2)(includes o31 p3)

(waiting o32)
(includes o32 p2)(includes o32 p3)(includes o32 p4)

(waiting o33)
(includes o33 p3)(includes o33 p4)(includes o33 p5)

(waiting o34)
(includes o34 p4)(includes o34 p5)(includes o34 p6)

(waiting o35)
(includes o35 p5)(includes o35 p6)(includes o35 p7)

(waiting o36)
(includes o36 p6)(includes o36 p7)(includes o36 p8)

(waiting o37)
(includes o37 p7)(includes o37 p8)(includes o37 p9)

(waiting o38)
(includes o38 p8)(includes o38 p9)(includes o38 p10)

(waiting o39)
(includes o39 p9)(includes o39 p10)(includes o39 p11)

(waiting o40)
(includes o40 p10)(includes o40 p11)(includes o40 p12)

(waiting o41)
(includes o41 p11)(includes o41 p12)(includes o41 p1)

(waiting o42)
(includes o42 p12)(includes o42 p1)(includes o42 p2)

(waiting o43)
(includes o43 p1)(includes o43 p2)(includes o43 p3)

(waiting o44)
(includes o44 p2)(includes o44 p3)(includes o44 p4)

(waiting o45)
(includes o45 p3)(includes o45 p4)(includes o45 p5)

(waiting o46)
(includes o46 p4)(includes o46 p5)(includes o46 p6)

(waiting o47)
(includes o47 p5)(includes o47 p6)(includes o47 p7)

(waiting o48)
(includes o48 p6)(includes o48 p7)(includes o48 p8)

(waiting o49)
(includes o49 p7)(includes o49 p8)(includes o49 p9)

(waiting o50)
(includes o50 p8)(includes o50 p9)(includes o50 p10)

(waiting o51)
(includes o51 p9)(includes o51 p10)(includes o51 p11)

(waiting o52)
(includes o52 p10)(includes o52 p11)(includes o52 p12)

(waiting o53)
(includes o53 p11)(includes o53 p12)(includes o53 p1)

(waiting o54)
(includes o54 p12)(includes o54 p1)(includes o54 p2)

(waiting o55)
(includes o55 p1)(includes o55 p2)(includes o55 p3)

(waiting o56)
(includes o56 p2)(includes o56 p3)(includes o56 p4)

(waiting o57)
(includes o57 p3)(includes o57 p4)(includes o57 p5)

(waiting o58)
(includes o58 p4)(includes o58 p5)(includes o58 p6)

(waiting o59)
(includes o59 p5)(includes o59 p6)(includes o59 p7)

(waiting o60)
(includes o60 p6)(includes o60 p7)(includes o60 p8)

(waiting o61)
(includes o61 p7)(includes o61 p8)(includes o61 p9)

(waiting o62)
(includes o62 p8)(includes o62 p9)(includes o62 p10)

(waiting o63)
(includes o63 p9)(includes o63 p10)(includes o63 p11)

(waiting o64)
(includes o64 p10)(includes o64 p11)(includes o64 p12)

(waiting o65)
(includes o65 p11)(includes o65 p12)(includes o65 p1)

(waiting o66)
(includes o66 p12)(includes o66 p1)(includes o66 p2)

(waiting o67)
(includes o67 p1)(includes o67 p2)(includes o67 p3)

(waiting o68)
(includes o68 p2)(includes o68 p3)(includes o68 p4)

(waiting o69)
(includes o69 p3)(includes o69 p4)(includes o69 p5)

(waiting o70)
(includes o70 p4)(includes o70 p5)(includes o70 p6)

(waiting o71)
(includes o71 p5)(includes o71 p6)(includes o71 p7)

(waiting o72)
(includes o72 p6)(includes o72 p7)(includes o72 p8)

(waiting o73)
(includes o73 p7)(includes o73 p8)(includes o73 p9)

(waiting o74)
(includes o74 p8)(includes o74 p9)(includes o74 p10)

(waiting o75)
(includes o75 p9)(includes o75 p10)(includes o75 p11)

(waiting o76)
(includes o76 p10)(includes o76 p11)(includes o76 p12)

(waiting o77)
(includes o77 p11)(includes o77 p12)(includes o77 p1)

(waiting o78)
(includes o78 p12)(includes o78 p1)(includes o78 p2)

(waiting o79)
(includes o79 p1)(includes o79 p2)(includes o79 p3)

(waiting o80)
(includes o80 p2)(includes o80 p3)(includes o80 p4)

(waiting o81)
(includes o81 p3)(includes o81 p4)(includes o81 p5)

(waiting o82)
(includes o82 p4)(includes o82 p5)(includes o82 p6)

(waiting o83)
(includes o83 p5)(includes o83 p6)(includes o83 p7)

(waiting o84)
(includes o84 p6)(includes o84 p7)(includes o84 p8)

(waiting o85)
(includes o85 p7)(includes o85 p8)(includes o85 p9)

(waiting o86)
(includes o86 p8)(includes o86 p9)(includes o86 p10)

(waiting o87)
(includes o87 p9)(includes o87 p10)(includes o87 p11)

(waiting o88)
(includes o88 p10)(includes o88 p11)(includes o88 p12)

(waiting o89)
(includes o89 p11)(includes o89 p12)(includes o89 p1)

(waiting o90)
(includes o90 p12)(includes o90 p1)(includes o90 p2)

(waiting o91)
(includes o91 p1)(includes o91 p2)(includes o91 p3)

(waiting o92)
(includes o92 p2)(includes o92 p3)(includes o92 p4)

(waiting o93)
(includes o93 p3)(includes o93 p4)(includes o93 p5)

(waiting o94)
(includes o94 p4)(includes o94 p5)(includes o94 p6)

(waiting o95)
(includes o95 p5)(includes o95 p6)(includes o95 p7)

(waiting o96)
(includes o96 p6)(includes o96 p7)(includes o96 p8)

(waiting o97)
(includes o97 p7)(includes o97 p8)(includes o97 p9)

(waiting o98)
(includes o98 p8)(includes o98 p9)(includes o98 p10)

(waiting o99)
(includes o99 p9)(includes o99 p10)(includes o99 p11)

(waiting o100)
(includes o100 p10)(includes o100 p11)(includes o100 p12)

(waiting o101)
(includes o101 p11)(includes o101 p12)(includes o101 p1)

(waiting o102)
(includes o102 p12)(includes o102 p1)(includes o102 p2)

(waiting o103)
(includes o103 p1)(includes o103 p2)(includes o103 p3)

(waiting o104)
(includes o104 p2)(includes o104 p3)(includes o104 p4)

(waiting o105)
(includes o105 p3)(includes o105 p4)(includes o105 p5)

(waiting o106)
(includes o106 p4)(includes o106 p5)(includes o106 p6)

(waiting o107)
(includes o107 p5)(includes o107 p6)(includes o107 p7)

(waiting o108)
(includes o108 p6)(includes o108 p7)(includes o108 p8)

(waiting o109)
(includes o109 p7)(includes o109 p8)(includes o109 p9)

(waiting o110)
(includes o110 p8)(includes o110 p9)(includes o110 p10)

(waiting o111)
(includes o111 p9)(includes o111 p10)(includes o111 p11)

(waiting o112)
(includes o112 p10)(includes o112 p11)(includes o112 p12)

(waiting o113)
(includes o113 p11)(includes o113 p12)(includes o113 p1)

(waiting o114)
(includes o114 p12)(includes o114 p1)(includes o114 p2)

(waiting o115)
(includes o115 p1)(includes o115 p2)(includes o115 p3)

(waiting o116)
(includes o116 p2)(includes o116 p3)(includes o116 p4)

(waiting o117)
(includes o117 p3)(includes o117 p4)(includes o117 p5)

(waiting o118)
(includes o118 p4)(includes o118 p5)(includes o118 p6)

(waiting o119)
(includes o119 p5)(includes o119 p6)(includes o119 p7)

(waiting o120)
(includes o120 p6)(includes o120 p7)(includes o120 p8)

(waiting o121)
(includes o121 p7)(includes o121 p8)(includes o121 p9)

(waiting o122)
(includes o122 p8)(includes o122 p9)(includes o122 p10)

(waiting o123)
(includes o123 p9)(includes o123 p10)(includes o123 p11)

(waiting o124)
(includes o124 p10)(includes o124 p11)(includes o124 p12)

(waiting o125)
(includes o125 p11)(includes o125 p12)(includes o125 p1)

(waiting o126)
(includes o126 p12)(includes o126 p1)(includes o126 p2)

(waiting o127)
(includes o127 p1)(includes o127 p2)(includes o127 p3)

(waiting o128)
(includes o128 p2)(includes o128 p3)(includes o128 p4)

(waiting o129)
(includes o129 p3)(includes o129 p4)(includes o129 p5)

(waiting o130)
(includes o130 p4)(includes o130 p5)(includes o130 p6)

(waiting o131)
(includes o131 p5)(includes o131 p6)(includes o131 p7)

(waiting o132)
(includes o132 p6)(includes o132 p7)(includes o132 p8)

(waiting o133)
(includes o133 p7)(includes o133 p8)(includes o133 p9)

(waiting o134)
(includes o134 p8)(includes o134 p9)(includes o134 p10)

(waiting o135)
(includes o135 p9)(includes o135 p10)(includes o135 p11)

(waiting o136)
(includes o136 p10)(includes o136 p11)(includes o136 p12)

(waiting o137)
(includes o137 p11)(includes o137 p12)(includes o137 p1)

(waiting o138)
(includes o138 p12)(includes o138 p1)(includes o138 p2)

(waiting o139)
(includes o139 p1)(includes o139 p2)(includes o139 p3)

(waiting o140)
(includes o140 p2)(includes o140 p3)(includes o140 p4)

(waiting o141)
(includes o141 p3)(includes o141 p4)(includes o141 p5)

(waiting o142)
(includes o142 p4)(includes o142 p5)(includes o142 p6)

(waiting o143)
(includes o143 p5)(includes o143 p6)(includes o143 p7)

(waiting o144)
(includes o144 p6)(includes o144 p7)(includes o144 p8)

(waiting o145)
(includes o145 p7)(includes o145 p8)(includes o145 p9)

(waiting o146)
(includes o146 p8)(includes o146 p9)(includes o146 p10)

(waiting o147)
(includes o147 p9)(includes o147 p10)(includes o147 p11)

(waiting o148)
(includes o148 p10)(includes o148 p11)(includes o148 p12)

(waiting o149)
(includes o149 p11)(includes o149 p12)(includes o149 p1)

(waiting o150)
(includes o150 p12)(includes o150 p1)(includes o150 p2)

(waiting o151)
(includes o151 p1)(includes o151 p2)(includes o151 p3)

(waiting o152)
(includes o152 p2)(includes o152 p3)(includes o152 p4)

(waiting o153)
(includes o153 p3)(includes o153 p4)(includes o153 p5)

(waiting o154)
(includes o154 p4)(includes o154 p5)(includes o154 p6)

(waiting o155)
(includes o155 p5)(includes o155 p6)(includes o155 p7)

(waiting o156)
(includes o156 p6)(includes o156 p7)(includes o156 p8)

(waiting o157)
(includes o157 p7)(includes o157 p8)(includes o157 p9)

(waiting o158)
(includes o158 p8)(includes o158 p9)(includes o158 p10)

(waiting o159)
(includes o159 p9)(includes o159 p10)(includes o159 p11)

(waiting o160)
(includes o160 p10)(includes o160 p11)(includes o160 p12)

(waiting o161)
(includes o161 p11)(includes o161 p12)(includes o161 p1)

(waiting o162)
(includes o162 p12)(includes o162 p1)(includes o162 p2)

(waiting o163)
(includes o163 p1)(includes o163 p2)(includes o163 p3)

(waiting o164)
(includes o164 p2)(includes o164 p3)(includes o164 p4)

(waiting o165)
(includes o165 p3)(includes o165 p4)(includes o165 p5)

(waiting o166)
(includes o166 p4)(includes o166 p5)(includes o166 p6)

(waiting o167)
(includes o167 p5)(includes o167 p6)(includes o167 p7)

(waiting o168)
(includes o168 p6)(includes o168 p7)(includes o168 p8)

(waiting o169)
(includes o169 p7)(includes o169 p8)(includes o169 p9)

(waiting o170)
(includes o170 p8)(includes o170 p9)(includes o170 p10)

(waiting o171)
(includes o171 p9)(includes o171 p10)(includes o171 p11)

(waiting o172)
(includes o172 p10)(includes o172 p11)(includes o172 p12)

(waiting o173)
(includes o173 p11)(includes o173 p12)(includes o173 p1)

(waiting o174)
(includes o174 p12)(includes o174 p1)(includes o174 p2)

(waiting o175)
(includes o175 p1)(includes o175 p2)(includes o175 p3)

(waiting o176)
(includes o176 p2)(includes o176 p3)(includes o176 p4)

(waiting o177)
(includes o177 p3)(includes o177 p4)(includes o177 p5)

(waiting o178)
(includes o178 p4)(includes o178 p5)(includes o178 p6)

(waiting o179)
(includes o179 p5)(includes o179 p6)(includes o179 p7)

(waiting o180)
(includes o180 p6)(includes o180 p7)(includes o180 p8)

(waiting o181)
(includes o181 p7)(includes o181 p8)(includes o181 p9)

(waiting o182)
(includes o182 p8)(includes o182 p9)(includes o182 p10)

(waiting o183)
(includes o183 p9)(includes o183 p10)(includes o183 p11)

(waiting o184)
(includes o184 p10)(includes o184 p11)(includes o184 p12)

(waiting o185)
(includes o185 p11)(includes o185 p12)(includes o185 p1)

(waiting o186)
(includes o186 p12)(includes o186 p1)(includes o186 p2)

(waiting o187)
(includes o187 p1)(includes o187 p2)(includes o187 p3)

(waiting o188)
(includes o188 p2)(includes o188 p3)(includes o188 p4)

(waiting o189)
(includes o189 p3)(includes o189 p4)(includes o189 p5)

(waiting o190)
(includes o190 p4)(includes o190 p5)(includes o190 p6)

(waiting o191)
(includes o191 p5)(includes o191 p6)(includes o191 p7)

(waiting o192)
(includes o192 p6)(includes o192 p7)(includes o192 p8)

(waiting o193)
(includes o193 p7)(includes o193 p8)(includes o193 p9)

(waiting o194)
(includes o194 p8)(includes o194 p9)(includes o194 p10)

(waiting o195)
(includes o195 p9)(includes o195 p10)(includes o195 p11)

(waiting o196)
(includes o196 p10)(includes o196 p11)(includes o196 p12)

(waiting o197)
(includes o197 p11)(includes o197 p12)(includes o197 p1)

(waiting o198)
(includes o198 p12)(includes o198 p1)(includes o198 p2)

(waiting o199)
(includes o199 p1)(includes o199 p2)(includes o199 p3)

(waiting o200)
(includes o200 p2)(includes o200 p3)(includes o200 p4)

(= (total-cost) 0)
)
(:goal
(and
(shipped o1)
(shipped o2)
(shipped o3)
(shipped o4)
(shipped o5)
(shipped o6)
(shipped o7)
(shipped o8)
(shipped o9)
(shipped o10)
(shipped o11)
(shipped o12)
(shipped o13)
(shipped o14)
(shipped o15)
(shipped o16)
(shipped o17)
(shipped o18)
(shipped o19)
(shipped o20)
(shipped o21)
(shipped o22)
(shipped o23)
(shipped o24)
(shipped o25)
(shipped o26)
(shipped o27)
(shipped o28)
(shipped o29)
(shipped o30)
(shipped o31)
(shipped o32)
(shipped o33)
(shipped o34)
(shipped o35)
(shipped o36)
(shipped o37)
(shipped o38)
(shipped o39)
(shipped o40)
(shipped o41)
(shipped o42)
(shipped o43)
(shipped o44)
(shipped o45)
(shipped o46)
(shipped o47)
(shipped o48)
(shipped o49)
(shipped o50)
(shipped o51)
(shipped o52)
(shipped o53)
(shipped o54)
(shipped o55)
(shipped o56)
(shipped o57)
(shipped o58)
(shipped o59)
(shipped o60)
(shipped o61)
(shipped o62)
(shipped o63)
(shipped o64)
(shipped o65)
(shipped o66)
(shipped o67)
(shipped o68)
(shipped o69)
(shipped o70)
(shipped o71)
(shipped o72)
(shipped o73)
(shipped o74)
(shipped o75)
(shipped o76)
(shipped o77)
(shipped o78)
(shipped o79)
(shipped o80)
(shipped o81)
(shipped o82)
(shipped o83)
(shipped o84)
(shipped o85)
(shipped o86)
(shipped o87)
(shipped o88)
(shipped o89)
(shipped o90)
(shipped o91)
(shipped o92)
(shipped o93)
(shipped o94)
(shipped o95)
(shipped o96)
(shipped o97)
(shipped o98)
(shipped o99)
(shipped o100)
(shipped o101)
(shipped o102)
(shipped o103)
(shipped o104)
(shipped o105)
(shipped o106)
(shipped o107)
(shipped o108)
(shipped o109)
(shipped o110)
(shipped o111)
(shipped o112)
(shipped o113)
(shipped o114)
(shipped o115)
(shipped o116)
(shipped o117)
(shipped o118)
(shipped o119)
(shipped o120)
(shipped o121)
(shipped o122)
(shipped o123)
(shipped o124)
(shipped o125)
(shipped o126)
(shipped o127)
(shipped o128)
(shipped o129)
(shipped o130)
(shipped o131)
(shipped o132)
(shipped o133)
(shipped o134)
(shipped o135)
(shipped o136)
(shipped o137)
(shipped o138)
(shipped o139)
(shipped o140)
(shipped o141)
(shipped o142)
(shipped o143)
(shipped o144)
(shipped o145)
(shipped o146)
(shipped o147)
(shipped o148)
(shipped o149)
(shipped o150)
(shipped o151)
(shipped o152)
(shipped o153)
(shipped o154)
(shipped o155)
(shipped o156)
(shipped o157)
(shipped o158)
(shipped o159)
(shipped o160)
(shipped o161)
(shipped o162)
(shipped o163)
(shipped o164)
(shipped o165)
(shipped o166)
(shipped o167)
(shipped o168)
(shipped o169)
(shipped o170)
(shipped o171)
(shipped o172)
(shipped o173)
(shipped o174)
(shipped o175)
(shipped o176)
(shipped o177)
(shipped o178)
(shipped o179)
(shipped o180)
(shipped o181)
(shipped o182)
(shipped o183)
(shipped o184)
(shipped o185)
(shipped o186)
(shipped o187)
(shipped o188)
(shipped o189)
(shipped o190)
(shipped o191)
(shipped o192)
(shipped o193)
(shipped o194)
(shipped o195)
(shipped o196)
(shipped o197)
(shipped o198)
(shipped o199)
(shipped o200)
))
(:metric minimize (total-cost))

)