(define (problem p74)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100)
(stacks-avail n0)

(waiting o1)
(includes o1 p4)(includes o1 p5)(includes o1 p6)

(waiting o2)
(includes o2 p5)(includes o2 p6)(includes o2 p7)

(waiting o3)
(includes o3 p6)(includes o3 p7)(includes o3 p8)

(waiting o4)
(includes o4 p7)(includes o4 p8)(includes o4 p9)

(waiting o5)
(includes o5 p8)(includes o5 p9)(includes o5 p10)

(waiting o6)
(includes o6 p9)(includes o6 p10)(includes o6 p11)

(waiting o7)
(includes o7 p10)(includes o7 p11)(includes o7 p12)

(waiting o8)
(includes o8 p11)(includes o8 p12)(includes o8 p1)

(waiting o9)
(includes o9 p12)(includes o9 p1)(includes o9 p2)

(waiting o10)
(includes o10 p1)(includes o10 p2)(includes o10 p3)

(waiting o11)
(includes o11 p2)(includes o11 p3)(includes o11 p4)

(waiting o12)
(includes o12 p3)(includes o12 p4)(includes o12 p5)

(waiting o13)
(includes o13 p4)(includes o13 p5)(includes o13 p6)

(waiting o14)
(includes o14 p5)(includes o14 p6)(includes o14 p7)

(waiting o15)
(includes o15 p6)(includes o15 p7)(includes o15 p8)

(waiting o16)
(includes o16 p7)(includes o16 p8)(includes o16 p9)

(waiting o17)
(includes o17 p8)(includes o17 p9)(includes o17 p10)

(waiting o18)
(includes o18 p9)(includes o18 p10)(includes o18 p11)

(waiting o19)
(includes o19 p10)(includes o19 p11)(includes o19 p12)

(waiting o20)
(includes o20 p11)(includes o20 p12)(includes o20 p1)

(waiting o21)
(includes o21 p12)(includes o21 p1)(includes o21 p2)

(waiting o22)
(includes o22 p1)(includes o22 p2)(includes o22 p3)

(waiting o23)
(includes o23 p2)(includes o23 p3)(includes o23 p4)

(waiting o24)
(includes o24 p3)(includes o24 p4)(includes o24 p5)

(waiting o25)
(includes o25 p4)(includes o25 p5)(includes o25 p6)

(waiting o26)
(includes o26 p5)(includes o26 p6)(includes o26 p7)

(waiting o27)
(includes o27 p6)(includes o27 p7)(includes o27 p8)

(waiting o28)
(includes o28 p7)(includes o28 p8)(includes o28 p9)

(waiting o29)
(includes o29 p8)(includes o29 p9)(includes o29 p10)

(waiting o30)
(includes o30 p9)(includes o30 p10)(includes o30 p11)

(waiting o31)
(includes o31 p10)(includes o31 p11)(includes o31 p12)

(waiting o32)
(includes o32 p11)(includes o32 p12)(includes o32 p1)

(waiting o33)
(includes o33 p12)(includes o33 p1)(includes o33 p2)

(waiting o34)
(includes o34 p1)(includes o34 p2)(includes o34 p3)

(waiting o35)
(includes o35 p2)(includes o35 p3)(includes o35 p4)

(waiting o36)
(includes o36 p3)(includes o36 p4)(includes o36 p5)

(waiting o37)
(includes o37 p4)(includes o37 p5)(includes o37 p6)

(waiting o38)
(includes o38 p5)(includes o38 p6)(includes o38 p7)

(waiting o39)
(includes o39 p6)(includes o39 p7)(includes o39 p8)

(waiting o40)
(includes o40 p7)(includes o40 p8)(includes o40 p9)

(waiting o41)
(includes o41 p8)(includes o41 p9)(includes o41 p10)

(waiting o42)
(includes o42 p9)(includes o42 p10)(includes o42 p11)

(waiting o43)
(includes o43 p10)(includes o43 p11)(includes o43 p12)

(waiting o44)
(includes o44 p11)(includes o44 p12)(includes o44 p1)

(waiting o45)
(includes o45 p12)(includes o45 p1)(includes o45 p2)

(waiting o46)
(includes o46 p1)(includes o46 p2)(includes o46 p3)

(waiting o47)
(includes o47 p2)(includes o47 p3)(includes o47 p4)

(waiting o48)
(includes o48 p3)(includes o48 p4)(includes o48 p5)

(waiting o49)
(includes o49 p4)(includes o49 p5)(includes o49 p6)

(waiting o50)
(includes o50 p5)(includes o50 p6)(includes o50 p7)

(waiting o51)
(includes o51 p6)(includes o51 p7)(includes o51 p8)

(waiting o52)
(includes o52 p7)(includes o52 p8)(includes o52 p9)

(waiting o53)
(includes o53 p8)(includes o53 p9)(includes o53 p10)

(waiting o54)
(includes o54 p9)(includes o54 p10)(includes o54 p11)

(waiting o55)
(includes o55 p10)(includes o55 p11)(includes o55 p12)

(waiting o56)
(includes o56 p11)(includes o56 p12)(includes o56 p1)

(waiting o57)
(includes o57 p12)(includes o57 p1)(includes o57 p2)

(waiting o58)
(includes o58 p1)(includes o58 p2)(includes o58 p3)

(waiting o59)
(includes o59 p2)(includes o59 p3)(includes o59 p4)

(waiting o60)
(includes o60 p3)(includes o60 p4)(includes o60 p5)

(waiting o61)
(includes o61 p4)(includes o61 p5)(includes o61 p6)

(waiting o62)
(includes o62 p5)(includes o62 p6)(includes o62 p7)

(waiting o63)
(includes o63 p6)(includes o63 p7)(includes o63 p8)

(waiting o64)
(includes o64 p7)(includes o64 p8)(includes o64 p9)

(waiting o65)
(includes o65 p8)(includes o65 p9)(includes o65 p10)

(waiting o66)
(includes o66 p9)(includes o66 p10)(includes o66 p11)

(waiting o67)
(includes o67 p10)(includes o67 p11)(includes o67 p12)

(waiting o68)
(includes o68 p11)(includes o68 p12)(includes o68 p1)

(waiting o69)
(includes o69 p12)(includes o69 p1)(includes o69 p2)

(waiting o70)
(includes o70 p1)(includes o70 p2)(includes o70 p3)

(waiting o71)
(includes o71 p2)(includes o71 p3)(includes o71 p4)

(waiting o72)
(includes o72 p3)(includes o72 p4)(includes o72 p5)

(waiting o73)
(includes o73 p4)(includes o73 p5)(includes o73 p6)

(waiting o74)
(includes o74 p5)(includes o74 p6)(includes o74 p7)

(waiting o75)
(includes o75 p6)(includes o75 p7)(includes o75 p8)

(waiting o76)
(includes o76 p7)(includes o76 p8)(includes o76 p9)

(waiting o77)
(includes o77 p8)(includes o77 p9)(includes o77 p10)

(waiting o78)
(includes o78 p9)(includes o78 p10)(includes o78 p11)

(waiting o79)
(includes o79 p10)(includes o79 p11)(includes o79 p12)

(waiting o80)
(includes o80 p11)(includes o80 p12)(includes o80 p1)

(waiting o81)
(includes o81 p12)(includes o81 p1)(includes o81 p2)

(waiting o82)
(includes o82 p1)(includes o82 p2)(includes o82 p3)

(waiting o83)
(includes o83 p2)(includes o83 p3)(includes o83 p4)

(waiting o84)
(includes o84 p3)(includes o84 p4)(includes o84 p5)

(waiting o85)
(includes o85 p4)(includes o85 p5)(includes o85 p6)

(waiting o86)
(includes o86 p5)(includes o86 p6)(includes o86 p7)

(waiting o87)
(includes o87 p6)(includes o87 p7)(includes o87 p8)

(waiting o88)
(includes o88 p7)(includes o88 p8)(includes o88 p9)

(waiting o89)
(includes o89 p8)(includes o89 p9)(includes o89 p10)

(waiting o90)
(includes o90 p9)(includes o90 p10)(includes o90 p11)

(waiting o91)
(includes o91 p10)(includes o91 p11)(includes o91 p12)

(waiting o92)
(includes o92 p11)(includes o92 p12)(includes o92 p1)

(waiting o93)
(includes o93 p12)(includes o93 p1)(includes o93 p2)

(waiting o94)
(includes o94 p1)(includes o94 p2)(includes o94 p3)

(waiting o95)
(includes o95 p2)(includes o95 p3)(includes o95 p4)

(waiting o96)
(includes o96 p3)(includes o96 p4)(includes o96 p5)

(waiting o97)
(includes o97 p4)(includes o97 p5)(includes o97 p6)

(waiting o98)
(includes o98 p5)(includes o98 p6)(includes o98 p7)

(waiting o99)
(includes o99 p6)(includes o99 p7)(includes o99 p8)

(waiting o100)
(includes o100 p7)(includes o100 p8)(includes o100 p9)

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