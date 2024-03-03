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
N 560 -1730 560 -1710 {
lab=in2}
N 490 -1810 560 -1810 {
lab=q_neg}
N 560 -1810 560 -1790 {
lab=q_neg}
N 360 -1810 430 -1810 {
lab=in1}
N 460 -1760 540 -1760 {
lab=gnd}
N 460 -1790 460 -1760 {
lab=gnd}
N 560 -1810 760 -1810 {
lab=q_neg}
N 760 -1810 760 -1790 {
lab=q_neg}
N 760 -1730 760 -1720 {
lab=gnd}
N 760 -1810 880 -1810 {
lab=q_neg}
N 460 -1760 460 -1600 {}
N 460 -1600 760 -1600 {}
N 760 -1720 760 -1600 {}
N 610 -1600 610 -1570 {}
C {devices/ipin.sym} 365 -1810 0 0 {name=p3 lab=in1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 760 -1760 0 0 {name=C_sigma model=cap_mim_m3_1 W=27.196 L=27.196 MF=1 spiceprefix=X}
C {devices/code.sym} 1360 -1940 0 0 {name=RC_extraction only_toplevel=false value="
"}
C {devices/iopin.sym} 610 -1580 1 0 {name=p1 lab=gnd}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 460 -1810 3 0 {name=R1
W=0.35
L=37
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 560 -1760 0 0 {name=R2
W=0.35
L=37
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 760 -1720 2 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/opin.sym} 880 -1810 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 560 -1715 3 0 {name=p4 lab=in2}
