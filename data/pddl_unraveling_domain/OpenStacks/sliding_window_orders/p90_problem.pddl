(define (problem p90)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200)
(stacks-avail n0)

(waiting o1)
(includes o1 p10)(includes o1 p11)(includes o1 p12)

(waiting o2)
(includes o2 p11)(includes o2 p12)(includes o2 p1)

(waiting o3)
(includes o3 p12)(includes o3 p1)(includes o3 p2)

(waiting o4)
(includes o4 p1)(includes o4 p2)(includes o4 p3)

(waiting o5)
(includes o5 p2)(includes o5 p3)(includes o5 p4)

(waiting o6)
(includes o6 p3)(includes o6 p4)(includes o6 p5)

(waiting o7)
(includes o7 p4)(includes o7 p5)(includes o7 p6)

(waiting o8)
(includes o8 p5)(includes o8 p6)(includes o8 p7)

(waiting o9)
(includes o9 p6)(includes o9 p7)(includes o9 p8)

(waiting o10)
(includes o10 p7)(includes o10 p8)(includes o10 p9)

(waiting o11)
(includes o11 p8)(includes o11 p9)(includes o11 p10)

(waiting o12)
(includes o12 p9)(includes o12 p10)(includes o12 p11)

(waiting o13)
(includes o13 p10)(includes o13 p11)(includes o13 p12)

(waiting o14)
(includes o14 p11)(includes o14 p12)(includes o14 p1)

(waiting o15)
(includes o15 p12)(includes o15 p1)(includes o15 p2)

(waiting o16)
(includes o16 p1)(includes o16 p2)(includes o16 p3)

(waiting o17)
(includes o17 p2)(includes o17 p3)(includes o17 p4)

(waiting o18)
(includes o18 p3)(includes o18 p4)(includes o18 p5)

(waiting o19)
(includes o19 p4)(includes o19 p5)(includes o19 p6)

(waiting o20)
(includes o20 p5)(includes o20 p6)(includes o20 p7)

(waiting o21)
(includes o21 p6)(includes o21 p7)(includes o21 p8)

(waiting o22)
(includes o22 p7)(includes o22 p8)(includes o22 p9)

(waiting o23)
(includes o23 p8)(includes o23 p9)(includes o23 p10)

(waiting o24)
(includes o24 p9)(includes o24 p10)(includes o24 p11)

(waiting o25)
(includes o25 p10)(includes o25 p11)(includes o25 p12)

(waiting o26)
(includes o26 p11)(includes o26 p12)(includes o26 p1)

(waiting o27)
(includes o27 p12)(includes o27 p1)(includes o27 p2)

(waiting o28)
(includes o28 p1)(includes o28 p2)(includes o28 p3)

(waiting o29)
(includes o29 p2)(includes o29 p3)(includes o29 p4)

(waiting o30)
(includes o30 p3)(includes o30 p4)(includes o30 p5)

(waiting o31)
(includes o31 p4)(includes o31 p5)(includes o31 p6)

(waiting o32)
(includes o32 p5)(includes o32 p6)(includes o32 p7)

(waiting o33)
(includes o33 p6)(includes o33 p7)(includes o33 p8)

(waiting o34)
(includes o34 p7)(includes o34 p8)(includes o34 p9)

(waiting o35)
(includes o35 p8)(includes o35 p9)(includes o35 p10)

(waiting o36)
(includes o36 p9)(includes o36 p10)(includes o36 p11)

(waiting o37)
(includes o37 p10)(includes o37 p11)(includes o37 p12)

(waiting o38)
(includes o38 p11)(includes o38 p12)(includes o38 p1)

(waiting o39)
(includes o39 p12)(includes o39 p1)(includes o39 p2)

(waiting o40)
(includes o40 p1)(includes o40 p2)(includes o40 p3)

(waiting o41)
(includes o41 p2)(includes o41 p3)(includes o41 p4)

(waiting o42)
(includes o42 p3)(includes o42 p4)(includes o42 p5)

(waiting o43)
(includes o43 p4)(includes o43 p5)(includes o43 p6)

(waiting o44)
(includes o44 p5)(includes o44 p6)(includes o44 p7)

(waiting o45)
(includes o45 p6)(includes o45 p7)(includes o45 p8)

(waiting o46)
(includes o46 p7)(includes o46 p8)(includes o46 p9)

(waiting o47)
(includes o47 p8)(includes o47 p9)(includes o47 p10)

(waiting o48)
(includes o48 p9)(includes o48 p10)(includes o48 p11)

(waiting o49)
(includes o49 p10)(includes o49 p11)(includes o49 p12)

(waiting o50)
(includes o50 p11)(includes o50 p12)(includes o50 p1)

(waiting o51)
(includes o51 p12)(includes o51 p1)(includes o51 p2)

(waiting o52)
(includes o52 p1)(includes o52 p2)(includes o52 p3)

(waiting o53)
(includes o53 p2)(includes o53 p3)(includes o53 p4)

(waiting o54)
(includes o54 p3)(includes o54 p4)(includes o54 p5)

(waiting o55)
(includes o55 p4)(includes o55 p5)(includes o55 p6)

(waiting o56)
(includes o56 p5)(includes o56 p6)(includes o56 p7)

(waiting o57)
(includes o57 p6)(includes o57 p7)(includes o57 p8)

(waiting o58)
(includes o58 p7)(includes o58 p8)(includes o58 p9)

(waiting o59)
(includes o59 p8)(includes o59 p9)(includes o59 p10)

(waiting o60)
(includes o60 p9)(includes o60 p10)(includes o60 p11)

(waiting o61)
(includes o61 p10)(includes o61 p11)(includes o61 p12)

(waiting o62)
(includes o62 p11)(includes o62 p12)(includes o62 p1)

(waiting o63)
(includes o63 p12)(includes o63 p1)(includes o63 p2)

(waiting o64)
(includes o64 p1)(includes o64 p2)(includes o64 p3)

(waiting o65)
(includes o65 p2)(includes o65 p3)(includes o65 p4)

(waiting o66)
(includes o66 p3)(includes o66 p4)(includes o66 p5)

(waiting o67)
(includes o67 p4)(includes o67 p5)(includes o67 p6)

(waiting o68)
(includes o68 p5)(includes o68 p6)(includes o68 p7)

(waiting o69)
(includes o69 p6)(includes o69 p7)(includes o69 p8)

(waiting o70)
(includes o70 p7)(includes o70 p8)(includes o70 p9)

(waiting o71)
(includes o71 p8)(includes o71 p9)(includes o71 p10)

(waiting o72)
(includes o72 p9)(includes o72 p10)(includes o72 p11)

(waiting o73)
(includes o73 p10)(includes o73 p11)(includes o73 p12)

(waiting o74)
(includes o74 p11)(includes o74 p12)(includes o74 p1)

(waiting o75)
(includes o75 p12)(includes o75 p1)(includes o75 p2)

(waiting o76)
(includes o76 p1)(includes o76 p2)(includes o76 p3)

(waiting o77)
(includes o77 p2)(includes o77 p3)(includes o77 p4)

(waiting o78)
(includes o78 p3)(includes o78 p4)(includes o78 p5)

(waiting o79)
(includes o79 p4)(includes o79 p5)(includes o79 p6)

(waiting o80)
(includes o80 p5)(includes o80 p6)(includes o80 p7)

(waiting o81)
(includes o81 p6)(includes o81 p7)(includes o81 p8)

(waiting o82)
(includes o82 p7)(includes o82 p8)(includes o82 p9)

(waiting o83)
(includes o83 p8)(includes o83 p9)(includes o83 p10)

(waiting o84)
(includes o84 p9)(includes o84 p10)(includes o84 p11)

(waiting o85)
(includes o85 p10)(includes o85 p11)(includes o85 p12)

(waiting o86)
(includes o86 p11)(includes o86 p12)(includes o86 p1)

(waiting o87)
(includes o87 p12)(includes o87 p1)(includes o87 p2)

(waiting o88)
(includes o88 p1)(includes o88 p2)(includes o88 p3)

(waiting o89)
(includes o89 p2)(includes o89 p3)(includes o89 p4)

(waiting o90)
(includes o90 p3)(includes o90 p4)(includes o90 p5)

(waiting o91)
(includes o91 p4)(includes o91 p5)(includes o91 p6)

(waiting o92)
(includes o92 p5)(includes o92 p6)(includes o92 p7)

(waiting o93)
(includes o93 p6)(includes o93 p7)(includes o93 p8)

(waiting o94)
(includes o94 p7)(includes o94 p8)(includes o94 p9)

(waiting o95)
(includes o95 p8)(includes o95 p9)(includes o95 p10)

(waiting o96)
(includes o96 p9)(includes o96 p10)(includes o96 p11)

(waiting o97)
(includes o97 p10)(includes o97 p11)(includes o97 p12)

(waiting o98)
(includes o98 p11)(includes o98 p12)(includes o98 p1)

(waiting o99)
(includes o99 p12)(includes o99 p1)(includes o99 p2)

(waiting o100)
(includes o100 p1)(includes o100 p2)(includes o100 p3)

(waiting o101)
(includes o101 p2)(includes o101 p3)(includes o101 p4)

(waiting o102)
(includes o102 p3)(includes o102 p4)(includes o102 p5)

(waiting o103)
(includes o103 p4)(includes o103 p5)(includes o103 p6)

(waiting o104)
(includes o104 p5)(includes o104 p6)(includes o104 p7)

(waiting o105)
(includes o105 p6)(includes o105 p7)(includes o105 p8)

(waiting o106)
(includes o106 p7)(includes o106 p8)(includes o106 p9)

(waiting o107)
(includes o107 p8)(includes o107 p9)(includes o107 p10)

(waiting o108)
(includes o108 p9)(includes o108 p10)(includes o108 p11)

(waiting o109)
(includes o109 p10)(includes o109 p11)(includes o109 p12)

(waiting o110)
(includes o110 p11)(includes o110 p12)(includes o110 p1)

(waiting o111)
(includes o111 p12)(includes o111 p1)(includes o111 p2)

(waiting o112)
(includes o112 p1)(includes o112 p2)(includes o112 p3)

(waiting o113)
(includes o113 p2)(includes o113 p3)(includes o113 p4)

(waiting o114)
(includes o114 p3)(includes o114 p4)(includes o114 p5)

(waiting o115)
(includes o115 p4)(includes o115 p5)(includes o115 p6)

(waiting o116)
(includes o116 p5)(includes o116 p6)(includes o116 p7)

(waiting o117)
(includes o117 p6)(includes o117 p7)(includes o117 p8)

(waiting o118)
(includes o118 p7)(includes o118 p8)(includes o118 p9)

(waiting o119)
(includes o119 p8)(includes o119 p9)(includes o119 p10)

(waiting o120)
(includes o120 p9)(includes o120 p10)(includes o120 p11)

(waiting o121)
(includes o121 p10)(includes o121 p11)(includes o121 p12)

(waiting o122)
(includes o122 p11)(includes o122 p12)(includes o122 p1)

(waiting o123)
(includes o123 p12)(includes o123 p1)(includes o123 p2)

(waiting o124)
(includes o124 p1)(includes o124 p2)(includes o124 p3)

(waiting o125)
(includes o125 p2)(includes o125 p3)(includes o125 p4)

(waiting o126)
(includes o126 p3)(includes o126 p4)(includes o126 p5)

(waiting o127)
(includes o127 p4)(includes o127 p5)(includes o127 p6)

(waiting o128)
(includes o128 p5)(includes o128 p6)(includes o128 p7)

(waiting o129)
(includes o129 p6)(includes o129 p7)(includes o129 p8)

(waiting o130)
(includes o130 p7)(includes o130 p8)(includes o130 p9)

(waiting o131)
(includes o131 p8)(includes o131 p9)(includes o131 p10)

(waiting o132)
(includes o132 p9)(includes o132 p10)(includes o132 p11)

(waiting o133)
(includes o133 p10)(includes o133 p11)(includes o133 p12)

(waiting o134)
(includes o134 p11)(includes o134 p12)(includes o134 p1)

(waiting o135)
(includes o135 p12)(includes o135 p1)(includes o135 p2)

(waiting o136)
(includes o136 p1)(includes o136 p2)(includes o136 p3)

(waiting o137)
(includes o137 p2)(includes o137 p3)(includes o137 p4)

(waiting o138)
(includes o138 p3)(includes o138 p4)(includes o138 p5)

(waiting o139)
(includes o139 p4)(includes o139 p5)(includes o139 p6)

(waiting o140)
(includes o140 p5)(includes o140 p6)(includes o140 p7)

(waiting o141)
(includes o141 p6)(includes o141 p7)(includes o141 p8)

(waiting o142)
(includes o142 p7)(includes o142 p8)(includes o142 p9)

(waiting o143)
(includes o143 p8)(includes o143 p9)(includes o143 p10)

(waiting o144)
(includes o144 p9)(includes o144 p10)(includes o144 p11)

(waiting o145)
(includes o145 p10)(includes o145 p11)(includes o145 p12)

(waiting o146)
(includes o146 p11)(includes o146 p12)(includes o146 p1)

(waiting o147)
(includes o147 p12)(includes o147 p1)(includes o147 p2)

(waiting o148)
(includes o148 p1)(includes o148 p2)(includes o148 p3)

(waiting o149)
(includes o149 p2)(includes o149 p3)(includes o149 p4)

(waiting o150)
(includes o150 p3)(includes o150 p4)(includes o150 p5)

(waiting o151)
(includes o151 p4)(includes o151 p5)(includes o151 p6)

(waiting o152)
(includes o152 p5)(includes o152 p6)(includes o152 p7)

(waiting o153)
(includes o153 p6)(includes o153 p7)(includes o153 p8)

(waiting o154)
(includes o154 p7)(includes o154 p8)(includes o154 p9)

(waiting o155)
(includes o155 p8)(includes o155 p9)(includes o155 p10)

(waiting o156)
(includes o156 p9)(includes o156 p10)(includes o156 p11)

(waiting o157)
(includes o157 p10)(includes o157 p11)(includes o157 p12)

(waiting o158)
(includes o158 p11)(includes o158 p12)(includes o158 p1)

(waiting o159)
(includes o159 p12)(includes o159 p1)(includes o159 p2)

(waiting o160)
(includes o160 p1)(includes o160 p2)(includes o160 p3)

(waiting o161)
(includes o161 p2)(includes o161 p3)(includes o161 p4)

(waiting o162)
(includes o162 p3)(includes o162 p4)(includes o162 p5)

(waiting o163)
(includes o163 p4)(includes o163 p5)(includes o163 p6)

(waiting o164)
(includes o164 p5)(includes o164 p6)(includes o164 p7)

(waiting o165)
(includes o165 p6)(includes o165 p7)(includes o165 p8)

(waiting o166)
(includes o166 p7)(includes o166 p8)(includes o166 p9)

(waiting o167)
(includes o167 p8)(includes o167 p9)(includes o167 p10)

(waiting o168)
(includes o168 p9)(includes o168 p10)(includes o168 p11)

(waiting o169)
(includes o169 p10)(includes o169 p11)(includes o169 p12)

(waiting o170)
(includes o170 p11)(includes o170 p12)(includes o170 p1)

(waiting o171)
(includes o171 p12)(includes o171 p1)(includes o171 p2)

(waiting o172)
(includes o172 p1)(includes o172 p2)(includes o172 p3)

(waiting o173)
(includes o173 p2)(includes o173 p3)(includes o173 p4)

(waiting o174)
(includes o174 p3)(includes o174 p4)(includes o174 p5)

(waiting o175)
(includes o175 p4)(includes o175 p5)(includes o175 p6)

(waiting o176)
(includes o176 p5)(includes o176 p6)(includes o176 p7)

(waiting o177)
(includes o177 p6)(includes o177 p7)(includes o177 p8)

(waiting o178)
(includes o178 p7)(includes o178 p8)(includes o178 p9)

(waiting o179)
(includes o179 p8)(includes o179 p9)(includes o179 p10)

(waiting o180)
(includes o180 p9)(includes o180 p10)(includes o180 p11)

(waiting o181)
(includes o181 p10)(includes o181 p11)(includes o181 p12)

(waiting o182)
(includes o182 p11)(includes o182 p12)(includes o182 p1)

(waiting o183)
(includes o183 p12)(includes o183 p1)(includes o183 p2)

(waiting o184)
(includes o184 p1)(includes o184 p2)(includes o184 p3)

(waiting o185)
(includes o185 p2)(includes o185 p3)(includes o185 p4)

(waiting o186)
(includes o186 p3)(includes o186 p4)(includes o186 p5)

(waiting o187)
(includes o187 p4)(includes o187 p5)(includes o187 p6)

(waiting o188)
(includes o188 p5)(includes o188 p6)(includes o188 p7)

(waiting o189)
(includes o189 p6)(includes o189 p7)(includes o189 p8)

(waiting o190)
(includes o190 p7)(includes o190 p8)(includes o190 p9)

(waiting o191)
(includes o191 p8)(includes o191 p9)(includes o191 p10)

(waiting o192)
(includes o192 p9)(includes o192 p10)(includes o192 p11)

(waiting o193)
(includes o193 p10)(includes o193 p11)(includes o193 p12)

(waiting o194)
(includes o194 p11)(includes o194 p12)(includes o194 p1)

(waiting o195)
(includes o195 p12)(includes o195 p1)(includes o195 p2)

(waiting o196)
(includes o196 p1)(includes o196 p2)(includes o196 p3)

(waiting o197)
(includes o197 p2)(includes o197 p3)(includes o197 p4)

(waiting o198)
(includes o198 p3)(includes o198 p4)(includes o198 p5)

(waiting o199)
(includes o199 p4)(includes o199 p5)(includes o199 p6)

(waiting o200)
(includes o200 p5)(includes o200 p6)(includes o200 p7)

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