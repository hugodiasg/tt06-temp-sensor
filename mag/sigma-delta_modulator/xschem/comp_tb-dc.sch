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
N 890 -340 890 -260 {
lab=QN}
N 890 -420 890 -400 {
lab=in_comp}
N 690 -420 760 -420 {
lab=in1}
N 1090 -340 1090 -210 {
lab=GND}
N 940 -210 940 -180 {
lab=GND}
N 1410 -550 1410 -440 {
lab=vd}
N 1090 -420 1090 -400 {
lab=in_comp}
N 1590 -420 1590 -260 {
lab=QN}
N 790 -400 790 -210 {
lab=GND}
N 870 -210 940 -210 {
lab=GND}
N 870 -370 870 -210 {
lab=GND}
N 820 -420 890 -420 {
lab=in_comp}
N 890 -420 1090 -420 {
lab=in_comp}
N 940 -210 1090 -210 {
lab=GND}
N 790 -210 870 -210 {
lab=GND}
N 890 -260 1590 -260 {
lab=QN}
N 1590 -440 1630 -440 {
lab=out}
N 1410 -400 1410 -380 {
lab=vpwr}
N 1410 -380 1410 -215 {
lab=vpwr}
N 1090 -450 1090 -420 {
lab=in_comp}
N 1090 -450 1220 -450 {
lab=in_comp}
N 1290 -550 1290 -510 {
lab=vd}
N 1290 -510 1290 -480 {
lab=vd}
N 1250 -480 1250 -450 {
lab=in_comp}
N 1220 -450 1250 -450 {
lab=in_comp}
N 1290 -450 1290 -410 {
lab=out_comp}
N 1250 -450 1250 -380 {
lab=in_comp}
N 1290 -380 1290 -350 {
lab=GND}
N 1290 -350 1290 -320 {
lab=GND}
N 1090 -320 1290 -320 {
lab=GND}
N 1390 -420 1410 -420 {
lab=out_comp}
N 1290 -420 1390 -420 {
lab=out_comp}
C {devices/code_shown.sym} 1470 -880 0 0 {name=Simulation only_toplevel=false value=".dc VIN 0 1.8 0.01
.end
.control
set color0=white
set color1=black

destroy all
run
plot in1 in_comp out_comp
.endc"}
C {devices/code.sym} 1470 -1030 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 690 -420 0 0 {name=l3 sig_type=std_logic lab=in1}
C {devices/gnd.sym} 940 -180 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1630 -440 0 1 {name=l6 sig_type=std_logic lab=out}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1090 -370 0 0 {name=C1 model=cap_mim_m3_1 W=27.196 L=27.196 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 890 -370 0 0 {name=R2
W=0.35
L=37
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_stdcells/dfrbp_1.sym} 1500 -420 0 0 {name=x2 VGND=gnd_d VNB=gnd_d VPB=vpwr VPWR=vpwr prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1060 -420 1 0 {name=l2 sig_type=std_logic lab=in_comp}
C {devices/lab_pin.sym} 1390 -420 1 0 {name=l4 sig_type=std_logic lab=out_comp}
C {devices/lab_pin.sym} 1230 -260 1 0 {name=l8 sig_type=std_logic lab=QN}
C {sky130_fd_pr/pfet_01v8.sym} 1270 -480 0 0 {name=P1
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
C {sky130_fd_pr/nfet_01v8.sym} 1270 -380 0 0 {name=N1
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 790 -420 3 0 {name=R1
W=0.35
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/vsource.sym} 955 -895 0 0 {name=vin value="AC 1"}
C {devices/gnd.sym} 955 -865 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 955 -925 0 0 {name=l12 sig_type=std_logic lab=in1}
C {devices/vsource.sym} 1070 -895 0 0 {name=VDD1 value=1.8}
C {devices/gnd.sym} 1070 -865 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1070 -925 0 0 {name=l14 sig_type=std_logic lab=vd}
C {devices/vsource.sym} 1180 -895 0 0 {name=vpwr value=1.8}
C {devices/gnd.sym} 1180 -865 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 1180 -925 0 0 {name=l16 sig_type=std_logic lab=vpwr}
C {devices/vsource.sym} 1265 -900 0 0 {name=vgndd value=0}
C {devices/gnd.sym} 1265 -870 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1265 -930 0 0 {name=l18 sig_type=std_logic lab=gnd_d}
C {devices/lab_pin.sym} 1290 -545 0 0 {name=l19 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1410 -545 0 0 {name=l20 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1410 -225 0 0 {name=l21 sig_type=std_logic lab=vpwr}
