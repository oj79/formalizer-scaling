(define (problem p28)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15)
(stacks-avail n0)

(waiting o1)
(includes o1 p8)(includes o1 p9)(includes o1 p10)

(waiting o2)
(includes o2 p9)(includes o2 p10)(includes o2 p11)

(waiting o3)
(includes o3 p10)(includes o3 p11)(includes o3 p12)

(waiting o4)
(includes o4 p11)(includes o4 p12)(includes o4 p1)

(waiting o5)
(includes o5 p12)(includes o5 p1)(includes o5 p2)

(waiting o6)
(includes o6 p1)(includes o6 p2)(includes o6 p3)

(waiting o7)
(includes o7 p2)(includes o7 p3)(includes o7 p4)

(waiting o8)
(includes o8 p3)(includes o8 p4)(includes o8 p5)

(waiting o9)
(includes o9 p4)(includes o9 p5)(includes o9 p6)

(waiting o10)
(includes o10 p5)(includes o10 p6)(includes o10 p7)

(waiting o11)
(includes o11 p6)(includes o11 p7)(includes o11 p8)

(waiting o12)
(includes o12 p7)(includes o12 p8)(includes o12 p9)

(waiting o13)
(includes o13 p8)(includes o13 p9)(includes o13 p10)

(waiting o14)
(includes o14 p9)(includes o14 p10)(includes o14 p11)

(waiting o15)
(includes o15 p10)(includes o15 p11)(includes o15 p12)

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
))
(:metric minimize (total-cost))

)