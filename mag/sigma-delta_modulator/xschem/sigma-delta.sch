v {xschem version=3.4.5 file_version=1.2
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
N 150 -2000 150 -1980 {
lab=in_int}
N -50 -2000 20 -2000 {
lab=in}
N 200 -1790 200 -1760 {
lab=gnd}
N 50 -1980 50 -1790 {
lab=gnd}
N 130 -1790 200 -1790 {
lab=gnd}
N 130 -1950 130 -1790 {
lab=gnd}
N 80 -2000 150 -2000 {
lab=in_int}
N 200 -1790 350 -1790 {
lab=gnd}
N 50 -1790 130 -1790 {
lab=gnd}
N 850 -2000 890 -2000 {
lab=out}
N 670 -1960 670 -1795 {
lab=reset_b_dff}
N 650 -2000 670 -2000 {
lab=out_comp}
N 560 -2130 560 -2080 {
lab=vd}
N 520 -2050 520 -2030 {
lab=in_comp}
N 520 -2030 520 -1940 {
lab=in_comp}
N 560 -2080 560 -2050 {
lab=vd}
N 560 -2020 560 -1970 {
lab=out_comp}
N 560 -2000 650 -2000 {
lab=out_comp}
N 350 -1790 560 -1790 {
lab=gnd}
N 670 -1980 670 -1960 {
lab=reset_b_dff}
N 670 -2130 670 -2020 {
lab=clk}
N 850 -2020 870 -2020 {
lab=Q}
N 870 -2020 870 -1830 {
lab=Q}
N 150 -1830 870 -1830 {
lab=Q}
N 150 -1920 150 -1830 {
lab=Q}
N 560 -2200 560 -2130 {
lab=vd}
N 560 -1910 560 -1790 {
lab=gnd}
N 560 -1940 560 -1910 {
lab=gnd}
N 270 -2000 270 -1930 {
lab=in_int}
N 380 -2000 520 -2000 {
lab=in_comp}
N 440 -2000 440 -1930 {
lab=in_comp}
N 270 -1870 270 -1790 {
lab=gnd}
N 440 -1870 440 -1790 {
lab=gnd}
N 350 -1980 350 -1790 {
lab=gnd}
N 150 -2000 270 -2000 {
lab=in_int}
N 270 -2000 310 -2000 {
lab=in_int}
N 310 -2000 320 -2000 {
lab=in_int}
C {devices/ipin.sym} -45 -2000 0 0 {name=p4 lab=in}
C {devices/iopin.sym} 200 -1770 1 0 {name=p6 lab=gnd}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 150 -1950 0 0 {name=R2
W=0.35
L=36
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/iopin.sym} 670 -2130 3 0 {name=p2 lab=clk}
C {devices/iopin.sym} 890 -2000 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 670 -1800 1 0 {name=p7 lab=reset_b_dff}
C {devices/iopin.sym} 810 -2130 3 0 {name=p1 lab=vpwr}
C {devices/lab_pin.sym} 310 -2000 1 0 {name=l3 sig_type=std_logic lab=in_int}
C {devices/lab_pin.sym} 650 -2000 1 0 {name=l4 sig_type=std_logic lab=out_comp}
C {devices/lab_pin.sym} 490 -1830 1 0 {name=l5 sig_type=std_logic lab=Q}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 50 -2000 3 0 {name=R1
W=0.35
L=36
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_01v8.sym} 540 -1940 0 0 {name=N1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -2050 0 0 {name=P1
L=0.15
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
C {sky130_stdcells/dfrbp_1.sym} 760 -2000 0 0 {name=x1 VGND=GND VNB=GND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/iopin.sym} 560 -2200 3 0 {name=p5 lab=vd}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 350 -2000 3 0 {name=R3
W=0.35
L=18
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 430 -2000 1 0 {name=l1 sig_type=std_logic lab=in_comp}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 -1900 0 0 {name=C1 model=cap_mim_m3_1 W=27.196 L=27.196 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 440 -1900 0 0 {name=C2 model=cap_mim_m3_1 W=27.196 L=27.196 MF=1 spiceprefix=X}
C {devices/code.sym} 930 -2255 0 0 {name=lib_dff only_toplevel=false value=".include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
