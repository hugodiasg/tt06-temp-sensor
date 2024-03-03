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
N 150 -1920 150 -1840 {
lab=QN}
N 150 -2000 150 -1980 {
lab=in_comp}
N -50 -2000 20 -2000 {
lab=in}
N 350 -1920 350 -1790 {
lab=gnd}
N 200 -1790 200 -1760 {
lab=gnd}
N 670 -2130 670 -2020 {
lab=clk}
N 350 -2000 350 -1980 {
lab=in_comp}
N 850 -2000 850 -1840 {
lab=QN}
N 80 -2000 150 -2000 {
lab=in_comp}
N 150 -2000 350 -2000 {
lab=in_comp}
N 200 -1790 350 -1790 {
lab=gnd}
N 150 -1840 850 -1840 {
lab=QN}
N 850 -2020 890 -2020 {
lab=out}
N 670 -1980 670 -1960 {
lab=reset_b_dff}
N 670 -1960 670 -1795 {
lab=reset_b_dff}
N 350 -2030 350 -2000 {
lab=in_comp}
N 350 -2030 480 -2030 {
lab=in_comp}
N 480 -2030 510 -2030 {
lab=in_comp}
N 650 -2000 670 -2000 {
lab=out_comp}
N 560 -2130 560 -2080 {
lab=vd}
N 560 -1910 560 -1790 {
lab=gnd}
N 520 -2050 520 -2030 {
lab=in_comp}
N 510 -2030 520 -2030 {
lab=in_comp}
N 520 -2030 520 -1940 {
lab=in_comp}
N 560 -2080 560 -2050 {
lab=vd}
N 560 -1940 560 -1910 {
lab=gnd}
N 560 -2020 560 -1970 {
lab=out_comp}
N 560 -2000 650 -2000 {
lab=out_comp}
N 350 -1790 560 -1790 {
lab=gnd}
C {devices/code.sym} 1060 -2190 0 0 {name=RC_extraction only_toplevel=false value="
"}
C {devices/ipin.sym} -45 -2000 0 0 {name=p4 lab=in}
C {devices/iopin.sym} 200 -1770 1 0 {name=p6 lab=gnd}
C {devices/iopin.sym} 670 -2130 3 0 {name=p2 lab=clk}
C {devices/iopin.sym} 890 -2020 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 670 -1800 1 0 {name=p7 lab=reset_b_dff}
C {devices/iopin.sym} 790 -2130 3 0 {name=p1 lab=vpwr}
C {devices/iopin.sym} 860 -2130 3 0 {name=p8 lab=gnd_d}
C {devices/lab_pin.sym} 320 -2000 1 0 {name=l3 sig_type=std_logic lab=in_comp}
C {devices/lab_pin.sym} 650 -2000 1 0 {name=l4 sig_type=std_logic lab=out_comp}
C {devices/lab_pin.sym} 490 -1840 1 0 {name=l5 sig_type=std_logic lab=QN}
C {devices/iopin.sym} 560 -2130 3 0 {name=p5 lab=vd}
C {sky130_fd_pr/nfet_01v8.sym} 540 -1940 0 0 {name=N1
L=3
W=3
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
L=2.9
W=10
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
C {devices/res.sym} 50 -2000 3 0 {name=R1
value=1meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 150 -1950 0 0 {name=R2
value=1meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 350 -1950 0 0 {name=C1
m=1
value=159p
footprint=1206
device="ceramic capacitor"}
C {sky130_stdcells/dfbbn_2.sym} 760 -1990 0 0 {name=x1 VGND=GND VNB=GND VPB=VD VPWR=VD prefix=sky130_fd_sc_hd__ }
