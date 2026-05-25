(define (problem p120)
(:domain openstacks-sequencedstrips-nonADL)
(:objects
 n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120 n121 n122 n123 n124 n125 n126 n127 n128 n129 n130 n131 n132 n133 n134 n135 n136 n137 n138 n139 n140 n141 n142 n143 n144 n145 n146 n147 n148 n149 n150 n151 n152 n153 n154 n155 n156 n157 n158 n159 n160 n161 n162 n163 n164 n165 n166 n167 n168 n169 n170 n171 n172 n173 n174 n175 n176 n177 n178 n179 n180 n181 n182 n183 n184 n185 n186 n187 n188 n189 n190 n191 n192 n193 n194 n195 n196 n197 n198 n199 n200 n201 n202 n203 n204 n205 n206 n207 n208 n209 n210 n211 n212 n213 n214 n215 n216 n217 n218 n219 n220 n221 n222 n223 n224 n225 n226 n227 n228 n229 n230 n231 n232 n233 n234 n235 n236 n237 n238 n239 n240 n241 n242 n243 n244 n245 n246 n247 n248 n249 n250 n251 n252 n253 n254 n255 n256 n257 n258 n259 n260 n261 n262 n263 n264 n265 n266 n267 n268 n269 n270 n271 n272 n273 n274 n275 n276 n277 n278 n279 n280 n281 n282 n283 n284 n285 n286 n287 n288 n289 n290 n291 n292 n293 n294 n295 n296 n297 n298 n299 n300 n301 n302 n303 n304 n305 n306 n307 n308 n309 n310 n311 n312 n313 n314 n315 n316 n317 n318 n319 n320 n321 n322 n323 n324 n325 n326 n327 n328 n329 n330 n331 n332 n333 n334 n335 n336 n337 n338 n339 n340 n341 n342 n343 n344 n345 n346 n347 n348 n349 n350 n351 n352 n353 n354 n355 n356 n357 n358 n359 n360 n361 n362 n363 n364 n365 n366 n367 n368 n369 n370 n371 n372 n373 n374 n375 n376 n377 n378 n379 n380 n381 n382 n383 n384 n385 n386 n387 n388 n389 n390 n391 n392 n393 n394 n395 n396 n397 n398 n399 n400 n401 n402 n403 n404 n405 n406 n407 n408 n409 n410 n411 n412 n413 n414 n415 n416 n417 n418 n419 n420 n421 n422 n423 n424 n425 n426 n427 n428 n429 n430 n431 n432 n433 n434 n435 n436 n437 n438 n439 n440 n441 n442 n443 n444 n445 n446 n447 n448 n449 n450 n451 n452 n453 n454 n455 n456 n457 n458 n459 n460 n461 n462 n463 n464 n465 n466 n467 n468 n469 n470 n471 n472 n473 n474 n475 n476 n477 n478 n479 n480 n481 n482 n483 n484 n485 n486 n487 n488 n489 n490 n491 n492 n493 n494 n495 n496 n497 n498 n499 n500 n501 n502 n503 n504 n505 n506 n507 n508 n509 n510 n511 n512 n513 n514 n515 n516 n517 n518 n519 n520 n521 n522 n523 n524 n525 n526 n527 n528 n529 n530 n531 n532 n533 n534 n535 n536 n537 n538 n539 n540 n541 n542 n543 n544 n545 n546 n547 n548 n549 n550 n551 n552 n553 n554 n555 n556 n557 n558 n559 n560 n561 n562 n563 n564 n565 n566 n567 n568 n569 n570 n571 n572 n573 n574 n575 n576 n577 n578 n579 n580 n581 n582 n583 n584 n585 n586 n587 n588 n589 n590 n591 n592 n593 n594 n595 n596 n597 n598 n599 n600 n601 n602 n603 n604 n605 n606 n607 n608 n609 n610 n611 n612 n613 n614 n615 n616 n617 n618 n619 n620 n621 n622 n623 n624 n625 n626 n627 n628 n629 n630 n631 n632 n633 n634 n635 n636 n637 n638 n639 n640 n641 n642 n643 n644 n645 n646 n647 n648 n649 n650 n651 n652 n653 n654 n655 n656 n657 n658 n659 n660 n661 n662 n663 n664 n665 n666 n667 n668 n669 n670 n671 n672 n673 n674 n675 n676 n677 n678 n679 n680 n681 n682 n683 n684 n685 n686 n687 n688 n689 n690 n691 n692 n693 n694 n695 n696 n697 n698 n699 n700 n701 n702 n703 n704 n705 n706 n707 n708 n709 n710 n711 n712 n713 n714 n715 n716 n717 n718 n719 n720 n721 n722 n723 n724 n725 n726 n727 n728 n729 n730 n731 n732 n733 n734 n735 n736 n737 n738 n739 n740 n741 n742 n743 n744 n745 n746 n747 n748 n749 n750 n751 n752 n753 n754 n755 n756 n757 n758 n759 n760 n761 n762 n763 n764 n765 n766 n767 n768 n769 n770 n771 n772 n773 n774 n775 n776 n777 n778 n779 n780 n781 n782 n783 n784 n785 n786 n787 n788 n789 n790 n791 n792 n793 n794 n795 n796 n797 n798 n799 n800 n801 n802 n803 n804 n805 n806 n807 n808 n809 n810 n811 n812 n813 n814 n815 n816 n817 n818 n819 n820 n821 n822 n823 n824 n825 n826 n827 n828 n829 n830 n831 n832 n833 n834 n835 n836 n837 n838 n839 n840 n841 n842 n843 n844 n845 n846 n847 n848 n849 n850 n851 n852 n853 n854 n855 n856 n857 n858 n859 n860 n861 n862 n863 n864 n865 n866 n867 n868 n869 n870 n871 n872 n873 n874 n875 n876 n877 n878 n879 n880 n881 n882 n883 n884 n885 n886 n887 n888 n889 n890 n891 n892 n893 n894 n895 n896 n897 n898 n899 n900 n901 n902 n903 n904 n905 n906 n907 n908 n909 n910 n911 n912 n913 n914 n915 n916 n917 n918 n919 n920 n921 n922 n923 n924 n925 n926 n927 n928 n929 n930 n931 n932 n933 n934 n935 n936 n937 n938 n939 n940 n941 n942 n943 n944 n945 n946 n947 n948 n949 n950 n951 n952 n953 n954 n955 n956 n957 n958 n959 n960 n961 n962 n963 n964 n965 n966 n967 n968 n969 n970 n971 n972 n973 n974 n975 n976 n977 n978 n979 n980 n981 n982 n983 n984 n985 n986 n987 n988 n989 n990 n991 n992 n993 n994 n995 n996 n997 n998 n999 n1000 - count
)

(:init
(next-count n0 n1) (next-count n1 n2) (next-count n2 n3) (next-count n3 n4) (next-count n4 n5) (next-count n5 n6) (next-count n6 n7) (next-count n7 n8) (next-count n8 n9) (next-count n9 n10) (next-count n10 n11) (next-count n11 n12) (next-count n12 n13) (next-count n13 n14) (next-count n14 n15) (next-count n15 n16) (next-count n16 n17) (next-count n17 n18) (next-count n18 n19) (next-count n19 n20) (next-count n20 n21) (next-count n21 n22) (next-count n22 n23) (next-count n23 n24) (next-count n24 n25) (next-count n25 n26) (next-count n26 n27) (next-count n27 n28) (next-count n28 n29) (next-count n29 n30) (next-count n30 n31) (next-count n31 n32) (next-count n32 n33) (next-count n33 n34) (next-count n34 n35) (next-count n35 n36) (next-count n36 n37) (next-count n37 n38) (next-count n38 n39) (next-count n39 n40) (next-count n40 n41) (next-count n41 n42) (next-count n42 n43) (next-count n43 n44) (next-count n44 n45) (next-count n45 n46) (next-count n46 n47) (next-count n47 n48) (next-count n48 n49) (next-count n49 n50) (next-count n50 n51) (next-count n51 n52) (next-count n52 n53) (next-count n53 n54) (next-count n54 n55) (next-count n55 n56) (next-count n56 n57) (next-count n57 n58) (next-count n58 n59) (next-count n59 n60) (next-count n60 n61) (next-count n61 n62) (next-count n62 n63) (next-count n63 n64) (next-count n64 n65) (next-count n65 n66) (next-count n66 n67) (next-count n67 n68) (next-count n68 n69) (next-count n69 n70) (next-count n70 n71) (next-count n71 n72) (next-count n72 n73) (next-count n73 n74) (next-count n74 n75) (next-count n75 n76) (next-count n76 n77) (next-count n77 n78) (next-count n78 n79) (next-count n79 n80) (next-count n80 n81) (next-count n81 n82) (next-count n82 n83) (next-count n83 n84) (next-count n84 n85) (next-count n85 n86) (next-count n86 n87) (next-count n87 n88) (next-count n88 n89) (next-count n89 n90) (next-count n90 n91) (next-count n91 n92) (next-count n92 n93) (next-count n93 n94) (next-count n94 n95) (next-count n95 n96) (next-count n96 n97) (next-count n97 n98) (next-count n98 n99) (next-count n99 n100) (next-count n100 n101) (next-count n101 n102) (next-count n102 n103) (next-count n103 n104) (next-count n104 n105) (next-count n105 n106) (next-count n106 n107) (next-count n107 n108) (next-count n108 n109) (next-count n109 n110) (next-count n110 n111) (next-count n111 n112) (next-count n112 n113) (next-count n113 n114) (next-count n114 n115) (next-count n115 n116) (next-count n116 n117) (next-count n117 n118) (next-count n118 n119) (next-count n119 n120) (next-count n120 n121) (next-count n121 n122) (next-count n122 n123) (next-count n123 n124) (next-count n124 n125) (next-count n125 n126) (next-count n126 n127) (next-count n127 n128) (next-count n128 n129) (next-count n129 n130) (next-count n130 n131) (next-count n131 n132) (next-count n132 n133) (next-count n133 n134) (next-count n134 n135) (next-count n135 n136) (next-count n136 n137) (next-count n137 n138) (next-count n138 n139) (next-count n139 n140) (next-count n140 n141) (next-count n141 n142) (next-count n142 n143) (next-count n143 n144) (next-count n144 n145) (next-count n145 n146) (next-count n146 n147) (next-count n147 n148) (next-count n148 n149) (next-count n149 n150) (next-count n150 n151) (next-count n151 n152) (next-count n152 n153) (next-count n153 n154) (next-count n154 n155) (next-count n155 n156) (next-count n156 n157) (next-count n157 n158) (next-count n158 n159) (next-count n159 n160) (next-count n160 n161) (next-count n161 n162) (next-count n162 n163) (next-count n163 n164) (next-count n164 n165) (next-count n165 n166) (next-count n166 n167) (next-count n167 n168) (next-count n168 n169) (next-count n169 n170) (next-count n170 n171) (next-count n171 n172) (next-count n172 n173) (next-count n173 n174) (next-count n174 n175) (next-count n175 n176) (next-count n176 n177) (next-count n177 n178) (next-count n178 n179) (next-count n179 n180) (next-count n180 n181) (next-count n181 n182) (next-count n182 n183) (next-count n183 n184) (next-count n184 n185) (next-count n185 n186) (next-count n186 n187) (next-count n187 n188) (next-count n188 n189) (next-count n189 n190) (next-count n190 n191) (next-count n191 n192) (next-count n192 n193) (next-count n193 n194) (next-count n194 n195) (next-count n195 n196) (next-count n196 n197) (next-count n197 n198) (next-count n198 n199) (next-count n199 n200) (next-count n200 n201) (next-count n201 n202) (next-count n202 n203) (next-count n203 n204) (next-count n204 n205) (next-count n205 n206) (next-count n206 n207) (next-count n207 n208) (next-count n208 n209) (next-count n209 n210) (next-count n210 n211) (next-count n211 n212) (next-count n212 n213) (next-count n213 n214) (next-count n214 n215) (next-count n215 n216) (next-count n216 n217) (next-count n217 n218) (next-count n218 n219) (next-count n219 n220) (next-count n220 n221) (next-count n221 n222) (next-count n222 n223) (next-count n223 n224) (next-count n224 n225) (next-count n225 n226) (next-count n226 n227) (next-count n227 n228) (next-count n228 n229) (next-count n229 n230) (next-count n230 n231) (next-count n231 n232) (next-count n232 n233) (next-count n233 n234) (next-count n234 n235) (next-count n235 n236) (next-count n236 n237) (next-count n237 n238) (next-count n238 n239) (next-count n239 n240) (next-count n240 n241) (next-count n241 n242) (next-count n242 n243) (next-count n243 n244) (next-count n244 n245) (next-count n245 n246) (next-count n246 n247) (next-count n247 n248) (next-count n248 n249) (next-count n249 n250) (next-count n250 n251) (next-count n251 n252) (next-count n252 n253) (next-count n253 n254) (next-count n254 n255) (next-count n255 n256) (next-count n256 n257) (next-count n257 n258) (next-count n258 n259) (next-count n259 n260) (next-count n260 n261) (next-count n261 n262) (next-count n262 n263) (next-count n263 n264) (next-count n264 n265) (next-count n265 n266) (next-count n266 n267) (next-count n267 n268) (next-count n268 n269) (next-count n269 n270) (next-count n270 n271) (next-count n271 n272) (next-count n272 n273) (next-count n273 n274) (next-count n274 n275) (next-count n275 n276) (next-count n276 n277) (next-count n277 n278) (next-count n278 n279) (next-count n279 n280) (next-count n280 n281) (next-count n281 n282) (next-count n282 n283) (next-count n283 n284) (next-count n284 n285) (next-count n285 n286) (next-count n286 n287) (next-count n287 n288) (next-count n288 n289) (next-count n289 n290) (next-count n290 n291) (next-count n291 n292) (next-count n292 n293) (next-count n293 n294) (next-count n294 n295) (next-count n295 n296) (next-count n296 n297) (next-count n297 n298) (next-count n298 n299) (next-count n299 n300) (next-count n300 n301) (next-count n301 n302) (next-count n302 n303) (next-count n303 n304) (next-count n304 n305) (next-count n305 n306) (next-count n306 n307) (next-count n307 n308) (next-count n308 n309) (next-count n309 n310) (next-count n310 n311) (next-count n311 n312) (next-count n312 n313) (next-count n313 n314) (next-count n314 n315) (next-count n315 n316) (next-count n316 n317) (next-count n317 n318) (next-count n318 n319) (next-count n319 n320) (next-count n320 n321) (next-count n321 n322) (next-count n322 n323) (next-count n323 n324) (next-count n324 n325) (next-count n325 n326) (next-count n326 n327) (next-count n327 n328) (next-count n328 n329) (next-count n329 n330) (next-count n330 n331) (next-count n331 n332) (next-count n332 n333) (next-count n333 n334) (next-count n334 n335) (next-count n335 n336) (next-count n336 n337) (next-count n337 n338) (next-count n338 n339) (next-count n339 n340) (next-count n340 n341) (next-count n341 n342) (next-count n342 n343) (next-count n343 n344) (next-count n344 n345) (next-count n345 n346) (next-count n346 n347) (next-count n347 n348) (next-count n348 n349) (next-count n349 n350) (next-count n350 n351) (next-count n351 n352) (next-count n352 n353) (next-count n353 n354) (next-count n354 n355) (next-count n355 n356) (next-count n356 n357) (next-count n357 n358) (next-count n358 n359) (next-count n359 n360) (next-count n360 n361) (next-count n361 n362) (next-count n362 n363) (next-count n363 n364) (next-count n364 n365) (next-count n365 n366) (next-count n366 n367) (next-count n367 n368) (next-count n368 n369) (next-count n369 n370) (next-count n370 n371) (next-count n371 n372) (next-count n372 n373) (next-count n373 n374) (next-count n374 n375) (next-count n375 n376) (next-count n376 n377) (next-count n377 n378) (next-count n378 n379) (next-count n379 n380) (next-count n380 n381) (next-count n381 n382) (next-count n382 n383) (next-count n383 n384) (next-count n384 n385) (next-count n385 n386) (next-count n386 n387) (next-count n387 n388) (next-count n388 n389) (next-count n389 n390) (next-count n390 n391) (next-count n391 n392) (next-count n392 n393) (next-count n393 n394) (next-count n394 n395) (next-count n395 n396) (next-count n396 n397) (next-count n397 n398) (next-count n398 n399) (next-count n399 n400) (next-count n400 n401) (next-count n401 n402) (next-count n402 n403) (next-count n403 n404) (next-count n404 n405) (next-count n405 n406) (next-count n406 n407) (next-count n407 n408) (next-count n408 n409) (next-count n409 n410) (next-count n410 n411) (next-count n411 n412) (next-count n412 n413) (next-count n413 n414) (next-count n414 n415) (next-count n415 n416) (next-count n416 n417) (next-count n417 n418) (next-count n418 n419) (next-count n419 n420) (next-count n420 n421) (next-count n421 n422) (next-count n422 n423) (next-count n423 n424) (next-count n424 n425) (next-count n425 n426) (next-count n426 n427) (next-count n427 n428) (next-count n428 n429) (next-count n429 n430) (next-count n430 n431) (next-count n431 n432) (next-count n432 n433) (next-count n433 n434) (next-count n434 n435) (next-count n435 n436) (next-count n436 n437) (next-count n437 n438) (next-count n438 n439) (next-count n439 n440) (next-count n440 n441) (next-count n441 n442) (next-count n442 n443) (next-count n443 n444) (next-count n444 n445) (next-count n445 n446) (next-count n446 n447) (next-count n447 n448) (next-count n448 n449) (next-count n449 n450) (next-count n450 n451) (next-count n451 n452) (next-count n452 n453) (next-count n453 n454) (next-count n454 n455) (next-count n455 n456) (next-count n456 n457) (next-count n457 n458) (next-count n458 n459) (next-count n459 n460) (next-count n460 n461) (next-count n461 n462) (next-count n462 n463) (next-count n463 n464) (next-count n464 n465) (next-count n465 n466) (next-count n466 n467) (next-count n467 n468) (next-count n468 n469) (next-count n469 n470) (next-count n470 n471) (next-count n471 n472) (next-count n472 n473) (next-count n473 n474) (next-count n474 n475) (next-count n475 n476) (next-count n476 n477) (next-count n477 n478) (next-count n478 n479) (next-count n479 n480) (next-count n480 n481) (next-count n481 n482) (next-count n482 n483) (next-count n483 n484) (next-count n484 n485) (next-count n485 n486) (next-count n486 n487) (next-count n487 n488) (next-count n488 n489) (next-count n489 n490) (next-count n490 n491) (next-count n491 n492) (next-count n492 n493) (next-count n493 n494) (next-count n494 n495) (next-count n495 n496) (next-count n496 n497) (next-count n497 n498) (next-count n498 n499) (next-count n499 n500) (next-count n500 n501) (next-count n501 n502) (next-count n502 n503) (next-count n503 n504) (next-count n504 n505) (next-count n505 n506) (next-count n506 n507) (next-count n507 n508) (next-count n508 n509) (next-count n509 n510) (next-count n510 n511) (next-count n511 n512) (next-count n512 n513) (next-count n513 n514) (next-count n514 n515) (next-count n515 n516) (next-count n516 n517) (next-count n517 n518) (next-count n518 n519) (next-count n519 n520) (next-count n520 n521) (next-count n521 n522) (next-count n522 n523) (next-count n523 n524) (next-count n524 n525) (next-count n525 n526) (next-count n526 n527) (next-count n527 n528) (next-count n528 n529) (next-count n529 n530) (next-count n530 n531) (next-count n531 n532) (next-count n532 n533) (next-count n533 n534) (next-count n534 n535) (next-count n535 n536) (next-count n536 n537) (next-count n537 n538) (next-count n538 n539) (next-count n539 n540) (next-count n540 n541) (next-count n541 n542) (next-count n542 n543) (next-count n543 n544) (next-count n544 n545) (next-count n545 n546) (next-count n546 n547) (next-count n547 n548) (next-count n548 n549) (next-count n549 n550) (next-count n550 n551) (next-count n551 n552) (next-count n552 n553) (next-count n553 n554) (next-count n554 n555) (next-count n555 n556) (next-count n556 n557) (next-count n557 n558) (next-count n558 n559) (next-count n559 n560) (next-count n560 n561) (next-count n561 n562) (next-count n562 n563) (next-count n563 n564) (next-count n564 n565) (next-count n565 n566) (next-count n566 n567) (next-count n567 n568) (next-count n568 n569) (next-count n569 n570) (next-count n570 n571) (next-count n571 n572) (next-count n572 n573) (next-count n573 n574) (next-count n574 n575) (next-count n575 n576) (next-count n576 n577) (next-count n577 n578) (next-count n578 n579) (next-count n579 n580) (next-count n580 n581) (next-count n581 n582) (next-count n582 n583) (next-count n583 n584) (next-count n584 n585) (next-count n585 n586) (next-count n586 n587) (next-count n587 n588) (next-count n588 n589) (next-count n589 n590) (next-count n590 n591) (next-count n591 n592) (next-count n592 n593) (next-count n593 n594) (next-count n594 n595) (next-count n595 n596) (next-count n596 n597) (next-count n597 n598) (next-count n598 n599) (next-count n599 n600) (next-count n600 n601) (next-count n601 n602) (next-count n602 n603) (next-count n603 n604) (next-count n604 n605) (next-count n605 n606) (next-count n606 n607) (next-count n607 n608) (next-count n608 n609) (next-count n609 n610) (next-count n610 n611) (next-count n611 n612) (next-count n612 n613) (next-count n613 n614) (next-count n614 n615) (next-count n615 n616) (next-count n616 n617) (next-count n617 n618) (next-count n618 n619) (next-count n619 n620) (next-count n620 n621) (next-count n621 n622) (next-count n622 n623) (next-count n623 n624) (next-count n624 n625) (next-count n625 n626) (next-count n626 n627) (next-count n627 n628) (next-count n628 n629) (next-count n629 n630) (next-count n630 n631) (next-count n631 n632) (next-count n632 n633) (next-count n633 n634) (next-count n634 n635) (next-count n635 n636) (next-count n636 n637) (next-count n637 n638) (next-count n638 n639) (next-count n639 n640) (next-count n640 n641) (next-count n641 n642) (next-count n642 n643) (next-count n643 n644) (next-count n644 n645) (next-count n645 n646) (next-count n646 n647) (next-count n647 n648) (next-count n648 n649) (next-count n649 n650) (next-count n650 n651) (next-count n651 n652) (next-count n652 n653) (next-count n653 n654) (next-count n654 n655) (next-count n655 n656) (next-count n656 n657) (next-count n657 n658) (next-count n658 n659) (next-count n659 n660) (next-count n660 n661) (next-count n661 n662) (next-count n662 n663) (next-count n663 n664) (next-count n664 n665) (next-count n665 n666) (next-count n666 n667) (next-count n667 n668) (next-count n668 n669) (next-count n669 n670) (next-count n670 n671) (next-count n671 n672) (next-count n672 n673) (next-count n673 n674) (next-count n674 n675) (next-count n675 n676) (next-count n676 n677) (next-count n677 n678) (next-count n678 n679) (next-count n679 n680) (next-count n680 n681) (next-count n681 n682) (next-count n682 n683) (next-count n683 n684) (next-count n684 n685) (next-count n685 n686) (next-count n686 n687) (next-count n687 n688) (next-count n688 n689) (next-count n689 n690) (next-count n690 n691) (next-count n691 n692) (next-count n692 n693) (next-count n693 n694) (next-count n694 n695) (next-count n695 n696) (next-count n696 n697) (next-count n697 n698) (next-count n698 n699) (next-count n699 n700) (next-count n700 n701) (next-count n701 n702) (next-count n702 n703) (next-count n703 n704) (next-count n704 n705) (next-count n705 n706) (next-count n706 n707) (next-count n707 n708) (next-count n708 n709) (next-count n709 n710) (next-count n710 n711) (next-count n711 n712) (next-count n712 n713) (next-count n713 n714) (next-count n714 n715) (next-count n715 n716) (next-count n716 n717) (next-count n717 n718) (next-count n718 n719) (next-count n719 n720) (next-count n720 n721) (next-count n721 n722) (next-count n722 n723) (next-count n723 n724) (next-count n724 n725) (next-count n725 n726) (next-count n726 n727) (next-count n727 n728) (next-count n728 n729) (next-count n729 n730) (next-count n730 n731) (next-count n731 n732) (next-count n732 n733) (next-count n733 n734) (next-count n734 n735) (next-count n735 n736) (next-count n736 n737) (next-count n737 n738) (next-count n738 n739) (next-count n739 n740) (next-count n740 n741) (next-count n741 n742) (next-count n742 n743) (next-count n743 n744) (next-count n744 n745) (next-count n745 n746) (next-count n746 n747) (next-count n747 n748) (next-count n748 n749) (next-count n749 n750) (next-count n750 n751) (next-count n751 n752) (next-count n752 n753) (next-count n753 n754) (next-count n754 n755) (next-count n755 n756) (next-count n756 n757) (next-count n757 n758) (next-count n758 n759) (next-count n759 n760) (next-count n760 n761) (next-count n761 n762) (next-count n762 n763) (next-count n763 n764) (next-count n764 n765) (next-count n765 n766) (next-count n766 n767) (next-count n767 n768) (next-count n768 n769) (next-count n769 n770) (next-count n770 n771) (next-count n771 n772) (next-count n772 n773) (next-count n773 n774) (next-count n774 n775) (next-count n775 n776) (next-count n776 n777) (next-count n777 n778) (next-count n778 n779) (next-count n779 n780) (next-count n780 n781) (next-count n781 n782) (next-count n782 n783) (next-count n783 n784) (next-count n784 n785) (next-count n785 n786) (next-count n786 n787) (next-count n787 n788) (next-count n788 n789) (next-count n789 n790) (next-count n790 n791) (next-count n791 n792) (next-count n792 n793) (next-count n793 n794) (next-count n794 n795) (next-count n795 n796) (next-count n796 n797) (next-count n797 n798) (next-count n798 n799) (next-count n799 n800) (next-count n800 n801) (next-count n801 n802) (next-count n802 n803) (next-count n803 n804) (next-count n804 n805) (next-count n805 n806) (next-count n806 n807) (next-count n807 n808) (next-count n808 n809) (next-count n809 n810) (next-count n810 n811) (next-count n811 n812) (next-count n812 n813) (next-count n813 n814) (next-count n814 n815) (next-count n815 n816) (next-count n816 n817) (next-count n817 n818) (next-count n818 n819) (next-count n819 n820) (next-count n820 n821) (next-count n821 n822) (next-count n822 n823) (next-count n823 n824) (next-count n824 n825) (next-count n825 n826) (next-count n826 n827) (next-count n827 n828) (next-count n828 n829) (next-count n829 n830) (next-count n830 n831) (next-count n831 n832) (next-count n832 n833) (next-count n833 n834) (next-count n834 n835) (next-count n835 n836) (next-count n836 n837) (next-count n837 n838) (next-count n838 n839) (next-count n839 n840) (next-count n840 n841) (next-count n841 n842) (next-count n842 n843) (next-count n843 n844) (next-count n844 n845) (next-count n845 n846) (next-count n846 n847) (next-count n847 n848) (next-count n848 n849) (next-count n849 n850) (next-count n850 n851) (next-count n851 n852) (next-count n852 n853) (next-count n853 n854) (next-count n854 n855) (next-count n855 n856) (next-count n856 n857) (next-count n857 n858) (next-count n858 n859) (next-count n859 n860) (next-count n860 n861) (next-count n861 n862) (next-count n862 n863) (next-count n863 n864) (next-count n864 n865) (next-count n865 n866) (next-count n866 n867) (next-count n867 n868) (next-count n868 n869) (next-count n869 n870) (next-count n870 n871) (next-count n871 n872) (next-count n872 n873) (next-count n873 n874) (next-count n874 n875) (next-count n875 n876) (next-count n876 n877) (next-count n877 n878) (next-count n878 n879) (next-count n879 n880) (next-count n880 n881) (next-count n881 n882) (next-count n882 n883) (next-count n883 n884) (next-count n884 n885) (next-count n885 n886) (next-count n886 n887) (next-count n887 n888) (next-count n888 n889) (next-count n889 n890) (next-count n890 n891) (next-count n891 n892) (next-count n892 n893) (next-count n893 n894) (next-count n894 n895) (next-count n895 n896) (next-count n896 n897) (next-count n897 n898) (next-count n898 n899) (next-count n899 n900) (next-count n900 n901) (next-count n901 n902) (next-count n902 n903) (next-count n903 n904) (next-count n904 n905) (next-count n905 n906) (next-count n906 n907) (next-count n907 n908) (next-count n908 n909) (next-count n909 n910) (next-count n910 n911) (next-count n911 n912) (next-count n912 n913) (next-count n913 n914) (next-count n914 n915) (next-count n915 n916) (next-count n916 n917) (next-count n917 n918) (next-count n918 n919) (next-count n919 n920) (next-count n920 n921) (next-count n921 n922) (next-count n922 n923) (next-count n923 n924) (next-count n924 n925) (next-count n925 n926) (next-count n926 n927) (next-count n927 n928) (next-count n928 n929) (next-count n929 n930) (next-count n930 n931) (next-count n931 n932) (next-count n932 n933) (next-count n933 n934) (next-count n934 n935) (next-count n935 n936) (next-count n936 n937) (next-count n937 n938) (next-count n938 n939) (next-count n939 n940) (next-count n940 n941) (next-count n941 n942) (next-count n942 n943) (next-count n943 n944) (next-count n944 n945) (next-count n945 n946) (next-count n946 n947) (next-count n947 n948) (next-count n948 n949) (next-count n949 n950) (next-count n950 n951) (next-count n951 n952) (next-count n952 n953) (next-count n953 n954) (next-count n954 n955) (next-count n955 n956) (next-count n956 n957) (next-count n957 n958) (next-count n958 n959) (next-count n959 n960) (next-count n960 n961) (next-count n961 n962) (next-count n962 n963) (next-count n963 n964) (next-count n964 n965) (next-count n965 n966) (next-count n966 n967) (next-count n967 n968) (next-count n968 n969) (next-count n969 n970) (next-count n970 n971) (next-count n971 n972) (next-count n972 n973) (next-count n973 n974) (next-count n974 n975) (next-count n975 n976) (next-count n976 n977) (next-count n977 n978) (next-count n978 n979) (next-count n979 n980) (next-count n980 n981) (next-count n981 n982) (next-count n982 n983) (next-count n983 n984) (next-count n984 n985) (next-count n985 n986) (next-count n986 n987) (next-count n987 n988) (next-count n988 n989) (next-count n989 n990) (next-count n990 n991) (next-count n991 n992) (next-count n992 n993) (next-count n993 n994) (next-count n994 n995) (next-count n995 n996) (next-count n996 n997) (next-count n997 n998) (next-count n998 n999) (next-count n999 n1000)
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

(waiting o201)
(includes o201 p6)(includes o201 p7)(includes o201 p8)

(waiting o202)
(includes o202 p7)(includes o202 p8)(includes o202 p9)

(waiting o203)
(includes o203 p8)(includes o203 p9)(includes o203 p10)

(waiting o204)
(includes o204 p9)(includes o204 p10)(includes o204 p11)

(waiting o205)
(includes o205 p10)(includes o205 p11)(includes o205 p12)

(waiting o206)
(includes o206 p11)(includes o206 p12)(includes o206 p1)

(waiting o207)
(includes o207 p12)(includes o207 p1)(includes o207 p2)

(waiting o208)
(includes o208 p1)(includes o208 p2)(includes o208 p3)

(waiting o209)
(includes o209 p2)(includes o209 p3)(includes o209 p4)

(waiting o210)
(includes o210 p3)(includes o210 p4)(includes o210 p5)

(waiting o211)
(includes o211 p4)(includes o211 p5)(includes o211 p6)

(waiting o212)
(includes o212 p5)(includes o212 p6)(includes o212 p7)

(waiting o213)
(includes o213 p6)(includes o213 p7)(includes o213 p8)

(waiting o214)
(includes o214 p7)(includes o214 p8)(includes o214 p9)

(waiting o215)
(includes o215 p8)(includes o215 p9)(includes o215 p10)

(waiting o216)
(includes o216 p9)(includes o216 p10)(includes o216 p11)

(waiting o217)
(includes o217 p10)(includes o217 p11)(includes o217 p12)

(waiting o218)
(includes o218 p11)(includes o218 p12)(includes o218 p1)

(waiting o219)
(includes o219 p12)(includes o219 p1)(includes o219 p2)

(waiting o220)
(includes o220 p1)(includes o220 p2)(includes o220 p3)

(waiting o221)
(includes o221 p2)(includes o221 p3)(includes o221 p4)

(waiting o222)
(includes o222 p3)(includes o222 p4)(includes o222 p5)

(waiting o223)
(includes o223 p4)(includes o223 p5)(includes o223 p6)

(waiting o224)
(includes o224 p5)(includes o224 p6)(includes o224 p7)

(waiting o225)
(includes o225 p6)(includes o225 p7)(includes o225 p8)

(waiting o226)
(includes o226 p7)(includes o226 p8)(includes o226 p9)

(waiting o227)
(includes o227 p8)(includes o227 p9)(includes o227 p10)

(waiting o228)
(includes o228 p9)(includes o228 p10)(includes o228 p11)

(waiting o229)
(includes o229 p10)(includes o229 p11)(includes o229 p12)

(waiting o230)
(includes o230 p11)(includes o230 p12)(includes o230 p1)

(waiting o231)
(includes o231 p12)(includes o231 p1)(includes o231 p2)

(waiting o232)
(includes o232 p1)(includes o232 p2)(includes o232 p3)

(waiting o233)
(includes o233 p2)(includes o233 p3)(includes o233 p4)

(waiting o234)
(includes o234 p3)(includes o234 p4)(includes o234 p5)

(waiting o235)
(includes o235 p4)(includes o235 p5)(includes o235 p6)

(waiting o236)
(includes o236 p5)(includes o236 p6)(includes o236 p7)

(waiting o237)
(includes o237 p6)(includes o237 p7)(includes o237 p8)

(waiting o238)
(includes o238 p7)(includes o238 p8)(includes o238 p9)

(waiting o239)
(includes o239 p8)(includes o239 p9)(includes o239 p10)

(waiting o240)
(includes o240 p9)(includes o240 p10)(includes o240 p11)

(waiting o241)
(includes o241 p10)(includes o241 p11)(includes o241 p12)

(waiting o242)
(includes o242 p11)(includes o242 p12)(includes o242 p1)

(waiting o243)
(includes o243 p12)(includes o243 p1)(includes o243 p2)

(waiting o244)
(includes o244 p1)(includes o244 p2)(includes o244 p3)

(waiting o245)
(includes o245 p2)(includes o245 p3)(includes o245 p4)

(waiting o246)
(includes o246 p3)(includes o246 p4)(includes o246 p5)

(waiting o247)
(includes o247 p4)(includes o247 p5)(includes o247 p6)

(waiting o248)
(includes o248 p5)(includes o248 p6)(includes o248 p7)

(waiting o249)
(includes o249 p6)(includes o249 p7)(includes o249 p8)

(waiting o250)
(includes o250 p7)(includes o250 p8)(includes o250 p9)

(waiting o251)
(includes o251 p8)(includes o251 p9)(includes o251 p10)

(waiting o252)
(includes o252 p9)(includes o252 p10)(includes o252 p11)

(waiting o253)
(includes o253 p10)(includes o253 p11)(includes o253 p12)

(waiting o254)
(includes o254 p11)(includes o254 p12)(includes o254 p1)

(waiting o255)
(includes o255 p12)(includes o255 p1)(includes o255 p2)

(waiting o256)
(includes o256 p1)(includes o256 p2)(includes o256 p3)

(waiting o257)
(includes o257 p2)(includes o257 p3)(includes o257 p4)

(waiting o258)
(includes o258 p3)(includes o258 p4)(includes o258 p5)

(waiting o259)
(includes o259 p4)(includes o259 p5)(includes o259 p6)

(waiting o260)
(includes o260 p5)(includes o260 p6)(includes o260 p7)

(waiting o261)
(includes o261 p6)(includes o261 p7)(includes o261 p8)

(waiting o262)
(includes o262 p7)(includes o262 p8)(includes o262 p9)

(waiting o263)
(includes o263 p8)(includes o263 p9)(includes o263 p10)

(waiting o264)
(includes o264 p9)(includes o264 p10)(includes o264 p11)

(waiting o265)
(includes o265 p10)(includes o265 p11)(includes o265 p12)

(waiting o266)
(includes o266 p11)(includes o266 p12)(includes o266 p1)

(waiting o267)
(includes o267 p12)(includes o267 p1)(includes o267 p2)

(waiting o268)
(includes o268 p1)(includes o268 p2)(includes o268 p3)

(waiting o269)
(includes o269 p2)(includes o269 p3)(includes o269 p4)

(waiting o270)
(includes o270 p3)(includes o270 p4)(includes o270 p5)

(waiting o271)
(includes o271 p4)(includes o271 p5)(includes o271 p6)

(waiting o272)
(includes o272 p5)(includes o272 p6)(includes o272 p7)

(waiting o273)
(includes o273 p6)(includes o273 p7)(includes o273 p8)

(waiting o274)
(includes o274 p7)(includes o274 p8)(includes o274 p9)

(waiting o275)
(includes o275 p8)(includes o275 p9)(includes o275 p10)

(waiting o276)
(includes o276 p9)(includes o276 p10)(includes o276 p11)

(waiting o277)
(includes o277 p10)(includes o277 p11)(includes o277 p12)

(waiting o278)
(includes o278 p11)(includes o278 p12)(includes o278 p1)

(waiting o279)
(includes o279 p12)(includes o279 p1)(includes o279 p2)

(waiting o280)
(includes o280 p1)(includes o280 p2)(includes o280 p3)

(waiting o281)
(includes o281 p2)(includes o281 p3)(includes o281 p4)

(waiting o282)
(includes o282 p3)(includes o282 p4)(includes o282 p5)

(waiting o283)
(includes o283 p4)(includes o283 p5)(includes o283 p6)

(waiting o284)
(includes o284 p5)(includes o284 p6)(includes o284 p7)

(waiting o285)
(includes o285 p6)(includes o285 p7)(includes o285 p8)

(waiting o286)
(includes o286 p7)(includes o286 p8)(includes o286 p9)

(waiting o287)
(includes o287 p8)(includes o287 p9)(includes o287 p10)

(waiting o288)
(includes o288 p9)(includes o288 p10)(includes o288 p11)

(waiting o289)
(includes o289 p10)(includes o289 p11)(includes o289 p12)

(waiting o290)
(includes o290 p11)(includes o290 p12)(includes o290 p1)

(waiting o291)
(includes o291 p12)(includes o291 p1)(includes o291 p2)

(waiting o292)
(includes o292 p1)(includes o292 p2)(includes o292 p3)

(waiting o293)
(includes o293 p2)(includes o293 p3)(includes o293 p4)

(waiting o294)
(includes o294 p3)(includes o294 p4)(includes o294 p5)

(waiting o295)
(includes o295 p4)(includes o295 p5)(includes o295 p6)

(waiting o296)
(includes o296 p5)(includes o296 p6)(includes o296 p7)

(waiting o297)
(includes o297 p6)(includes o297 p7)(includes o297 p8)

(waiting o298)
(includes o298 p7)(includes o298 p8)(includes o298 p9)

(waiting o299)
(includes o299 p8)(includes o299 p9)(includes o299 p10)

(waiting o300)
(includes o300 p9)(includes o300 p10)(includes o300 p11)

(waiting o301)
(includes o301 p10)(includes o301 p11)(includes o301 p12)

(waiting o302)
(includes o302 p11)(includes o302 p12)(includes o302 p1)

(waiting o303)
(includes o303 p12)(includes o303 p1)(includes o303 p2)

(waiting o304)
(includes o304 p1)(includes o304 p2)(includes o304 p3)

(waiting o305)
(includes o305 p2)(includes o305 p3)(includes o305 p4)

(waiting o306)
(includes o306 p3)(includes o306 p4)(includes o306 p5)

(waiting o307)
(includes o307 p4)(includes o307 p5)(includes o307 p6)

(waiting o308)
(includes o308 p5)(includes o308 p6)(includes o308 p7)

(waiting o309)
(includes o309 p6)(includes o309 p7)(includes o309 p8)

(waiting o310)
(includes o310 p7)(includes o310 p8)(includes o310 p9)

(waiting o311)
(includes o311 p8)(includes o311 p9)(includes o311 p10)

(waiting o312)
(includes o312 p9)(includes o312 p10)(includes o312 p11)

(waiting o313)
(includes o313 p10)(includes o313 p11)(includes o313 p12)

(waiting o314)
(includes o314 p11)(includes o314 p12)(includes o314 p1)

(waiting o315)
(includes o315 p12)(includes o315 p1)(includes o315 p2)

(waiting o316)
(includes o316 p1)(includes o316 p2)(includes o316 p3)

(waiting o317)
(includes o317 p2)(includes o317 p3)(includes o317 p4)

(waiting o318)
(includes o318 p3)(includes o318 p4)(includes o318 p5)

(waiting o319)
(includes o319 p4)(includes o319 p5)(includes o319 p6)

(waiting o320)
(includes o320 p5)(includes o320 p6)(includes o320 p7)

(waiting o321)
(includes o321 p6)(includes o321 p7)(includes o321 p8)

(waiting o322)
(includes o322 p7)(includes o322 p8)(includes o322 p9)

(waiting o323)
(includes o323 p8)(includes o323 p9)(includes o323 p10)

(waiting o324)
(includes o324 p9)(includes o324 p10)(includes o324 p11)

(waiting o325)
(includes o325 p10)(includes o325 p11)(includes o325 p12)

(waiting o326)
(includes o326 p11)(includes o326 p12)(includes o326 p1)

(waiting o327)
(includes o327 p12)(includes o327 p1)(includes o327 p2)

(waiting o328)
(includes o328 p1)(includes o328 p2)(includes o328 p3)

(waiting o329)
(includes o329 p2)(includes o329 p3)(includes o329 p4)

(waiting o330)
(includes o330 p3)(includes o330 p4)(includes o330 p5)

(waiting o331)
(includes o331 p4)(includes o331 p5)(includes o331 p6)

(waiting o332)
(includes o332 p5)(includes o332 p6)(includes o332 p7)

(waiting o333)
(includes o333 p6)(includes o333 p7)(includes o333 p8)

(waiting o334)
(includes o334 p7)(includes o334 p8)(includes o334 p9)

(waiting o335)
(includes o335 p8)(includes o335 p9)(includes o335 p10)

(waiting o336)
(includes o336 p9)(includes o336 p10)(includes o336 p11)

(waiting o337)
(includes o337 p10)(includes o337 p11)(includes o337 p12)

(waiting o338)
(includes o338 p11)(includes o338 p12)(includes o338 p1)

(waiting o339)
(includes o339 p12)(includes o339 p1)(includes o339 p2)

(waiting o340)
(includes o340 p1)(includes o340 p2)(includes o340 p3)

(waiting o341)
(includes o341 p2)(includes o341 p3)(includes o341 p4)

(waiting o342)
(includes o342 p3)(includes o342 p4)(includes o342 p5)

(waiting o343)
(includes o343 p4)(includes o343 p5)(includes o343 p6)

(waiting o344)
(includes o344 p5)(includes o344 p6)(includes o344 p7)

(waiting o345)
(includes o345 p6)(includes o345 p7)(includes o345 p8)

(waiting o346)
(includes o346 p7)(includes o346 p8)(includes o346 p9)

(waiting o347)
(includes o347 p8)(includes o347 p9)(includes o347 p10)

(waiting o348)
(includes o348 p9)(includes o348 p10)(includes o348 p11)

(waiting o349)
(includes o349 p10)(includes o349 p11)(includes o349 p12)

(waiting o350)
(includes o350 p11)(includes o350 p12)(includes o350 p1)

(waiting o351)
(includes o351 p12)(includes o351 p1)(includes o351 p2)

(waiting o352)
(includes o352 p1)(includes o352 p2)(includes o352 p3)

(waiting o353)
(includes o353 p2)(includes o353 p3)(includes o353 p4)

(waiting o354)
(includes o354 p3)(includes o354 p4)(includes o354 p5)

(waiting o355)
(includes o355 p4)(includes o355 p5)(includes o355 p6)

(waiting o356)
(includes o356 p5)(includes o356 p6)(includes o356 p7)

(waiting o357)
(includes o357 p6)(includes o357 p7)(includes o357 p8)

(waiting o358)
(includes o358 p7)(includes o358 p8)(includes o358 p9)

(waiting o359)
(includes o359 p8)(includes o359 p9)(includes o359 p10)

(waiting o360)
(includes o360 p9)(includes o360 p10)(includes o360 p11)

(waiting o361)
(includes o361 p10)(includes o361 p11)(includes o361 p12)

(waiting o362)
(includes o362 p11)(includes o362 p12)(includes o362 p1)

(waiting o363)
(includes o363 p12)(includes o363 p1)(includes o363 p2)

(waiting o364)
(includes o364 p1)(includes o364 p2)(includes o364 p3)

(waiting o365)
(includes o365 p2)(includes o365 p3)(includes o365 p4)

(waiting o366)
(includes o366 p3)(includes o366 p4)(includes o366 p5)

(waiting o367)
(includes o367 p4)(includes o367 p5)(includes o367 p6)

(waiting o368)
(includes o368 p5)(includes o368 p6)(includes o368 p7)

(waiting o369)
(includes o369 p6)(includes o369 p7)(includes o369 p8)

(waiting o370)
(includes o370 p7)(includes o370 p8)(includes o370 p9)

(waiting o371)
(includes o371 p8)(includes o371 p9)(includes o371 p10)

(waiting o372)
(includes o372 p9)(includes o372 p10)(includes o372 p11)

(waiting o373)
(includes o373 p10)(includes o373 p11)(includes o373 p12)

(waiting o374)
(includes o374 p11)(includes o374 p12)(includes o374 p1)

(waiting o375)
(includes o375 p12)(includes o375 p1)(includes o375 p2)

(waiting o376)
(includes o376 p1)(includes o376 p2)(includes o376 p3)

(waiting o377)
(includes o377 p2)(includes o377 p3)(includes o377 p4)

(waiting o378)
(includes o378 p3)(includes o378 p4)(includes o378 p5)

(waiting o379)
(includes o379 p4)(includes o379 p5)(includes o379 p6)

(waiting o380)
(includes o380 p5)(includes o380 p6)(includes o380 p7)

(waiting o381)
(includes o381 p6)(includes o381 p7)(includes o381 p8)

(waiting o382)
(includes o382 p7)(includes o382 p8)(includes o382 p9)

(waiting o383)
(includes o383 p8)(includes o383 p9)(includes o383 p10)

(waiting o384)
(includes o384 p9)(includes o384 p10)(includes o384 p11)

(waiting o385)
(includes o385 p10)(includes o385 p11)(includes o385 p12)

(waiting o386)
(includes o386 p11)(includes o386 p12)(includes o386 p1)

(waiting o387)
(includes o387 p12)(includes o387 p1)(includes o387 p2)

(waiting o388)
(includes o388 p1)(includes o388 p2)(includes o388 p3)

(waiting o389)
(includes o389 p2)(includes o389 p3)(includes o389 p4)

(waiting o390)
(includes o390 p3)(includes o390 p4)(includes o390 p5)

(waiting o391)
(includes o391 p4)(includes o391 p5)(includes o391 p6)

(waiting o392)
(includes o392 p5)(includes o392 p6)(includes o392 p7)

(waiting o393)
(includes o393 p6)(includes o393 p7)(includes o393 p8)

(waiting o394)
(includes o394 p7)(includes o394 p8)(includes o394 p9)

(waiting o395)
(includes o395 p8)(includes o395 p9)(includes o395 p10)

(waiting o396)
(includes o396 p9)(includes o396 p10)(includes o396 p11)

(waiting o397)
(includes o397 p10)(includes o397 p11)(includes o397 p12)

(waiting o398)
(includes o398 p11)(includes o398 p12)(includes o398 p1)

(waiting o399)
(includes o399 p12)(includes o399 p1)(includes o399 p2)

(waiting o400)
(includes o400 p1)(includes o400 p2)(includes o400 p3)

(waiting o401)
(includes o401 p2)(includes o401 p3)(includes o401 p4)

(waiting o402)
(includes o402 p3)(includes o402 p4)(includes o402 p5)

(waiting o403)
(includes o403 p4)(includes o403 p5)(includes o403 p6)

(waiting o404)
(includes o404 p5)(includes o404 p6)(includes o404 p7)

(waiting o405)
(includes o405 p6)(includes o405 p7)(includes o405 p8)

(waiting o406)
(includes o406 p7)(includes o406 p8)(includes o406 p9)

(waiting o407)
(includes o407 p8)(includes o407 p9)(includes o407 p10)

(waiting o408)
(includes o408 p9)(includes o408 p10)(includes o408 p11)

(waiting o409)
(includes o409 p10)(includes o409 p11)(includes o409 p12)

(waiting o410)
(includes o410 p11)(includes o410 p12)(includes o410 p1)

(waiting o411)
(includes o411 p12)(includes o411 p1)(includes o411 p2)

(waiting o412)
(includes o412 p1)(includes o412 p2)(includes o412 p3)

(waiting o413)
(includes o413 p2)(includes o413 p3)(includes o413 p4)

(waiting o414)
(includes o414 p3)(includes o414 p4)(includes o414 p5)

(waiting o415)
(includes o415 p4)(includes o415 p5)(includes o415 p6)

(waiting o416)
(includes o416 p5)(includes o416 p6)(includes o416 p7)

(waiting o417)
(includes o417 p6)(includes o417 p7)(includes o417 p8)

(waiting o418)
(includes o418 p7)(includes o418 p8)(includes o418 p9)

(waiting o419)
(includes o419 p8)(includes o419 p9)(includes o419 p10)

(waiting o420)
(includes o420 p9)(includes o420 p10)(includes o420 p11)

(waiting o421)
(includes o421 p10)(includes o421 p11)(includes o421 p12)

(waiting o422)
(includes o422 p11)(includes o422 p12)(includes o422 p1)

(waiting o423)
(includes o423 p12)(includes o423 p1)(includes o423 p2)

(waiting o424)
(includes o424 p1)(includes o424 p2)(includes o424 p3)

(waiting o425)
(includes o425 p2)(includes o425 p3)(includes o425 p4)

(waiting o426)
(includes o426 p3)(includes o426 p4)(includes o426 p5)

(waiting o427)
(includes o427 p4)(includes o427 p5)(includes o427 p6)

(waiting o428)
(includes o428 p5)(includes o428 p6)(includes o428 p7)

(waiting o429)
(includes o429 p6)(includes o429 p7)(includes o429 p8)

(waiting o430)
(includes o430 p7)(includes o430 p8)(includes o430 p9)

(waiting o431)
(includes o431 p8)(includes o431 p9)(includes o431 p10)

(waiting o432)
(includes o432 p9)(includes o432 p10)(includes o432 p11)

(waiting o433)
(includes o433 p10)(includes o433 p11)(includes o433 p12)

(waiting o434)
(includes o434 p11)(includes o434 p12)(includes o434 p1)

(waiting o435)
(includes o435 p12)(includes o435 p1)(includes o435 p2)

(waiting o436)
(includes o436 p1)(includes o436 p2)(includes o436 p3)

(waiting o437)
(includes o437 p2)(includes o437 p3)(includes o437 p4)

(waiting o438)
(includes o438 p3)(includes o438 p4)(includes o438 p5)

(waiting o439)
(includes o439 p4)(includes o439 p5)(includes o439 p6)

(waiting o440)
(includes o440 p5)(includes o440 p6)(includes o440 p7)

(waiting o441)
(includes o441 p6)(includes o441 p7)(includes o441 p8)

(waiting o442)
(includes o442 p7)(includes o442 p8)(includes o442 p9)

(waiting o443)
(includes o443 p8)(includes o443 p9)(includes o443 p10)

(waiting o444)
(includes o444 p9)(includes o444 p10)(includes o444 p11)

(waiting o445)
(includes o445 p10)(includes o445 p11)(includes o445 p12)

(waiting o446)
(includes o446 p11)(includes o446 p12)(includes o446 p1)

(waiting o447)
(includes o447 p12)(includes o447 p1)(includes o447 p2)

(waiting o448)
(includes o448 p1)(includes o448 p2)(includes o448 p3)

(waiting o449)
(includes o449 p2)(includes o449 p3)(includes o449 p4)

(waiting o450)
(includes o450 p3)(includes o450 p4)(includes o450 p5)

(waiting o451)
(includes o451 p4)(includes o451 p5)(includes o451 p6)

(waiting o452)
(includes o452 p5)(includes o452 p6)(includes o452 p7)

(waiting o453)
(includes o453 p6)(includes o453 p7)(includes o453 p8)

(waiting o454)
(includes o454 p7)(includes o454 p8)(includes o454 p9)

(waiting o455)
(includes o455 p8)(includes o455 p9)(includes o455 p10)

(waiting o456)
(includes o456 p9)(includes o456 p10)(includes o456 p11)

(waiting o457)
(includes o457 p10)(includes o457 p11)(includes o457 p12)

(waiting o458)
(includes o458 p11)(includes o458 p12)(includes o458 p1)

(waiting o459)
(includes o459 p12)(includes o459 p1)(includes o459 p2)

(waiting o460)
(includes o460 p1)(includes o460 p2)(includes o460 p3)

(waiting o461)
(includes o461 p2)(includes o461 p3)(includes o461 p4)

(waiting o462)
(includes o462 p3)(includes o462 p4)(includes o462 p5)

(waiting o463)
(includes o463 p4)(includes o463 p5)(includes o463 p6)

(waiting o464)
(includes o464 p5)(includes o464 p6)(includes o464 p7)

(waiting o465)
(includes o465 p6)(includes o465 p7)(includes o465 p8)

(waiting o466)
(includes o466 p7)(includes o466 p8)(includes o466 p9)

(waiting o467)
(includes o467 p8)(includes o467 p9)(includes o467 p10)

(waiting o468)
(includes o468 p9)(includes o468 p10)(includes o468 p11)

(waiting o469)
(includes o469 p10)(includes o469 p11)(includes o469 p12)

(waiting o470)
(includes o470 p11)(includes o470 p12)(includes o470 p1)

(waiting o471)
(includes o471 p12)(includes o471 p1)(includes o471 p2)

(waiting o472)
(includes o472 p1)(includes o472 p2)(includes o472 p3)

(waiting o473)
(includes o473 p2)(includes o473 p3)(includes o473 p4)

(waiting o474)
(includes o474 p3)(includes o474 p4)(includes o474 p5)

(waiting o475)
(includes o475 p4)(includes o475 p5)(includes o475 p6)

(waiting o476)
(includes o476 p5)(includes o476 p6)(includes o476 p7)

(waiting o477)
(includes o477 p6)(includes o477 p7)(includes o477 p8)

(waiting o478)
(includes o478 p7)(includes o478 p8)(includes o478 p9)

(waiting o479)
(includes o479 p8)(includes o479 p9)(includes o479 p10)

(waiting o480)
(includes o480 p9)(includes o480 p10)(includes o480 p11)

(waiting o481)
(includes o481 p10)(includes o481 p11)(includes o481 p12)

(waiting o482)
(includes o482 p11)(includes o482 p12)(includes o482 p1)

(waiting o483)
(includes o483 p12)(includes o483 p1)(includes o483 p2)

(waiting o484)
(includes o484 p1)(includes o484 p2)(includes o484 p3)

(waiting o485)
(includes o485 p2)(includes o485 p3)(includes o485 p4)

(waiting o486)
(includes o486 p3)(includes o486 p4)(includes o486 p5)

(waiting o487)
(includes o487 p4)(includes o487 p5)(includes o487 p6)

(waiting o488)
(includes o488 p5)(includes o488 p6)(includes o488 p7)

(waiting o489)
(includes o489 p6)(includes o489 p7)(includes o489 p8)

(waiting o490)
(includes o490 p7)(includes o490 p8)(includes o490 p9)

(waiting o491)
(includes o491 p8)(includes o491 p9)(includes o491 p10)

(waiting o492)
(includes o492 p9)(includes o492 p10)(includes o492 p11)

(waiting o493)
(includes o493 p10)(includes o493 p11)(includes o493 p12)

(waiting o494)
(includes o494 p11)(includes o494 p12)(includes o494 p1)

(waiting o495)
(includes o495 p12)(includes o495 p1)(includes o495 p2)

(waiting o496)
(includes o496 p1)(includes o496 p2)(includes o496 p3)

(waiting o497)
(includes o497 p2)(includes o497 p3)(includes o497 p4)

(waiting o498)
(includes o498 p3)(includes o498 p4)(includes o498 p5)

(waiting o499)
(includes o499 p4)(includes o499 p5)(includes o499 p6)

(waiting o500)
(includes o500 p5)(includes o500 p6)(includes o500 p7)

(waiting o501)
(includes o501 p6)(includes o501 p7)(includes o501 p8)

(waiting o502)
(includes o502 p7)(includes o502 p8)(includes o502 p9)

(waiting o503)
(includes o503 p8)(includes o503 p9)(includes o503 p10)

(waiting o504)
(includes o504 p9)(includes o504 p10)(includes o504 p11)

(waiting o505)
(includes o505 p10)(includes o505 p11)(includes o505 p12)

(waiting o506)
(includes o506 p11)(includes o506 p12)(includes o506 p1)

(waiting o507)
(includes o507 p12)(includes o507 p1)(includes o507 p2)

(waiting o508)
(includes o508 p1)(includes o508 p2)(includes o508 p3)

(waiting o509)
(includes o509 p2)(includes o509 p3)(includes o509 p4)

(waiting o510)
(includes o510 p3)(includes o510 p4)(includes o510 p5)

(waiting o511)
(includes o511 p4)(includes o511 p5)(includes o511 p6)

(waiting o512)
(includes o512 p5)(includes o512 p6)(includes o512 p7)

(waiting o513)
(includes o513 p6)(includes o513 p7)(includes o513 p8)

(waiting o514)
(includes o514 p7)(includes o514 p8)(includes o514 p9)

(waiting o515)
(includes o515 p8)(includes o515 p9)(includes o515 p10)

(waiting o516)
(includes o516 p9)(includes o516 p10)(includes o516 p11)

(waiting o517)
(includes o517 p10)(includes o517 p11)(includes o517 p12)

(waiting o518)
(includes o518 p11)(includes o518 p12)(includes o518 p1)

(waiting o519)
(includes o519 p12)(includes o519 p1)(includes o519 p2)

(waiting o520)
(includes o520 p1)(includes o520 p2)(includes o520 p3)

(waiting o521)
(includes o521 p2)(includes o521 p3)(includes o521 p4)

(waiting o522)
(includes o522 p3)(includes o522 p4)(includes o522 p5)

(waiting o523)
(includes o523 p4)(includes o523 p5)(includes o523 p6)

(waiting o524)
(includes o524 p5)(includes o524 p6)(includes o524 p7)

(waiting o525)
(includes o525 p6)(includes o525 p7)(includes o525 p8)

(waiting o526)
(includes o526 p7)(includes o526 p8)(includes o526 p9)

(waiting o527)
(includes o527 p8)(includes o527 p9)(includes o527 p10)

(waiting o528)
(includes o528 p9)(includes o528 p10)(includes o528 p11)

(waiting o529)
(includes o529 p10)(includes o529 p11)(includes o529 p12)

(waiting o530)
(includes o530 p11)(includes o530 p12)(includes o530 p1)

(waiting o531)
(includes o531 p12)(includes o531 p1)(includes o531 p2)

(waiting o532)
(includes o532 p1)(includes o532 p2)(includes o532 p3)

(waiting o533)
(includes o533 p2)(includes o533 p3)(includes o533 p4)

(waiting o534)
(includes o534 p3)(includes o534 p4)(includes o534 p5)

(waiting o535)
(includes o535 p4)(includes o535 p5)(includes o535 p6)

(waiting o536)
(includes o536 p5)(includes o536 p6)(includes o536 p7)

(waiting o537)
(includes o537 p6)(includes o537 p7)(includes o537 p8)

(waiting o538)
(includes o538 p7)(includes o538 p8)(includes o538 p9)

(waiting o539)
(includes o539 p8)(includes o539 p9)(includes o539 p10)

(waiting o540)
(includes o540 p9)(includes o540 p10)(includes o540 p11)

(waiting o541)
(includes o541 p10)(includes o541 p11)(includes o541 p12)

(waiting o542)
(includes o542 p11)(includes o542 p12)(includes o542 p1)

(waiting o543)
(includes o543 p12)(includes o543 p1)(includes o543 p2)

(waiting o544)
(includes o544 p1)(includes o544 p2)(includes o544 p3)

(waiting o545)
(includes o545 p2)(includes o545 p3)(includes o545 p4)

(waiting o546)
(includes o546 p3)(includes o546 p4)(includes o546 p5)

(waiting o547)
(includes o547 p4)(includes o547 p5)(includes o547 p6)

(waiting o548)
(includes o548 p5)(includes o548 p6)(includes o548 p7)

(waiting o549)
(includes o549 p6)(includes o549 p7)(includes o549 p8)

(waiting o550)
(includes o550 p7)(includes o550 p8)(includes o550 p9)

(waiting o551)
(includes o551 p8)(includes o551 p9)(includes o551 p10)

(waiting o552)
(includes o552 p9)(includes o552 p10)(includes o552 p11)

(waiting o553)
(includes o553 p10)(includes o553 p11)(includes o553 p12)

(waiting o554)
(includes o554 p11)(includes o554 p12)(includes o554 p1)

(waiting o555)
(includes o555 p12)(includes o555 p1)(includes o555 p2)

(waiting o556)
(includes o556 p1)(includes o556 p2)(includes o556 p3)

(waiting o557)
(includes o557 p2)(includes o557 p3)(includes o557 p4)

(waiting o558)
(includes o558 p3)(includes o558 p4)(includes o558 p5)

(waiting o559)
(includes o559 p4)(includes o559 p5)(includes o559 p6)

(waiting o560)
(includes o560 p5)(includes o560 p6)(includes o560 p7)

(waiting o561)
(includes o561 p6)(includes o561 p7)(includes o561 p8)

(waiting o562)
(includes o562 p7)(includes o562 p8)(includes o562 p9)

(waiting o563)
(includes o563 p8)(includes o563 p9)(includes o563 p10)

(waiting o564)
(includes o564 p9)(includes o564 p10)(includes o564 p11)

(waiting o565)
(includes o565 p10)(includes o565 p11)(includes o565 p12)

(waiting o566)
(includes o566 p11)(includes o566 p12)(includes o566 p1)

(waiting o567)
(includes o567 p12)(includes o567 p1)(includes o567 p2)

(waiting o568)
(includes o568 p1)(includes o568 p2)(includes o568 p3)

(waiting o569)
(includes o569 p2)(includes o569 p3)(includes o569 p4)

(waiting o570)
(includes o570 p3)(includes o570 p4)(includes o570 p5)

(waiting o571)
(includes o571 p4)(includes o571 p5)(includes o571 p6)

(waiting o572)
(includes o572 p5)(includes o572 p6)(includes o572 p7)

(waiting o573)
(includes o573 p6)(includes o573 p7)(includes o573 p8)

(waiting o574)
(includes o574 p7)(includes o574 p8)(includes o574 p9)

(waiting o575)
(includes o575 p8)(includes o575 p9)(includes o575 p10)

(waiting o576)
(includes o576 p9)(includes o576 p10)(includes o576 p11)

(waiting o577)
(includes o577 p10)(includes o577 p11)(includes o577 p12)

(waiting o578)
(includes o578 p11)(includes o578 p12)(includes o578 p1)

(waiting o579)
(includes o579 p12)(includes o579 p1)(includes o579 p2)

(waiting o580)
(includes o580 p1)(includes o580 p2)(includes o580 p3)

(waiting o581)
(includes o581 p2)(includes o581 p3)(includes o581 p4)

(waiting o582)
(includes o582 p3)(includes o582 p4)(includes o582 p5)

(waiting o583)
(includes o583 p4)(includes o583 p5)(includes o583 p6)

(waiting o584)
(includes o584 p5)(includes o584 p6)(includes o584 p7)

(waiting o585)
(includes o585 p6)(includes o585 p7)(includes o585 p8)

(waiting o586)
(includes o586 p7)(includes o586 p8)(includes o586 p9)

(waiting o587)
(includes o587 p8)(includes o587 p9)(includes o587 p10)

(waiting o588)
(includes o588 p9)(includes o588 p10)(includes o588 p11)

(waiting o589)
(includes o589 p10)(includes o589 p11)(includes o589 p12)

(waiting o590)
(includes o590 p11)(includes o590 p12)(includes o590 p1)

(waiting o591)
(includes o591 p12)(includes o591 p1)(includes o591 p2)

(waiting o592)
(includes o592 p1)(includes o592 p2)(includes o592 p3)

(waiting o593)
(includes o593 p2)(includes o593 p3)(includes o593 p4)

(waiting o594)
(includes o594 p3)(includes o594 p4)(includes o594 p5)

(waiting o595)
(includes o595 p4)(includes o595 p5)(includes o595 p6)

(waiting o596)
(includes o596 p5)(includes o596 p6)(includes o596 p7)

(waiting o597)
(includes o597 p6)(includes o597 p7)(includes o597 p8)

(waiting o598)
(includes o598 p7)(includes o598 p8)(includes o598 p9)

(waiting o599)
(includes o599 p8)(includes o599 p9)(includes o599 p10)

(waiting o600)
(includes o600 p9)(includes o600 p10)(includes o600 p11)

(waiting o601)
(includes o601 p10)(includes o601 p11)(includes o601 p12)

(waiting o602)
(includes o602 p11)(includes o602 p12)(includes o602 p1)

(waiting o603)
(includes o603 p12)(includes o603 p1)(includes o603 p2)

(waiting o604)
(includes o604 p1)(includes o604 p2)(includes o604 p3)

(waiting o605)
(includes o605 p2)(includes o605 p3)(includes o605 p4)

(waiting o606)
(includes o606 p3)(includes o606 p4)(includes o606 p5)

(waiting o607)
(includes o607 p4)(includes o607 p5)(includes o607 p6)

(waiting o608)
(includes o608 p5)(includes o608 p6)(includes o608 p7)

(waiting o609)
(includes o609 p6)(includes o609 p7)(includes o609 p8)

(waiting o610)
(includes o610 p7)(includes o610 p8)(includes o610 p9)

(waiting o611)
(includes o611 p8)(includes o611 p9)(includes o611 p10)

(waiting o612)
(includes o612 p9)(includes o612 p10)(includes o612 p11)

(waiting o613)
(includes o613 p10)(includes o613 p11)(includes o613 p12)

(waiting o614)
(includes o614 p11)(includes o614 p12)(includes o614 p1)

(waiting o615)
(includes o615 p12)(includes o615 p1)(includes o615 p2)

(waiting o616)
(includes o616 p1)(includes o616 p2)(includes o616 p3)

(waiting o617)
(includes o617 p2)(includes o617 p3)(includes o617 p4)

(waiting o618)
(includes o618 p3)(includes o618 p4)(includes o618 p5)

(waiting o619)
(includes o619 p4)(includes o619 p5)(includes o619 p6)

(waiting o620)
(includes o620 p5)(includes o620 p6)(includes o620 p7)

(waiting o621)
(includes o621 p6)(includes o621 p7)(includes o621 p8)

(waiting o622)
(includes o622 p7)(includes o622 p8)(includes o622 p9)

(waiting o623)
(includes o623 p8)(includes o623 p9)(includes o623 p10)

(waiting o624)
(includes o624 p9)(includes o624 p10)(includes o624 p11)

(waiting o625)
(includes o625 p10)(includes o625 p11)(includes o625 p12)

(waiting o626)
(includes o626 p11)(includes o626 p12)(includes o626 p1)

(waiting o627)
(includes o627 p12)(includes o627 p1)(includes o627 p2)

(waiting o628)
(includes o628 p1)(includes o628 p2)(includes o628 p3)

(waiting o629)
(includes o629 p2)(includes o629 p3)(includes o629 p4)

(waiting o630)
(includes o630 p3)(includes o630 p4)(includes o630 p5)

(waiting o631)
(includes o631 p4)(includes o631 p5)(includes o631 p6)

(waiting o632)
(includes o632 p5)(includes o632 p6)(includes o632 p7)

(waiting o633)
(includes o633 p6)(includes o633 p7)(includes o633 p8)

(waiting o634)
(includes o634 p7)(includes o634 p8)(includes o634 p9)

(waiting o635)
(includes o635 p8)(includes o635 p9)(includes o635 p10)

(waiting o636)
(includes o636 p9)(includes o636 p10)(includes o636 p11)

(waiting o637)
(includes o637 p10)(includes o637 p11)(includes o637 p12)

(waiting o638)
(includes o638 p11)(includes o638 p12)(includes o638 p1)

(waiting o639)
(includes o639 p12)(includes o639 p1)(includes o639 p2)

(waiting o640)
(includes o640 p1)(includes o640 p2)(includes o640 p3)

(waiting o641)
(includes o641 p2)(includes o641 p3)(includes o641 p4)

(waiting o642)
(includes o642 p3)(includes o642 p4)(includes o642 p5)

(waiting o643)
(includes o643 p4)(includes o643 p5)(includes o643 p6)

(waiting o644)
(includes o644 p5)(includes o644 p6)(includes o644 p7)

(waiting o645)
(includes o645 p6)(includes o645 p7)(includes o645 p8)

(waiting o646)
(includes o646 p7)(includes o646 p8)(includes o646 p9)

(waiting o647)
(includes o647 p8)(includes o647 p9)(includes o647 p10)

(waiting o648)
(includes o648 p9)(includes o648 p10)(includes o648 p11)

(waiting o649)
(includes o649 p10)(includes o649 p11)(includes o649 p12)

(waiting o650)
(includes o650 p11)(includes o650 p12)(includes o650 p1)

(waiting o651)
(includes o651 p12)(includes o651 p1)(includes o651 p2)

(waiting o652)
(includes o652 p1)(includes o652 p2)(includes o652 p3)

(waiting o653)
(includes o653 p2)(includes o653 p3)(includes o653 p4)

(waiting o654)
(includes o654 p3)(includes o654 p4)(includes o654 p5)

(waiting o655)
(includes o655 p4)(includes o655 p5)(includes o655 p6)

(waiting o656)
(includes o656 p5)(includes o656 p6)(includes o656 p7)

(waiting o657)
(includes o657 p6)(includes o657 p7)(includes o657 p8)

(waiting o658)
(includes o658 p7)(includes o658 p8)(includes o658 p9)

(waiting o659)
(includes o659 p8)(includes o659 p9)(includes o659 p10)

(waiting o660)
(includes o660 p9)(includes o660 p10)(includes o660 p11)

(waiting o661)
(includes o661 p10)(includes o661 p11)(includes o661 p12)

(waiting o662)
(includes o662 p11)(includes o662 p12)(includes o662 p1)

(waiting o663)
(includes o663 p12)(includes o663 p1)(includes o663 p2)

(waiting o664)
(includes o664 p1)(includes o664 p2)(includes o664 p3)

(waiting o665)
(includes o665 p2)(includes o665 p3)(includes o665 p4)

(waiting o666)
(includes o666 p3)(includes o666 p4)(includes o666 p5)

(waiting o667)
(includes o667 p4)(includes o667 p5)(includes o667 p6)

(waiting o668)
(includes o668 p5)(includes o668 p6)(includes o668 p7)

(waiting o669)
(includes o669 p6)(includes o669 p7)(includes o669 p8)

(waiting o670)
(includes o670 p7)(includes o670 p8)(includes o670 p9)

(waiting o671)
(includes o671 p8)(includes o671 p9)(includes o671 p10)

(waiting o672)
(includes o672 p9)(includes o672 p10)(includes o672 p11)

(waiting o673)
(includes o673 p10)(includes o673 p11)(includes o673 p12)

(waiting o674)
(includes o674 p11)(includes o674 p12)(includes o674 p1)

(waiting o675)
(includes o675 p12)(includes o675 p1)(includes o675 p2)

(waiting o676)
(includes o676 p1)(includes o676 p2)(includes o676 p3)

(waiting o677)
(includes o677 p2)(includes o677 p3)(includes o677 p4)

(waiting o678)
(includes o678 p3)(includes o678 p4)(includes o678 p5)

(waiting o679)
(includes o679 p4)(includes o679 p5)(includes o679 p6)

(waiting o680)
(includes o680 p5)(includes o680 p6)(includes o680 p7)

(waiting o681)
(includes o681 p6)(includes o681 p7)(includes o681 p8)

(waiting o682)
(includes o682 p7)(includes o682 p8)(includes o682 p9)

(waiting o683)
(includes o683 p8)(includes o683 p9)(includes o683 p10)

(waiting o684)
(includes o684 p9)(includes o684 p10)(includes o684 p11)

(waiting o685)
(includes o685 p10)(includes o685 p11)(includes o685 p12)

(waiting o686)
(includes o686 p11)(includes o686 p12)(includes o686 p1)

(waiting o687)
(includes o687 p12)(includes o687 p1)(includes o687 p2)

(waiting o688)
(includes o688 p1)(includes o688 p2)(includes o688 p3)

(waiting o689)
(includes o689 p2)(includes o689 p3)(includes o689 p4)

(waiting o690)
(includes o690 p3)(includes o690 p4)(includes o690 p5)

(waiting o691)
(includes o691 p4)(includes o691 p5)(includes o691 p6)

(waiting o692)
(includes o692 p5)(includes o692 p6)(includes o692 p7)

(waiting o693)
(includes o693 p6)(includes o693 p7)(includes o693 p8)

(waiting o694)
(includes o694 p7)(includes o694 p8)(includes o694 p9)

(waiting o695)
(includes o695 p8)(includes o695 p9)(includes o695 p10)

(waiting o696)
(includes o696 p9)(includes o696 p10)(includes o696 p11)

(waiting o697)
(includes o697 p10)(includes o697 p11)(includes o697 p12)

(waiting o698)
(includes o698 p11)(includes o698 p12)(includes o698 p1)

(waiting o699)
(includes o699 p12)(includes o699 p1)(includes o699 p2)

(waiting o700)
(includes o700 p1)(includes o700 p2)(includes o700 p3)

(waiting o701)
(includes o701 p2)(includes o701 p3)(includes o701 p4)

(waiting o702)
(includes o702 p3)(includes o702 p4)(includes o702 p5)

(waiting o703)
(includes o703 p4)(includes o703 p5)(includes o703 p6)

(waiting o704)
(includes o704 p5)(includes o704 p6)(includes o704 p7)

(waiting o705)
(includes o705 p6)(includes o705 p7)(includes o705 p8)

(waiting o706)
(includes o706 p7)(includes o706 p8)(includes o706 p9)

(waiting o707)
(includes o707 p8)(includes o707 p9)(includes o707 p10)

(waiting o708)
(includes o708 p9)(includes o708 p10)(includes o708 p11)

(waiting o709)
(includes o709 p10)(includes o709 p11)(includes o709 p12)

(waiting o710)
(includes o710 p11)(includes o710 p12)(includes o710 p1)

(waiting o711)
(includes o711 p12)(includes o711 p1)(includes o711 p2)

(waiting o712)
(includes o712 p1)(includes o712 p2)(includes o712 p3)

(waiting o713)
(includes o713 p2)(includes o713 p3)(includes o713 p4)

(waiting o714)
(includes o714 p3)(includes o714 p4)(includes o714 p5)

(waiting o715)
(includes o715 p4)(includes o715 p5)(includes o715 p6)

(waiting o716)
(includes o716 p5)(includes o716 p6)(includes o716 p7)

(waiting o717)
(includes o717 p6)(includes o717 p7)(includes o717 p8)

(waiting o718)
(includes o718 p7)(includes o718 p8)(includes o718 p9)

(waiting o719)
(includes o719 p8)(includes o719 p9)(includes o719 p10)

(waiting o720)
(includes o720 p9)(includes o720 p10)(includes o720 p11)

(waiting o721)
(includes o721 p10)(includes o721 p11)(includes o721 p12)

(waiting o722)
(includes o722 p11)(includes o722 p12)(includes o722 p1)

(waiting o723)
(includes o723 p12)(includes o723 p1)(includes o723 p2)

(waiting o724)
(includes o724 p1)(includes o724 p2)(includes o724 p3)

(waiting o725)
(includes o725 p2)(includes o725 p3)(includes o725 p4)

(waiting o726)
(includes o726 p3)(includes o726 p4)(includes o726 p5)

(waiting o727)
(includes o727 p4)(includes o727 p5)(includes o727 p6)

(waiting o728)
(includes o728 p5)(includes o728 p6)(includes o728 p7)

(waiting o729)
(includes o729 p6)(includes o729 p7)(includes o729 p8)

(waiting o730)
(includes o730 p7)(includes o730 p8)(includes o730 p9)

(waiting o731)
(includes o731 p8)(includes o731 p9)(includes o731 p10)

(waiting o732)
(includes o732 p9)(includes o732 p10)(includes o732 p11)

(waiting o733)
(includes o733 p10)(includes o733 p11)(includes o733 p12)

(waiting o734)
(includes o734 p11)(includes o734 p12)(includes o734 p1)

(waiting o735)
(includes o735 p12)(includes o735 p1)(includes o735 p2)

(waiting o736)
(includes o736 p1)(includes o736 p2)(includes o736 p3)

(waiting o737)
(includes o737 p2)(includes o737 p3)(includes o737 p4)

(waiting o738)
(includes o738 p3)(includes o738 p4)(includes o738 p5)

(waiting o739)
(includes o739 p4)(includes o739 p5)(includes o739 p6)

(waiting o740)
(includes o740 p5)(includes o740 p6)(includes o740 p7)

(waiting o741)
(includes o741 p6)(includes o741 p7)(includes o741 p8)

(waiting o742)
(includes o742 p7)(includes o742 p8)(includes o742 p9)

(waiting o743)
(includes o743 p8)(includes o743 p9)(includes o743 p10)

(waiting o744)
(includes o744 p9)(includes o744 p10)(includes o744 p11)

(waiting o745)
(includes o745 p10)(includes o745 p11)(includes o745 p12)

(waiting o746)
(includes o746 p11)(includes o746 p12)(includes o746 p1)

(waiting o747)
(includes o747 p12)(includes o747 p1)(includes o747 p2)

(waiting o748)
(includes o748 p1)(includes o748 p2)(includes o748 p3)

(waiting o749)
(includes o749 p2)(includes o749 p3)(includes o749 p4)

(waiting o750)
(includes o750 p3)(includes o750 p4)(includes o750 p5)

(waiting o751)
(includes o751 p4)(includes o751 p5)(includes o751 p6)

(waiting o752)
(includes o752 p5)(includes o752 p6)(includes o752 p7)

(waiting o753)
(includes o753 p6)(includes o753 p7)(includes o753 p8)

(waiting o754)
(includes o754 p7)(includes o754 p8)(includes o754 p9)

(waiting o755)
(includes o755 p8)(includes o755 p9)(includes o755 p10)

(waiting o756)
(includes o756 p9)(includes o756 p10)(includes o756 p11)

(waiting o757)
(includes o757 p10)(includes o757 p11)(includes o757 p12)

(waiting o758)
(includes o758 p11)(includes o758 p12)(includes o758 p1)

(waiting o759)
(includes o759 p12)(includes o759 p1)(includes o759 p2)

(waiting o760)
(includes o760 p1)(includes o760 p2)(includes o760 p3)

(waiting o761)
(includes o761 p2)(includes o761 p3)(includes o761 p4)

(waiting o762)
(includes o762 p3)(includes o762 p4)(includes o762 p5)

(waiting o763)
(includes o763 p4)(includes o763 p5)(includes o763 p6)

(waiting o764)
(includes o764 p5)(includes o764 p6)(includes o764 p7)

(waiting o765)
(includes o765 p6)(includes o765 p7)(includes o765 p8)

(waiting o766)
(includes o766 p7)(includes o766 p8)(includes o766 p9)

(waiting o767)
(includes o767 p8)(includes o767 p9)(includes o767 p10)

(waiting o768)
(includes o768 p9)(includes o768 p10)(includes o768 p11)

(waiting o769)
(includes o769 p10)(includes o769 p11)(includes o769 p12)

(waiting o770)
(includes o770 p11)(includes o770 p12)(includes o770 p1)

(waiting o771)
(includes o771 p12)(includes o771 p1)(includes o771 p2)

(waiting o772)
(includes o772 p1)(includes o772 p2)(includes o772 p3)

(waiting o773)
(includes o773 p2)(includes o773 p3)(includes o773 p4)

(waiting o774)
(includes o774 p3)(includes o774 p4)(includes o774 p5)

(waiting o775)
(includes o775 p4)(includes o775 p5)(includes o775 p6)

(waiting o776)
(includes o776 p5)(includes o776 p6)(includes o776 p7)

(waiting o777)
(includes o777 p6)(includes o777 p7)(includes o777 p8)

(waiting o778)
(includes o778 p7)(includes o778 p8)(includes o778 p9)

(waiting o779)
(includes o779 p8)(includes o779 p9)(includes o779 p10)

(waiting o780)
(includes o780 p9)(includes o780 p10)(includes o780 p11)

(waiting o781)
(includes o781 p10)(includes o781 p11)(includes o781 p12)

(waiting o782)
(includes o782 p11)(includes o782 p12)(includes o782 p1)

(waiting o783)
(includes o783 p12)(includes o783 p1)(includes o783 p2)

(waiting o784)
(includes o784 p1)(includes o784 p2)(includes o784 p3)

(waiting o785)
(includes o785 p2)(includes o785 p3)(includes o785 p4)

(waiting o786)
(includes o786 p3)(includes o786 p4)(includes o786 p5)

(waiting o787)
(includes o787 p4)(includes o787 p5)(includes o787 p6)

(waiting o788)
(includes o788 p5)(includes o788 p6)(includes o788 p7)

(waiting o789)
(includes o789 p6)(includes o789 p7)(includes o789 p8)

(waiting o790)
(includes o790 p7)(includes o790 p8)(includes o790 p9)

(waiting o791)
(includes o791 p8)(includes o791 p9)(includes o791 p10)

(waiting o792)
(includes o792 p9)(includes o792 p10)(includes o792 p11)

(waiting o793)
(includes o793 p10)(includes o793 p11)(includes o793 p12)

(waiting o794)
(includes o794 p11)(includes o794 p12)(includes o794 p1)

(waiting o795)
(includes o795 p12)(includes o795 p1)(includes o795 p2)

(waiting o796)
(includes o796 p1)(includes o796 p2)(includes o796 p3)

(waiting o797)
(includes o797 p2)(includes o797 p3)(includes o797 p4)

(waiting o798)
(includes o798 p3)(includes o798 p4)(includes o798 p5)

(waiting o799)
(includes o799 p4)(includes o799 p5)(includes o799 p6)

(waiting o800)
(includes o800 p5)(includes o800 p6)(includes o800 p7)

(waiting o801)
(includes o801 p6)(includes o801 p7)(includes o801 p8)

(waiting o802)
(includes o802 p7)(includes o802 p8)(includes o802 p9)

(waiting o803)
(includes o803 p8)(includes o803 p9)(includes o803 p10)

(waiting o804)
(includes o804 p9)(includes o804 p10)(includes o804 p11)

(waiting o805)
(includes o805 p10)(includes o805 p11)(includes o805 p12)

(waiting o806)
(includes o806 p11)(includes o806 p12)(includes o806 p1)

(waiting o807)
(includes o807 p12)(includes o807 p1)(includes o807 p2)

(waiting o808)
(includes o808 p1)(includes o808 p2)(includes o808 p3)

(waiting o809)
(includes o809 p2)(includes o809 p3)(includes o809 p4)

(waiting o810)
(includes o810 p3)(includes o810 p4)(includes o810 p5)

(waiting o811)
(includes o811 p4)(includes o811 p5)(includes o811 p6)

(waiting o812)
(includes o812 p5)(includes o812 p6)(includes o812 p7)

(waiting o813)
(includes o813 p6)(includes o813 p7)(includes o813 p8)

(waiting o814)
(includes o814 p7)(includes o814 p8)(includes o814 p9)

(waiting o815)
(includes o815 p8)(includes o815 p9)(includes o815 p10)

(waiting o816)
(includes o816 p9)(includes o816 p10)(includes o816 p11)

(waiting o817)
(includes o817 p10)(includes o817 p11)(includes o817 p12)

(waiting o818)
(includes o818 p11)(includes o818 p12)(includes o818 p1)

(waiting o819)
(includes o819 p12)(includes o819 p1)(includes o819 p2)

(waiting o820)
(includes o820 p1)(includes o820 p2)(includes o820 p3)

(waiting o821)
(includes o821 p2)(includes o821 p3)(includes o821 p4)

(waiting o822)
(includes o822 p3)(includes o822 p4)(includes o822 p5)

(waiting o823)
(includes o823 p4)(includes o823 p5)(includes o823 p6)

(waiting o824)
(includes o824 p5)(includes o824 p6)(includes o824 p7)

(waiting o825)
(includes o825 p6)(includes o825 p7)(includes o825 p8)

(waiting o826)
(includes o826 p7)(includes o826 p8)(includes o826 p9)

(waiting o827)
(includes o827 p8)(includes o827 p9)(includes o827 p10)

(waiting o828)
(includes o828 p9)(includes o828 p10)(includes o828 p11)

(waiting o829)
(includes o829 p10)(includes o829 p11)(includes o829 p12)

(waiting o830)
(includes o830 p11)(includes o830 p12)(includes o830 p1)

(waiting o831)
(includes o831 p12)(includes o831 p1)(includes o831 p2)

(waiting o832)
(includes o832 p1)(includes o832 p2)(includes o832 p3)

(waiting o833)
(includes o833 p2)(includes o833 p3)(includes o833 p4)

(waiting o834)
(includes o834 p3)(includes o834 p4)(includes o834 p5)

(waiting o835)
(includes o835 p4)(includes o835 p5)(includes o835 p6)

(waiting o836)
(includes o836 p5)(includes o836 p6)(includes o836 p7)

(waiting o837)
(includes o837 p6)(includes o837 p7)(includes o837 p8)

(waiting o838)
(includes o838 p7)(includes o838 p8)(includes o838 p9)

(waiting o839)
(includes o839 p8)(includes o839 p9)(includes o839 p10)

(waiting o840)
(includes o840 p9)(includes o840 p10)(includes o840 p11)

(waiting o841)
(includes o841 p10)(includes o841 p11)(includes o841 p12)

(waiting o842)
(includes o842 p11)(includes o842 p12)(includes o842 p1)

(waiting o843)
(includes o843 p12)(includes o843 p1)(includes o843 p2)

(waiting o844)
(includes o844 p1)(includes o844 p2)(includes o844 p3)

(waiting o845)
(includes o845 p2)(includes o845 p3)(includes o845 p4)

(waiting o846)
(includes o846 p3)(includes o846 p4)(includes o846 p5)

(waiting o847)
(includes o847 p4)(includes o847 p5)(includes o847 p6)

(waiting o848)
(includes o848 p5)(includes o848 p6)(includes o848 p7)

(waiting o849)
(includes o849 p6)(includes o849 p7)(includes o849 p8)

(waiting o850)
(includes o850 p7)(includes o850 p8)(includes o850 p9)

(waiting o851)
(includes o851 p8)(includes o851 p9)(includes o851 p10)

(waiting o852)
(includes o852 p9)(includes o852 p10)(includes o852 p11)

(waiting o853)
(includes o853 p10)(includes o853 p11)(includes o853 p12)

(waiting o854)
(includes o854 p11)(includes o854 p12)(includes o854 p1)

(waiting o855)
(includes o855 p12)(includes o855 p1)(includes o855 p2)

(waiting o856)
(includes o856 p1)(includes o856 p2)(includes o856 p3)

(waiting o857)
(includes o857 p2)(includes o857 p3)(includes o857 p4)

(waiting o858)
(includes o858 p3)(includes o858 p4)(includes o858 p5)

(waiting o859)
(includes o859 p4)(includes o859 p5)(includes o859 p6)

(waiting o860)
(includes o860 p5)(includes o860 p6)(includes o860 p7)

(waiting o861)
(includes o861 p6)(includes o861 p7)(includes o861 p8)

(waiting o862)
(includes o862 p7)(includes o862 p8)(includes o862 p9)

(waiting o863)
(includes o863 p8)(includes o863 p9)(includes o863 p10)

(waiting o864)
(includes o864 p9)(includes o864 p10)(includes o864 p11)

(waiting o865)
(includes o865 p10)(includes o865 p11)(includes o865 p12)

(waiting o866)
(includes o866 p11)(includes o866 p12)(includes o866 p1)

(waiting o867)
(includes o867 p12)(includes o867 p1)(includes o867 p2)

(waiting o868)
(includes o868 p1)(includes o868 p2)(includes o868 p3)

(waiting o869)
(includes o869 p2)(includes o869 p3)(includes o869 p4)

(waiting o870)
(includes o870 p3)(includes o870 p4)(includes o870 p5)

(waiting o871)
(includes o871 p4)(includes o871 p5)(includes o871 p6)

(waiting o872)
(includes o872 p5)(includes o872 p6)(includes o872 p7)

(waiting o873)
(includes o873 p6)(includes o873 p7)(includes o873 p8)

(waiting o874)
(includes o874 p7)(includes o874 p8)(includes o874 p9)

(waiting o875)
(includes o875 p8)(includes o875 p9)(includes o875 p10)

(waiting o876)
(includes o876 p9)(includes o876 p10)(includes o876 p11)

(waiting o877)
(includes o877 p10)(includes o877 p11)(includes o877 p12)

(waiting o878)
(includes o878 p11)(includes o878 p12)(includes o878 p1)

(waiting o879)
(includes o879 p12)(includes o879 p1)(includes o879 p2)

(waiting o880)
(includes o880 p1)(includes o880 p2)(includes o880 p3)

(waiting o881)
(includes o881 p2)(includes o881 p3)(includes o881 p4)

(waiting o882)
(includes o882 p3)(includes o882 p4)(includes o882 p5)

(waiting o883)
(includes o883 p4)(includes o883 p5)(includes o883 p6)

(waiting o884)
(includes o884 p5)(includes o884 p6)(includes o884 p7)

(waiting o885)
(includes o885 p6)(includes o885 p7)(includes o885 p8)

(waiting o886)
(includes o886 p7)(includes o886 p8)(includes o886 p9)

(waiting o887)
(includes o887 p8)(includes o887 p9)(includes o887 p10)

(waiting o888)
(includes o888 p9)(includes o888 p10)(includes o888 p11)

(waiting o889)
(includes o889 p10)(includes o889 p11)(includes o889 p12)

(waiting o890)
(includes o890 p11)(includes o890 p12)(includes o890 p1)

(waiting o891)
(includes o891 p12)(includes o891 p1)(includes o891 p2)

(waiting o892)
(includes o892 p1)(includes o892 p2)(includes o892 p3)

(waiting o893)
(includes o893 p2)(includes o893 p3)(includes o893 p4)

(waiting o894)
(includes o894 p3)(includes o894 p4)(includes o894 p5)

(waiting o895)
(includes o895 p4)(includes o895 p5)(includes o895 p6)

(waiting o896)
(includes o896 p5)(includes o896 p6)(includes o896 p7)

(waiting o897)
(includes o897 p6)(includes o897 p7)(includes o897 p8)

(waiting o898)
(includes o898 p7)(includes o898 p8)(includes o898 p9)

(waiting o899)
(includes o899 p8)(includes o899 p9)(includes o899 p10)

(waiting o900)
(includes o900 p9)(includes o900 p10)(includes o900 p11)

(waiting o901)
(includes o901 p10)(includes o901 p11)(includes o901 p12)

(waiting o902)
(includes o902 p11)(includes o902 p12)(includes o902 p1)

(waiting o903)
(includes o903 p12)(includes o903 p1)(includes o903 p2)

(waiting o904)
(includes o904 p1)(includes o904 p2)(includes o904 p3)

(waiting o905)
(includes o905 p2)(includes o905 p3)(includes o905 p4)

(waiting o906)
(includes o906 p3)(includes o906 p4)(includes o906 p5)

(waiting o907)
(includes o907 p4)(includes o907 p5)(includes o907 p6)

(waiting o908)
(includes o908 p5)(includes o908 p6)(includes o908 p7)

(waiting o909)
(includes o909 p6)(includes o909 p7)(includes o909 p8)

(waiting o910)
(includes o910 p7)(includes o910 p8)(includes o910 p9)

(waiting o911)
(includes o911 p8)(includes o911 p9)(includes o911 p10)

(waiting o912)
(includes o912 p9)(includes o912 p10)(includes o912 p11)

(waiting o913)
(includes o913 p10)(includes o913 p11)(includes o913 p12)

(waiting o914)
(includes o914 p11)(includes o914 p12)(includes o914 p1)

(waiting o915)
(includes o915 p12)(includes o915 p1)(includes o915 p2)

(waiting o916)
(includes o916 p1)(includes o916 p2)(includes o916 p3)

(waiting o917)
(includes o917 p2)(includes o917 p3)(includes o917 p4)

(waiting o918)
(includes o918 p3)(includes o918 p4)(includes o918 p5)

(waiting o919)
(includes o919 p4)(includes o919 p5)(includes o919 p6)

(waiting o920)
(includes o920 p5)(includes o920 p6)(includes o920 p7)

(waiting o921)
(includes o921 p6)(includes o921 p7)(includes o921 p8)

(waiting o922)
(includes o922 p7)(includes o922 p8)(includes o922 p9)

(waiting o923)
(includes o923 p8)(includes o923 p9)(includes o923 p10)

(waiting o924)
(includes o924 p9)(includes o924 p10)(includes o924 p11)

(waiting o925)
(includes o925 p10)(includes o925 p11)(includes o925 p12)

(waiting o926)
(includes o926 p11)(includes o926 p12)(includes o926 p1)

(waiting o927)
(includes o927 p12)(includes o927 p1)(includes o927 p2)

(waiting o928)
(includes o928 p1)(includes o928 p2)(includes o928 p3)

(waiting o929)
(includes o929 p2)(includes o929 p3)(includes o929 p4)

(waiting o930)
(includes o930 p3)(includes o930 p4)(includes o930 p5)

(waiting o931)
(includes o931 p4)(includes o931 p5)(includes o931 p6)

(waiting o932)
(includes o932 p5)(includes o932 p6)(includes o932 p7)

(waiting o933)
(includes o933 p6)(includes o933 p7)(includes o933 p8)

(waiting o934)
(includes o934 p7)(includes o934 p8)(includes o934 p9)

(waiting o935)
(includes o935 p8)(includes o935 p9)(includes o935 p10)

(waiting o936)
(includes o936 p9)(includes o936 p10)(includes o936 p11)

(waiting o937)
(includes o937 p10)(includes o937 p11)(includes o937 p12)

(waiting o938)
(includes o938 p11)(includes o938 p12)(includes o938 p1)

(waiting o939)
(includes o939 p12)(includes o939 p1)(includes o939 p2)

(waiting o940)
(includes o940 p1)(includes o940 p2)(includes o940 p3)

(waiting o941)
(includes o941 p2)(includes o941 p3)(includes o941 p4)

(waiting o942)
(includes o942 p3)(includes o942 p4)(includes o942 p5)

(waiting o943)
(includes o943 p4)(includes o943 p5)(includes o943 p6)

(waiting o944)
(includes o944 p5)(includes o944 p6)(includes o944 p7)

(waiting o945)
(includes o945 p6)(includes o945 p7)(includes o945 p8)

(waiting o946)
(includes o946 p7)(includes o946 p8)(includes o946 p9)

(waiting o947)
(includes o947 p8)(includes o947 p9)(includes o947 p10)

(waiting o948)
(includes o948 p9)(includes o948 p10)(includes o948 p11)

(waiting o949)
(includes o949 p10)(includes o949 p11)(includes o949 p12)

(waiting o950)
(includes o950 p11)(includes o950 p12)(includes o950 p1)

(waiting o951)
(includes o951 p12)(includes o951 p1)(includes o951 p2)

(waiting o952)
(includes o952 p1)(includes o952 p2)(includes o952 p3)

(waiting o953)
(includes o953 p2)(includes o953 p3)(includes o953 p4)

(waiting o954)
(includes o954 p3)(includes o954 p4)(includes o954 p5)

(waiting o955)
(includes o955 p4)(includes o955 p5)(includes o955 p6)

(waiting o956)
(includes o956 p5)(includes o956 p6)(includes o956 p7)

(waiting o957)
(includes o957 p6)(includes o957 p7)(includes o957 p8)

(waiting o958)
(includes o958 p7)(includes o958 p8)(includes o958 p9)

(waiting o959)
(includes o959 p8)(includes o959 p9)(includes o959 p10)

(waiting o960)
(includes o960 p9)(includes o960 p10)(includes o960 p11)

(waiting o961)
(includes o961 p10)(includes o961 p11)(includes o961 p12)

(waiting o962)
(includes o962 p11)(includes o962 p12)(includes o962 p1)

(waiting o963)
(includes o963 p12)(includes o963 p1)(includes o963 p2)

(waiting o964)
(includes o964 p1)(includes o964 p2)(includes o964 p3)

(waiting o965)
(includes o965 p2)(includes o965 p3)(includes o965 p4)

(waiting o966)
(includes o966 p3)(includes o966 p4)(includes o966 p5)

(waiting o967)
(includes o967 p4)(includes o967 p5)(includes o967 p6)

(waiting o968)
(includes o968 p5)(includes o968 p6)(includes o968 p7)

(waiting o969)
(includes o969 p6)(includes o969 p7)(includes o969 p8)

(waiting o970)
(includes o970 p7)(includes o970 p8)(includes o970 p9)

(waiting o971)
(includes o971 p8)(includes o971 p9)(includes o971 p10)

(waiting o972)
(includes o972 p9)(includes o972 p10)(includes o972 p11)

(waiting o973)
(includes o973 p10)(includes o973 p11)(includes o973 p12)

(waiting o974)
(includes o974 p11)(includes o974 p12)(includes o974 p1)

(waiting o975)
(includes o975 p12)(includes o975 p1)(includes o975 p2)

(waiting o976)
(includes o976 p1)(includes o976 p2)(includes o976 p3)

(waiting o977)
(includes o977 p2)(includes o977 p3)(includes o977 p4)

(waiting o978)
(includes o978 p3)(includes o978 p4)(includes o978 p5)

(waiting o979)
(includes o979 p4)(includes o979 p5)(includes o979 p6)

(waiting o980)
(includes o980 p5)(includes o980 p6)(includes o980 p7)

(waiting o981)
(includes o981 p6)(includes o981 p7)(includes o981 p8)

(waiting o982)
(includes o982 p7)(includes o982 p8)(includes o982 p9)

(waiting o983)
(includes o983 p8)(includes o983 p9)(includes o983 p10)

(waiting o984)
(includes o984 p9)(includes o984 p10)(includes o984 p11)

(waiting o985)
(includes o985 p10)(includes o985 p11)(includes o985 p12)

(waiting o986)
(includes o986 p11)(includes o986 p12)(includes o986 p1)

(waiting o987)
(includes o987 p12)(includes o987 p1)(includes o987 p2)

(waiting o988)
(includes o988 p1)(includes o988 p2)(includes o988 p3)

(waiting o989)
(includes o989 p2)(includes o989 p3)(includes o989 p4)

(waiting o990)
(includes o990 p3)(includes o990 p4)(includes o990 p5)

(waiting o991)
(includes o991 p4)(includes o991 p5)(includes o991 p6)

(waiting o992)
(includes o992 p5)(includes o992 p6)(includes o992 p7)

(waiting o993)
(includes o993 p6)(includes o993 p7)(includes o993 p8)

(waiting o994)
(includes o994 p7)(includes o994 p8)(includes o994 p9)

(waiting o995)
(includes o995 p8)(includes o995 p9)(includes o995 p10)

(waiting o996)
(includes o996 p9)(includes o996 p10)(includes o996 p11)

(waiting o997)
(includes o997 p10)(includes o997 p11)(includes o997 p12)

(waiting o998)
(includes o998 p11)(includes o998 p12)(includes o998 p1)

(waiting o999)
(includes o999 p12)(includes o999 p1)(includes o999 p2)

(waiting o1000)
(includes o1000 p1)(includes o1000 p2)(includes o1000 p3)

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