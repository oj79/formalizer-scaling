(define (problem p103)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 n201 n202 n203 n204 n205 n206 n207 n208 n209 n210 n211 n212 n213 n214 n215 n216 n217 n218 n219 n220 n221 n222 n223 n224 n225 n226 n227 n228 n229 n230 n231 n232 n233 n234 n235 n236 n237 n238 n239 n240 n241 n242 n243 n244 n245 n246 n247 n248 n249 n250 n251 n252 n253 n254 n255 n256 n257 n258 n259 n260 n261 n262 n263 n264 n265 n266 n267 n268 n269 n270 n271 n272 n273 n274 n275 n276 n277 n278 n279 n280 n281 n282 n283 n284 n285 n286 n287 n288 n289 n290 n291 n292 n293 n294 n295 n296 n297 n298 n299 n300 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200) (next-count n200 n201) (next-count n201 n202) (next-count n202 n203) (next-count n203 n204) (next-count n204 n205) (next-count n205 n206) (next-count n206 n207) (next-count n207 n208) (next-count n208 n209) (next-count n209 n210) (next-count n210 n211) (next-count n211 n212) (next-count n212 n213) (next-count n213 n214) (next-count n214 n215) (next-count n215 n216) (next-count n216 n217) (next-count n217 n218) (next-count n218 n219) (next-count n219 n220) (next-count n220 n221) (next-count n221 n222) (next-count n222 n223) (next-count n223 n224) (next-count n224 n225) (next-count n225 n226) (next-count n226 n227) (next-count n227 n228) (next-count n228 n229) (next-count n229 n230) (next-count n230 n231) (next-count n231 n232) (next-count n232 n233) (next-count n233 n234) (next-count n234 n235) (next-count n235 n236) (next-count n236 n237) (next-count n237 n238) (next-count n238 n239) (next-count n239 n240) (next-count n240 n241) (next-count n241 n242) (next-count n242 n243) (next-count n243 n244) (next-count n244 n245) (next-count n245 n246) (next-count n246 n247) (next-count n247 n248) (next-count n248 n249) (next-count n249 n250) (next-count n250 n251) (next-count n251 n252) (next-count n252 n253) (next-count n253 n254) (next-count n254 n255) (next-count n255 n256) (next-count n256 n257) (next-count n257 n258) (next-count n258 n259) (next-count n259 n260) (next-count n260 n261) (next-count n261 n262) (next-count n262 n263) (next-count n263 n264) (next-count n264 n265) (next-count n265 n266) (next-count n266 n267) (next-count n267 n268) (next-count n268 n269) (next-count n269 n270) (next-count n270 n271) (next-count n271 n272) (next-count n272 n273) (next-count n273 n274) (next-count n274 n275) (next-count n275 n276) (next-count n276 n277) (next-count n277 n278) (next-count n278 n279) (next-count n279 n280) (next-count n280 n281) (next-count n281 n282) (next-count n282 n283) (next-count n283 n284) (next-count n284 n285) (next-count n285 n286) (next-count n286 n287) (next-count n287 n288) (next-count n288 n289) (next-count n289 n290) (next-count n290 n291) (next-count n291 n292) (next-count n292 n293) (next-count n293 n294) (next-count n294 n295) (next-count n295 n296) (next-count n296 n297) (next-count n297 n298) (next-count n298 n299) (next-count n299 n300)
(stacks-avail n0)

(waiting o1)
(includes o1 p3)(includes o1 p4)(includes o1 p5)

(waiting o2)
(includes o2 p4)(includes o2 p5)(includes o2 p6)

(waiting o3)
(includes o3 p5)(includes o3 p6)(includes o3 p7)

(waiting o4)
(includes o4 p6)(includes o4 p7)(includes o4 p8)

(waiting o5)
(includes o5 p7)(includes o5 p8)(includes o5 p9)

(waiting o6)
(includes o6 p8)(includes o6 p9)(includes o6 p10)

(waiting o7)
(includes o7 p9)(includes o7 p10)(includes o7 p11)

(waiting o8)
(includes o8 p10)(includes o8 p11)(includes o8 p12)

(waiting o9)
(includes o9 p11)(includes o9 p12)(includes o9 p1)

(waiting o10)
(includes o10 p12)(includes o10 p1)(includes o10 p2)

(waiting o11)
(includes o11 p1)(includes o11 p2)(includes o11 p3)

(waiting o12)
(includes o12 p2)(includes o12 p3)(includes o12 p4)

(waiting o13)
(includes o13 p3)(includes o13 p4)(includes o13 p5)

(waiting o14)
(includes o14 p4)(includes o14 p5)(includes o14 p6)

(waiting o15)
(includes o15 p5)(includes o15 p6)(includes o15 p7)

(waiting o16)
(includes o16 p6)(includes o16 p7)(includes o16 p8)

(waiting o17)
(includes o17 p7)(includes o17 p8)(includes o17 p9)

(waiting o18)
(includes o18 p8)(includes o18 p9)(includes o18 p10)

(waiting o19)
(includes o19 p9)(includes o19 p10)(includes o19 p11)

(waiting o20)
(includes o20 p10)(includes o20 p11)(includes o20 p12)

(waiting o21)
(includes o21 p11)(includes o21 p12)(includes o21 p1)

(waiting o22)
(includes o22 p12)(includes o22 p1)(includes o22 p2)

(waiting o23)
(includes o23 p1)(includes o23 p2)(includes o23 p3)

(waiting o24)
(includes o24 p2)(includes o24 p3)(includes o24 p4)

(waiting o25)
(includes o25 p3)(includes o25 p4)(includes o25 p5)

(waiting o26)
(includes o26 p4)(includes o26 p5)(includes o26 p6)

(waiting o27)
(includes o27 p5)(includes o27 p6)(includes o27 p7)

(waiting o28)
(includes o28 p6)(includes o28 p7)(includes o28 p8)

(waiting o29)
(includes o29 p7)(includes o29 p8)(includes o29 p9)

(waiting o30)
(includes o30 p8)(includes o30 p9)(includes o30 p10)

(waiting o31)
(includes o31 p9)(includes o31 p10)(includes o31 p11)

(waiting o32)
(includes o32 p10)(includes o32 p11)(includes o32 p12)

(waiting o33)
(includes o33 p11)(includes o33 p12)(includes o33 p1)

(waiting o34)
(includes o34 p12)(includes o34 p1)(includes o34 p2)

(waiting o35)
(includes o35 p1)(includes o35 p2)(includes o35 p3)

(waiting o36)
(includes o36 p2)(includes o36 p3)(includes o36 p4)

(waiting o37)
(includes o37 p3)(includes o37 p4)(includes o37 p5)

(waiting o38)
(includes o38 p4)(includes o38 p5)(includes o38 p6)

(waiting o39)
(includes o39 p5)(includes o39 p6)(includes o39 p7)

(waiting o40)
(includes o40 p6)(includes o40 p7)(includes o40 p8)

(waiting o41)
(includes o41 p7)(includes o41 p8)(includes o41 p9)

(waiting o42)
(includes o42 p8)(includes o42 p9)(includes o42 p10)

(waiting o43)
(includes o43 p9)(includes o43 p10)(includes o43 p11)

(waiting o44)
(includes o44 p10)(includes o44 p11)(includes o44 p12)

(waiting o45)
(includes o45 p11)(includes o45 p12)(includes o45 p1)

(waiting o46)
(includes o46 p12)(includes o46 p1)(includes o46 p2)

(waiting o47)
(includes o47 p1)(includes o47 p2)(includes o47 p3)

(waiting o48)
(includes o48 p2)(includes o48 p3)(includes o48 p4)

(waiting o49)
(includes o49 p3)(includes o49 p4)(includes o49 p5)

(waiting o50)
(includes o50 p4)(includes o50 p5)(includes o50 p6)

(waiting o51)
(includes o51 p5)(includes o51 p6)(includes o51 p7)

(waiting o52)
(includes o52 p6)(includes o52 p7)(includes o52 p8)

(waiting o53)
(includes o53 p7)(includes o53 p8)(includes o53 p9)

(waiting o54)
(includes o54 p8)(includes o54 p9)(includes o54 p10)

(waiting o55)
(includes o55 p9)(includes o55 p10)(includes o55 p11)

(waiting o56)
(includes o56 p10)(includes o56 p11)(includes o56 p12)

(waiting o57)
(includes o57 p11)(includes o57 p12)(includes o57 p1)

(waiting o58)
(includes o58 p12)(includes o58 p1)(includes o58 p2)

(waiting o59)
(includes o59 p1)(includes o59 p2)(includes o59 p3)

(waiting o60)
(includes o60 p2)(includes o60 p3)(includes o60 p4)

(waiting o61)
(includes o61 p3)(includes o61 p4)(includes o61 p5)

(waiting o62)
(includes o62 p4)(includes o62 p5)(includes o62 p6)

(waiting o63)
(includes o63 p5)(includes o63 p6)(includes o63 p7)

(waiting o64)
(includes o64 p6)(includes o64 p7)(includes o64 p8)

(waiting o65)
(includes o65 p7)(includes o65 p8)(includes o65 p9)

(waiting o66)
(includes o66 p8)(includes o66 p9)(includes o66 p10)

(waiting o67)
(includes o67 p9)(includes o67 p10)(includes o67 p11)

(waiting o68)
(includes o68 p10)(includes o68 p11)(includes o68 p12)

(waiting o69)
(includes o69 p11)(includes o69 p12)(includes o69 p1)

(waiting o70)
(includes o70 p12)(includes o70 p1)(includes o70 p2)

(waiting o71)
(includes o71 p1)(includes o71 p2)(includes o71 p3)

(waiting o72)
(includes o72 p2)(includes o72 p3)(includes o72 p4)

(waiting o73)
(includes o73 p3)(includes o73 p4)(includes o73 p5)

(waiting o74)
(includes o74 p4)(includes o74 p5)(includes o74 p6)

(waiting o75)
(includes o75 p5)(includes o75 p6)(includes o75 p7)

(waiting o76)
(includes o76 p6)(includes o76 p7)(includes o76 p8)

(waiting o77)
(includes o77 p7)(includes o77 p8)(includes o77 p9)

(waiting o78)
(includes o78 p8)(includes o78 p9)(includes o78 p10)

(waiting o79)
(includes o79 p9)(includes o79 p10)(includes o79 p11)

(waiting o80)
(includes o80 p10)(includes o80 p11)(includes o80 p12)

(waiting o81)
(includes o81 p11)(includes o81 p12)(includes o81 p1)

(waiting o82)
(includes o82 p12)(includes o82 p1)(includes o82 p2)

(waiting o83)
(includes o83 p1)(includes o83 p2)(includes o83 p3)

(waiting o84)
(includes o84 p2)(includes o84 p3)(includes o84 p4)

(waiting o85)
(includes o85 p3)(includes o85 p4)(includes o85 p5)

(waiting o86)
(includes o86 p4)(includes o86 p5)(includes o86 p6)

(waiting o87)
(includes o87 p5)(includes o87 p6)(includes o87 p7)

(waiting o88)
(includes o88 p6)(includes o88 p7)(includes o88 p8)

(waiting o89)
(includes o89 p7)(includes o89 p8)(includes o89 p9)

(waiting o90)
(includes o90 p8)(includes o90 p9)(includes o90 p10)

(waiting o91)
(includes o91 p9)(includes o91 p10)(includes o91 p11)

(waiting o92)
(includes o92 p10)(includes o92 p11)(includes o92 p12)

(waiting o93)
(includes o93 p11)(includes o93 p12)(includes o93 p1)

(waiting o94)
(includes o94 p12)(includes o94 p1)(includes o94 p2)

(waiting o95)
(includes o95 p1)(includes o95 p2)(includes o95 p3)

(waiting o96)
(includes o96 p2)(includes o96 p3)(includes o96 p4)

(waiting o97)
(includes o97 p3)(includes o97 p4)(includes o97 p5)

(waiting o98)
(includes o98 p4)(includes o98 p5)(includes o98 p6)

(waiting o99)
(includes o99 p5)(includes o99 p6)(includes o99 p7)

(waiting o100)
(includes o100 p6)(includes o100 p7)(includes o100 p8)

(waiting o101)
(includes o101 p7)(includes o101 p8)(includes o101 p9)

(waiting o102)
(includes o102 p8)(includes o102 p9)(includes o102 p10)

(waiting o103)
(includes o103 p9)(includes o103 p10)(includes o103 p11)

(waiting o104)
(includes o104 p10)(includes o104 p11)(includes o104 p12)

(waiting o105)
(includes o105 p11)(includes o105 p12)(includes o105 p1)

(waiting o106)
(includes o106 p12)(includes o106 p1)(includes o106 p2)

(waiting o107)
(includes o107 p1)(includes o107 p2)(includes o107 p3)

(waiting o108)
(includes o108 p2)(includes o108 p3)(includes o108 p4)

(waiting o109)
(includes o109 p3)(includes o109 p4)(includes o109 p5)

(waiting o110)
(includes o110 p4)(includes o110 p5)(includes o110 p6)

(waiting o111)
(includes o111 p5)(includes o111 p6)(includes o111 p7)

(waiting o112)
(includes o112 p6)(includes o112 p7)(includes o112 p8)

(waiting o113)
(includes o113 p7)(includes o113 p8)(includes o113 p9)

(waiting o114)
(includes o114 p8)(includes o114 p9)(includes o114 p10)

(waiting o115)
(includes o115 p9)(includes o115 p10)(includes o115 p11)

(waiting o116)
(includes o116 p10)(includes o116 p11)(includes o116 p12)

(waiting o117)
(includes o117 p11)(includes o117 p12)(includes o117 p1)

(waiting o118)
(includes o118 p12)(includes o118 p1)(includes o118 p2)

(waiting o119)
(includes o119 p1)(includes o119 p2)(includes o119 p3)

(waiting o120)
(includes o120 p2)(includes o120 p3)(includes o120 p4)

(waiting o121)
(includes o121 p3)(includes o121 p4)(includes o121 p5)

(waiting o122)
(includes o122 p4)(includes o122 p5)(includes o122 p6)

(waiting o123)
(includes o123 p5)(includes o123 p6)(includes o123 p7)

(waiting o124)
(includes o124 p6)(includes o124 p7)(includes o124 p8)

(waiting o125)
(includes o125 p7)(includes o125 p8)(includes o125 p9)

(waiting o126)
(includes o126 p8)(includes o126 p9)(includes o126 p10)

(waiting o127)
(includes o127 p9)(includes o127 p10)(includes o127 p11)

(waiting o128)
(includes o128 p10)(includes o128 p11)(includes o128 p12)

(waiting o129)
(includes o129 p11)(includes o129 p12)(includes o129 p1)

(waiting o130)
(includes o130 p12)(includes o130 p1)(includes o130 p2)

(waiting o131)
(includes o131 p1)(includes o131 p2)(includes o131 p3)

(waiting o132)
(includes o132 p2)(includes o132 p3)(includes o132 p4)

(waiting o133)
(includes o133 p3)(includes o133 p4)(includes o133 p5)

(waiting o134)
(includes o134 p4)(includes o134 p5)(includes o134 p6)

(waiting o135)
(includes o135 p5)(includes o135 p6)(includes o135 p7)

(waiting o136)
(includes o136 p6)(includes o136 p7)(includes o136 p8)

(waiting o137)
(includes o137 p7)(includes o137 p8)(includes o137 p9)

(waiting o138)
(includes o138 p8)(includes o138 p9)(includes o138 p10)

(waiting o139)
(includes o139 p9)(includes o139 p10)(includes o139 p11)

(waiting o140)
(includes o140 p10)(includes o140 p11)(includes o140 p12)

(waiting o141)
(includes o141 p11)(includes o141 p12)(includes o141 p1)

(waiting o142)
(includes o142 p12)(includes o142 p1)(includes o142 p2)

(waiting o143)
(includes o143 p1)(includes o143 p2)(includes o143 p3)

(waiting o144)
(includes o144 p2)(includes o144 p3)(includes o144 p4)

(waiting o145)
(includes o145 p3)(includes o145 p4)(includes o145 p5)

(waiting o146)
(includes o146 p4)(includes o146 p5)(includes o146 p6)

(waiting o147)
(includes o147 p5)(includes o147 p6)(includes o147 p7)

(waiting o148)
(includes o148 p6)(includes o148 p7)(includes o148 p8)

(waiting o149)
(includes o149 p7)(includes o149 p8)(includes o149 p9)

(waiting o150)
(includes o150 p8)(includes o150 p9)(includes o150 p10)

(waiting o151)
(includes o151 p9)(includes o151 p10)(includes o151 p11)

(waiting o152)
(includes o152 p10)(includes o152 p11)(includes o152 p12)

(waiting o153)
(includes o153 p11)(includes o153 p12)(includes o153 p1)

(waiting o154)
(includes o154 p12)(includes o154 p1)(includes o154 p2)

(waiting o155)
(includes o155 p1)(includes o155 p2)(includes o155 p3)

(waiting o156)
(includes o156 p2)(includes o156 p3)(includes o156 p4)

(waiting o157)
(includes o157 p3)(includes o157 p4)(includes o157 p5)

(waiting o158)
(includes o158 p4)(includes o158 p5)(includes o158 p6)

(waiting o159)
(includes o159 p5)(includes o159 p6)(includes o159 p7)

(waiting o160)
(includes o160 p6)(includes o160 p7)(includes o160 p8)

(waiting o161)
(includes o161 p7)(includes o161 p8)(includes o161 p9)

(waiting o162)
(includes o162 p8)(includes o162 p9)(includes o162 p10)

(waiting o163)
(includes o163 p9)(includes o163 p10)(includes o163 p11)

(waiting o164)
(includes o164 p10)(includes o164 p11)(includes o164 p12)

(waiting o165)
(includes o165 p11)(includes o165 p12)(includes o165 p1)

(waiting o166)
(includes o166 p12)(includes o166 p1)(includes o166 p2)

(waiting o167)
(includes o167 p1)(includes o167 p2)(includes o167 p3)

(waiting o168)
(includes o168 p2)(includes o168 p3)(includes o168 p4)

(waiting o169)
(includes o169 p3)(includes o169 p4)(includes o169 p5)

(waiting o170)
(includes o170 p4)(includes o170 p5)(includes o170 p6)

(waiting o171)
(includes o171 p5)(includes o171 p6)(includes o171 p7)

(waiting o172)
(includes o172 p6)(includes o172 p7)(includes o172 p8)

(waiting o173)
(includes o173 p7)(includes o173 p8)(includes o173 p9)

(waiting o174)
(includes o174 p8)(includes o174 p9)(includes o174 p10)

(waiting o175)
(includes o175 p9)(includes o175 p10)(includes o175 p11)

(waiting o176)
(includes o176 p10)(includes o176 p11)(includes o176 p12)

(waiting o177)
(includes o177 p11)(includes o177 p12)(includes o177 p1)

(waiting o178)
(includes o178 p12)(includes o178 p1)(includes o178 p2)

(waiting o179)
(includes o179 p1)(includes o179 p2)(includes o179 p3)

(waiting o180)
(includes o180 p2)(includes o180 p3)(includes o180 p4)

(waiting o181)
(includes o181 p3)(includes o181 p4)(includes o181 p5)

(waiting o182)
(includes o182 p4)(includes o182 p5)(includes o182 p6)

(waiting o183)
(includes o183 p5)(includes o183 p6)(includes o183 p7)

(waiting o184)
(includes o184 p6)(includes o184 p7)(includes o184 p8)

(waiting o185)
(includes o185 p7)(includes o185 p8)(includes o185 p9)

(waiting o186)
(includes o186 p8)(includes o186 p9)(includes o186 p10)

(waiting o187)
(includes o187 p9)(includes o187 p10)(includes o187 p11)

(waiting o188)
(includes o188 p10)(includes o188 p11)(includes o188 p12)

(waiting o189)
(includes o189 p11)(includes o189 p12)(includes o189 p1)

(waiting o190)
(includes o190 p12)(includes o190 p1)(includes o190 p2)

(waiting o191)
(includes o191 p1)(includes o191 p2)(includes o191 p3)

(waiting o192)
(includes o192 p2)(includes o192 p3)(includes o192 p4)

(waiting o193)
(includes o193 p3)(includes o193 p4)(includes o193 p5)

(waiting o194)
(includes o194 p4)(includes o194 p5)(includes o194 p6)

(waiting o195)
(includes o195 p5)(includes o195 p6)(includes o195 p7)

(waiting o196)
(includes o196 p6)(includes o196 p7)(includes o196 p8)

(waiting o197)
(includes o197 p7)(includes o197 p8)(includes o197 p9)

(waiting o198)
(includes o198 p8)(includes o198 p9)(includes o198 p10)

(waiting o199)
(includes o199 p9)(includes o199 p10)(includes o199 p11)

(waiting o200)
(includes o200 p10)(includes o200 p11)(includes o200 p12)

(waiting o201)
(includes o201 p11)(includes o201 p12)(includes o201 p1)

(waiting o202)
(includes o202 p12)(includes o202 p1)(includes o202 p2)

(waiting o203)
(includes o203 p1)(includes o203 p2)(includes o203 p3)

(waiting o204)
(includes o204 p2)(includes o204 p3)(includes o204 p4)

(waiting o205)
(includes o205 p3)(includes o205 p4)(includes o205 p5)

(waiting o206)
(includes o206 p4)(includes o206 p5)(includes o206 p6)

(waiting o207)
(includes o207 p5)(includes o207 p6)(includes o207 p7)

(waiting o208)
(includes o208 p6)(includes o208 p7)(includes o208 p8)

(waiting o209)
(includes o209 p7)(includes o209 p8)(includes o209 p9)

(waiting o210)
(includes o210 p8)(includes o210 p9)(includes o210 p10)

(waiting o211)
(includes o211 p9)(includes o211 p10)(includes o211 p11)

(waiting o212)
(includes o212 p10)(includes o212 p11)(includes o212 p12)

(waiting o213)
(includes o213 p11)(includes o213 p12)(includes o213 p1)

(waiting o214)
(includes o214 p12)(includes o214 p1)(includes o214 p2)

(waiting o215)
(includes o215 p1)(includes o215 p2)(includes o215 p3)

(waiting o216)
(includes o216 p2)(includes o216 p3)(includes o216 p4)

(waiting o217)
(includes o217 p3)(includes o217 p4)(includes o217 p5)

(waiting o218)
(includes o218 p4)(includes o218 p5)(includes o218 p6)

(waiting o219)
(includes o219 p5)(includes o219 p6)(includes o219 p7)

(waiting o220)
(includes o220 p6)(includes o220 p7)(includes o220 p8)

(waiting o221)
(includes o221 p7)(includes o221 p8)(includes o221 p9)

(waiting o222)
(includes o222 p8)(includes o222 p9)(includes o222 p10)

(waiting o223)
(includes o223 p9)(includes o223 p10)(includes o223 p11)

(waiting o224)
(includes o224 p10)(includes o224 p11)(includes o224 p12)

(waiting o225)
(includes o225 p11)(includes o225 p12)(includes o225 p1)

(waiting o226)
(includes o226 p12)(includes o226 p1)(includes o226 p2)

(waiting o227)
(includes o227 p1)(includes o227 p2)(includes o227 p3)

(waiting o228)
(includes o228 p2)(includes o228 p3)(includes o228 p4)

(waiting o229)
(includes o229 p3)(includes o229 p4)(includes o229 p5)

(waiting o230)
(includes o230 p4)(includes o230 p5)(includes o230 p6)

(waiting o231)
(includes o231 p5)(includes o231 p6)(includes o231 p7)

(waiting o232)
(includes o232 p6)(includes o232 p7)(includes o232 p8)

(waiting o233)
(includes o233 p7)(includes o233 p8)(includes o233 p9)

(waiting o234)
(includes o234 p8)(includes o234 p9)(includes o234 p10)

(waiting o235)
(includes o235 p9)(includes o235 p10)(includes o235 p11)

(waiting o236)
(includes o236 p10)(includes o236 p11)(includes o236 p12)

(waiting o237)
(includes o237 p11)(includes o237 p12)(includes o237 p1)

(waiting o238)
(includes o238 p12)(includes o238 p1)(includes o238 p2)

(waiting o239)
(includes o239 p1)(includes o239 p2)(includes o239 p3)

(waiting o240)
(includes o240 p2)(includes o240 p3)(includes o240 p4)

(waiting o241)
(includes o241 p3)(includes o241 p4)(includes o241 p5)

(waiting o242)
(includes o242 p4)(includes o242 p5)(includes o242 p6)

(waiting o243)
(includes o243 p5)(includes o243 p6)(includes o243 p7)

(waiting o244)
(includes o244 p6)(includes o244 p7)(includes o244 p8)

(waiting o245)
(includes o245 p7)(includes o245 p8)(includes o245 p9)

(waiting o246)
(includes o246 p8)(includes o246 p9)(includes o246 p10)

(waiting o247)
(includes o247 p9)(includes o247 p10)(includes o247 p11)

(waiting o248)
(includes o248 p10)(includes o248 p11)(includes o248 p12)

(waiting o249)
(includes o249 p11)(includes o249 p12)(includes o249 p1)

(waiting o250)
(includes o250 p12)(includes o250 p1)(includes o250 p2)

(waiting o251)
(includes o251 p1)(includes o251 p2)(includes o251 p3)

(waiting o252)
(includes o252 p2)(includes o252 p3)(includes o252 p4)

(waiting o253)
(includes o253 p3)(includes o253 p4)(includes o253 p5)

(waiting o254)
(includes o254 p4)(includes o254 p5)(includes o254 p6)

(waiting o255)
(includes o255 p5)(includes o255 p6)(includes o255 p7)

(waiting o256)
(includes o256 p6)(includes o256 p7)(includes o256 p8)

(waiting o257)
(includes o257 p7)(includes o257 p8)(includes o257 p9)

(waiting o258)
(includes o258 p8)(includes o258 p9)(includes o258 p10)

(waiting o259)
(includes o259 p9)(includes o259 p10)(includes o259 p11)

(waiting o260)
(includes o260 p10)(includes o260 p11)(includes o260 p12)

(waiting o261)
(includes o261 p11)(includes o261 p12)(includes o261 p1)

(waiting o262)
(includes o262 p12)(includes o262 p1)(includes o262 p2)

(waiting o263)
(includes o263 p1)(includes o263 p2)(includes o263 p3)

(waiting o264)
(includes o264 p2)(includes o264 p3)(includes o264 p4)

(waiting o265)
(includes o265 p3)(includes o265 p4)(includes o265 p5)

(waiting o266)
(includes o266 p4)(includes o266 p5)(includes o266 p6)

(waiting o267)
(includes o267 p5)(includes o267 p6)(includes o267 p7)

(waiting o268)
(includes o268 p6)(includes o268 p7)(includes o268 p8)

(waiting o269)
(includes o269 p7)(includes o269 p8)(includes o269 p9)

(waiting o270)
(includes o270 p8)(includes o270 p9)(includes o270 p10)

(waiting o271)
(includes o271 p9)(includes o271 p10)(includes o271 p11)

(waiting o272)
(includes o272 p10)(includes o272 p11)(includes o272 p12)

(waiting o273)
(includes o273 p11)(includes o273 p12)(includes o273 p1)

(waiting o274)
(includes o274 p12)(includes o274 p1)(includes o274 p2)

(waiting o275)
(includes o275 p1)(includes o275 p2)(includes o275 p3)

(waiting o276)
(includes o276 p2)(includes o276 p3)(includes o276 p4)

(waiting o277)
(includes o277 p3)(includes o277 p4)(includes o277 p5)

(waiting o278)
(includes o278 p4)(includes o278 p5)(includes o278 p6)

(waiting o279)
(includes o279 p5)(includes o279 p6)(includes o279 p7)

(waiting o280)
(includes o280 p6)(includes o280 p7)(includes o280 p8)

(waiting o281)
(includes o281 p7)(includes o281 p8)(includes o281 p9)

(waiting o282)
(includes o282 p8)(includes o282 p9)(includes o282 p10)

(waiting o283)
(includes o283 p9)(includes o283 p10)(includes o283 p11)

(waiting o284)
(includes o284 p10)(includes o284 p11)(includes o284 p12)

(waiting o285)
(includes o285 p11)(includes o285 p12)(includes o285 p1)

(waiting o286)
(includes o286 p12)(includes o286 p1)(includes o286 p2)

(waiting o287)
(includes o287 p1)(includes o287 p2)(includes o287 p3)

(waiting o288)
(includes o288 p2)(includes o288 p3)(includes o288 p4)

(waiting o289)
(includes o289 p3)(includes o289 p4)(includes o289 p5)

(waiting o290)
(includes o290 p4)(includes o290 p5)(includes o290 p6)

(waiting o291)
(includes o291 p5)(includes o291 p6)(includes o291 p7)

(waiting o292)
(includes o292 p6)(includes o292 p7)(includes o292 p8)

(waiting o293)
(includes o293 p7)(includes o293 p8)(includes o293 p9)

(waiting o294)
(includes o294 p8)(includes o294 p9)(includes o294 p10)

(waiting o295)
(includes o295 p9)(includes o295 p10)(includes o295 p11)

(waiting o296)
(includes o296 p10)(includes o296 p11)(includes o296 p12)

(waiting o297)
(includes o297 p11)(includes o297 p12)(includes o297 p1)

(waiting o298)
(includes o298 p12)(includes o298 p1)(includes o298 p2)

(waiting o299)
(includes o299 p1)(includes o299 p2)(includes o299 p3)

(waiting o300)
(includes o300 p2)(includes o300 p3)(includes o300 p4)

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
(shipped o201)
(shipped o202)
(shipped o203)
(shipped o204)
(shipped o205)
(shipped o206)
(shipped o207)
(shipped o208)
(shipped o209)
(shipped o210)
(shipped o211)
(shipped o212)
(shipped o213)
(shipped o214)
(shipped o215)
(shipped o216)
(shipped o217)
(shipped o218)
(shipped o219)
(shipped o220)
(shipped o221)
(shipped o222)
(shipped o223)
(shipped o224)
(shipped o225)
(shipped o226)
(shipped o227)
(shipped o228)
(shipped o229)
(shipped o230)
(shipped o231)
(shipped o232)
(shipped o233)
(shipped o234)
(shipped o235)
(shipped o236)
(shipped o237)
(shipped o238)
(shipped o239)
(shipped o240)
(shipped o241)
(shipped o242)
(shipped o243)
(shipped o244)
(shipped o245)
(shipped o246)
(shipped o247)
(shipped o248)
(shipped o249)
(shipped o250)
(shipped o251)
(shipped o252)
(shipped o253)
(shipped o254)
(shipped o255)
(shipped o256)
(shipped o257)
(shipped o258)
(shipped o259)
(shipped o260)
(shipped o261)
(shipped o262)
(shipped o263)
(shipped o264)
(shipped o265)
(shipped o266)
(shipped o267)
(shipped o268)
(shipped o269)
(shipped o270)
(shipped o271)
(shipped o272)
(shipped o273)
(shipped o274)
(shipped o275)
(shipped o276)
(shipped o277)
(shipped o278)
(shipped o279)
(shipped o280)
(shipped o281)
(shipped o282)
(shipped o283)
(shipped o284)
(shipped o285)
(shipped o286)
(shipped o287)
(shipped o288)
(shipped o289)
(shipped o290)
(shipped o291)
(shipped o292)
(shipped o293)
(shipped o294)
(shipped o295)
(shipped o296)
(shipped o297)
(shipped o298)
(shipped o299)
(shipped o300)
))
(:metric minimize (total-cost))

)