(define (problem p79)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100)
(stacks-avail n0)

(waiting o1)
(includes o1 p9)(includes o1 p10)(includes o1 p11)

(waiting o2)
(includes o2 p10)(includes o2 p11)(includes o2 p12)

(waiting o3)
(includes o3 p11)(includes o3 p12)(includes o3 p1)

(waiting o4)
(includes o4 p12)(includes o4 p1)(includes o4 p2)

(waiting o5)
(includes o5 p1)(includes o5 p2)(includes o5 p3)

(waiting o6)
(includes o6 p2)(includes o6 p3)(includes o6 p4)

(waiting o7)
(includes o7 p3)(includes o7 p4)(includes o7 p5)

(waiting o8)
(includes o8 p4)(includes o8 p5)(includes o8 p6)

(waiting o9)
(includes o9 p5)(includes o9 p6)(includes o9 p7)

(waiting o10)
(includes o10 p6)(includes o10 p7)(includes o10 p8)

(waiting o11)
(includes o11 p7)(includes o11 p8)(includes o11 p9)

(waiting o12)
(includes o12 p8)(includes o12 p9)(includes o12 p10)

(waiting o13)
(includes o13 p9)(includes o13 p10)(includes o13 p11)

(waiting o14)
(includes o14 p10)(includes o14 p11)(includes o14 p12)

(waiting o15)
(includes o15 p11)(includes o15 p12)(includes o15 p1)

(waiting o16)
(includes o16 p12)(includes o16 p1)(includes o16 p2)

(waiting o17)
(includes o17 p1)(includes o17 p2)(includes o17 p3)

(waiting o18)
(includes o18 p2)(includes o18 p3)(includes o18 p4)

(waiting o19)
(includes o19 p3)(includes o19 p4)(includes o19 p5)

(waiting o20)
(includes o20 p4)(includes o20 p5)(includes o20 p6)

(waiting o21)
(includes o21 p5)(includes o21 p6)(includes o21 p7)

(waiting o22)
(includes o22 p6)(includes o22 p7)(includes o22 p8)

(waiting o23)
(includes o23 p7)(includes o23 p8)(includes o23 p9)

(waiting o24)
(includes o24 p8)(includes o24 p9)(includes o24 p10)

(waiting o25)
(includes o25 p9)(includes o25 p10)(includes o25 p11)

(waiting o26)
(includes o26 p10)(includes o26 p11)(includes o26 p12)

(waiting o27)
(includes o27 p11)(includes o27 p12)(includes o27 p1)

(waiting o28)
(includes o28 p12)(includes o28 p1)(includes o28 p2)

(waiting o29)
(includes o29 p1)(includes o29 p2)(includes o29 p3)

(waiting o30)
(includes o30 p2)(includes o30 p3)(includes o30 p4)

(waiting o31)
(includes o31 p3)(includes o31 p4)(includes o31 p5)

(waiting o32)
(includes o32 p4)(includes o32 p5)(includes o32 p6)

(waiting o33)
(includes o33 p5)(includes o33 p6)(includes o33 p7)

(waiting o34)
(includes o34 p6)(includes o34 p7)(includes o34 p8)

(waiting o35)
(includes o35 p7)(includes o35 p8)(includes o35 p9)

(waiting o36)
(includes o36 p8)(includes o36 p9)(includes o36 p10)

(waiting o37)
(includes o37 p9)(includes o37 p10)(includes o37 p11)

(waiting o38)
(includes o38 p10)(includes o38 p11)(includes o38 p12)

(waiting o39)
(includes o39 p11)(includes o39 p12)(includes o39 p1)

(waiting o40)
(includes o40 p12)(includes o40 p1)(includes o40 p2)

(waiting o41)
(includes o41 p1)(includes o41 p2)(includes o41 p3)

(waiting o42)
(includes o42 p2)(includes o42 p3)(includes o42 p4)

(waiting o43)
(includes o43 p3)(includes o43 p4)(includes o43 p5)

(waiting o44)
(includes o44 p4)(includes o44 p5)(includes o44 p6)

(waiting o45)
(includes o45 p5)(includes o45 p6)(includes o45 p7)

(waiting o46)
(includes o46 p6)(includes o46 p7)(includes o46 p8)

(waiting o47)
(includes o47 p7)(includes o47 p8)(includes o47 p9)

(waiting o48)
(includes o48 p8)(includes o48 p9)(includes o48 p10)

(waiting o49)
(includes o49 p9)(includes o49 p10)(includes o49 p11)

(waiting o50)
(includes o50 p10)(includes o50 p11)(includes o50 p12)

(waiting o51)
(includes o51 p11)(includes o51 p12)(includes o51 p1)

(waiting o52)
(includes o52 p12)(includes o52 p1)(includes o52 p2)

(waiting o53)
(includes o53 p1)(includes o53 p2)(includes o53 p3)

(waiting o54)
(includes o54 p2)(includes o54 p3)(includes o54 p4)

(waiting o55)
(includes o55 p3)(includes o55 p4)(includes o55 p5)

(waiting o56)
(includes o56 p4)(includes o56 p5)(includes o56 p6)

(waiting o57)
(includes o57 p5)(includes o57 p6)(includes o57 p7)

(waiting o58)
(includes o58 p6)(includes o58 p7)(includes o58 p8)

(waiting o59)
(includes o59 p7)(includes o59 p8)(includes o59 p9)

(waiting o60)
(includes o60 p8)(includes o60 p9)(includes o60 p10)

(waiting o61)
(includes o61 p9)(includes o61 p10)(includes o61 p11)

(waiting o62)
(includes o62 p10)(includes o62 p11)(includes o62 p12)

(waiting o63)
(includes o63 p11)(includes o63 p12)(includes o63 p1)

(waiting o64)
(includes o64 p12)(includes o64 p1)(includes o64 p2)

(waiting o65)
(includes o65 p1)(includes o65 p2)(includes o65 p3)

(waiting o66)
(includes o66 p2)(includes o66 p3)(includes o66 p4)

(waiting o67)
(includes o67 p3)(includes o67 p4)(includes o67 p5)

(waiting o68)
(includes o68 p4)(includes o68 p5)(includes o68 p6)

(waiting o69)
(includes o69 p5)(includes o69 p6)(includes o69 p7)

(waiting o70)
(includes o70 p6)(includes o70 p7)(includes o70 p8)

(waiting o71)
(includes o71 p7)(includes o71 p8)(includes o71 p9)

(waiting o72)
(includes o72 p8)(includes o72 p9)(includes o72 p10)

(waiting o73)
(includes o73 p9)(includes o73 p10)(includes o73 p11)

(waiting o74)
(includes o74 p10)(includes o74 p11)(includes o74 p12)

(waiting o75)
(includes o75 p11)(includes o75 p12)(includes o75 p1)

(waiting o76)
(includes o76 p12)(includes o76 p1)(includes o76 p2)

(waiting o77)
(includes o77 p1)(includes o77 p2)(includes o77 p3)

(waiting o78)
(includes o78 p2)(includes o78 p3)(includes o78 p4)

(waiting o79)
(includes o79 p3)(includes o79 p4)(includes o79 p5)

(waiting o80)
(includes o80 p4)(includes o80 p5)(includes o80 p6)

(waiting o81)
(includes o81 p5)(includes o81 p6)(includes o81 p7)

(waiting o82)
(includes o82 p6)(includes o82 p7)(includes o82 p8)

(waiting o83)
(includes o83 p7)(includes o83 p8)(includes o83 p9)

(waiting o84)
(includes o84 p8)(includes o84 p9)(includes o84 p10)

(waiting o85)
(includes o85 p9)(includes o85 p10)(includes o85 p11)

(waiting o86)
(includes o86 p10)(includes o86 p11)(includes o86 p12)

(waiting o87)
(includes o87 p11)(includes o87 p12)(includes o87 p1)

(waiting o88)
(includes o88 p12)(includes o88 p1)(includes o88 p2)

(waiting o89)
(includes o89 p1)(includes o89 p2)(includes o89 p3)

(waiting o90)
(includes o90 p2)(includes o90 p3)(includes o90 p4)

(waiting o91)
(includes o91 p3)(includes o91 p4)(includes o91 p5)

(waiting o92)
(includes o92 p4)(includes o92 p5)(includes o92 p6)

(waiting o93)
(includes o93 p5)(includes o93 p6)(includes o93 p7)

(waiting o94)
(includes o94 p6)(includes o94 p7)(includes o94 p8)

(waiting o95)
(includes o95 p7)(includes o95 p8)(includes o95 p9)

(waiting o96)
(includes o96 p8)(includes o96 p9)(includes o96 p10)

(waiting o97)
(includes o97 p9)(includes o97 p10)(includes o97 p11)

(waiting o98)
(includes o98 p10)(includes o98 p11)(includes o98 p12)

(waiting o99)
(includes o99 p11)(includes o99 p12)(includes o99 p1)

(waiting o100)
(includes o100 p12)(includes o100 p1)(includes o100 p2)

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
))
(:metric minimize (total-cost))

)