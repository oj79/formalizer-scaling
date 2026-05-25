(define (problem p82)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200)
(stacks-avail n0)

(waiting o1)
(includes o1 p2)(includes o1 p3)(includes o1 p4)

(waiting o2)
(includes o2 p3)(includes o2 p4)(includes o2 p5)

(waiting o3)
(includes o3 p4)(includes o3 p5)(includes o3 p6)

(waiting o4)
(includes o4 p5)(includes o4 p6)(includes o4 p7)

(waiting o5)
(includes o5 p6)(includes o5 p7)(includes o5 p8)

(waiting o6)
(includes o6 p7)(includes o6 p8)(includes o6 p9)

(waiting o7)
(includes o7 p8)(includes o7 p9)(includes o7 p10)

(waiting o8)
(includes o8 p9)(includes o8 p10)(includes o8 p11)

(waiting o9)
(includes o9 p10)(includes o9 p11)(includes o9 p12)

(waiting o10)
(includes o10 p11)(includes o10 p12)(includes o10 p1)

(waiting o11)
(includes o11 p12)(includes o11 p1)(includes o11 p2)

(waiting o12)
(includes o12 p1)(includes o12 p2)(includes o12 p3)

(waiting o13)
(includes o13 p2)(includes o13 p3)(includes o13 p4)

(waiting o14)
(includes o14 p3)(includes o14 p4)(includes o14 p5)

(waiting o15)
(includes o15 p4)(includes o15 p5)(includes o15 p6)

(waiting o16)
(includes o16 p5)(includes o16 p6)(includes o16 p7)

(waiting o17)
(includes o17 p6)(includes o17 p7)(includes o17 p8)

(waiting o18)
(includes o18 p7)(includes o18 p8)(includes o18 p9)

(waiting o19)
(includes o19 p8)(includes o19 p9)(includes o19 p10)

(waiting o20)
(includes o20 p9)(includes o20 p10)(includes o20 p11)

(waiting o21)
(includes o21 p10)(includes o21 p11)(includes o21 p12)

(waiting o22)
(includes o22 p11)(includes o22 p12)(includes o22 p1)

(waiting o23)
(includes o23 p12)(includes o23 p1)(includes o23 p2)

(waiting o24)
(includes o24 p1)(includes o24 p2)(includes o24 p3)

(waiting o25)
(includes o25 p2)(includes o25 p3)(includes o25 p4)

(waiting o26)
(includes o26 p3)(includes o26 p4)(includes o26 p5)

(waiting o27)
(includes o27 p4)(includes o27 p5)(includes o27 p6)

(waiting o28)
(includes o28 p5)(includes o28 p6)(includes o28 p7)

(waiting o29)
(includes o29 p6)(includes o29 p7)(includes o29 p8)

(waiting o30)
(includes o30 p7)(includes o30 p8)(includes o30 p9)

(waiting o31)
(includes o31 p8)(includes o31 p9)(includes o31 p10)

(waiting o32)
(includes o32 p9)(includes o32 p10)(includes o32 p11)

(waiting o33)
(includes o33 p10)(includes o33 p11)(includes o33 p12)

(waiting o34)
(includes o34 p11)(includes o34 p12)(includes o34 p1)

(waiting o35)
(includes o35 p12)(includes o35 p1)(includes o35 p2)

(waiting o36)
(includes o36 p1)(includes o36 p2)(includes o36 p3)

(waiting o37)
(includes o37 p2)(includes o37 p3)(includes o37 p4)

(waiting o38)
(includes o38 p3)(includes o38 p4)(includes o38 p5)

(waiting o39)
(includes o39 p4)(includes o39 p5)(includes o39 p6)

(waiting o40)
(includes o40 p5)(includes o40 p6)(includes o40 p7)

(waiting o41)
(includes o41 p6)(includes o41 p7)(includes o41 p8)

(waiting o42)
(includes o42 p7)(includes o42 p8)(includes o42 p9)

(waiting o43)
(includes o43 p8)(includes o43 p9)(includes o43 p10)

(waiting o44)
(includes o44 p9)(includes o44 p10)(includes o44 p11)

(waiting o45)
(includes o45 p10)(includes o45 p11)(includes o45 p12)

(waiting o46)
(includes o46 p11)(includes o46 p12)(includes o46 p1)

(waiting o47)
(includes o47 p12)(includes o47 p1)(includes o47 p2)

(waiting o48)
(includes o48 p1)(includes o48 p2)(includes o48 p3)

(waiting o49)
(includes o49 p2)(includes o49 p3)(includes o49 p4)

(waiting o50)
(includes o50 p3)(includes o50 p4)(includes o50 p5)

(waiting o51)
(includes o51 p4)(includes o51 p5)(includes o51 p6)

(waiting o52)
(includes o52 p5)(includes o52 p6)(includes o52 p7)

(waiting o53)
(includes o53 p6)(includes o53 p7)(includes o53 p8)

(waiting o54)
(includes o54 p7)(includes o54 p8)(includes o54 p9)

(waiting o55)
(includes o55 p8)(includes o55 p9)(includes o55 p10)

(waiting o56)
(includes o56 p9)(includes o56 p10)(includes o56 p11)

(waiting o57)
(includes o57 p10)(includes o57 p11)(includes o57 p12)

(waiting o58)
(includes o58 p11)(includes o58 p12)(includes o58 p1)

(waiting o59)
(includes o59 p12)(includes o59 p1)(includes o59 p2)

(waiting o60)
(includes o60 p1)(includes o60 p2)(includes o60 p3)

(waiting o61)
(includes o61 p2)(includes o61 p3)(includes o61 p4)

(waiting o62)
(includes o62 p3)(includes o62 p4)(includes o62 p5)

(waiting o63)
(includes o63 p4)(includes o63 p5)(includes o63 p6)

(waiting o64)
(includes o64 p5)(includes o64 p6)(includes o64 p7)

(waiting o65)
(includes o65 p6)(includes o65 p7)(includes o65 p8)

(waiting o66)
(includes o66 p7)(includes o66 p8)(includes o66 p9)

(waiting o67)
(includes o67 p8)(includes o67 p9)(includes o67 p10)

(waiting o68)
(includes o68 p9)(includes o68 p10)(includes o68 p11)

(waiting o69)
(includes o69 p10)(includes o69 p11)(includes o69 p12)

(waiting o70)
(includes o70 p11)(includes o70 p12)(includes o70 p1)

(waiting o71)
(includes o71 p12)(includes o71 p1)(includes o71 p2)

(waiting o72)
(includes o72 p1)(includes o72 p2)(includes o72 p3)

(waiting o73)
(includes o73 p2)(includes o73 p3)(includes o73 p4)

(waiting o74)
(includes o74 p3)(includes o74 p4)(includes o74 p5)

(waiting o75)
(includes o75 p4)(includes o75 p5)(includes o75 p6)

(waiting o76)
(includes o76 p5)(includes o76 p6)(includes o76 p7)

(waiting o77)
(includes o77 p6)(includes o77 p7)(includes o77 p8)

(waiting o78)
(includes o78 p7)(includes o78 p8)(includes o78 p9)

(waiting o79)
(includes o79 p8)(includes o79 p9)(includes o79 p10)

(waiting o80)
(includes o80 p9)(includes o80 p10)(includes o80 p11)

(waiting o81)
(includes o81 p10)(includes o81 p11)(includes o81 p12)

(waiting o82)
(includes o82 p11)(includes o82 p12)(includes o82 p1)

(waiting o83)
(includes o83 p12)(includes o83 p1)(includes o83 p2)

(waiting o84)
(includes o84 p1)(includes o84 p2)(includes o84 p3)

(waiting o85)
(includes o85 p2)(includes o85 p3)(includes o85 p4)

(waiting o86)
(includes o86 p3)(includes o86 p4)(includes o86 p5)

(waiting o87)
(includes o87 p4)(includes o87 p5)(includes o87 p6)

(waiting o88)
(includes o88 p5)(includes o88 p6)(includes o88 p7)

(waiting o89)
(includes o89 p6)(includes o89 p7)(includes o89 p8)

(waiting o90)
(includes o90 p7)(includes o90 p8)(includes o90 p9)

(waiting o91)
(includes o91 p8)(includes o91 p9)(includes o91 p10)

(waiting o92)
(includes o92 p9)(includes o92 p10)(includes o92 p11)

(waiting o93)
(includes o93 p10)(includes o93 p11)(includes o93 p12)

(waiting o94)
(includes o94 p11)(includes o94 p12)(includes o94 p1)

(waiting o95)
(includes o95 p12)(includes o95 p1)(includes o95 p2)

(waiting o96)
(includes o96 p1)(includes o96 p2)(includes o96 p3)

(waiting o97)
(includes o97 p2)(includes o97 p3)(includes o97 p4)

(waiting o98)
(includes o98 p3)(includes o98 p4)(includes o98 p5)

(waiting o99)
(includes o99 p4)(includes o99 p5)(includes o99 p6)

(waiting o100)
(includes o100 p5)(includes o100 p6)(includes o100 p7)

(waiting o101)
(includes o101 p6)(includes o101 p7)(includes o101 p8)

(waiting o102)
(includes o102 p7)(includes o102 p8)(includes o102 p9)

(waiting o103)
(includes o103 p8)(includes o103 p9)(includes o103 p10)

(waiting o104)
(includes o104 p9)(includes o104 p10)(includes o104 p11)

(waiting o105)
(includes o105 p10)(includes o105 p11)(includes o105 p12)

(waiting o106)
(includes o106 p11)(includes o106 p12)(includes o106 p1)

(waiting o107)
(includes o107 p12)(includes o107 p1)(includes o107 p2)

(waiting o108)
(includes o108 p1)(includes o108 p2)(includes o108 p3)

(waiting o109)
(includes o109 p2)(includes o109 p3)(includes o109 p4)

(waiting o110)
(includes o110 p3)(includes o110 p4)(includes o110 p5)

(waiting o111)
(includes o111 p4)(includes o111 p5)(includes o111 p6)

(waiting o112)
(includes o112 p5)(includes o112 p6)(includes o112 p7)

(waiting o113)
(includes o113 p6)(includes o113 p7)(includes o113 p8)

(waiting o114)
(includes o114 p7)(includes o114 p8)(includes o114 p9)

(waiting o115)
(includes o115 p8)(includes o115 p9)(includes o115 p10)

(waiting o116)
(includes o116 p9)(includes o116 p10)(includes o116 p11)

(waiting o117)
(includes o117 p10)(includes o117 p11)(includes o117 p12)

(waiting o118)
(includes o118 p11)(includes o118 p12)(includes o118 p1)

(waiting o119)
(includes o119 p12)(includes o119 p1)(includes o119 p2)

(waiting o120)
(includes o120 p1)(includes o120 p2)(includes o120 p3)

(waiting o121)
(includes o121 p2)(includes o121 p3)(includes o121 p4)

(waiting o122)
(includes o122 p3)(includes o122 p4)(includes o122 p5)

(waiting o123)
(includes o123 p4)(includes o123 p5)(includes o123 p6)

(waiting o124)
(includes o124 p5)(includes o124 p6)(includes o124 p7)

(waiting o125)
(includes o125 p6)(includes o125 p7)(includes o125 p8)

(waiting o126)
(includes o126 p7)(includes o126 p8)(includes o126 p9)

(waiting o127)
(includes o127 p8)(includes o127 p9)(includes o127 p10)

(waiting o128)
(includes o128 p9)(includes o128 p10)(includes o128 p11)

(waiting o129)
(includes o129 p10)(includes o129 p11)(includes o129 p12)

(waiting o130)
(includes o130 p11)(includes o130 p12)(includes o130 p1)

(waiting o131)
(includes o131 p12)(includes o131 p1)(includes o131 p2)

(waiting o132)
(includes o132 p1)(includes o132 p2)(includes o132 p3)

(waiting o133)
(includes o133 p2)(includes o133 p3)(includes o133 p4)

(waiting o134)
(includes o134 p3)(includes o134 p4)(includes o134 p5)

(waiting o135)
(includes o135 p4)(includes o135 p5)(includes o135 p6)

(waiting o136)
(includes o136 p5)(includes o136 p6)(includes o136 p7)

(waiting o137)
(includes o137 p6)(includes o137 p7)(includes o137 p8)

(waiting o138)
(includes o138 p7)(includes o138 p8)(includes o138 p9)

(waiting o139)
(includes o139 p8)(includes o139 p9)(includes o139 p10)

(waiting o140)
(includes o140 p9)(includes o140 p10)(includes o140 p11)

(waiting o141)
(includes o141 p10)(includes o141 p11)(includes o141 p12)

(waiting o142)
(includes o142 p11)(includes o142 p12)(includes o142 p1)

(waiting o143)
(includes o143 p12)(includes o143 p1)(includes o143 p2)

(waiting o144)
(includes o144 p1)(includes o144 p2)(includes o144 p3)

(waiting o145)
(includes o145 p2)(includes o145 p3)(includes o145 p4)

(waiting o146)
(includes o146 p3)(includes o146 p4)(includes o146 p5)

(waiting o147)
(includes o147 p4)(includes o147 p5)(includes o147 p6)

(waiting o148)
(includes o148 p5)(includes o148 p6)(includes o148 p7)

(waiting o149)
(includes o149 p6)(includes o149 p7)(includes o149 p8)

(waiting o150)
(includes o150 p7)(includes o150 p8)(includes o150 p9)

(waiting o151)
(includes o151 p8)(includes o151 p9)(includes o151 p10)

(waiting o152)
(includes o152 p9)(includes o152 p10)(includes o152 p11)

(waiting o153)
(includes o153 p10)(includes o153 p11)(includes o153 p12)

(waiting o154)
(includes o154 p11)(includes o154 p12)(includes o154 p1)

(waiting o155)
(includes o155 p12)(includes o155 p1)(includes o155 p2)

(waiting o156)
(includes o156 p1)(includes o156 p2)(includes o156 p3)

(waiting o157)
(includes o157 p2)(includes o157 p3)(includes o157 p4)

(waiting o158)
(includes o158 p3)(includes o158 p4)(includes o158 p5)

(waiting o159)
(includes o159 p4)(includes o159 p5)(includes o159 p6)

(waiting o160)
(includes o160 p5)(includes o160 p6)(includes o160 p7)

(waiting o161)
(includes o161 p6)(includes o161 p7)(includes o161 p8)

(waiting o162)
(includes o162 p7)(includes o162 p8)(includes o162 p9)

(waiting o163)
(includes o163 p8)(includes o163 p9)(includes o163 p10)

(waiting o164)
(includes o164 p9)(includes o164 p10)(includes o164 p11)

(waiting o165)
(includes o165 p10)(includes o165 p11)(includes o165 p12)

(waiting o166)
(includes o166 p11)(includes o166 p12)(includes o166 p1)

(waiting o167)
(includes o167 p12)(includes o167 p1)(includes o167 p2)

(waiting o168)
(includes o168 p1)(includes o168 p2)(includes o168 p3)

(waiting o169)
(includes o169 p2)(includes o169 p3)(includes o169 p4)

(waiting o170)
(includes o170 p3)(includes o170 p4)(includes o170 p5)

(waiting o171)
(includes o171 p4)(includes o171 p5)(includes o171 p6)

(waiting o172)
(includes o172 p5)(includes o172 p6)(includes o172 p7)

(waiting o173)
(includes o173 p6)(includes o173 p7)(includes o173 p8)

(waiting o174)
(includes o174 p7)(includes o174 p8)(includes o174 p9)

(waiting o175)
(includes o175 p8)(includes o175 p9)(includes o175 p10)

(waiting o176)
(includes o176 p9)(includes o176 p10)(includes o176 p11)

(waiting o177)
(includes o177 p10)(includes o177 p11)(includes o177 p12)

(waiting o178)
(includes o178 p11)(includes o178 p12)(includes o178 p1)

(waiting o179)
(includes o179 p12)(includes o179 p1)(includes o179 p2)

(waiting o180)
(includes o180 p1)(includes o180 p2)(includes o180 p3)

(waiting o181)
(includes o181 p2)(includes o181 p3)(includes o181 p4)

(waiting o182)
(includes o182 p3)(includes o182 p4)(includes o182 p5)

(waiting o183)
(includes o183 p4)(includes o183 p5)(includes o183 p6)

(waiting o184)
(includes o184 p5)(includes o184 p6)(includes o184 p7)

(waiting o185)
(includes o185 p6)(includes o185 p7)(includes o185 p8)

(waiting o186)
(includes o186 p7)(includes o186 p8)(includes o186 p9)

(waiting o187)
(includes o187 p8)(includes o187 p9)(includes o187 p10)

(waiting o188)
(includes o188 p9)(includes o188 p10)(includes o188 p11)

(waiting o189)
(includes o189 p10)(includes o189 p11)(includes o189 p12)

(waiting o190)
(includes o190 p11)(includes o190 p12)(includes o190 p1)

(waiting o191)
(includes o191 p12)(includes o191 p1)(includes o191 p2)

(waiting o192)
(includes o192 p1)(includes o192 p2)(includes o192 p3)

(waiting o193)
(includes o193 p2)(includes o193 p3)(includes o193 p4)

(waiting o194)
(includes o194 p3)(includes o194 p4)(includes o194 p5)

(waiting o195)
(includes o195 p4)(includes o195 p5)(includes o195 p6)

(waiting o196)
(includes o196 p5)(includes o196 p6)(includes o196 p7)

(waiting o197)
(includes o197 p6)(includes o197 p7)(includes o197 p8)

(waiting o198)
(includes o198 p7)(includes o198 p8)(includes o198 p9)

(waiting o199)
(includes o199 p8)(includes o199 p9)(includes o199 p10)

(waiting o200)
(includes o200 p9)(includes o200 p10)(includes o200 p11)

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