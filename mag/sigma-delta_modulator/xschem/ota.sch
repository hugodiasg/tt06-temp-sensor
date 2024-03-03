v {xschem version=3.0.0 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 90 -1820 90 -1790 { lab=ib}
N 90 -1920 90 -1860 { lab=vd}
N 90 -1920 400 -1920 { lab=vd}
N 400 -1920 400 -1860 { lab=vd}
N 400 -1920 640 -1920 { lab=vd}
N 640 -1920 640 -1860 { lab=vd}
N 150 -1860 360 -1860 { lab=ib}
N 360 -1860 360 -1810 { lab=ib}
N 600 -1860 600 -1810 { lab=ib}
N 390 -1450 390 -1420 { lab=vs}
N 400 -1980 400 -1920 { lab=vd}
N 480 -1540 480 -1450 { lab=vs}
N 310 -1540 310 -1450 { lab=vs}
N 640 -1620 640 -1450 { lab=vs}
N 90 -1820 150 -1820 { lab=ib}
N 150 -1860 150 -1820 { lab=ib}
N 640 -1720 770 -1720 { lab=e}
N 360 -1810 600 -1810 { lab=ib}
N 400 -1830 400 -1760 { lab=b}
N 320 -1760 400 -1760 { lab=b}
N 310 -1760 310 -1740 { lab=b}
N 470 -1760 480 -1760 { lab=b}
N 310 -1680 310 -1615 { lab=c}
N 310 -1615 310 -1570 { lab=c}
N 350 -1540 395 -1540 { lab=c}
N 395 -1540 440 -1540 { lab=c}
N 480 -1680 480 -1620 { lab=d}
N 480 -1620 480 -1570 { lab=d}
N 530 -1620 600 -1620 { lab=d}
N 530 -1680 530 -1620 { lab=d}
N 590 -1680 640 -1680 { lab=e}
N 640 -1680 640 -1650 { lab=e}
N 640 -1720 640 -1680 { lab=e}
N 640 -1830 640 -1720 { lab=e}
N 480 -1760 480 -1740 {lab=b}
N 310 -1710 320 -1710 { lab=b}
N 320 -1760 320 -1710 { lab=b}
N 470 -1710 480 -1710 { lab=b}
N 470 -1760 470 -1710 { lab=b}
N 520 -1710 535 -1710 { lab=in2}
N 245 -1710 270 -1710 { lab=in1}
N 395 -1615 395 -1540 { lab=c}
N 310 -1615 395 -1615 { lab=c}
N 310 -1450 390 -1450 { lab=vs}
N 390 -1450 480 -1450 { lab=vs}
N 480 -1450 640 -1450 { lab=vs}
N 90 -1830 90 -1820 { lab=ib}
N 130 -1860 150 -1860 { lab=ib}
N 480 -1620 530 -1620 { lab=d}
N 310 -1760 320 -1760 { lab=b}
N 400 -1760 470 -1760 { lab=b}
C {devices/iopin.sym} 400 -1970 3 0 {name=p2 lab=vd}
C {devices/iopin.sym} 390 -1430 1 0 {name=p6 lab=vs}
C {devices/iopin.sym} 90 -1800 1 0 {name=p1 lab=ib}
C {devices/ipin.sym} 255 -1710 0 0 {name=p3 lab=in1}
C {devices/ipin.sym} 530 -1710 0 1 {name=p4 lab=in2}
C {devices/opin.sym} 770 -1720 0 0 {name=p5 lab=out}
C {devices/lab_wire.sym} 400 -1790 0 0 {name=l2 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 310 -1640 0 0 {name=l3 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 520 -1620 0 0 {name=l4 sig_type=std_logic lab=d}
C {sky130_fd_pr/cap_mim_m3_1.sym} 560 -1680 1 0 {name=CC model=cap_mim_m3_1 W=21 L=21 MF=1 spiceprefix=X}
C {devices/code.sym} 1090 -1910 0 0 {name=RC_extraction only_toplevel=false value="
RR0 vs.n20 vs.n14 202.916
R1 vs.n7 vs.n1 202.916
R2 vs.n21 vs.n20 121.975
R3 vs.n8 vs.n7 121.975
R4 vs.n28 vs.n27 2.673
R5 vs.n29 vs.n28 1.458
R6 vs vs.n29 1.104
R7 vs.n27 vs.n26 0.911
R8 vs.n25 vs.n24 0.348
R9 vs.n12 vs.n11 0.348
R10 vs.n28 vs.n25 0.135
R11 vs.n29 vs.n12 0.135
R12 vs.n25 vs.n21 0.09
R13 vs.n12 vs.n8 0.09
R14 vs.n14 vs.n13 0.04
R15 vs.n1 vs.n0 0.04
R16 vs.n18 vs.n17 0.037
R17 vs.n5 vs.n4 0.037
R18 vs.n16 vs.n15 0.034
R19 vs.n20 vs.n19 0.034
R20 vs.n3 vs.n2 0.034
R21 vs.n7 vs.n6 0.034
R22 vs.n17 vs.n16 0.016
R23 vs.n4 vs.n3 0.016
R24 vs.n19 vs.n18 0.016
R25 vs.n6 vs.n5 0.016
R26 vs.n24 vs.n23 0.001
R27 vs.n11 vs.n10 0.001
R28 vs.n23 vs.n22 0.001
R29 vs.n10 vs.n9 0.001
R30 out.n10 out.n4 394.54
R31 out.n11 out.n10 313.599
R32 out.n12 out.n2 0.386
R33 out out.n12 0.168
R34 out.n12 out.n11 0.052
R35 out.n4 out.n3 0.013
R36 out.n8 out.n7 0.003
R37 out.n6 out.n5 0.003
R38 out.n10 out.n9 0.003
R39 out.n7 out.n6 0.002
R40 out.n9 out.n8 0.002
R41 out.n2 out.n1 0.001
R42 out.n1 out.n0 0.001
R43 in1 in1.t0 88.743
R44 in2 in2.t0 90.145
R45 ib.n3 ib.t5 196.178
R46 ib.n2 ib.t3 196.178
R47 ib.n1 ib.t4 196.178
R48 ib.n0 ib.t6 196.178
R49 ib.n0 ib.t7 162.082
R50 ib.n5 ib.t0 160.028
R51 ib.n4 ib.t2 160.028
R52 ib.n6 ib.t1 6.282
R53 ib.n4 ib.n3 2.041
R54 ib.n5 ib.n4 2.041
R55 ib ib.n6 1.518
R56 ib.n1 ib.n0 0.537
R57 ib.n2 ib.n1 0.537
R58 ib.n3 ib.n2 0.537
R59 ib.n6 ib.n5 0.266
R60 vd.n5 vd.n1 507.374
R61 vd.n32 vd.n26 394.54
R62 vd.n19 vd.n13 394.54
R63 vd.n44 vd.n43 394.54
R64 vd.n7 vd.n6 331.818
R65 vd.n33 vd.n32 313.599
R66 vd.n20 vd.n19 313.599
R67 vd.n45 vd.n44 313.599
R68 vd vd.n49 3.951
R69 vd.n35 vd.n34 2.876
R70 vd.n8 vd.n7 1.417
R71 vd.n36 vd.n35 1.333
R72 vd.n35 vd.n21 0.835
R73 vd.n34 vd.n24 0.386
R74 vd.n21 vd.n11 0.386
R75 vd.n49 vd.n48 0.376
R76 vd vd.n36 0.229
R77 vd.n36 vd.n8 0.211
R78 vd.n49 vd.n45 0.063
R79 vd.n34 vd.n33 0.052
R80 vd.n21 vd.n20 0.052
R81 vd.n26 vd.n25 0.013
R82 vd.n13 vd.n12 0.013
R83 vd.n43 vd.n42 0.013
R84 vd.n6 vd.n5 0.004
R85 vd.n1 vd.n0 0.004
R86 vd.n30 vd.n29 0.003
R87 vd.n17 vd.n16 0.003
R88 vd.n40 vd.n39 0.003
R89 vd.n28 vd.n27 0.003
R90 vd.n32 vd.n31 0.003
R91 vd.n15 vd.n14 0.003
R92 vd.n19 vd.n18 0.003
R93 vd.n44 vd.n41 0.003
R94 vd.n38 vd.n37 0.003
R95 vd.n29 vd.n28 0.002
R96 vd.n16 vd.n15 0.002
R97 vd.n41 vd.n40 0.002
R98 vd.n31 vd.n30 0.002
R99 vd.n18 vd.n17 0.002
R100 vd.n39 vd.n38 0.002
R101 vd.n4 vd.n3 0.002
R102 vd.n3 vd.n2 0.002
R103 vd.n5 vd.n4 0.002
R104 vd.n48 vd.n47 0.001
R105 vd.n24 vd.n23 0.001
R106 vd.n11 vd.n10 0.001
R107 vd.n23 vd.n22 0.001
R108 vd.n10 vd.n9 0.001
R109 vd.n47 vd.n46 0.001
C0 w_460_9160# vs 0.25fF
C1 vs out 0.29fF
C2 vs e 0.43fF
C3 in2 in1 0.06fF
C4 w_460_9160# vd 0.57fF
C5 in2 d 0.06fF
C6 vd out 0.34fF
C7 vs c 0.57fF
C8 w_460_9160# ib 0.42fF
C9 ib out 0.09fF
C10 vd e 1.05fF
C11 ib e 0.91fF
C12 vd c 0.00fF
C13 ib c 0.01fF
C14 vs vd 0.07fF
C15 w_460_9160# in1 0.18fF
C16 vs ib 0.06fF
C17 w_460_9160# d 0.31fF
C18 out d 0.01fF
C19 e d 0.26fF
C20 ib vd 2.28fF
C21 in1 c 0.25fF
C22 c d 0.13fF
C23 in1 vs 0.08fF
C24 in2 w_460_9160# 0.53fF
C25 vs d 0.55fF
C26 in1 vd 0.01fF
C27 vd d 0.01fF
C28 in1 ib 0.03fF
C29 in2 c 0.07fF
C30 ib d 0.04fF
C31 in2 vs 0.05fF
C32 w_460_9160# e 0.07fF
C33 in2 vd 0.02fF
C34 e out 0.05fF
C35 in2 ib 0.20fF
C36 in1 d 0.01fF
C37 w_460_9160# c 0.56fF
C38 c e 0.00fF
C39 w_460_9160# 0 7.23fF
C40 vd.n0 0 0.19fF $ **FLOATING
C41 vd.n1 0 3.35fF $ **FLOATING
C42 vd.n2 0 0.16fF $ **FLOATING
C43 vd.n3 0 0.33fF $ **FLOATING
C44 vd.n4 0 2.51fF $ **FLOATING
C45 vd.n5 0 2.68fF $ **FLOATING
C46 vd.n6 0 0.32fF $ **FLOATING
C47 vd.n7 0 3.66fF $ **FLOATING
C48 vd.n8 0 2.18fF $ **FLOATING
C49 vd.n9 0 1.48fF $ **FLOATING
C50 vd.n10 0 0.03fF $ **FLOATING
C51 vd.n11 0 0.12fF $ **FLOATING
C52 vd.n12 0 1.48fF $ **FLOATING
C53 vd.n13 0 0.13fF $ **FLOATING
C54 vd.n14 0 0.11fF $ **FLOATING
C55 vd.n15 0 0.22fF $ **FLOATING
C56 vd.n16 0 1.02fF $ **FLOATING
C57 vd.n17 0 1.02fF $ **FLOATING
C58 vd.n18 0 0.22fF $ **FLOATING
C59 vd.n19 0 0.11fF $ **FLOATING
C60 vd.n20 0 0.07fF $ **FLOATING
C61 vd.n21 0 0.70fF $ **FLOATING
C62 vd.n22 0 1.48fF $ **FLOATING
C63 vd.n23 0 0.03fF $ **FLOATING
C64 vd.n24 0 0.12fF $ **FLOATING
C65 vd.n25 0 1.48fF $ **FLOATING
C66 vd.n26 0 0.13fF $ **FLOATING
C67 vd.n27 0 0.11fF $ **FLOATING
C68 vd.n28 0 0.22fF $ **FLOATING
C69 vd.n29 0 1.02fF $ **FLOATING
C70 vd.n30 0 1.02fF $ **FLOATING
C71 vd.n31 0 0.22fF $ **FLOATING
C72 vd.n32 0 0.11fF $ **FLOATING
C73 vd.n33 0 0.07fF $ **FLOATING
C74 vd.n34 0 0.81fF $ **FLOATING
C75 vd.n35 0 0.26fF $ **FLOATING
C76 vd.n36 0 0.10fF $ **FLOATING
C77 vd.n37 0 0.11fF $ **FLOATING
C78 vd.n38 0 0.22fF $ **FLOATING
C79 vd.n39 0 1.02fF $ **FLOATING
C80 vd.n40 0 1.02fF $ **FLOATING
C81 vd.n41 0 0.22fF $ **FLOATING
C82 vd.n42 0 1.48fF $ **FLOATING
C83 vd.n43 0 0.13fF $ **FLOATING
C84 vd.n44 0 0.11fF $ **FLOATING
C85 vd.n45 0 0.07fF $ **FLOATING
C86 vd.n46 0 1.48fF $ **FLOATING
C87 vd.n47 0 0.03fF $ **FLOATING
C88 vd.n48 0 0.12fF $ **FLOATING
C89 vd.n49 0 0.87fF $ **FLOATING
C90 ib.t1 0 0.12fF
C91 ib.t7 0 0.52fF
C92 ib.t6 0 0.62fF
C93 ib.n0 0 0.57fF $ **FLOATING
C94 ib.t4 0 0.62fF
C95 ib.n1 0 0.26fF $ **FLOATING
C96 ib.t3 0 0.62fF
C97 ib.n2 0 0.26fF $ **FLOATING
C98 ib.t5 0 0.62fF
C99 ib.n3 0 0.31fF $ **FLOATING
C100 ib.t2 0 0.52fF
C101 ib.n4 0 0.32fF $ **FLOATING
C102 ib.t0 0 0.52fF
C103 ib.n5 0 0.26fF $ **FLOATING
C104 ib.n6 0 0.34fF $ **FLOATING
C105 out.n0 0 0.93fF $ **FLOATING
C106 out.n1 0 0.02fF $ **FLOATING
C107 out.n2 0 0.07fF $ **FLOATING
C108 out.n3 0 0.93fF $ **FLOATING
C109 out.n4 0 0.08fF $ **FLOATING
C110 out.n5 0 0.07fF $ **FLOATING
C111 out.n6 0 0.14fF $ **FLOATING
C112 out.n7 0 0.64fF $ **FLOATING
C113 out.n8 0 0.64fF $ **FLOATING
C114 out.n9 0 0.14fF $ **FLOATING
C115 out.n10 0 0.07fF $ **FLOATING
C116 out.n11 0 0.04fF $ **FLOATING
C117 out.n12 0 0.42fF $ **FLOATING
C118 vs.n0 0 0.94fF $ **FLOATING
C119 vs.n1 0 0.10fF $ **FLOATING
C120 vs.n2 0 0.08fF $ **FLOATING
C121 vs.n3 0 0.18fF $ **FLOATING
C122 vs.n4 0 0.53fF $ **FLOATING
C123 vs.n5 0 0.53fF $ **FLOATING
C124 vs.n6 0 0.18fF $ **FLOATING
C125 vs.n7 0 0.08fF $ **FLOATING
C126 vs.n8 0 0.06fF $ **FLOATING
C127 vs.n9 0 0.94fF $ **FLOATING
C128 vs.n10 0 0.04fF $ **FLOATING
C129 vs.n11 0 0.13fF $ **FLOATING
C130 vs.n12 0 0.29fF $ **FLOATING
C131 vs.n13 0 0.94fF $ **FLOATING
C132 vs.n14 0 0.10fF $ **FLOATING
C133 vs.n15 0 0.08fF $ **FLOATING
C134 vs.n16 0 0.18fF $ **FLOATING
C135 vs.n17 0 0.53fF $ **FLOATING
C136 vs.n18 0 0.53fF $ **FLOATING
C137 vs.n19 0 0.18fF $ **FLOATING
C138 vs.n20 0 0.08fF $ **FLOATING
C139 vs.n21 0 0.06fF $ **FLOATING
C140 vs.n22 0 0.94fF $ **FLOATING
C141 vs.n23 0 0.04fF $ **FLOATING
C142 vs.n24 0 0.13fF $ **FLOATING
C143 vs.n25 0 0.29fF $ **FLOATING
C144 vs.n26 0 9.30fF $ **FLOATING
C145 vs.n27 0 2.86fF $ **FLOATING
C146 vs.n28 0 0.47fF $ **FLOATING
C147 vs.n29 0 0.23fF $ **FLOATING
C148 vd 0 27.83fF
C149 ib 0 -31.45fF
C150 vs 0 21.62fF
C151 c 0 -2.70fF
C152 in2 0 0.40fF
C153 in1 0 1.82fF
C154 out 0 5.47fF
C155 e 0 2.80fF
C156 d 0 16.90fF
"}
C {sky130_fd_pr/pfet_01v8.sym} 110 -1860 0 1 {name=M5
L=1
W=6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -1860 0 0 {name=M6
L=1
W=6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 620 -1860 0 0 {name=M8
L=1
W=30
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -1710 0 0 {name=M1
L=1
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -1710 0 1 {name=M2
L=1
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -1540 0 1 {name=M3
L=1
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 460 -1540 0 0 {name=M4
L=1
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 620 -1620 0 0 {name=M7
L=1
W=9
nf=2 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
