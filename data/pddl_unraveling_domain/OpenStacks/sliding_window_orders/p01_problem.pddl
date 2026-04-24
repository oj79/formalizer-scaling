(define (problem p01)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12)
(stacks-avail n0)

(waiting o1)
(includes o1 p1)(includes o1 p2)(includes o1 p3)

(waiting o2)
(includes o2 p2)(includes o2 p3)(includes o2 p4)

(waiting o3)
(includes o3 p3)(includes o3 p4)(includes o3 p5)

(waiting o4)
(includes o4 p4)(includes o4 p5)(includes o4 p6)

(waiting o5)
(includes o5 p5)(includes o5 p6)(includes o5 p7)

(= (total-cost) 0)
)
(:goal
(and
(shipped o1)
(shipped o2)
(shipped o3)
(shipped o4)
(shipped o5)
))
(:metric minimize (total-cost))

)