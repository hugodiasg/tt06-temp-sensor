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
N 620 -1160 620 -1080 {
lab=in1}
N 620 -1240 620 -1220 {
lab=in_comp}
N 420 -1240 490 -1240 {
lab=in2}
N 820 -1160 820 -1030 {
lab=GND}
N 670 -1030 670 -1000 {
lab=GND}
N 1140 -1370 1140 -1260 {
lab=vd}
N 820 -1240 820 -1220 {
lab=in_comp}
N 1320 -1240 1320 -1080 {
lab=#net1}
N 520 -1220 520 -1030 {
lab=GND}
N 600 -1030 670 -1030 {
lab=GND}
N 600 -1190 600 -1030 {
lab=GND}
N 550 -1240 620 -1240 {
lab=in_comp}
N 620 -1240 820 -1240 {
lab=in_comp}
N 670 -1030 820 -1030 {
lab=GND}
N 520 -1030 600 -1030 {
lab=GND}
N 1320 -1260 1360 -1260 {
lab=out}
N 1140 -1220 1140 -1200 {
lab=vpwr}
N 1140 -1200 1140 -1035 {
lab=vpwr}
N 820 -1270 820 -1240 {
lab=in_comp}
N 820 -1270 950 -1270 {
lab=in_comp}
N 1020 -1370 1020 -1330 {
lab=vd}
N 1020 -1330 1020 -1300 {
lab=vd}
N 980 -1300 980 -1270 {
lab=in_comp}
N 950 -1270 980 -1270 {
lab=in_comp}
N 1020 -1270 1020 -1230 {
lab=out_comp}
N 980 -1270 980 -1200 {
lab=in_comp}
N 1020 -1200 1020 -1170 {
lab=GND}
N 1020 -1170 1020 -1140 {
lab=GND}
N 820 -1140 1020 -1140 {
lab=GND}
N 1120 -1240 1140 -1240 {
lab=out_comp}
N 1020 -1240 1120 -1240 {
lab=out_comp}
C {devices/code_shown.sym} 1425 -1020 0 0 {name=Simulation only_toplevel=false value="*cmd step stop

.ac dec 2000 1 100Meg
.end

.control
set units=degrees
set color0=white
set color1=black

destroy all
run
let gain = db(abs(in_comp/IN1))
let gain_3db = maximum(gain)-3
*Magnitude
plot  gain gain_3db ylabel 'dB'
**Fase em graus
*let phase_out=(ph(in_comp)-ph(IN1))
*plot  phase_out 60 ylabel 'Degrees'
.endc"}
C {devices/lab_pin.sym} 620 -1080 0 1 {name=l3 sig_type=std_logic lab=in1}
C {devices/gnd.sym} 670 -1000 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1360 -1260 0 1 {name=l6 sig_type=std_logic lab=out}
C {devices/code.sym} 1440 -1210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} 820 -1190 0 0 {name=C1 model=cap_mim_m3_1 W=27.196 L=27.196 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 620 -1190 0 0 {name=R2
W=0.35
L=15
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_stdcells/dfrbp_1.sym} 1230 -1240 0 0 {name=x2 VGND=gnd_d VNB=gnd_d VPB=vpwr VPWR=vpwr prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 790 -1240 1 0 {name=l1 sig_type=std_logic lab=in_comp}
C {devices/lab_pin.sym} 1120 -1240 1 0 {name=l7 sig_type=std_logic lab=out_comp}
C {sky130_fd_pr/pfet_01v8.sym} 1000 -1300 0 0 {name=P1
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
C {sky130_fd_pr/nfet_01v8.sym} 1000 -1200 0 0 {name=N1
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -1240 3 0 {name=R1
W=0.35
L=37
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/vsource.sym} 755 -1545 0 0 {name=vin value="AC 1"}
C {devices/gnd.sym} 755 -1515 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 755 -1575 0 0 {name=l12 sig_type=std_logic lab=in1}
C {devices/vsource.sym} 870 -1545 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 870 -1515 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 870 -1575 0 0 {name=l4 sig_type=std_logic lab=vd}
C {devices/vsource.sym} 980 -1545 0 0 {name=vpwr value=1.8}
C {devices/gnd.sym} 980 -1515 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 980 -1575 0 0 {name=l14 sig_type=std_logic lab=vpwr}
C {devices/vsource.sym} 1065 -1550 0 0 {name=vgndd value=0}
C {devices/gnd.sym} 1065 -1520 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1065 -1580 0 0 {name=l18 sig_type=std_logic lab=gnd_d}
C {devices/lab_pin.sym} 1020 -1365 0 0 {name=l10 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1140 -1365 0 0 {name=l13 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1140 -1045 0 0 {name=l15 sig_type=std_logic lab=vpwr}
C {devices/vsource.sym} 305 -1215 0 0 {name=vin1 value="dc 1"}
C {devices/gnd.sym} 305 -1185 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 305 -1245 0 0 {name=l16 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 420 -1240 0 0 {name=l19 sig_type=std_logic lab=in2}
