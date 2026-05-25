(define (problem p111)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 n201 n202 n203 n204 n205 n206 n207 n208 n209 n210 n211 n212 n213 n214 n215 n216 n217 n218 n219 n220 n221 n222 n223 n224 n225 n226 n227 n228 n229 n230 n231 n232 n233 n234 n235 n236 n237 n238 n239 n240 n241 n242 n243 n244 n245 n246 n247 n248 n249 n250 n251 n252 n253 n254 n255 n256 n257 n258 n259 n260 n261 n262 n263 n264 n265 n266 n267 n268 n269 n270 n271 n272 n273 n274 n275 n276 n277 n278 n279 n280 n281 n282 n283 n284 n285 n286 n287 n288 n289 n290 n291 n292 n293 n294 n295 n296 n297 n298 n299 n300 n301 n302 n303 n304 n305 n306 n307 n308 n309 n310 n311 n312 n313 n314 n315 n316 n317 n318 n319 n320 n321 n322 n323 n324 n325 n326 n327 n328 n329 n330 n331 n332 n333 n334 n335 n336 n337 n338 n339 n340 n341 n342 n343 n344 n345 n346 n347 n348 n349 n350 n351 n352 n353 n354 n355 n356 n357 n358 n359 n360 n361 n362 n363 n364 n365 n366 n367 n368 n369 n370 n371 n372 n373 n374 n375 n376 n377 n378 n379 n380 n381 n382 n383 n384 n385 n386 n387 n388 n389 n390 n391 n392 n393 n394 n395 n396 n397 n398 n399 n400 n401 n402 n403 n404 n405 n406 n407 n408 n409 n410 n411 n412 n413 n414 n415 n416 n417 n418 n419 n420 n421 n422 n423 n424 n425 n426 n427 n428 n429 n430 n431 n432 n433 n434 n435 n436 n437 n438 n439 n440 n441 n442 n443 n444 n445 n446 n447 n448 n449 n450 n451 n452 n453 n454 n455 n456 n457 n458 n459 n460 n461 n462 n463 n464 n465 n466 n467 n468 n469 n470 n471 n472 n473 n474 n475 n476 n477 n478 n479 n480 n481 n482 n483 n484 n485 n486 n487 n488 n489 n490 n491 n492 n493 n494 n495 n496 n497 n498 n499 n500 n501 n502 n503 n504 n505 n506 n507 n508 n509 n510 n511 n512 n513 n514 n515 n516 n517 n518 n519 n520 n521 n522 n523 n524 n525 n526 n527 n528 n529 n530 n531 n532 n533 n534 n535 n536 n537 n538 n539 n540 n541 n542 n543 n544 n545 n546 n547 n548 n549 n550 n551 n552 n553 n554 n555 n556 n557 n558 n559 n560 n561 n562 n563 n564 n565 n566 n567 n568 n569 n570 n571 n572 n573 n574 n575 n576 n577 n578 n579 n580 n581 n582 n583 n584 n585 n586 n587 n588 n589 n590 n591 n592 n593 n594 n595 n596 n597 n598 n599 n600 n601 n602 n603 n604 n605 n606 n607 n608 n609 n610 n611 n612 n613 n614 n615 n616 n617 n618 n619 n620 n621 n622 n623 n624 n625 n626 n627 n628 n629 n630 n631 n632 n633 n634 n635 n636 n637 n638 n639 n640 n641 n642 n643 n644 n645 n646 n647 n648 n649 n650 n651 n652 n653 n654 n655 n656 n657 n658 n659 n660 n661 n662 n663 n664 n665 n666 n667 n668 n669 n670 n671 n672 n673 n674 n675 n676 n677 n678 n679 n680 n681 n682 n683 n684 n685 n686 n687 n688 n689 n690 n691 n692 n693 n694 n695 n696 n697 n698 n699 n700 n701 n702 n703 n704 n705 n706 n707 n708 n709 n710 n711 n712 n713 n714 n715 n716 n717 n718 n719 n720 n721 n722 n723 n724 n725 n726 n727 n728 n729 n730 n731 n732 n733 n734 n735 n736 n737 n738 n739 n740 n741 n742 n743 n744 n745 n746 n747 n748 n749 n750 n751 n752 n753 n754 n755 n756 n757 n758 n759 n760 n761 n762 n763 n764 n765 n766 n767 n768 n769 n770 n771 n772 n773 n774 n775 n776 n777 n778 n779 n780 n781 n782 n783 n784 n785 n786 n787 n788 n789 n790 n791 n792 n793 n794 n795 n796 n797 n798 n799 n800 n801 n802 n803 n804 n805 n806 n807 n808 n809 n810 n811 n812 n813 n814 n815 n816 n817 n818 n819 n820 n821 n822 n823 n824 n825 n826 n827 n828 n829 n830 n831 n832 n833 n834 n835 n836 n837 n838 n839 n840 n841 n842 n843 n844 n845 n846 n847 n848 n849 n850 n851 n852 n853 n854 n855 n856 n857 n858 n859 n860 n861 n862 n863 n864 n865 n866 n867 n868 n869 n870 n871 n872 n873 n874 n875 n876 n877 n878 n879 n880 n881 n882 n883 n884 n885 n886 n887 n888 n889 n890 n891 n892 n893 n894 n895 n896 n897 n898 n899 n900 n901 n902 n903 n904 n905 n906 n907 n908 n909 n910 n911 n912 n913 n914 n915 n916 n917 n918 n919 n920 n921 n922 n923 n924 n925 n926 n927 n928 n929 n930 n931 n932 n933 n934 n935 n936 n937 n938 n939 n940 n941 n942 n943 n944 n945 n946 n947 n948 n949 n950 n951 n952 n953 n954 n955 n956 n957 n958 n959 n960 n961 n962 n963 n964 n965 n966 n967 n968 n969 n970 n971 n972 n973 n974 n975 n976 n977 n978 n979 n980 n981 n982 n983 n984 n985 n986 n987 n988 n989 n990 n991 n992 n993 n994 n995 n996 n997 n998 n999 n1000 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200) (next-count n200 n201) (next-count n201 n202) (next-count n202 n203) (next-count n203 n204) (next-count n204 n205) (next-count n205 n206) (next-count n206 n207) (next-count n207 n208) (next-count n208 n209) (next-count n209 n210) (next-count n210 n211) (next-count n211 n212) (next-count n212 n213) (next-count n213 n214) (next-count n214 n215) (next-count n215 n216) (next-count n216 n217) (next-count n217 n218) (next-count n218 n219) (next-count n219 n220) (next-count n220 n221) (next-count n221 n222) (next-count n222 n223) (next-count n223 n224) (next-count n224 n225) (next-count n225 n226) (next-count n226 n227) (next-count n227 n228) (next-count n228 n229) (next-count n229 n230) (next-count n230 n231) (next-count n231 n232) (next-count n232 n233) (next-count n233 n234) (next-count n234 n235) (next-count n235 n236) (next-count n236 n237) (next-count n237 n238) (next-count n238 n239) (next-count n239 n240) (next-count n240 n241) (next-count n241 n242) (next-count n242 n243) (next-count n243 n244) (next-count n244 n245) (next-count n245 n246) (next-count n246 n247) (next-count n247 n248) (next-count n248 n249) (next-count n249 n250) (next-count n250 n251) (next-count n251 n252) (next-count n252 n253) (next-count n253 n254) (next-count n254 n255) (next-count n255 n256) (next-count n256 n257) (next-count n257 n258) (next-count n258 n259) (next-count n259 n260) (next-count n260 n261) (next-count n261 n262) (next-count n262 n263) (next-count n263 n264) (next-count n264 n265) (next-count n265 n266) (next-count n266 n267) (next-count n267 n268) (next-count n268 n269) (next-count n269 n270) (next-count n270 n271) (next-count n271 n272) (next-count n272 n273) (next-count n273 n274) (next-count n274 n275) (next-count n275 n276) (next-count n276 n277) (next-count n277 n278) (next-count n278 n279) (next-count n279 n280) (next-count n280 n281) (next-count n281 n282) (next-count n282 n283) (next-count n283 n284) (next-count n284 n285) (next-count n285 n286) (next-count n286 n287) (next-count n287 n288) (next-count n288 n289) (next-count n289 n290) (next-count n290 n291) (next-count n291 n292) (next-count n292 n293) (next-count n293 n294) (next-count n294 n295) (next-count n295 n296) (next-count n296 n297) (next-count n297 n298) (next-count n298 n299) (next-count n299 n300) (next-count n300 n301) (next-count n301 n302) (next-count n302 n303) (next-count n303 n304) (next-count n304 n305) (next-count n305 n306) (next-count n306 n307) (next-count n307 n308) (next-count n308 n309) (next-count n309 n310) (next-count n310 n311) (next-count n311 n312) (next-count n312 n313) (next-count n313 n314) (next-count n314 n315) (next-count n315 n316) (next-count n316 n317) (next-count n317 n318) (next-count n318 n319) (next-count n319 n320) (next-count n320 n321) (next-count n321 n322) (next-count n322 n323) (next-count n323 n324) (next-count n324 n325) (next-count n325 n326) (next-count n326 n327) (next-count n327 n328) (next-count n328 n329) (next-count n329 n330) (next-count n330 n331) (next-count n331 n332) (next-count n332 n333) (next-count n333 n334) (next-count n334 n335) (next-count n335 n336) (next-count n336 n337) (next-count n337 n338) (next-count n338 n339) (next-count n339 n340) (next-count n340 n341) (next-count n341 n342) (next-count n342 n343) (next-count n343 n344) (next-count n344 n345) (next-count n345 n346) (next-count n346 n347) (next-count n347 n348) (next-count n348 n349) (next-count n349 n350) (next-count n350 n351) (next-count n351 n352) (next-count n352 n353) (next-count n353 n354) (next-count n354 n355) (next-count n355 n356) (next-count n356 n357) (next-count n357 n358) (next-count n358 n359) (next-count n359 n360) (next-count n360 n361) (next-count n361 n362) (next-count n362 n363) (next-count n363 n364) (next-count n364 n365) (next-count n365 n366) (next-count n366 n367) (next-count n367 n368) (next-count n368 n369) (next-count n369 n370) (next-count n370 n371) (next-count n371 n372) (next-count n372 n373) (next-count n373 n374) (next-count n374 n375) (next-count n375 n376) (next-count n376 n377) (next-count n377 n378) (next-count n378 n379) (next-count n379 n380) (next-count n380 n381) (next-count n381 n382) (next-count n382 n383) (next-count n383 n384) (next-count n384 n385) (next-count n385 n386) (next-count n386 n387) (next-count n387 n388) (next-count n388 n389) (next-count n389 n390) (next-count n390 n391) (next-count n391 n392) (next-count n392 n393) (next-count n393 n394) (next-count n394 n395) (next-count n395 n396) (next-count n396 n397) (next-count n397 n398) (next-count n398 n399) (next-count n399 n400) (next-count n400 n401) (next-count n401 n402) (next-count n402 n403) (next-count n403 n404) (next-count n404 n405) (next-count n405 n406) (next-count n406 n407) (next-count n407 n408) (next-count n408 n409) (next-count n409 n410) (next-count n410 n411) (next-count n411 n412) (next-count n412 n413) (next-count n413 n414) (next-count n414 n415) (next-count n415 n416) (next-count n416 n417) (next-count n417 n418) (next-count n418 n419) (next-count n419 n420) (next-count n420 n421) (next-count n421 n422) (next-count n422 n423) (next-count n423 n424) (next-count n424 n425) (next-count n425 n426) (next-count n426 n427) (next-count n427 n428) (next-count n428 n429) (next-count n429 n430) (next-count n430 n431) (next-count n431 n432) (next-count n432 n433) (next-count n433 n434) (next-count n434 n435) (next-count n435 n436) (next-count n436 n437) (next-count n437 n438) (next-count n438 n439) (next-count n439 n440) (next-count n440 n441) (next-count n441 n442) (next-count n442 n443) (next-count n443 n444) (next-count n444 n445) (next-count n445 n446) (next-count n446 n447) (next-count n447 n448) (next-count n448 n449) (next-count n449 n450) (next-count n450 n451) (next-count n451 n452) (next-count n452 n453) (next-count n453 n454) (next-count n454 n455) (next-count n455 n456) (next-count n456 n457) (next-count n457 n458) (next-count n458 n459) (next-count n459 n460) (next-count n460 n461) (next-count n461 n462) (next-count n462 n463) (next-count n463 n464) (next-count n464 n465) (next-count n465 n466) (next-count n466 n467) (next-count n467 n468) (next-count n468 n469) (next-count n469 n470) (next-count n470 n471) (next-count n471 n472) (next-count n472 n473) (next-count n473 n474) (next-count n474 n475) (next-count n475 n476) (next-count n476 n477) (next-count n477 n478) (next-count n478 n479) (next-count n479 n480) (next-count n480 n481) (next-count n481 n482) (next-count n482 n483) (next-count n483 n484) (next-count n484 n485) (next-count n485 n486) (next-count n486 n487) (next-count n487 n488) (next-count n488 n489) (next-count n489 n490) (next-count n490 n491) (next-count n491 n492) (next-count n492 n493) (next-count n493 n494) (next-count n494 n495) (next-count n495 n496) (next-count n496 n497) (next-count n497 n498) (next-count n498 n499) (next-count n499 n500) (next-count n500 n501) (next-count n501 n502) (next-count n502 n503) (next-count n503 n504) (next-count n504 n505) (next-count n505 n506) (next-count n506 n507) (next-count n507 n508) (next-count n508 n509) (next-count n509 n510) (next-count n510 n511) (next-count n511 n512) (next-count n512 n513) (next-count n513 n514) (next-count n514 n515) (next-count n515 n516) (next-count n516 n517) (next-count n517 n518) (next-count n518 n519) (next-count n519 n520) (next-count n520 n521) (next-count n521 n522) (next-count n522 n523) (next-count n523 n524) (next-count n524 n525) (next-count n525 n526) (next-count n526 n527) (next-count n527 n528) (next-count n528 n529) (next-count n529 n530) (next-count n530 n531) (next-count n531 n532) (next-count n532 n533) (next-count n533 n534) (next-count n534 n535) (next-count n535 n536) (next-count n536 n537) (next-count n537 n538) (next-count n538 n539) (next-count n539 n540) (next-count n540 n541) (next-count n541 n542) (next-count n542 n543) (next-count n543 n544) (next-count n544 n545) (next-count n545 n546) (next-count n546 n547) (next-count n547 n548) (next-count n548 n549) (next-count n549 n550) (next-count n550 n551) (next-count n551 n552) (next-count n552 n553) (next-count n553 n554) (next-count n554 n555) (next-count n555 n556) (next-count n556 n557) (next-count n557 n558) (next-count n558 n559) (next-count n559 n560) (next-count n560 n561) (next-count n561 n562) (next-count n562 n563) (next-count n563 n564) (next-count n564 n565) (next-count n565 n566) (next-count n566 n567) (next-count n567 n568) (next-count n568 n569) (next-count n569 n570) (next-count n570 n571) (next-count n571 n572) (next-count n572 n573) (next-count n573 n574) (next-count n574 n575) (next-count n575 n576) (next-count n576 n577) (next-count n577 n578) (next-count n578 n579) (next-count n579 n580) (next-count n580 n581) (next-count n581 n582) (next-count n582 n583) (next-count n583 n584) (next-count n584 n585) (next-count n585 n586) (next-count n586 n587) (next-count n587 n588) (next-count n588 n589) (next-count n589 n590) (next-count n590 n591) (next-count n591 n592) (next-count n592 n593) (next-count n593 n594) (next-count n594 n595) (next-count n595 n596) (next-count n596 n597) (next-count n597 n598) (next-count n598 n599) (next-count n599 n600) (next-count n600 n601) (next-count n601 n602) (next-count n602 n603) (next-count n603 n604) (next-count n604 n605) (next-count n605 n606) (next-count n606 n607) (next-count n607 n608) (next-count n608 n609) (next-count n609 n610) (next-count n610 n611) (next-count n611 n612) (next-count n612 n613) (next-count n613 n614) (next-count n614 n615) (next-count n615 n616) (next-count n616 n617) (next-count n617 n618) (next-count n618 n619) (next-count n619 n620) (next-count n620 n621) (next-count n621 n622) (next-count n622 n623) (next-count n623 n624) (next-count n624 n625) (next-count n625 n626) (next-count n626 n627) (next-count n627 n628) (next-count n628 n629) (next-count n629 n630) (next-count n630 n631) (next-count n631 n632) (next-count n632 n633) (next-count n633 n634) (next-count n634 n635) (next-count n635 n636) (next-count n636 n637) (next-count n637 n638) (next-count n638 n639) (next-count n639 n640) (next-count n640 n641) (next-count n641 n642) (next-count n642 n643) (next-count n643 n644) (next-count n644 n645) (next-count n645 n646) (next-count n646 n647) (next-count n647 n648) (next-count n648 n649) (next-count n649 n650) (next-count n650 n651) (next-count n651 n652) (next-count n652 n653) (next-count n653 n654) (next-count n654 n655) (next-count n655 n656) (next-count n656 n657) (next-count n657 n658) (next-count n658 n659) (next-count n659 n660) (next-count n660 n661) (next-count n661 n662) (next-count n662 n663) (next-count n663 n664) (next-count n664 n665) (next-count n665 n666) (next-count n666 n667) (next-count n667 n668) (next-count n668 n669) (next-count n669 n670) (next-count n670 n671) (next-count n671 n672) (next-count n672 n673) (next-count n673 n674) (next-count n674 n675) (next-count n675 n676) (next-count n676 n677) (next-count n677 n678) (next-count n678 n679) (next-count n679 n680) (next-count n680 n681) (next-count n681 n682) (next-count n682 n683) (next-count n683 n684) (next-count n684 n685) (next-count n685 n686) (next-count n686 n687) (next-count n687 n688) (next-count n688 n689) (next-count n689 n690) (next-count n690 n691) (next-count n691 n692) (next-count n692 n693) (next-count n693 n694) (next-count n694 n695) (next-count n695 n696) (next-count n696 n697) (next-count n697 n698) (next-count n698 n699) (next-count n699 n700) (next-count n700 n701) (next-count n701 n702) (next-count n702 n703) (next-count n703 n704) (next-count n704 n705) (next-count n705 n706) (next-count n706 n707) (next-count n707 n708) (next-count n708 n709) (next-count n709 n710) (next-count n710 n711) (next-count n711 n712) (next-count n712 n713) (next-count n713 n714) (next-count n714 n715) (next-count n715 n716) (next-count n716 n717) (next-count n717 n718) (next-count n718 n719) (next-count n719 n720) (next-count n720 n721) (next-count n721 n722) (next-count n722 n723) (next-count n723 n724) (next-count n724 n725) (next-count n725 n726) (next-count n726 n727) (next-count n727 n728) (next-count n728 n729) (next-count n729 n730) (next-count n730 n731) (next-count n731 n732) (next-count n732 n733) (next-count n733 n734) (next-count n734 n735) (next-count n735 n736) (next-count n736 n737) (next-count n737 n738) (next-count n738 n739) (next-count n739 n740) (next-count n740 n741) (next-count n741 n742) (next-count n742 n743) (next-count n743 n744) (next-count n744 n745) (next-count n745 n746) (next-count n746 n747) (next-count n747 n748) (next-count n748 n749) (next-count n749 n750) (next-count n750 n751) (next-count n751 n752) (next-count n752 n753) (next-count n753 n754) (next-count n754 n755) (next-count n755 n756) (next-count n756 n757) (next-count n757 n758) (next-count n758 n759) (next-count n759 n760) (next-count n760 n761) (next-count n761 n762) (next-count n762 n763) (next-count n763 n764) (next-count n764 n765) (next-count n765 n766) (next-count n766 n767) (next-count n767 n768) (next-count n768 n769) (next-count n769 n770) (next-count n770 n771) (next-count n771 n772) (next-count n772 n773) (next-count n773 n774) (next-count n774 n775) (next-count n775 n776) (next-count n776 n777) (next-count n777 n778) (next-count n778 n779) (next-count n779 n780) (next-count n780 n781) (next-count n781 n782) (next-count n782 n783) (next-count n783 n784) (next-count n784 n785) (next-count n785 n786) (next-count n786 n787) (next-count n787 n788) (next-count n788 n789) (next-count n789 n790) (next-count n790 n791) (next-count n791 n792) (next-count n792 n793) (next-count n793 n794) (next-count n794 n795) (next-count n795 n796) (next-count n796 n797) (next-count n797 n798) (next-count n798 n799) (next-count n799 n800) (next-count n800 n801) (next-count n801 n802) (next-count n802 n803) (next-count n803 n804) (next-count n804 n805) (next-count n805 n806) (next-count n806 n807) (next-count n807 n808) (next-count n808 n809) (next-count n809 n810) (next-count n810 n811) (next-count n811 n812) (next-count n812 n813) (next-count n813 n814) (next-count n814 n815) (next-count n815 n816) (next-count n816 n817) (next-count n817 n818) (next-count n818 n819) (next-count n819 n820) (next-count n820 n821) (next-count n821 n822) (next-count n822 n823) (next-count n823 n824) (next-count n824 n825) (next-count n825 n826) (next-count n826 n827) (next-count n827 n828) (next-count n828 n829) (next-count n829 n830) (next-count n830 n831) (next-count n831 n832) (next-count n832 n833) (next-count n833 n834) (next-count n834 n835) (next-count n835 n836) (next-count n836 n837) (next-count n837 n838) (next-count n838 n839) (next-count n839 n840) (next-count n840 n841) (next-count n841 n842) (next-count n842 n843) (next-count n843 n844) (next-count n844 n845) (next-count n845 n846) (next-count n846 n847) (next-count n847 n848) (next-count n848 n849) (next-count n849 n850) (next-count n850 n851) (next-count n851 n852) (next-count n852 n853) (next-count n853 n854) (next-count n854 n855) (next-count n855 n856) (next-count n856 n857) (next-count n857 n858) (next-count n858 n859) (next-count n859 n860) (next-count n860 n861) (next-count n861 n862) (next-count n862 n863) (next-count n863 n864) (next-count n864 n865) (next-count n865 n866) (next-count n866 n867) (next-count n867 n868) (next-count n868 n869) (next-count n869 n870) (next-count n870 n871) (next-count n871 n872) (next-count n872 n873) (next-count n873 n874) (next-count n874 n875) (next-count n875 n876) (next-count n876 n877) (next-count n877 n878) (next-count n878 n879) (next-count n879 n880) (next-count n880 n881) (next-count n881 n882) (next-count n882 n883) (next-count n883 n884) (next-count n884 n885) (next-count n885 n886) (next-count n886 n887) (next-count n887 n888) (next-count n888 n889) (next-count n889 n890) (next-count n890 n891) (next-count n891 n892) (next-count n892 n893) (next-count n893 n894) (next-count n894 n895) (next-count n895 n896) (next-count n896 n897) (next-count n897 n898) (next-count n898 n899) (next-count n899 n900) (next-count n900 n901) (next-count n901 n902) (next-count n902 n903) (next-count n903 n904) (next-count n904 n905) (next-count n905 n906) (next-count n906 n907) (next-count n907 n908) (next-count n908 n909) (next-count n909 n910) (next-count n910 n911) (next-count n911 n912) (next-count n912 n913) (next-count n913 n914) (next-count n914 n915) (next-count n915 n916) (next-count n916 n917) (next-count n917 n918) (next-count n918 n919) (next-count n919 n920) (next-count n920 n921) (next-count n921 n922) (next-count n922 n923) (next-count n923 n924) (next-count n924 n925) (next-count n925 n926) (next-count n926 n927) (next-count n927 n928) (next-count n928 n929) (next-count n929 n930) (next-count n930 n931) (next-count n931 n932) (next-count n932 n933) (next-count n933 n934) (next-count n934 n935) (next-count n935 n936) (next-count n936 n937) (next-count n937 n938) (next-count n938 n939) (next-count n939 n940) (next-count n940 n941) (next-count n941 n942) (next-count n942 n943) (next-count n943 n944) (next-count n944 n945) (next-count n945 n946) (next-count n946 n947) (next-count n947 n948) (next-count n948 n949) (next-count n949 n950) (next-count n950 n951) (next-count n951 n952) (next-count n952 n953) (next-count n953 n954) (next-count n954 n955) (next-count n955 n956) (next-count n956 n957) (next-count n957 n958) (next-count n958 n959) (next-count n959 n960) (next-count n960 n961) (next-count n961 n962) (next-count n962 n963) (next-count n963 n964) (next-count n964 n965) (next-count n965 n966) (next-count n966 n967) (next-count n967 n968) (next-count n968 n969) (next-count n969 n970) (next-count n970 n971) (next-count n971 n972) (next-count n972 n973) (next-count n973 n974) (next-count n974 n975) (next-count n975 n976) (next-count n976 n977) (next-count n977 n978) (next-count n978 n979) (next-count n979 n980) (next-count n980 n981) (next-count n981 n982) (next-count n982 n983) (next-count n983 n984) (next-count n984 n985) (next-count n985 n986) (next-count n986 n987) (next-count n987 n988) (next-count n988 n989) (next-count n989 n990) (next-count n990 n991) (next-count n991 n992) (next-count n992 n993) (next-count n993 n994) (next-count n994 n995) (next-count n995 n996) (next-count n996 n997) (next-count n997 n998) (next-count n998 n999) (next-count n999 n1000)
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

(waiting o6)
(includes o6 p6)(includes o6 p7)(includes o6 p8)

(waiting o7)
(includes o7 p7)(includes o7 p8)(includes o7 p9)

(waiting o8)
(includes o8 p8)(includes o8 p9)(includes o8 p10)

(waiting o9)
(includes o9 p9)(includes o9 p10)(includes o9 p11)

(waiting o10)
(includes o10 p10)(includes o10 p11)(includes o10 p12)

(waiting o11)
(includes o11 p11)(includes o11 p12)(includes o11 p1)

(waiting o12)
(includes o12 p12)(includes o12 p1)(includes o12 p2)

(waiting o13)
(includes o13 p1)(includes o13 p2)(includes o13 p3)

(waiting o14)
(includes o14 p2)(includes o14 p3)(includes o14 p4)

(waiting o15)
(includes o15 p3)(includes o15 p4)(includes o15 p5)

(waiting o16)
(includes o16 p4)(includes o16 p5)(includes o16 p6)

(waiting o17)
(includes o17 p5)(includes o17 p6)(includes o17 p7)

(waiting o18)
(includes o18 p6)(includes o18 p7)(includes o18 p8)

(waiting o19)
(includes o19 p7)(includes o19 p8)(includes o19 p9)

(waiting o20)
(includes o20 p8)(includes o20 p9)(includes o20 p10)

(waiting o21)
(includes o21 p9)(includes o21 p10)(includes o21 p11)

(waiting o22)
(includes o22 p10)(includes o22 p11)(includes o22 p12)

(waiting o23)
(includes o23 p11)(includes o23 p12)(includes o23 p1)

(waiting o24)
(includes o24 p12)(includes o24 p1)(includes o24 p2)

(waiting o25)
(includes o25 p1)(includes o25 p2)(includes o25 p3)

(waiting o26)
(includes o26 p2)(includes o26 p3)(includes o26 p4)

(waiting o27)
(includes o27 p3)(includes o27 p4)(includes o27 p5)

(waiting o28)
(includes o28 p4)(includes o28 p5)(includes o28 p6)

(waiting o29)
(includes o29 p5)(includes o29 p6)(includes o29 p7)

(waiting o30)
(includes o30 p6)(includes o30 p7)(includes o30 p8)

(waiting o31)
(includes o31 p7)(includes o31 p8)(includes o31 p9)

(waiting o32)
(includes o32 p8)(includes o32 p9)(includes o32 p10)

(waiting o33)
(includes o33 p9)(includes o33 p10)(includes o33 p11)

(waiting o34)
(includes o34 p10)(includes o34 p11)(includes o34 p12)

(waiting o35)
(includes o35 p11)(includes o35 p12)(includes o35 p1)

(waiting o36)
(includes o36 p12)(includes o36 p1)(includes o36 p2)

(waiting o37)
(includes o37 p1)(includes o37 p2)(includes o37 p3)

(waiting o38)
(includes o38 p2)(includes o38 p3)(includes o38 p4)

(waiting o39)
(includes o39 p3)(includes o39 p4)(includes o39 p5)

(waiting o40)
(includes o40 p4)(includes o40 p5)(includes o40 p6)

(waiting o41)
(includes o41 p5)(includes o41 p6)(includes o41 p7)

(waiting o42)
(includes o42 p6)(includes o42 p7)(includes o42 p8)

(waiting o43)
(includes o43 p7)(includes o43 p8)(includes o43 p9)

(waiting o44)
(includes o44 p8)(includes o44 p9)(includes o44 p10)

(waiting o45)
(includes o45 p9)(includes o45 p10)(includes o45 p11)

(waiting o46)
(includes o46 p10)(includes o46 p11)(includes o46 p12)

(waiting o47)
(includes o47 p11)(includes o47 p12)(includes o47 p1)

(waiting o48)
(includes o48 p12)(includes o48 p1)(includes o48 p2)

(waiting o49)
(includes o49 p1)(includes o49 p2)(includes o49 p3)

(waiting o50)
(includes o50 p2)(includes o50 p3)(includes o50 p4)

(waiting o51)
(includes o51 p3)(includes o51 p4)(includes o51 p5)

(waiting o52)
(includes o52 p4)(includes o52 p5)(includes o52 p6)

(waiting o53)
(includes o53 p5)(includes o53 p6)(includes o53 p7)

(waiting o54)
(includes o54 p6)(includes o54 p7)(includes o54 p8)

(waiting o55)
(includes o55 p7)(includes o55 p8)(includes o55 p9)

(waiting o56)
(includes o56 p8)(includes o56 p9)(includes o56 p10)

(waiting o57)
(includes o57 p9)(includes o57 p10)(includes o57 p11)

(waiting o58)
(includes o58 p10)(includes o58 p11)(includes o58 p12)

(waiting o59)
(includes o59 p11)(includes o59 p12)(includes o59 p1)

(waiting o60)
(includes o60 p12)(includes o60 p1)(includes o60 p2)

(waiting o61)
(includes o61 p1)(includes o61 p2)(includes o61 p3)

(waiting o62)
(includes o62 p2)(includes o62 p3)(includes o62 p4)

(waiting o63)
(includes o63 p3)(includes o63 p4)(includes o63 p5)

(waiting o64)
(includes o64 p4)(includes o64 p5)(includes o64 p6)

(waiting o65)
(includes o65 p5)(includes o65 p6)(includes o65 p7)

(waiting o66)
(includes o66 p6)(includes o66 p7)(includes o66 p8)

(waiting o67)
(includes o67 p7)(includes o67 p8)(includes o67 p9)

(waiting o68)
(includes o68 p8)(includes o68 p9)(includes o68 p10)

(waiting o69)
(includes o69 p9)(includes o69 p10)(includes o69 p11)

(waiting o70)
(includes o70 p10)(includes o70 p11)(includes o70 p12)

(waiting o71)
(includes o71 p11)(includes o71 p12)(includes o71 p1)

(waiting o72)
(includes o72 p12)(includes o72 p1)(includes o72 p2)

(waiting o73)
(includes o73 p1)(includes o73 p2)(includes o73 p3)

(waiting o74)
(includes o74 p2)(includes o74 p3)(includes o74 p4)

(waiting o75)
(includes o75 p3)(includes o75 p4)(includes o75 p5)

(waiting o76)
(includes o76 p4)(includes o76 p5)(includes o76 p6)

(waiting o77)
(includes o77 p5)(includes o77 p6)(includes o77 p7)

(waiting o78)
(includes o78 p6)(includes o78 p7)(includes o78 p8)

(waiting o79)
(includes o79 p7)(includes o79 p8)(includes o79 p9)

(waiting o80)
(includes o80 p8)(includes o80 p9)(includes o80 p10)

(waiting o81)
(includes o81 p9)(includes o81 p10)(includes o81 p11)

(waiting o82)
(includes o82 p10)(includes o82 p11)(includes o82 p12)

(waiting o83)
(includes o83 p11)(includes o83 p12)(includes o83 p1)

(waiting o84)
(includes o84 p12)(includes o84 p1)(includes o84 p2)

(waiting o85)
(includes o85 p1)(includes o85 p2)(includes o85 p3)

(waiting o86)
(includes o86 p2)(includes o86 p3)(includes o86 p4)

(waiting o87)
(includes o87 p3)(includes o87 p4)(includes o87 p5)

(waiting o88)
(includes o88 p4)(includes o88 p5)(includes o88 p6)

(waiting o89)
(includes o89 p5)(includes o89 p6)(includes o89 p7)

(waiting o90)
(includes o90 p6)(includes o90 p7)(includes o90 p8)

(waiting o91)
(includes o91 p7)(includes o91 p8)(includes o91 p9)

(waiting o92)
(includes o92 p8)(includes o92 p9)(includes o92 p10)

(waiting o93)
(includes o93 p9)(includes o93 p10)(includes o93 p11)

(waiting o94)
(includes o94 p10)(includes o94 p11)(includes o94 p12)

(waiting o95)
(includes o95 p11)(includes o95 p12)(includes o95 p1)

(waiting o96)
(includes o96 p12)(includes o96 p1)(includes o96 p2)

(waiting o97)
(includes o97 p1)(includes o97 p2)(includes o97 p3)

(waiting o98)
(includes o98 p2)(includes o98 p3)(includes o98 p4)

(waiting o99)
(includes o99 p3)(includes o99 p4)(includes o99 p5)

(waiting o100)
(includes o100 p4)(includes o100 p5)(includes o100 p6)

(waiting o101)
(includes o101 p5)(includes o101 p6)(includes o101 p7)

(waiting o102)
(includes o102 p6)(includes o102 p7)(includes o102 p8)

(waiting o103)
(includes o103 p7)(includes o103 p8)(includes o103 p9)

(waiting o104)
(includes o104 p8)(includes o104 p9)(includes o104 p10)

(waiting o105)
(includes o105 p9)(includes o105 p10)(includes o105 p11)

(waiting o106)
(includes o106 p10)(includes o106 p11)(includes o106 p12)

(waiting o107)
(includes o107 p11)(includes o107 p12)(includes o107 p1)

(waiting o108)
(includes o108 p12)(includes o108 p1)(includes o108 p2)

(waiting o109)
(includes o109 p1)(includes o109 p2)(includes o109 p3)

(waiting o110)
(includes o110 p2)(includes o110 p3)(includes o110 p4)

(waiting o111)
(includes o111 p3)(includes o111 p4)(includes o111 p5)

(waiting o112)
(includes o112 p4)(includes o112 p5)(includes o112 p6)

(waiting o113)
(includes o113 p5)(includes o113 p6)(includes o113 p7)

(waiting o114)
(includes o114 p6)(includes o114 p7)(includes o114 p8)

(waiting o115)
(includes o115 p7)(includes o115 p8)(includes o115 p9)

(waiting o116)
(includes o116 p8)(includes o116 p9)(includes o116 p10)

(waiting o117)
(includes o117 p9)(includes o117 p10)(includes o117 p11)

(waiting o118)
(includes o118 p10)(includes o118 p11)(includes o118 p12)

(waiting o119)
(includes o119 p11)(includes o119 p12)(includes o119 p1)

(waiting o120)
(includes o120 p12)(includes o120 p1)(includes o120 p2)

(waiting o121)
(includes o121 p1)(includes o121 p2)(includes o121 p3)

(waiting o122)
(includes o122 p2)(includes o122 p3)(includes o122 p4)

(waiting o123)
(includes o123 p3)(includes o123 p4)(includes o123 p5)

(waiting o124)
(includes o124 p4)(includes o124 p5)(includes o124 p6)

(waiting o125)
(includes o125 p5)(includes o125 p6)(includes o125 p7)

(waiting o126)
(includes o126 p6)(includes o126 p7)(includes o126 p8)

(waiting o127)
(includes o127 p7)(includes o127 p8)(includes o127 p9)

(waiting o128)
(includes o128 p8)(includes o128 p9)(includes o128 p10)

(waiting o129)
(includes o129 p9)(includes o129 p10)(includes o129 p11)

(waiting o130)
(includes o130 p10)(includes o130 p11)(includes o130 p12)

(waiting o131)
(includes o131 p11)(includes o131 p12)(includes o131 p1)

(waiting o132)
(includes o132 p12)(includes o132 p1)(includes o132 p2)

(waiting o133)
(includes o133 p1)(includes o133 p2)(includes o133 p3)

(waiting o134)
(includes o134 p2)(includes o134 p3)(includes o134 p4)

(waiting o135)
(includes o135 p3)(includes o135 p4)(includes o135 p5)

(waiting o136)
(includes o136 p4)(includes o136 p5)(includes o136 p6)

(waiting o137)
(includes o137 p5)(includes o137 p6)(includes o137 p7)

(waiting o138)
(includes o138 p6)(includes o138 p7)(includes o138 p8)

(waiting o139)
(includes o139 p7)(includes o139 p8)(includes o139 p9)

(waiting o140)
(includes o140 p8)(includes o140 p9)(includes o140 p10)

(waiting o141)
(includes o141 p9)(includes o141 p10)(includes o141 p11)

(waiting o142)
(includes o142 p10)(includes o142 p11)(includes o142 p12)

(waiting o143)
(includes o143 p11)(includes o143 p12)(includes o143 p1)

(waiting o144)
(includes o144 p12)(includes o144 p1)(includes o144 p2)

(waiting o145)
(includes o145 p1)(includes o145 p2)(includes o145 p3)

(waiting o146)
(includes o146 p2)(includes o146 p3)(includes o146 p4)

(waiting o147)
(includes o147 p3)(includes o147 p4)(includes o147 p5)

(waiting o148)
(includes o148 p4)(includes o148 p5)(includes o148 p6)

(waiting o149)
(includes o149 p5)(includes o149 p6)(includes o149 p7)

(waiting o150)
(includes o150 p6)(includes o150 p7)(includes o150 p8)

(waiting o151)
(includes o151 p7)(includes o151 p8)(includes o151 p9)

(waiting o152)
(includes o152 p8)(includes o152 p9)(includes o152 p10)

(waiting o153)
(includes o153 p9)(includes o153 p10)(includes o153 p11)

(waiting o154)
(includes o154 p10)(includes o154 p11)(includes o154 p12)

(waiting o155)
(includes o155 p11)(includes o155 p12)(includes o155 p1)

(waiting o156)
(includes o156 p12)(includes o156 p1)(includes o156 p2)

(waiting o157)
(includes o157 p1)(includes o157 p2)(includes o157 p3)

(waiting o158)
(includes o158 p2)(includes o158 p3)(includes o158 p4)

(waiting o159)
(includes o159 p3)(includes o159 p4)(includes o159 p5)

(waiting o160)
(includes o160 p4)(includes o160 p5)(includes o160 p6)

(waiting o161)
(includes o161 p5)(includes o161 p6)(includes o161 p7)

(waiting o162)
(includes o162 p6)(includes o162 p7)(includes o162 p8)

(waiting o163)
(includes o163 p7)(includes o163 p8)(includes o163 p9)

(waiting o164)
(includes o164 p8)(includes o164 p9)(includes o164 p10)

(waiting o165)
(includes o165 p9)(includes o165 p10)(includes o165 p11)

(waiting o166)
(includes o166 p10)(includes o166 p11)(includes o166 p12)

(waiting o167)
(includes o167 p11)(includes o167 p12)(includes o167 p1)

(waiting o168)
(includes o168 p12)(includes o168 p1)(includes o168 p2)

(waiting o169)
(includes o169 p1)(includes o169 p2)(includes o169 p3)

(waiting o170)
(includes o170 p2)(includes o170 p3)(includes o170 p4)

(waiting o171)
(includes o171 p3)(includes o171 p4)(includes o171 p5)

(waiting o172)
(includes o172 p4)(includes o172 p5)(includes o172 p6)

(waiting o173)
(includes o173 p5)(includes o173 p6)(includes o173 p7)

(waiting o174)
(includes o174 p6)(includes o174 p7)(includes o174 p8)

(waiting o175)
(includes o175 p7)(includes o175 p8)(includes o175 p9)

(waiting o176)
(includes o176 p8)(includes o176 p9)(includes o176 p10)

(waiting o177)
(includes o177 p9)(includes o177 p10)(includes o177 p11)

(waiting o178)
(includes o178 p10)(includes o178 p11)(includes o178 p12)

(waiting o179)
(includes o179 p11)(includes o179 p12)(includes o179 p1)

(waiting o180)
(includes o180 p12)(includes o180 p1)(includes o180 p2)

(waiting o181)
(includes o181 p1)(includes o181 p2)(includes o181 p3)

(waiting o182)
(includes o182 p2)(includes o182 p3)(includes o182 p4)

(waiting o183)
(includes o183 p3)(includes o183 p4)(includes o183 p5)

(waiting o184)
(includes o184 p4)(includes o184 p5)(includes o184 p6)

(waiting o185)
(includes o185 p5)(includes o185 p6)(includes o185 p7)

(waiting o186)
(includes o186 p6)(includes o186 p7)(includes o186 p8)

(waiting o187)
(includes o187 p7)(includes o187 p8)(includes o187 p9)

(waiting o188)
(includes o188 p8)(includes o188 p9)(includes o188 p10)

(waiting o189)
(includes o189 p9)(includes o189 p10)(includes o189 p11)

(waiting o190)
(includes o190 p10)(includes o190 p11)(includes o190 p12)

(waiting o191)
(includes o191 p11)(includes o191 p12)(includes o191 p1)

(waiting o192)
(includes o192 p12)(includes o192 p1)(includes o192 p2)

(waiting o193)
(includes o193 p1)(includes o193 p2)(includes o193 p3)

(waiting o194)
(includes o194 p2)(includes o194 p3)(includes o194 p4)

(waiting o195)
(includes o195 p3)(includes o195 p4)(includes o195 p5)

(waiting o196)
(includes o196 p4)(includes o196 p5)(includes o196 p6)

(waiting o197)
(includes o197 p5)(includes o197 p6)(includes o197 p7)

(waiting o198)
(includes o198 p6)(includes o198 p7)(includes o198 p8)

(waiting o199)
(includes o199 p7)(includes o199 p8)(includes o199 p9)

(waiting o200)
(includes o200 p8)(includes o200 p9)(includes o200 p10)

(waiting o201)
(includes o201 p9)(includes o201 p10)(includes o201 p11)

(waiting o202)
(includes o202 p10)(includes o202 p11)(includes o202 p12)

(waiting o203)
(includes o203 p11)(includes o203 p12)(includes o203 p1)

(waiting o204)
(includes o204 p12)(includes o204 p1)(includes o204 p2)

(waiting o205)
(includes o205 p1)(includes o205 p2)(includes o205 p3)

(waiting o206)
(includes o206 p2)(includes o206 p3)(includes o206 p4)

(waiting o207)
(includes o207 p3)(includes o207 p4)(includes o207 p5)

(waiting o208)
(includes o208 p4)(includes o208 p5)(includes o208 p6)

(waiting o209)
(includes o209 p5)(includes o209 p6)(includes o209 p7)

(waiting o210)
(includes o210 p6)(includes o210 p7)(includes o210 p8)

(waiting o211)
(includes o211 p7)(includes o211 p8)(includes o211 p9)

(waiting o212)
(includes o212 p8)(includes o212 p9)(includes o212 p10)

(waiting o213)
(includes o213 p9)(includes o213 p10)(includes o213 p11)

(waiting o214)
(includes o214 p10)(includes o214 p11)(includes o214 p12)

(waiting o215)
(includes o215 p11)(includes o215 p12)(includes o215 p1)

(waiting o216)
(includes o216 p12)(includes o216 p1)(includes o216 p2)

(waiting o217)
(includes o217 p1)(includes o217 p2)(includes o217 p3)

(waiting o218)
(includes o218 p2)(includes o218 p3)(includes o218 p4)

(waiting o219)
(includes o219 p3)(includes o219 p4)(includes o219 p5)

(waiting o220)
(includes o220 p4)(includes o220 p5)(includes o220 p6)

(waiting o221)
(includes o221 p5)(includes o221 p6)(includes o221 p7)

(waiting o222)
(includes o222 p6)(includes o222 p7)(includes o222 p8)

(waiting o223)
(includes o223 p7)(includes o223 p8)(includes o223 p9)

(waiting o224)
(includes o224 p8)(includes o224 p9)(includes o224 p10)

(waiting o225)
(includes o225 p9)(includes o225 p10)(includes o225 p11)

(waiting o226)
(includes o226 p10)(includes o226 p11)(includes o226 p12)

(waiting o227)
(includes o227 p11)(includes o227 p12)(includes o227 p1)

(waiting o228)
(includes o228 p12)(includes o228 p1)(includes o228 p2)

(waiting o229)
(includes o229 p1)(includes o229 p2)(includes o229 p3)

(waiting o230)
(includes o230 p2)(includes o230 p3)(includes o230 p4)

(waiting o231)
(includes o231 p3)(includes o231 p4)(includes o231 p5)

(waiting o232)
(includes o232 p4)(includes o232 p5)(includes o232 p6)

(waiting o233)
(includes o233 p5)(includes o233 p6)(includes o233 p7)

(waiting o234)
(includes o234 p6)(includes o234 p7)(includes o234 p8)

(waiting o235)
(includes o235 p7)(includes o235 p8)(includes o235 p9)

(waiting o236)
(includes o236 p8)(includes o236 p9)(includes o236 p10)

(waiting o237)
(includes o237 p9)(includes o237 p10)(includes o237 p11)

(waiting o238)
(includes o238 p10)(includes o238 p11)(includes o238 p12)

(waiting o239)
(includes o239 p11)(includes o239 p12)(includes o239 p1)

(waiting o240)
(includes o240 p12)(includes o240 p1)(includes o240 p2)

(waiting o241)
(includes o241 p1)(includes o241 p2)(includes o241 p3)

(waiting o242)
(includes o242 p2)(includes o242 p3)(includes o242 p4)

(waiting o243)
(includes o243 p3)(includes o243 p4)(includes o243 p5)

(waiting o244)
(includes o244 p4)(includes o244 p5)(includes o244 p6)

(waiting o245)
(includes o245 p5)(includes o245 p6)(includes o245 p7)

(waiting o246)
(includes o246 p6)(includes o246 p7)(includes o246 p8)

(waiting o247)
(includes o247 p7)(includes o247 p8)(includes o247 p9)

(waiting o248)
(includes o248 p8)(includes o248 p9)(includes o248 p10)

(waiting o249)
(includes o249 p9)(includes o249 p10)(includes o249 p11)

(waiting o250)
(includes o250 p10)(includes o250 p11)(includes o250 p12)

(waiting o251)
(includes o251 p11)(includes o251 p12)(includes o251 p1)

(waiting o252)
(includes o252 p12)(includes o252 p1)(includes o252 p2)

(waiting o253)
(includes o253 p1)(includes o253 p2)(includes o253 p3)

(waiting o254)
(includes o254 p2)(includes o254 p3)(includes o254 p4)

(waiting o255)
(includes o255 p3)(includes o255 p4)(includes o255 p5)

(waiting o256)
(includes o256 p4)(includes o256 p5)(includes o256 p6)

(waiting o257)
(includes o257 p5)(includes o257 p6)(includes o257 p7)

(waiting o258)
(includes o258 p6)(includes o258 p7)(includes o258 p8)

(waiting o259)
(includes o259 p7)(includes o259 p8)(includes o259 p9)

(waiting o260)
(includes o260 p8)(includes o260 p9)(includes o260 p10)

(waiting o261)
(includes o261 p9)(includes o261 p10)(includes o261 p11)

(waiting o262)
(includes o262 p10)(includes o262 p11)(includes o262 p12)

(waiting o263)
(includes o263 p11)(includes o263 p12)(includes o263 p1)

(waiting o264)
(includes o264 p12)(includes o264 p1)(includes o264 p2)

(waiting o265)
(includes o265 p1)(includes o265 p2)(includes o265 p3)

(waiting o266)
(includes o266 p2)(includes o266 p3)(includes o266 p4)

(waiting o267)
(includes o267 p3)(includes o267 p4)(includes o267 p5)

(waiting o268)
(includes o268 p4)(includes o268 p5)(includes o268 p6)

(waiting o269)
(includes o269 p5)(includes o269 p6)(includes o269 p7)

(waiting o270)
(includes o270 p6)(includes o270 p7)(includes o270 p8)

(waiting o271)
(includes o271 p7)(includes o271 p8)(includes o271 p9)

(waiting o272)
(includes o272 p8)(includes o272 p9)(includes o272 p10)

(waiting o273)
(includes o273 p9)(includes o273 p10)(includes o273 p11)

(waiting o274)
(includes o274 p10)(includes o274 p11)(includes o274 p12)

(waiting o275)
(includes o275 p11)(includes o275 p12)(includes o275 p1)

(waiting o276)
(includes o276 p12)(includes o276 p1)(includes o276 p2)

(waiting o277)
(includes o277 p1)(includes o277 p2)(includes o277 p3)

(waiting o278)
(includes o278 p2)(includes o278 p3)(includes o278 p4)

(waiting o279)
(includes o279 p3)(includes o279 p4)(includes o279 p5)

(waiting o280)
(includes o280 p4)(includes o280 p5)(includes o280 p6)

(waiting o281)
(includes o281 p5)(includes o281 p6)(includes o281 p7)

(waiting o282)
(includes o282 p6)(includes o282 p7)(includes o282 p8)

(waiting o283)
(includes o283 p7)(includes o283 p8)(includes o283 p9)

(waiting o284)
(includes o284 p8)(includes o284 p9)(includes o284 p10)

(waiting o285)
(includes o285 p9)(includes o285 p10)(includes o285 p11)

(waiting o286)
(includes o286 p10)(includes o286 p11)(includes o286 p12)

(waiting o287)
(includes o287 p11)(includes o287 p12)(includes o287 p1)

(waiting o288)
(includes o288 p12)(includes o288 p1)(includes o288 p2)

(waiting o289)
(includes o289 p1)(includes o289 p2)(includes o289 p3)

(waiting o290)
(includes o290 p2)(includes o290 p3)(includes o290 p4)

(waiting o291)
(includes o291 p3)(includes o291 p4)(includes o291 p5)

(waiting o292)
(includes o292 p4)(includes o292 p5)(includes o292 p6)

(waiting o293)
(includes o293 p5)(includes o293 p6)(includes o293 p7)

(waiting o294)
(includes o294 p6)(includes o294 p7)(includes o294 p8)

(waiting o295)
(includes o295 p7)(includes o295 p8)(includes o295 p9)

(waiting o296)
(includes o296 p8)(includes o296 p9)(includes o296 p10)

(waiting o297)
(includes o297 p9)(includes o297 p10)(includes o297 p11)

(waiting o298)
(includes o298 p10)(includes o298 p11)(includes o298 p12)

(waiting o299)
(includes o299 p11)(includes o299 p12)(includes o299 p1)

(waiting o300)
(includes o300 p12)(includes o300 p1)(includes o300 p2)

(waiting o301)
(includes o301 p1)(includes o301 p2)(includes o301 p3)

(waiting o302)
(includes o302 p2)(includes o302 p3)(includes o302 p4)

(waiting o303)
(includes o303 p3)(includes o303 p4)(includes o303 p5)

(waiting o304)
(includes o304 p4)(includes o304 p5)(includes o304 p6)

(waiting o305)
(includes o305 p5)(includes o305 p6)(includes o305 p7)

(waiting o306)
(includes o306 p6)(includes o306 p7)(includes o306 p8)

(waiting o307)
(includes o307 p7)(includes o307 p8)(includes o307 p9)

(waiting o308)
(includes o308 p8)(includes o308 p9)(includes o308 p10)

(waiting o309)
(includes o309 p9)(includes o309 p10)(includes o309 p11)

(waiting o310)
(includes o310 p10)(includes o310 p11)(includes o310 p12)

(waiting o311)
(includes o311 p11)(includes o311 p12)(includes o311 p1)

(waiting o312)
(includes o312 p12)(includes o312 p1)(includes o312 p2)

(waiting o313)
(includes o313 p1)(includes o313 p2)(includes o313 p3)

(waiting o314)
(includes o314 p2)(includes o314 p3)(includes o314 p4)

(waiting o315)
(includes o315 p3)(includes o315 p4)(includes o315 p5)

(waiting o316)
(includes o316 p4)(includes o316 p5)(includes o316 p6)

(waiting o317)
(includes o317 p5)(includes o317 p6)(includes o317 p7)

(waiting o318)
(includes o318 p6)(includes o318 p7)(includes o318 p8)

(waiting o319)
(includes o319 p7)(includes o319 p8)(includes o319 p9)

(waiting o320)
(includes o320 p8)(includes o320 p9)(includes o320 p10)

(waiting o321)
(includes o321 p9)(includes o321 p10)(includes o321 p11)

(waiting o322)
(includes o322 p10)(includes o322 p11)(includes o322 p12)

(waiting o323)
(includes o323 p11)(includes o323 p12)(includes o323 p1)

(waiting o324)
(includes o324 p12)(includes o324 p1)(includes o324 p2)

(waiting o325)
(includes o325 p1)(includes o325 p2)(includes o325 p3)

(waiting o326)
(includes o326 p2)(includes o326 p3)(includes o326 p4)

(waiting o327)
(includes o327 p3)(includes o327 p4)(includes o327 p5)

(waiting o328)
(includes o328 p4)(includes o328 p5)(includes o328 p6)

(waiting o329)
(includes o329 p5)(includes o329 p6)(includes o329 p7)

(waiting o330)
(includes o330 p6)(includes o330 p7)(includes o330 p8)

(waiting o331)
(includes o331 p7)(includes o331 p8)(includes o331 p9)

(waiting o332)
(includes o332 p8)(includes o332 p9)(includes o332 p10)

(waiting o333)
(includes o333 p9)(includes o333 p10)(includes o333 p11)

(waiting o334)
(includes o334 p10)(includes o334 p11)(includes o334 p12)

(waiting o335)
(includes o335 p11)(includes o335 p12)(includes o335 p1)

(waiting o336)
(includes o336 p12)(includes o336 p1)(includes o336 p2)

(waiting o337)
(includes o337 p1)(includes o337 p2)(includes o337 p3)

(waiting o338)
(includes o338 p2)(includes o338 p3)(includes o338 p4)

(waiting o339)
(includes o339 p3)(includes o339 p4)(includes o339 p5)

(waiting o340)
(includes o340 p4)(includes o340 p5)(includes o340 p6)

(waiting o341)
(includes o341 p5)(includes o341 p6)(includes o341 p7)

(waiting o342)
(includes o342 p6)(includes o342 p7)(includes o342 p8)

(waiting o343)
(includes o343 p7)(includes o343 p8)(includes o343 p9)

(waiting o344)
(includes o344 p8)(includes o344 p9)(includes o344 p10)

(waiting o345)
(includes o345 p9)(includes o345 p10)(includes o345 p11)

(waiting o346)
(includes o346 p10)(includes o346 p11)(includes o346 p12)

(waiting o347)
(includes o347 p11)(includes o347 p12)(includes o347 p1)

(waiting o348)
(includes o348 p12)(includes o348 p1)(includes o348 p2)

(waiting o349)
(includes o349 p1)(includes o349 p2)(includes o349 p3)

(waiting o350)
(includes o350 p2)(includes o350 p3)(includes o350 p4)

(waiting o351)
(includes o351 p3)(includes o351 p4)(includes o351 p5)

(waiting o352)
(includes o352 p4)(includes o352 p5)(includes o352 p6)

(waiting o353)
(includes o353 p5)(includes o353 p6)(includes o353 p7)

(waiting o354)
(includes o354 p6)(includes o354 p7)(includes o354 p8)

(waiting o355)
(includes o355 p7)(includes o355 p8)(includes o355 p9)

(waiting o356)
(includes o356 p8)(includes o356 p9)(includes o356 p10)

(waiting o357)
(includes o357 p9)(includes o357 p10)(includes o357 p11)

(waiting o358)
(includes o358 p10)(includes o358 p11)(includes o358 p12)

(waiting o359)
(includes o359 p11)(includes o359 p12)(includes o359 p1)

(waiting o360)
(includes o360 p12)(includes o360 p1)(includes o360 p2)

(waiting o361)
(includes o361 p1)(includes o361 p2)(includes o361 p3)

(waiting o362)
(includes o362 p2)(includes o362 p3)(includes o362 p4)

(waiting o363)
(includes o363 p3)(includes o363 p4)(includes o363 p5)

(waiting o364)
(includes o364 p4)(includes o364 p5)(includes o364 p6)

(waiting o365)
(includes o365 p5)(includes o365 p6)(includes o365 p7)

(waiting o366)
(includes o366 p6)(includes o366 p7)(includes o366 p8)

(waiting o367)
(includes o367 p7)(includes o367 p8)(includes o367 p9)

(waiting o368)
(includes o368 p8)(includes o368 p9)(includes o368 p10)

(waiting o369)
(includes o369 p9)(includes o369 p10)(includes o369 p11)

(waiting o370)
(includes o370 p10)(includes o370 p11)(includes o370 p12)

(waiting o371)
(includes o371 p11)(includes o371 p12)(includes o371 p1)

(waiting o372)
(includes o372 p12)(includes o372 p1)(includes o372 p2)

(waiting o373)
(includes o373 p1)(includes o373 p2)(includes o373 p3)

(waiting o374)
(includes o374 p2)(includes o374 p3)(includes o374 p4)

(waiting o375)
(includes o375 p3)(includes o375 p4)(includes o375 p5)

(waiting o376)
(includes o376 p4)(includes o376 p5)(includes o376 p6)

(waiting o377)
(includes o377 p5)(includes o377 p6)(includes o377 p7)

(waiting o378)
(includes o378 p6)(includes o378 p7)(includes o378 p8)

(waiting o379)
(includes o379 p7)(includes o379 p8)(includes o379 p9)

(waiting o380)
(includes o380 p8)(includes o380 p9)(includes o380 p10)

(waiting o381)
(includes o381 p9)(includes o381 p10)(includes o381 p11)

(waiting o382)
(includes o382 p10)(includes o382 p11)(includes o382 p12)

(waiting o383)
(includes o383 p11)(includes o383 p12)(includes o383 p1)

(waiting o384)
(includes o384 p12)(includes o384 p1)(includes o384 p2)

(waiting o385)
(includes o385 p1)(includes o385 p2)(includes o385 p3)

(waiting o386)
(includes o386 p2)(includes o386 p3)(includes o386 p4)

(waiting o387)
(includes o387 p3)(includes o387 p4)(includes o387 p5)

(waiting o388)
(includes o388 p4)(includes o388 p5)(includes o388 p6)

(waiting o389)
(includes o389 p5)(includes o389 p6)(includes o389 p7)

(waiting o390)
(includes o390 p6)(includes o390 p7)(includes o390 p8)

(waiting o391)
(includes o391 p7)(includes o391 p8)(includes o391 p9)

(waiting o392)
(includes o392 p8)(includes o392 p9)(includes o392 p10)

(waiting o393)
(includes o393 p9)(includes o393 p10)(includes o393 p11)

(waiting o394)
(includes o394 p10)(includes o394 p11)(includes o394 p12)

(waiting o395)
(includes o395 p11)(includes o395 p12)(includes o395 p1)

(waiting o396)
(includes o396 p12)(includes o396 p1)(includes o396 p2)

(waiting o397)
(includes o397 p1)(includes o397 p2)(includes o397 p3)

(waiting o398)
(includes o398 p2)(includes o398 p3)(includes o398 p4)

(waiting o399)
(includes o399 p3)(includes o399 p4)(includes o399 p5)

(waiting o400)
(includes o400 p4)(includes o400 p5)(includes o400 p6)

(waiting o401)
(includes o401 p5)(includes o401 p6)(includes o401 p7)

(waiting o402)
(includes o402 p6)(includes o402 p7)(includes o402 p8)

(waiting o403)
(includes o403 p7)(includes o403 p8)(includes o403 p9)

(waiting o404)
(includes o404 p8)(includes o404 p9)(includes o404 p10)

(waiting o405)
(includes o405 p9)(includes o405 p10)(includes o405 p11)

(waiting o406)
(includes o406 p10)(includes o406 p11)(includes o406 p12)

(waiting o407)
(includes o407 p11)(includes o407 p12)(includes o407 p1)

(waiting o408)
(includes o408 p12)(includes o408 p1)(includes o408 p2)

(waiting o409)
(includes o409 p1)(includes o409 p2)(includes o409 p3)

(waiting o410)
(includes o410 p2)(includes o410 p3)(includes o410 p4)

(waiting o411)
(includes o411 p3)(includes o411 p4)(includes o411 p5)

(waiting o412)
(includes o412 p4)(includes o412 p5)(includes o412 p6)

(waiting o413)
(includes o413 p5)(includes o413 p6)(includes o413 p7)

(waiting o414)
(includes o414 p6)(includes o414 p7)(includes o414 p8)

(waiting o415)
(includes o415 p7)(includes o415 p8)(includes o415 p9)

(waiting o416)
(includes o416 p8)(includes o416 p9)(includes o416 p10)

(waiting o417)
(includes o417 p9)(includes o417 p10)(includes o417 p11)

(waiting o418)
(includes o418 p10)(includes o418 p11)(includes o418 p12)

(waiting o419)
(includes o419 p11)(includes o419 p12)(includes o419 p1)

(waiting o420)
(includes o420 p12)(includes o420 p1)(includes o420 p2)

(waiting o421)
(includes o421 p1)(includes o421 p2)(includes o421 p3)

(waiting o422)
(includes o422 p2)(includes o422 p3)(includes o422 p4)

(waiting o423)
(includes o423 p3)(includes o423 p4)(includes o423 p5)

(waiting o424)
(includes o424 p4)(includes o424 p5)(includes o424 p6)

(waiting o425)
(includes o425 p5)(includes o425 p6)(includes o425 p7)

(waiting o426)
(includes o426 p6)(includes o426 p7)(includes o426 p8)

(waiting o427)
(includes o427 p7)(includes o427 p8)(includes o427 p9)

(waiting o428)
(includes o428 p8)(includes o428 p9)(includes o428 p10)

(waiting o429)
(includes o429 p9)(includes o429 p10)(includes o429 p11)

(waiting o430)
(includes o430 p10)(includes o430 p11)(includes o430 p12)

(waiting o431)
(includes o431 p11)(includes o431 p12)(includes o431 p1)

(waiting o432)
(includes o432 p12)(includes o432 p1)(includes o432 p2)

(waiting o433)
(includes o433 p1)(includes o433 p2)(includes o433 p3)

(waiting o434)
(includes o434 p2)(includes o434 p3)(includes o434 p4)

(waiting o435)
(includes o435 p3)(includes o435 p4)(includes o435 p5)

(waiting o436)
(includes o436 p4)(includes o436 p5)(includes o436 p6)

(waiting o437)
(includes o437 p5)(includes o437 p6)(includes o437 p7)

(waiting o438)
(includes o438 p6)(includes o438 p7)(includes o438 p8)

(waiting o439)
(includes o439 p7)(includes o439 p8)(includes o439 p9)

(waiting o440)
(includes o440 p8)(includes o440 p9)(includes o440 p10)

(waiting o441)
(includes o441 p9)(includes o441 p10)(includes o441 p11)

(waiting o442)
(includes o442 p10)(includes o442 p11)(includes o442 p12)

(waiting o443)
(includes o443 p11)(includes o443 p12)(includes o443 p1)

(waiting o444)
(includes o444 p12)(includes o444 p1)(includes o444 p2)

(waiting o445)
(includes o445 p1)(includes o445 p2)(includes o445 p3)

(waiting o446)
(includes o446 p2)(includes o446 p3)(includes o446 p4)

(waiting o447)
(includes o447 p3)(includes o447 p4)(includes o447 p5)

(waiting o448)
(includes o448 p4)(includes o448 p5)(includes o448 p6)

(waiting o449)
(includes o449 p5)(includes o449 p6)(includes o449 p7)

(waiting o450)
(includes o450 p6)(includes o450 p7)(includes o450 p8)

(waiting o451)
(includes o451 p7)(includes o451 p8)(includes o451 p9)

(waiting o452)
(includes o452 p8)(includes o452 p9)(includes o452 p10)

(waiting o453)
(includes o453 p9)(includes o453 p10)(includes o453 p11)

(waiting o454)
(includes o454 p10)(includes o454 p11)(includes o454 p12)

(waiting o455)
(includes o455 p11)(includes o455 p12)(includes o455 p1)

(waiting o456)
(includes o456 p12)(includes o456 p1)(includes o456 p2)

(waiting o457)
(includes o457 p1)(includes o457 p2)(includes o457 p3)

(waiting o458)
(includes o458 p2)(includes o458 p3)(includes o458 p4)

(waiting o459)
(includes o459 p3)(includes o459 p4)(includes o459 p5)

(waiting o460)
(includes o460 p4)(includes o460 p5)(includes o460 p6)

(waiting o461)
(includes o461 p5)(includes o461 p6)(includes o461 p7)

(waiting o462)
(includes o462 p6)(includes o462 p7)(includes o462 p8)

(waiting o463)
(includes o463 p7)(includes o463 p8)(includes o463 p9)

(waiting o464)
(includes o464 p8)(includes o464 p9)(includes o464 p10)

(waiting o465)
(includes o465 p9)(includes o465 p10)(includes o465 p11)

(waiting o466)
(includes o466 p10)(includes o466 p11)(includes o466 p12)

(waiting o467)
(includes o467 p11)(includes o467 p12)(includes o467 p1)

(waiting o468)
(includes o468 p12)(includes o468 p1)(includes o468 p2)

(waiting o469)
(includes o469 p1)(includes o469 p2)(includes o469 p3)

(waiting o470)
(includes o470 p2)(includes o470 p3)(includes o470 p4)

(waiting o471)
(includes o471 p3)(includes o471 p4)(includes o471 p5)

(waiting o472)
(includes o472 p4)(includes o472 p5)(includes o472 p6)

(waiting o473)
(includes o473 p5)(includes o473 p6)(includes o473 p7)

(waiting o474)
(includes o474 p6)(includes o474 p7)(includes o474 p8)

(waiting o475)
(includes o475 p7)(includes o475 p8)(includes o475 p9)

(waiting o476)
(includes o476 p8)(includes o476 p9)(includes o476 p10)

(waiting o477)
(includes o477 p9)(includes o477 p10)(includes o477 p11)

(waiting o478)
(includes o478 p10)(includes o478 p11)(includes o478 p12)

(waiting o479)
(includes o479 p11)(includes o479 p12)(includes o479 p1)

(waiting o480)
(includes o480 p12)(includes o480 p1)(includes o480 p2)

(waiting o481)
(includes o481 p1)(includes o481 p2)(includes o481 p3)

(waiting o482)
(includes o482 p2)(includes o482 p3)(includes o482 p4)

(waiting o483)
(includes o483 p3)(includes o483 p4)(includes o483 p5)

(waiting o484)
(includes o484 p4)(includes o484 p5)(includes o484 p6)

(waiting o485)
(includes o485 p5)(includes o485 p6)(includes o485 p7)

(waiting o486)
(includes o486 p6)(includes o486 p7)(includes o486 p8)

(waiting o487)
(includes o487 p7)(includes o487 p8)(includes o487 p9)

(waiting o488)
(includes o488 p8)(includes o488 p9)(includes o488 p10)

(waiting o489)
(includes o489 p9)(includes o489 p10)(includes o489 p11)

(waiting o490)
(includes o490 p10)(includes o490 p11)(includes o490 p12)

(waiting o491)
(includes o491 p11)(includes o491 p12)(includes o491 p1)

(waiting o492)
(includes o492 p12)(includes o492 p1)(includes o492 p2)

(waiting o493)
(includes o493 p1)(includes o493 p2)(includes o493 p3)

(waiting o494)
(includes o494 p2)(includes o494 p3)(includes o494 p4)

(waiting o495)
(includes o495 p3)(includes o495 p4)(includes o495 p5)

(waiting o496)
(includes o496 p4)(includes o496 p5)(includes o496 p6)

(waiting o497)
(includes o497 p5)(includes o497 p6)(includes o497 p7)

(waiting o498)
(includes o498 p6)(includes o498 p7)(includes o498 p8)

(waiting o499)
(includes o499 p7)(includes o499 p8)(includes o499 p9)

(waiting o500)
(includes o500 p8)(includes o500 p9)(includes o500 p10)

(waiting o501)
(includes o501 p9)(includes o501 p10)(includes o501 p11)

(waiting o502)
(includes o502 p10)(includes o502 p11)(includes o502 p12)

(waiting o503)
(includes o503 p11)(includes o503 p12)(includes o503 p1)

(waiting o504)
(includes o504 p12)(includes o504 p1)(includes o504 p2)

(waiting o505)
(includes o505 p1)(includes o505 p2)(includes o505 p3)

(waiting o506)
(includes o506 p2)(includes o506 p3)(includes o506 p4)

(waiting o507)
(includes o507 p3)(includes o507 p4)(includes o507 p5)

(waiting o508)
(includes o508 p4)(includes o508 p5)(includes o508 p6)

(waiting o509)
(includes o509 p5)(includes o509 p6)(includes o509 p7)

(waiting o510)
(includes o510 p6)(includes o510 p7)(includes o510 p8)

(waiting o511)
(includes o511 p7)(includes o511 p8)(includes o511 p9)

(waiting o512)
(includes o512 p8)(includes o512 p9)(includes o512 p10)

(waiting o513)
(includes o513 p9)(includes o513 p10)(includes o513 p11)

(waiting o514)
(includes o514 p10)(includes o514 p11)(includes o514 p12)

(waiting o515)
(includes o515 p11)(includes o515 p12)(includes o515 p1)

(waiting o516)
(includes o516 p12)(includes o516 p1)(includes o516 p2)

(waiting o517)
(includes o517 p1)(includes o517 p2)(includes o517 p3)

(waiting o518)
(includes o518 p2)(includes o518 p3)(includes o518 p4)

(waiting o519)
(includes o519 p3)(includes o519 p4)(includes o519 p5)

(waiting o520)
(includes o520 p4)(includes o520 p5)(includes o520 p6)

(waiting o521)
(includes o521 p5)(includes o521 p6)(includes o521 p7)

(waiting o522)
(includes o522 p6)(includes o522 p7)(includes o522 p8)

(waiting o523)
(includes o523 p7)(includes o523 p8)(includes o523 p9)

(waiting o524)
(includes o524 p8)(includes o524 p9)(includes o524 p10)

(waiting o525)
(includes o525 p9)(includes o525 p10)(includes o525 p11)

(waiting o526)
(includes o526 p10)(includes o526 p11)(includes o526 p12)

(waiting o527)
(includes o527 p11)(includes o527 p12)(includes o527 p1)

(waiting o528)
(includes o528 p12)(includes o528 p1)(includes o528 p2)

(waiting o529)
(includes o529 p1)(includes o529 p2)(includes o529 p3)

(waiting o530)
(includes o530 p2)(includes o530 p3)(includes o530 p4)

(waiting o531)
(includes o531 p3)(includes o531 p4)(includes o531 p5)

(waiting o532)
(includes o532 p4)(includes o532 p5)(includes o532 p6)

(waiting o533)
(includes o533 p5)(includes o533 p6)(includes o533 p7)

(waiting o534)
(includes o534 p6)(includes o534 p7)(includes o534 p8)

(waiting o535)
(includes o535 p7)(includes o535 p8)(includes o535 p9)

(waiting o536)
(includes o536 p8)(includes o536 p9)(includes o536 p10)

(waiting o537)
(includes o537 p9)(includes o537 p10)(includes o537 p11)

(waiting o538)
(includes o538 p10)(includes o538 p11)(includes o538 p12)

(waiting o539)
(includes o539 p11)(includes o539 p12)(includes o539 p1)

(waiting o540)
(includes o540 p12)(includes o540 p1)(includes o540 p2)

(waiting o541)
(includes o541 p1)(includes o541 p2)(includes o541 p3)

(waiting o542)
(includes o542 p2)(includes o542 p3)(includes o542 p4)

(waiting o543)
(includes o543 p3)(includes o543 p4)(includes o543 p5)

(waiting o544)
(includes o544 p4)(includes o544 p5)(includes o544 p6)

(waiting o545)
(includes o545 p5)(includes o545 p6)(includes o545 p7)

(waiting o546)
(includes o546 p6)(includes o546 p7)(includes o546 p8)

(waiting o547)
(includes o547 p7)(includes o547 p8)(includes o547 p9)

(waiting o548)
(includes o548 p8)(includes o548 p9)(includes o548 p10)

(waiting o549)
(includes o549 p9)(includes o549 p10)(includes o549 p11)

(waiting o550)
(includes o550 p10)(includes o550 p11)(includes o550 p12)

(waiting o551)
(includes o551 p11)(includes o551 p12)(includes o551 p1)

(waiting o552)
(includes o552 p12)(includes o552 p1)(includes o552 p2)

(waiting o553)
(includes o553 p1)(includes o553 p2)(includes o553 p3)

(waiting o554)
(includes o554 p2)(includes o554 p3)(includes o554 p4)

(waiting o555)
(includes o555 p3)(includes o555 p4)(includes o555 p5)

(waiting o556)
(includes o556 p4)(includes o556 p5)(includes o556 p6)

(waiting o557)
(includes o557 p5)(includes o557 p6)(includes o557 p7)

(waiting o558)
(includes o558 p6)(includes o558 p7)(includes o558 p8)

(waiting o559)
(includes o559 p7)(includes o559 p8)(includes o559 p9)

(waiting o560)
(includes o560 p8)(includes o560 p9)(includes o560 p10)

(waiting o561)
(includes o561 p9)(includes o561 p10)(includes o561 p11)

(waiting o562)
(includes o562 p10)(includes o562 p11)(includes o562 p12)

(waiting o563)
(includes o563 p11)(includes o563 p12)(includes o563 p1)

(waiting o564)
(includes o564 p12)(includes o564 p1)(includes o564 p2)

(waiting o565)
(includes o565 p1)(includes o565 p2)(includes o565 p3)

(waiting o566)
(includes o566 p2)(includes o566 p3)(includes o566 p4)

(waiting o567)
(includes o567 p3)(includes o567 p4)(includes o567 p5)

(waiting o568)
(includes o568 p4)(includes o568 p5)(includes o568 p6)

(waiting o569)
(includes o569 p5)(includes o569 p6)(includes o569 p7)

(waiting o570)
(includes o570 p6)(includes o570 p7)(includes o570 p8)

(waiting o571)
(includes o571 p7)(includes o571 p8)(includes o571 p9)

(waiting o572)
(includes o572 p8)(includes o572 p9)(includes o572 p10)

(waiting o573)
(includes o573 p9)(includes o573 p10)(includes o573 p11)

(waiting o574)
(includes o574 p10)(includes o574 p11)(includes o574 p12)

(waiting o575)
(includes o575 p11)(includes o575 p12)(includes o575 p1)

(waiting o576)
(includes o576 p12)(includes o576 p1)(includes o576 p2)

(waiting o577)
(includes o577 p1)(includes o577 p2)(includes o577 p3)

(waiting o578)
(includes o578 p2)(includes o578 p3)(includes o578 p4)

(waiting o579)
(includes o579 p3)(includes o579 p4)(includes o579 p5)

(waiting o580)
(includes o580 p4)(includes o580 p5)(includes o580 p6)

(waiting o581)
(includes o581 p5)(includes o581 p6)(includes o581 p7)

(waiting o582)
(includes o582 p6)(includes o582 p7)(includes o582 p8)

(waiting o583)
(includes o583 p7)(includes o583 p8)(includes o583 p9)

(waiting o584)
(includes o584 p8)(includes o584 p9)(includes o584 p10)

(waiting o585)
(includes o585 p9)(includes o585 p10)(includes o585 p11)

(waiting o586)
(includes o586 p10)(includes o586 p11)(includes o586 p12)

(waiting o587)
(includes o587 p11)(includes o587 p12)(includes o587 p1)

(waiting o588)
(includes o588 p12)(includes o588 p1)(includes o588 p2)

(waiting o589)
(includes o589 p1)(includes o589 p2)(includes o589 p3)

(waiting o590)
(includes o590 p2)(includes o590 p3)(includes o590 p4)

(waiting o591)
(includes o591 p3)(includes o591 p4)(includes o591 p5)

(waiting o592)
(includes o592 p4)(includes o592 p5)(includes o592 p6)

(waiting o593)
(includes o593 p5)(includes o593 p6)(includes o593 p7)

(waiting o594)
(includes o594 p6)(includes o594 p7)(includes o594 p8)

(waiting o595)
(includes o595 p7)(includes o595 p8)(includes o595 p9)

(waiting o596)
(includes o596 p8)(includes o596 p9)(includes o596 p10)

(waiting o597)
(includes o597 p9)(includes o597 p10)(includes o597 p11)

(waiting o598)
(includes o598 p10)(includes o598 p11)(includes o598 p12)

(waiting o599)
(includes o599 p11)(includes o599 p12)(includes o599 p1)

(waiting o600)
(includes o600 p12)(includes o600 p1)(includes o600 p2)

(waiting o601)
(includes o601 p1)(includes o601 p2)(includes o601 p3)

(waiting o602)
(includes o602 p2)(includes o602 p3)(includes o602 p4)

(waiting o603)
(includes o603 p3)(includes o603 p4)(includes o603 p5)

(waiting o604)
(includes o604 p4)(includes o604 p5)(includes o604 p6)

(waiting o605)
(includes o605 p5)(includes o605 p6)(includes o605 p7)

(waiting o606)
(includes o606 p6)(includes o606 p7)(includes o606 p8)

(waiting o607)
(includes o607 p7)(includes o607 p8)(includes o607 p9)

(waiting o608)
(includes o608 p8)(includes o608 p9)(includes o608 p10)

(waiting o609)
(includes o609 p9)(includes o609 p10)(includes o609 p11)

(waiting o610)
(includes o610 p10)(includes o610 p11)(includes o610 p12)

(waiting o611)
(includes o611 p11)(includes o611 p12)(includes o611 p1)

(waiting o612)
(includes o612 p12)(includes o612 p1)(includes o612 p2)

(waiting o613)
(includes o613 p1)(includes o613 p2)(includes o613 p3)

(waiting o614)
(includes o614 p2)(includes o614 p3)(includes o614 p4)

(waiting o615)
(includes o615 p3)(includes o615 p4)(includes o615 p5)

(waiting o616)
(includes o616 p4)(includes o616 p5)(includes o616 p6)

(waiting o617)
(includes o617 p5)(includes o617 p6)(includes o617 p7)

(waiting o618)
(includes o618 p6)(includes o618 p7)(includes o618 p8)

(waiting o619)
(includes o619 p7)(includes o619 p8)(includes o619 p9)

(waiting o620)
(includes o620 p8)(includes o620 p9)(includes o620 p10)

(waiting o621)
(includes o621 p9)(includes o621 p10)(includes o621 p11)

(waiting o622)
(includes o622 p10)(includes o622 p11)(includes o622 p12)

(waiting o623)
(includes o623 p11)(includes o623 p12)(includes o623 p1)

(waiting o624)
(includes o624 p12)(includes o624 p1)(includes o624 p2)

(waiting o625)
(includes o625 p1)(includes o625 p2)(includes o625 p3)

(waiting o626)
(includes o626 p2)(includes o626 p3)(includes o626 p4)

(waiting o627)
(includes o627 p3)(includes o627 p4)(includes o627 p5)

(waiting o628)
(includes o628 p4)(includes o628 p5)(includes o628 p6)

(waiting o629)
(includes o629 p5)(includes o629 p6)(includes o629 p7)

(waiting o630)
(includes o630 p6)(includes o630 p7)(includes o630 p8)

(waiting o631)
(includes o631 p7)(includes o631 p8)(includes o631 p9)

(waiting o632)
(includes o632 p8)(includes o632 p9)(includes o632 p10)

(waiting o633)
(includes o633 p9)(includes o633 p10)(includes o633 p11)

(waiting o634)
(includes o634 p10)(includes o634 p11)(includes o634 p12)

(waiting o635)
(includes o635 p11)(includes o635 p12)(includes o635 p1)

(waiting o636)
(includes o636 p12)(includes o636 p1)(includes o636 p2)

(waiting o637)
(includes o637 p1)(includes o637 p2)(includes o637 p3)

(waiting o638)
(includes o638 p2)(includes o638 p3)(includes o638 p4)

(waiting o639)
(includes o639 p3)(includes o639 p4)(includes o639 p5)

(waiting o640)
(includes o640 p4)(includes o640 p5)(includes o640 p6)

(waiting o641)
(includes o641 p5)(includes o641 p6)(includes o641 p7)

(waiting o642)
(includes o642 p6)(includes o642 p7)(includes o642 p8)

(waiting o643)
(includes o643 p7)(includes o643 p8)(includes o643 p9)

(waiting o644)
(includes o644 p8)(includes o644 p9)(includes o644 p10)

(waiting o645)
(includes o645 p9)(includes o645 p10)(includes o645 p11)

(waiting o646)
(includes o646 p10)(includes o646 p11)(includes o646 p12)

(waiting o647)
(includes o647 p11)(includes o647 p12)(includes o647 p1)

(waiting o648)
(includes o648 p12)(includes o648 p1)(includes o648 p2)

(waiting o649)
(includes o649 p1)(includes o649 p2)(includes o649 p3)

(waiting o650)
(includes o650 p2)(includes o650 p3)(includes o650 p4)

(waiting o651)
(includes o651 p3)(includes o651 p4)(includes o651 p5)

(waiting o652)
(includes o652 p4)(includes o652 p5)(includes o652 p6)

(waiting o653)
(includes o653 p5)(includes o653 p6)(includes o653 p7)

(waiting o654)
(includes o654 p6)(includes o654 p7)(includes o654 p8)

(waiting o655)
(includes o655 p7)(includes o655 p8)(includes o655 p9)

(waiting o656)
(includes o656 p8)(includes o656 p9)(includes o656 p10)

(waiting o657)
(includes o657 p9)(includes o657 p10)(includes o657 p11)

(waiting o658)
(includes o658 p10)(includes o658 p11)(includes o658 p12)

(waiting o659)
(includes o659 p11)(includes o659 p12)(includes o659 p1)

(waiting o660)
(includes o660 p12)(includes o660 p1)(includes o660 p2)

(waiting o661)
(includes o661 p1)(includes o661 p2)(includes o661 p3)

(waiting o662)
(includes o662 p2)(includes o662 p3)(includes o662 p4)

(waiting o663)
(includes o663 p3)(includes o663 p4)(includes o663 p5)

(waiting o664)
(includes o664 p4)(includes o664 p5)(includes o664 p6)

(waiting o665)
(includes o665 p5)(includes o665 p6)(includes o665 p7)

(waiting o666)
(includes o666 p6)(includes o666 p7)(includes o666 p8)

(waiting o667)
(includes o667 p7)(includes o667 p8)(includes o667 p9)

(waiting o668)
(includes o668 p8)(includes o668 p9)(includes o668 p10)

(waiting o669)
(includes o669 p9)(includes o669 p10)(includes o669 p11)

(waiting o670)
(includes o670 p10)(includes o670 p11)(includes o670 p12)

(waiting o671)
(includes o671 p11)(includes o671 p12)(includes o671 p1)

(waiting o672)
(includes o672 p12)(includes o672 p1)(includes o672 p2)

(waiting o673)
(includes o673 p1)(includes o673 p2)(includes o673 p3)

(waiting o674)
(includes o674 p2)(includes o674 p3)(includes o674 p4)

(waiting o675)
(includes o675 p3)(includes o675 p4)(includes o675 p5)

(waiting o676)
(includes o676 p4)(includes o676 p5)(includes o676 p6)

(waiting o677)
(includes o677 p5)(includes o677 p6)(includes o677 p7)

(waiting o678)
(includes o678 p6)(includes o678 p7)(includes o678 p8)

(waiting o679)
(includes o679 p7)(includes o679 p8)(includes o679 p9)

(waiting o680)
(includes o680 p8)(includes o680 p9)(includes o680 p10)

(waiting o681)
(includes o681 p9)(includes o681 p10)(includes o681 p11)

(waiting o682)
(includes o682 p10)(includes o682 p11)(includes o682 p12)

(waiting o683)
(includes o683 p11)(includes o683 p12)(includes o683 p1)

(waiting o684)
(includes o684 p12)(includes o684 p1)(includes o684 p2)

(waiting o685)
(includes o685 p1)(includes o685 p2)(includes o685 p3)

(waiting o686)
(includes o686 p2)(includes o686 p3)(includes o686 p4)

(waiting o687)
(includes o687 p3)(includes o687 p4)(includes o687 p5)

(waiting o688)
(includes o688 p4)(includes o688 p5)(includes o688 p6)

(waiting o689)
(includes o689 p5)(includes o689 p6)(includes o689 p7)

(waiting o690)
(includes o690 p6)(includes o690 p7)(includes o690 p8)

(waiting o691)
(includes o691 p7)(includes o691 p8)(includes o691 p9)

(waiting o692)
(includes o692 p8)(includes o692 p9)(includes o692 p10)

(waiting o693)
(includes o693 p9)(includes o693 p10)(includes o693 p11)

(waiting o694)
(includes o694 p10)(includes o694 p11)(includes o694 p12)

(waiting o695)
(includes o695 p11)(includes o695 p12)(includes o695 p1)

(waiting o696)
(includes o696 p12)(includes o696 p1)(includes o696 p2)

(waiting o697)
(includes o697 p1)(includes o697 p2)(includes o697 p3)

(waiting o698)
(includes o698 p2)(includes o698 p3)(includes o698 p4)

(waiting o699)
(includes o699 p3)(includes o699 p4)(includes o699 p5)

(waiting o700)
(includes o700 p4)(includes o700 p5)(includes o700 p6)

(waiting o701)
(includes o701 p5)(includes o701 p6)(includes o701 p7)

(waiting o702)
(includes o702 p6)(includes o702 p7)(includes o702 p8)

(waiting o703)
(includes o703 p7)(includes o703 p8)(includes o703 p9)

(waiting o704)
(includes o704 p8)(includes o704 p9)(includes o704 p10)

(waiting o705)
(includes o705 p9)(includes o705 p10)(includes o705 p11)

(waiting o706)
(includes o706 p10)(includes o706 p11)(includes o706 p12)

(waiting o707)
(includes o707 p11)(includes o707 p12)(includes o707 p1)

(waiting o708)
(includes o708 p12)(includes o708 p1)(includes o708 p2)

(waiting o709)
(includes o709 p1)(includes o709 p2)(includes o709 p3)

(waiting o710)
(includes o710 p2)(includes o710 p3)(includes o710 p4)

(waiting o711)
(includes o711 p3)(includes o711 p4)(includes o711 p5)

(waiting o712)
(includes o712 p4)(includes o712 p5)(includes o712 p6)

(waiting o713)
(includes o713 p5)(includes o713 p6)(includes o713 p7)

(waiting o714)
(includes o714 p6)(includes o714 p7)(includes o714 p8)

(waiting o715)
(includes o715 p7)(includes o715 p8)(includes o715 p9)

(waiting o716)
(includes o716 p8)(includes o716 p9)(includes o716 p10)

(waiting o717)
(includes o717 p9)(includes o717 p10)(includes o717 p11)

(waiting o718)
(includes o718 p10)(includes o718 p11)(includes o718 p12)

(waiting o719)
(includes o719 p11)(includes o719 p12)(includes o719 p1)

(waiting o720)
(includes o720 p12)(includes o720 p1)(includes o720 p2)

(waiting o721)
(includes o721 p1)(includes o721 p2)(includes o721 p3)

(waiting o722)
(includes o722 p2)(includes o722 p3)(includes o722 p4)

(waiting o723)
(includes o723 p3)(includes o723 p4)(includes o723 p5)

(waiting o724)
(includes o724 p4)(includes o724 p5)(includes o724 p6)

(waiting o725)
(includes o725 p5)(includes o725 p6)(includes o725 p7)

(waiting o726)
(includes o726 p6)(includes o726 p7)(includes o726 p8)

(waiting o727)
(includes o727 p7)(includes o727 p8)(includes o727 p9)

(waiting o728)
(includes o728 p8)(includes o728 p9)(includes o728 p10)

(waiting o729)
(includes o729 p9)(includes o729 p10)(includes o729 p11)

(waiting o730)
(includes o730 p10)(includes o730 p11)(includes o730 p12)

(waiting o731)
(includes o731 p11)(includes o731 p12)(includes o731 p1)

(waiting o732)
(includes o732 p12)(includes o732 p1)(includes o732 p2)

(waiting o733)
(includes o733 p1)(includes o733 p2)(includes o733 p3)

(waiting o734)
(includes o734 p2)(includes o734 p3)(includes o734 p4)

(waiting o735)
(includes o735 p3)(includes o735 p4)(includes o735 p5)

(waiting o736)
(includes o736 p4)(includes o736 p5)(includes o736 p6)

(waiting o737)
(includes o737 p5)(includes o737 p6)(includes o737 p7)

(waiting o738)
(includes o738 p6)(includes o738 p7)(includes o738 p8)

(waiting o739)
(includes o739 p7)(includes o739 p8)(includes o739 p9)

(waiting o740)
(includes o740 p8)(includes o740 p9)(includes o740 p10)

(waiting o741)
(includes o741 p9)(includes o741 p10)(includes o741 p11)

(waiting o742)
(includes o742 p10)(includes o742 p11)(includes o742 p12)

(waiting o743)
(includes o743 p11)(includes o743 p12)(includes o743 p1)

(waiting o744)
(includes o744 p12)(includes o744 p1)(includes o744 p2)

(waiting o745)
(includes o745 p1)(includes o745 p2)(includes o745 p3)

(waiting o746)
(includes o746 p2)(includes o746 p3)(includes o746 p4)

(waiting o747)
(includes o747 p3)(includes o747 p4)(includes o747 p5)

(waiting o748)
(includes o748 p4)(includes o748 p5)(includes o748 p6)

(waiting o749)
(includes o749 p5)(includes o749 p6)(includes o749 p7)

(waiting o750)
(includes o750 p6)(includes o750 p7)(includes o750 p8)

(waiting o751)
(includes o751 p7)(includes o751 p8)(includes o751 p9)

(waiting o752)
(includes o752 p8)(includes o752 p9)(includes o752 p10)

(waiting o753)
(includes o753 p9)(includes o753 p10)(includes o753 p11)

(waiting o754)
(includes o754 p10)(includes o754 p11)(includes o754 p12)

(waiting o755)
(includes o755 p11)(includes o755 p12)(includes o755 p1)

(waiting o756)
(includes o756 p12)(includes o756 p1)(includes o756 p2)

(waiting o757)
(includes o757 p1)(includes o757 p2)(includes o757 p3)

(waiting o758)
(includes o758 p2)(includes o758 p3)(includes o758 p4)

(waiting o759)
(includes o759 p3)(includes o759 p4)(includes o759 p5)

(waiting o760)
(includes o760 p4)(includes o760 p5)(includes o760 p6)

(waiting o761)
(includes o761 p5)(includes o761 p6)(includes o761 p7)

(waiting o762)
(includes o762 p6)(includes o762 p7)(includes o762 p8)

(waiting o763)
(includes o763 p7)(includes o763 p8)(includes o763 p9)

(waiting o764)
(includes o764 p8)(includes o764 p9)(includes o764 p10)

(waiting o765)
(includes o765 p9)(includes o765 p10)(includes o765 p11)

(waiting o766)
(includes o766 p10)(includes o766 p11)(includes o766 p12)

(waiting o767)
(includes o767 p11)(includes o767 p12)(includes o767 p1)

(waiting o768)
(includes o768 p12)(includes o768 p1)(includes o768 p2)

(waiting o769)
(includes o769 p1)(includes o769 p2)(includes o769 p3)

(waiting o770)
(includes o770 p2)(includes o770 p3)(includes o770 p4)

(waiting o771)
(includes o771 p3)(includes o771 p4)(includes o771 p5)

(waiting o772)
(includes o772 p4)(includes o772 p5)(includes o772 p6)

(waiting o773)
(includes o773 p5)(includes o773 p6)(includes o773 p7)

(waiting o774)
(includes o774 p6)(includes o774 p7)(includes o774 p8)

(waiting o775)
(includes o775 p7)(includes o775 p8)(includes o775 p9)

(waiting o776)
(includes o776 p8)(includes o776 p9)(includes o776 p10)

(waiting o777)
(includes o777 p9)(includes o777 p10)(includes o777 p11)

(waiting o778)
(includes o778 p10)(includes o778 p11)(includes o778 p12)

(waiting o779)
(includes o779 p11)(includes o779 p12)(includes o779 p1)

(waiting o780)
(includes o780 p12)(includes o780 p1)(includes o780 p2)

(waiting o781)
(includes o781 p1)(includes o781 p2)(includes o781 p3)

(waiting o782)
(includes o782 p2)(includes o782 p3)(includes o782 p4)

(waiting o783)
(includes o783 p3)(includes o783 p4)(includes o783 p5)

(waiting o784)
(includes o784 p4)(includes o784 p5)(includes o784 p6)

(waiting o785)
(includes o785 p5)(includes o785 p6)(includes o785 p7)

(waiting o786)
(includes o786 p6)(includes o786 p7)(includes o786 p8)

(waiting o787)
(includes o787 p7)(includes o787 p8)(includes o787 p9)

(waiting o788)
(includes o788 p8)(includes o788 p9)(includes o788 p10)

(waiting o789)
(includes o789 p9)(includes o789 p10)(includes o789 p11)

(waiting o790)
(includes o790 p10)(includes o790 p11)(includes o790 p12)

(waiting o791)
(includes o791 p11)(includes o791 p12)(includes o791 p1)

(waiting o792)
(includes o792 p12)(includes o792 p1)(includes o792 p2)

(waiting o793)
(includes o793 p1)(includes o793 p2)(includes o793 p3)

(waiting o794)
(includes o794 p2)(includes o794 p3)(includes o794 p4)

(waiting o795)
(includes o795 p3)(includes o795 p4)(includes o795 p5)

(waiting o796)
(includes o796 p4)(includes o796 p5)(includes o796 p6)

(waiting o797)
(includes o797 p5)(includes o797 p6)(includes o797 p7)

(waiting o798)
(includes o798 p6)(includes o798 p7)(includes o798 p8)

(waiting o799)
(includes o799 p7)(includes o799 p8)(includes o799 p9)

(waiting o800)
(includes o800 p8)(includes o800 p9)(includes o800 p10)

(waiting o801)
(includes o801 p9)(includes o801 p10)(includes o801 p11)

(waiting o802)
(includes o802 p10)(includes o802 p11)(includes o802 p12)

(waiting o803)
(includes o803 p11)(includes o803 p12)(includes o803 p1)

(waiting o804)
(includes o804 p12)(includes o804 p1)(includes o804 p2)

(waiting o805)
(includes o805 p1)(includes o805 p2)(includes o805 p3)

(waiting o806)
(includes o806 p2)(includes o806 p3)(includes o806 p4)

(waiting o807)
(includes o807 p3)(includes o807 p4)(includes o807 p5)

(waiting o808)
(includes o808 p4)(includes o808 p5)(includes o808 p6)

(waiting o809)
(includes o809 p5)(includes o809 p6)(includes o809 p7)

(waiting o810)
(includes o810 p6)(includes o810 p7)(includes o810 p8)

(waiting o811)
(includes o811 p7)(includes o811 p8)(includes o811 p9)

(waiting o812)
(includes o812 p8)(includes o812 p9)(includes o812 p10)

(waiting o813)
(includes o813 p9)(includes o813 p10)(includes o813 p11)

(waiting o814)
(includes o814 p10)(includes o814 p11)(includes o814 p12)

(waiting o815)
(includes o815 p11)(includes o815 p12)(includes o815 p1)

(waiting o816)
(includes o816 p12)(includes o816 p1)(includes o816 p2)

(waiting o817)
(includes o817 p1)(includes o817 p2)(includes o817 p3)

(waiting o818)
(includes o818 p2)(includes o818 p3)(includes o818 p4)

(waiting o819)
(includes o819 p3)(includes o819 p4)(includes o819 p5)

(waiting o820)
(includes o820 p4)(includes o820 p5)(includes o820 p6)

(waiting o821)
(includes o821 p5)(includes o821 p6)(includes o821 p7)

(waiting o822)
(includes o822 p6)(includes o822 p7)(includes o822 p8)

(waiting o823)
(includes o823 p7)(includes o823 p8)(includes o823 p9)

(waiting o824)
(includes o824 p8)(includes o824 p9)(includes o824 p10)

(waiting o825)
(includes o825 p9)(includes o825 p10)(includes o825 p11)

(waiting o826)
(includes o826 p10)(includes o826 p11)(includes o826 p12)

(waiting o827)
(includes o827 p11)(includes o827 p12)(includes o827 p1)

(waiting o828)
(includes o828 p12)(includes o828 p1)(includes o828 p2)

(waiting o829)
(includes o829 p1)(includes o829 p2)(includes o829 p3)

(waiting o830)
(includes o830 p2)(includes o830 p3)(includes o830 p4)

(waiting o831)
(includes o831 p3)(includes o831 p4)(includes o831 p5)

(waiting o832)
(includes o832 p4)(includes o832 p5)(includes o832 p6)

(waiting o833)
(includes o833 p5)(includes o833 p6)(includes o833 p7)

(waiting o834)
(includes o834 p6)(includes o834 p7)(includes o834 p8)

(waiting o835)
(includes o835 p7)(includes o835 p8)(includes o835 p9)

(waiting o836)
(includes o836 p8)(includes o836 p9)(includes o836 p10)

(waiting o837)
(includes o837 p9)(includes o837 p10)(includes o837 p11)

(waiting o838)
(includes o838 p10)(includes o838 p11)(includes o838 p12)

(waiting o839)
(includes o839 p11)(includes o839 p12)(includes o839 p1)

(waiting o840)
(includes o840 p12)(includes o840 p1)(includes o840 p2)

(waiting o841)
(includes o841 p1)(includes o841 p2)(includes o841 p3)

(waiting o842)
(includes o842 p2)(includes o842 p3)(includes o842 p4)

(waiting o843)
(includes o843 p3)(includes o843 p4)(includes o843 p5)

(waiting o844)
(includes o844 p4)(includes o844 p5)(includes o844 p6)

(waiting o845)
(includes o845 p5)(includes o845 p6)(includes o845 p7)

(waiting o846)
(includes o846 p6)(includes o846 p7)(includes o846 p8)

(waiting o847)
(includes o847 p7)(includes o847 p8)(includes o847 p9)

(waiting o848)
(includes o848 p8)(includes o848 p9)(includes o848 p10)

(waiting o849)
(includes o849 p9)(includes o849 p10)(includes o849 p11)

(waiting o850)
(includes o850 p10)(includes o850 p11)(includes o850 p12)

(waiting o851)
(includes o851 p11)(includes o851 p12)(includes o851 p1)

(waiting o852)
(includes o852 p12)(includes o852 p1)(includes o852 p2)

(waiting o853)
(includes o853 p1)(includes o853 p2)(includes o853 p3)

(waiting o854)
(includes o854 p2)(includes o854 p3)(includes o854 p4)

(waiting o855)
(includes o855 p3)(includes o855 p4)(includes o855 p5)

(waiting o856)
(includes o856 p4)(includes o856 p5)(includes o856 p6)

(waiting o857)
(includes o857 p5)(includes o857 p6)(includes o857 p7)

(waiting o858)
(includes o858 p6)(includes o858 p7)(includes o858 p8)

(waiting o859)
(includes o859 p7)(includes o859 p8)(includes o859 p9)

(waiting o860)
(includes o860 p8)(includes o860 p9)(includes o860 p10)

(waiting o861)
(includes o861 p9)(includes o861 p10)(includes o861 p11)

(waiting o862)
(includes o862 p10)(includes o862 p11)(includes o862 p12)

(waiting o863)
(includes o863 p11)(includes o863 p12)(includes o863 p1)

(waiting o864)
(includes o864 p12)(includes o864 p1)(includes o864 p2)

(waiting o865)
(includes o865 p1)(includes o865 p2)(includes o865 p3)

(waiting o866)
(includes o866 p2)(includes o866 p3)(includes o866 p4)

(waiting o867)
(includes o867 p3)(includes o867 p4)(includes o867 p5)

(waiting o868)
(includes o868 p4)(includes o868 p5)(includes o868 p6)

(waiting o869)
(includes o869 p5)(includes o869 p6)(includes o869 p7)

(waiting o870)
(includes o870 p6)(includes o870 p7)(includes o870 p8)

(waiting o871)
(includes o871 p7)(includes o871 p8)(includes o871 p9)

(waiting o872)
(includes o872 p8)(includes o872 p9)(includes o872 p10)

(waiting o873)
(includes o873 p9)(includes o873 p10)(includes o873 p11)

(waiting o874)
(includes o874 p10)(includes o874 p11)(includes o874 p12)

(waiting o875)
(includes o875 p11)(includes o875 p12)(includes o875 p1)

(waiting o876)
(includes o876 p12)(includes o876 p1)(includes o876 p2)

(waiting o877)
(includes o877 p1)(includes o877 p2)(includes o877 p3)

(waiting o878)
(includes o878 p2)(includes o878 p3)(includes o878 p4)

(waiting o879)
(includes o879 p3)(includes o879 p4)(includes o879 p5)

(waiting o880)
(includes o880 p4)(includes o880 p5)(includes o880 p6)

(waiting o881)
(includes o881 p5)(includes o881 p6)(includes o881 p7)

(waiting o882)
(includes o882 p6)(includes o882 p7)(includes o882 p8)

(waiting o883)
(includes o883 p7)(includes o883 p8)(includes o883 p9)

(waiting o884)
(includes o884 p8)(includes o884 p9)(includes o884 p10)

(waiting o885)
(includes o885 p9)(includes o885 p10)(includes o885 p11)

(waiting o886)
(includes o886 p10)(includes o886 p11)(includes o886 p12)

(waiting o887)
(includes o887 p11)(includes o887 p12)(includes o887 p1)

(waiting o888)
(includes o888 p12)(includes o888 p1)(includes o888 p2)

(waiting o889)
(includes o889 p1)(includes o889 p2)(includes o889 p3)

(waiting o890)
(includes o890 p2)(includes o890 p3)(includes o890 p4)

(waiting o891)
(includes o891 p3)(includes o891 p4)(includes o891 p5)

(waiting o892)
(includes o892 p4)(includes o892 p5)(includes o892 p6)

(waiting o893)
(includes o893 p5)(includes o893 p6)(includes o893 p7)

(waiting o894)
(includes o894 p6)(includes o894 p7)(includes o894 p8)

(waiting o895)
(includes o895 p7)(includes o895 p8)(includes o895 p9)

(waiting o896)
(includes o896 p8)(includes o896 p9)(includes o896 p10)

(waiting o897)
(includes o897 p9)(includes o897 p10)(includes o897 p11)

(waiting o898)
(includes o898 p10)(includes o898 p11)(includes o898 p12)

(waiting o899)
(includes o899 p11)(includes o899 p12)(includes o899 p1)

(waiting o900)
(includes o900 p12)(includes o900 p1)(includes o900 p2)

(waiting o901)
(includes o901 p1)(includes o901 p2)(includes o901 p3)

(waiting o902)
(includes o902 p2)(includes o902 p3)(includes o902 p4)

(waiting o903)
(includes o903 p3)(includes o903 p4)(includes o903 p5)

(waiting o904)
(includes o904 p4)(includes o904 p5)(includes o904 p6)

(waiting o905)
(includes o905 p5)(includes o905 p6)(includes o905 p7)

(waiting o906)
(includes o906 p6)(includes o906 p7)(includes o906 p8)

(waiting o907)
(includes o907 p7)(includes o907 p8)(includes o907 p9)

(waiting o908)
(includes o908 p8)(includes o908 p9)(includes o908 p10)

(waiting o909)
(includes o909 p9)(includes o909 p10)(includes o909 p11)

(waiting o910)
(includes o910 p10)(includes o910 p11)(includes o910 p12)

(waiting o911)
(includes o911 p11)(includes o911 p12)(includes o911 p1)

(waiting o912)
(includes o912 p12)(includes o912 p1)(includes o912 p2)

(waiting o913)
(includes o913 p1)(includes o913 p2)(includes o913 p3)

(waiting o914)
(includes o914 p2)(includes o914 p3)(includes o914 p4)

(waiting o915)
(includes o915 p3)(includes o915 p4)(includes o915 p5)

(waiting o916)
(includes o916 p4)(includes o916 p5)(includes o916 p6)

(waiting o917)
(includes o917 p5)(includes o917 p6)(includes o917 p7)

(waiting o918)
(includes o918 p6)(includes o918 p7)(includes o918 p8)

(waiting o919)
(includes o919 p7)(includes o919 p8)(includes o919 p9)

(waiting o920)
(includes o920 p8)(includes o920 p9)(includes o920 p10)

(waiting o921)
(includes o921 p9)(includes o921 p10)(includes o921 p11)

(waiting o922)
(includes o922 p10)(includes o922 p11)(includes o922 p12)

(waiting o923)
(includes o923 p11)(includes o923 p12)(includes o923 p1)

(waiting o924)
(includes o924 p12)(includes o924 p1)(includes o924 p2)

(waiting o925)
(includes o925 p1)(includes o925 p2)(includes o925 p3)

(waiting o926)
(includes o926 p2)(includes o926 p3)(includes o926 p4)

(waiting o927)
(includes o927 p3)(includes o927 p4)(includes o927 p5)

(waiting o928)
(includes o928 p4)(includes o928 p5)(includes o928 p6)

(waiting o929)
(includes o929 p5)(includes o929 p6)(includes o929 p7)

(waiting o930)
(includes o930 p6)(includes o930 p7)(includes o930 p8)

(waiting o931)
(includes o931 p7)(includes o931 p8)(includes o931 p9)

(waiting o932)
(includes o932 p8)(includes o932 p9)(includes o932 p10)

(waiting o933)
(includes o933 p9)(includes o933 p10)(includes o933 p11)

(waiting o934)
(includes o934 p10)(includes o934 p11)(includes o934 p12)

(waiting o935)
(includes o935 p11)(includes o935 p12)(includes o935 p1)

(waiting o936)
(includes o936 p12)(includes o936 p1)(includes o936 p2)

(waiting o937)
(includes o937 p1)(includes o937 p2)(includes o937 p3)

(waiting o938)
(includes o938 p2)(includes o938 p3)(includes o938 p4)

(waiting o939)
(includes o939 p3)(includes o939 p4)(includes o939 p5)

(waiting o940)
(includes o940 p4)(includes o940 p5)(includes o940 p6)

(waiting o941)
(includes o941 p5)(includes o941 p6)(includes o941 p7)

(waiting o942)
(includes o942 p6)(includes o942 p7)(includes o942 p8)

(waiting o943)
(includes o943 p7)(includes o943 p8)(includes o943 p9)

(waiting o944)
(includes o944 p8)(includes o944 p9)(includes o944 p10)

(waiting o945)
(includes o945 p9)(includes o945 p10)(includes o945 p11)

(waiting o946)
(includes o946 p10)(includes o946 p11)(includes o946 p12)

(waiting o947)
(includes o947 p11)(includes o947 p12)(includes o947 p1)

(waiting o948)
(includes o948 p12)(includes o948 p1)(includes o948 p2)

(waiting o949)
(includes o949 p1)(includes o949 p2)(includes o949 p3)

(waiting o950)
(includes o950 p2)(includes o950 p3)(includes o950 p4)

(waiting o951)
(includes o951 p3)(includes o951 p4)(includes o951 p5)

(waiting o952)
(includes o952 p4)(includes o952 p5)(includes o952 p6)

(waiting o953)
(includes o953 p5)(includes o953 p6)(includes o953 p7)

(waiting o954)
(includes o954 p6)(includes o954 p7)(includes o954 p8)

(waiting o955)
(includes o955 p7)(includes o955 p8)(includes o955 p9)

(waiting o956)
(includes o956 p8)(includes o956 p9)(includes o956 p10)

(waiting o957)
(includes o957 p9)(includes o957 p10)(includes o957 p11)

(waiting o958)
(includes o958 p10)(includes o958 p11)(includes o958 p12)

(waiting o959)
(includes o959 p11)(includes o959 p12)(includes o959 p1)

(waiting o960)
(includes o960 p12)(includes o960 p1)(includes o960 p2)

(waiting o961)
(includes o961 p1)(includes o961 p2)(includes o961 p3)

(waiting o962)
(includes o962 p2)(includes o962 p3)(includes o962 p4)

(waiting o963)
(includes o963 p3)(includes o963 p4)(includes o963 p5)

(waiting o964)
(includes o964 p4)(includes o964 p5)(includes o964 p6)

(waiting o965)
(includes o965 p5)(includes o965 p6)(includes o965 p7)

(waiting o966)
(includes o966 p6)(includes o966 p7)(includes o966 p8)

(waiting o967)
(includes o967 p7)(includes o967 p8)(includes o967 p9)

(waiting o968)
(includes o968 p8)(includes o968 p9)(includes o968 p10)

(waiting o969)
(includes o969 p9)(includes o969 p10)(includes o969 p11)

(waiting o970)
(includes o970 p10)(includes o970 p11)(includes o970 p12)

(waiting o971)
(includes o971 p11)(includes o971 p12)(includes o971 p1)

(waiting o972)
(includes o972 p12)(includes o972 p1)(includes o972 p2)

(waiting o973)
(includes o973 p1)(includes o973 p2)(includes o973 p3)

(waiting o974)
(includes o974 p2)(includes o974 p3)(includes o974 p4)

(waiting o975)
(includes o975 p3)(includes o975 p4)(includes o975 p5)

(waiting o976)
(includes o976 p4)(includes o976 p5)(includes o976 p6)

(waiting o977)
(includes o977 p5)(includes o977 p6)(includes o977 p7)

(waiting o978)
(includes o978 p6)(includes o978 p7)(includes o978 p8)

(waiting o979)
(includes o979 p7)(includes o979 p8)(includes o979 p9)

(waiting o980)
(includes o980 p8)(includes o980 p9)(includes o980 p10)

(waiting o981)
(includes o981 p9)(includes o981 p10)(includes o981 p11)

(waiting o982)
(includes o982 p10)(includes o982 p11)(includes o982 p12)

(waiting o983)
(includes o983 p11)(includes o983 p12)(includes o983 p1)

(waiting o984)
(includes o984 p12)(includes o984 p1)(includes o984 p2)

(waiting o985)
(includes o985 p1)(includes o985 p2)(includes o985 p3)

(waiting o986)
(includes o986 p2)(includes o986 p3)(includes o986 p4)

(waiting o987)
(includes o987 p3)(includes o987 p4)(includes o987 p5)

(waiting o988)
(includes o988 p4)(includes o988 p5)(includes o988 p6)

(waiting o989)
(includes o989 p5)(includes o989 p6)(includes o989 p7)

(waiting o990)
(includes o990 p6)(includes o990 p7)(includes o990 p8)

(waiting o991)
(includes o991 p7)(includes o991 p8)(includes o991 p9)

(waiting o992)
(includes o992 p8)(includes o992 p9)(includes o992 p10)

(waiting o993)
(includes o993 p9)(includes o993 p10)(includes o993 p11)

(waiting o994)
(includes o994 p10)(includes o994 p11)(includes o994 p12)

(waiting o995)
(includes o995 p11)(includes o995 p12)(includes o995 p1)

(waiting o996)
(includes o996 p12)(includes o996 p1)(includes o996 p2)

(waiting o997)
(includes o997 p1)(includes o997 p2)(includes o997 p3)

(waiting o998)
(includes o998 p2)(includes o998 p3)(includes o998 p4)

(waiting o999)
(includes o999 p3)(includes o999 p4)(includes o999 p5)

(waiting o1000)
(includes o1000 p4)(includes o1000 p5)(includes o1000 p6)

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
(shipped o301)
(shipped o302)
(shipped o303)
(shipped o304)
(shipped o305)
(shipped o306)
(shipped o307)
(shipped o308)
(shipped o309)
(shipped o310)
(shipped o311)
(shipped o312)
(shipped o313)
(shipped o314)
(shipped o315)
(shipped o316)
(shipped o317)
(shipped o318)
(shipped o319)
(shipped o320)
(shipped o321)
(shipped o322)
(shipped o323)
(shipped o324)
(shipped o325)
(shipped o326)
(shipped o327)
(shipped o328)
(shipped o329)
(shipped o330)
(shipped o331)
(shipped o332)
(shipped o333)
(shipped o334)
(shipped o335)
(shipped o336)
(shipped o337)
(shipped o338)
(shipped o339)
(shipped o340)
(shipped o341)
(shipped o342)
(shipped o343)
(shipped o344)
(shipped o345)
(shipped o346)
(shipped o347)
(shipped o348)
(shipped o349)
(shipped o350)
(shipped o351)
(shipped o352)
(shipped o353)
(shipped o354)
(shipped o355)
(shipped o356)
(shipped o357)
(shipped o358)
(shipped o359)
(shipped o360)
(shipped o361)
(shipped o362)
(shipped o363)
(shipped o364)
(shipped o365)
(shipped o366)
(shipped o367)
(shipped o368)
(shipped o369)
(shipped o370)
(shipped o371)
(shipped o372)
(shipped o373)
(shipped o374)
(shipped o375)
(shipped o376)
(shipped o377)
(shipped o378)
(shipped o379)
(shipped o380)
(shipped o381)
(shipped o382)
(shipped o383)
(shipped o384)
(shipped o385)
(shipped o386)
(shipped o387)
(shipped o388)
(shipped o389)
(shipped o390)
(shipped o391)
(shipped o392)
(shipped o393)
(shipped o394)
(shipped o395)
(shipped o396)
(shipped o397)
(shipped o398)
(shipped o399)
(shipped o400)
(shipped o401)
(shipped o402)
(shipped o403)
(shipped o404)
(shipped o405)
(shipped o406)
(shipped o407)
(shipped o408)
(shipped o409)
(shipped o410)
(shipped o411)
(shipped o412)
(shipped o413)
(shipped o414)
(shipped o415)
(shipped o416)
(shipped o417)
(shipped o418)
(shipped o419)
(shipped o420)
(shipped o421)
(shipped o422)
(shipped o423)
(shipped o424)
(shipped o425)
(shipped o426)
(shipped o427)
(shipped o428)
(shipped o429)
(shipped o430)
(shipped o431)
(shipped o432)
(shipped o433)
(shipped o434)
(shipped o435)
(shipped o436)
(shipped o437)
(shipped o438)
(shipped o439)
(shipped o440)
(shipped o441)
(shipped o442)
(shipped o443)
(shipped o444)
(shipped o445)
(shipped o446)
(shipped o447)
(shipped o448)
(shipped o449)
(shipped o450)
(shipped o451)
(shipped o452)
(shipped o453)
(shipped o454)
(shipped o455)
(shipped o456)
(shipped o457)
(shipped o458)
(shipped o459)
(shipped o460)
(shipped o461)
(shipped o462)
(shipped o463)
(shipped o464)
(shipped o465)
(shipped o466)
(shipped o467)
(shipped o468)
(shipped o469)
(shipped o470)
(shipped o471)
(shipped o472)
(shipped o473)
(shipped o474)
(shipped o475)
(shipped o476)
(shipped o477)
(shipped o478)
(shipped o479)
(shipped o480)
(shipped o481)
(shipped o482)
(shipped o483)
(shipped o484)
(shipped o485)
(shipped o486)
(shipped o487)
(shipped o488)
(shipped o489)
(shipped o490)
(shipped o491)
(shipped o492)
(shipped o493)
(shipped o494)
(shipped o495)
(shipped o496)
(shipped o497)
(shipped o498)
(shipped o499)
(shipped o500)
(shipped o501)
(shipped o502)
(shipped o503)
(shipped o504)
(shipped o505)
(shipped o506)
(shipped o507)
(shipped o508)
(shipped o509)
(shipped o510)
(shipped o511)
(shipped o512)
(shipped o513)
(shipped o514)
(shipped o515)
(shipped o516)
(shipped o517)
(shipped o518)
(shipped o519)
(shipped o520)
(shipped o521)
(shipped o522)
(shipped o523)
(shipped o524)
(shipped o525)
(shipped o526)
(shipped o527)
(shipped o528)
(shipped o529)
(shipped o530)
(shipped o531)
(shipped o532)
(shipped o533)
(shipped o534)
(shipped o535)
(shipped o536)
(shipped o537)
(shipped o538)
(shipped o539)
(shipped o540)
(shipped o541)
(shipped o542)
(shipped o543)
(shipped o544)
(shipped o545)
(shipped o546)
(shipped o547)
(shipped o548)
(shipped o549)
(shipped o550)
(shipped o551)
(shipped o552)
(shipped o553)
(shipped o554)
(shipped o555)
(shipped o556)
(shipped o557)
(shipped o558)
(shipped o559)
(shipped o560)
(shipped o561)
(shipped o562)
(shipped o563)
(shipped o564)
(shipped o565)
(shipped o566)
(shipped o567)
(shipped o568)
(shipped o569)
(shipped o570)
(shipped o571)
(shipped o572)
(shipped o573)
(shipped o574)
(shipped o575)
(shipped o576)
(shipped o577)
(shipped o578)
(shipped o579)
(shipped o580)
(shipped o581)
(shipped o582)
(shipped o583)
(shipped o584)
(shipped o585)
(shipped o586)
(shipped o587)
(shipped o588)
(shipped o589)
(shipped o590)
(shipped o591)
(shipped o592)
(shipped o593)
(shipped o594)
(shipped o595)
(shipped o596)
(shipped o597)
(shipped o598)
(shipped o599)
(shipped o600)
(shipped o601)
(shipped o602)
(shipped o603)
(shipped o604)
(shipped o605)
(shipped o606)
(shipped o607)
(shipped o608)
(shipped o609)
(shipped o610)
(shipped o611)
(shipped o612)
(shipped o613)
(shipped o614)
(shipped o615)
(shipped o616)
(shipped o617)
(shipped o618)
(shipped o619)
(shipped o620)
(shipped o621)
(shipped o622)
(shipped o623)
(shipped o624)
(shipped o625)
(shipped o626)
(shipped o627)
(shipped o628)
(shipped o629)
(shipped o630)
(shipped o631)
(shipped o632)
(shipped o633)
(shipped o634)
(shipped o635)
(shipped o636)
(shipped o637)
(shipped o638)
(shipped o639)
(shipped o640)
(shipped o641)
(shipped o642)
(shipped o643)
(shipped o644)
(shipped o645)
(shipped o646)
(shipped o647)
(shipped o648)
(shipped o649)
(shipped o650)
(shipped o651)
(shipped o652)
(shipped o653)
(shipped o654)
(shipped o655)
(shipped o656)
(shipped o657)
(shipped o658)
(shipped o659)
(shipped o660)
(shipped o661)
(shipped o662)
(shipped o663)
(shipped o664)
(shipped o665)
(shipped o666)
(shipped o667)
(shipped o668)
(shipped o669)
(shipped o670)
(shipped o671)
(shipped o672)
(shipped o673)
(shipped o674)
(shipped o675)
(shipped o676)
(shipped o677)
(shipped o678)
(shipped o679)
(shipped o680)
(shipped o681)
(shipped o682)
(shipped o683)
(shipped o684)
(shipped o685)
(shipped o686)
(shipped o687)
(shipped o688)
(shipped o689)
(shipped o690)
(shipped o691)
(shipped o692)
(shipped o693)
(shipped o694)
(shipped o695)
(shipped o696)
(shipped o697)
(shipped o698)
(shipped o699)
(shipped o700)
(shipped o701)
(shipped o702)
(shipped o703)
(shipped o704)
(shipped o705)
(shipped o706)
(shipped o707)
(shipped o708)
(shipped o709)
(shipped o710)
(shipped o711)
(shipped o712)
(shipped o713)
(shipped o714)
(shipped o715)
(shipped o716)
(shipped o717)
(shipped o718)
(shipped o719)
(shipped o720)
(shipped o721)
(shipped o722)
(shipped o723)
(shipped o724)
(shipped o725)
(shipped o726)
(shipped o727)
(shipped o728)
(shipped o729)
(shipped o730)
(shipped o731)
(shipped o732)
(shipped o733)
(shipped o734)
(shipped o735)
(shipped o736)
(shipped o737)
(shipped o738)
(shipped o739)
(shipped o740)
(shipped o741)
(shipped o742)
(shipped o743)
(shipped o744)
(shipped o745)
(shipped o746)
(shipped o747)
(shipped o748)
(shipped o749)
(shipped o750)
(shipped o751)
(shipped o752)
(shipped o753)
(shipped o754)
(shipped o755)
(shipped o756)
(shipped o757)
(shipped o758)
(shipped o759)
(shipped o760)
(shipped o761)
(shipped o762)
(shipped o763)
(shipped o764)
(shipped o765)
(shipped o766)
(shipped o767)
(shipped o768)
(shipped o769)
(shipped o770)
(shipped o771)
(shipped o772)
(shipped o773)
(shipped o774)
(shipped o775)
(shipped o776)
(shipped o777)
(shipped o778)
(shipped o779)
(shipped o780)
(shipped o781)
(shipped o782)
(shipped o783)
(shipped o784)
(shipped o785)
(shipped o786)
(shipped o787)
(shipped o788)
(shipped o789)
(shipped o790)
(shipped o791)
(shipped o792)
(shipped o793)
(shipped o794)
(shipped o795)
(shipped o796)
(shipped o797)
(shipped o798)
(shipped o799)
(shipped o800)
(shipped o801)
(shipped o802)
(shipped o803)
(shipped o804)
(shipped o805)
(shipped o806)
(shipped o807)
(shipped o808)
(shipped o809)
(shipped o810)
(shipped o811)
(shipped o812)
(shipped o813)
(shipped o814)
(shipped o815)
(shipped o816)
(shipped o817)
(shipped o818)
(shipped o819)
(shipped o820)
(shipped o821)
(shipped o822)
(shipped o823)
(shipped o824)
(shipped o825)
(shipped o826)
(shipped o827)
(shipped o828)
(shipped o829)
(shipped o830)
(shipped o831)
(shipped o832)
(shipped o833)
(shipped o834)
(shipped o835)
(shipped o836)
(shipped o837)
(shipped o838)
(shipped o839)
(shipped o840)
(shipped o841)
(shipped o842)
(shipped o843)
(shipped o844)
(shipped o845)
(shipped o846)
(shipped o847)
(shipped o848)
(shipped o849)
(shipped o850)
(shipped o851)
(shipped o852)
(shipped o853)
(shipped o854)
(shipped o855)
(shipped o856)
(shipped o857)
(shipped o858)
(shipped o859)
(shipped o860)
(shipped o861)
(shipped o862)
(shipped o863)
(shipped o864)
(shipped o865)
(shipped o866)
(shipped o867)
(shipped o868)
(shipped o869)
(shipped o870)
(shipped o871)
(shipped o872)
(shipped o873)
(shipped o874)
(shipped o875)
(shipped o876)
(shipped o877)
(shipped o878)
(shipped o879)
(shipped o880)
(shipped o881)
(shipped o882)
(shipped o883)
(shipped o884)
(shipped o885)
(shipped o886)
(shipped o887)
(shipped o888)
(shipped o889)
(shipped o890)
(shipped o891)
(shipped o892)
(shipped o893)
(shipped o894)
(shipped o895)
(shipped o896)
(shipped o897)
(shipped o898)
(shipped o899)
(shipped o900)
(shipped o901)
(shipped o902)
(shipped o903)
(shipped o904)
(shipped o905)
(shipped o906)
(shipped o907)
(shipped o908)
(shipped o909)
(shipped o910)
(shipped o911)
(shipped o912)
(shipped o913)
(shipped o914)
(shipped o915)
(shipped o916)
(shipped o917)
(shipped o918)
(shipped o919)
(shipped o920)
(shipped o921)
(shipped o922)
(shipped o923)
(shipped o924)
(shipped o925)
(shipped o926)
(shipped o927)
(shipped o928)
(shipped o929)
(shipped o930)
(shipped o931)
(shipped o932)
(shipped o933)
(shipped o934)
(shipped o935)
(shipped o936)
(shipped o937)
(shipped o938)
(shipped o939)
(shipped o940)
(shipped o941)
(shipped o942)
(shipped o943)
(shipped o944)
(shipped o945)
(shipped o946)
(shipped o947)
(shipped o948)
(shipped o949)
(shipped o950)
(shipped o951)
(shipped o952)
(shipped o953)
(shipped o954)
(shipped o955)
(shipped o956)
(shipped o957)
(shipped o958)
(shipped o959)
(shipped o960)
(shipped o961)
(shipped o962)
(shipped o963)
(shipped o964)
(shipped o965)
(shipped o966)
(shipped o967)
(shipped o968)
(shipped o969)
(shipped o970)
(shipped o971)
(shipped o972)
(shipped o973)
(shipped o974)
(shipped o975)
(shipped o976)
(shipped o977)
(shipped o978)
(shipped o979)
(shipped o980)
(shipped o981)
(shipped o982)
(shipped o983)
(shipped o984)
(shipped o985)
(shipped o986)
(shipped o987)
(shipped o988)
(shipped o989)
(shipped o990)
(shipped o991)
(shipped o992)
(shipped o993)
(shipped o994)
(shipped o995)
(shipped o996)
(shipped o997)
(shipped o998)
(shipped o999)
(shipped o1000)
))
(:metric minimize (total-cost))

)