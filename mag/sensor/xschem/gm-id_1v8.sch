v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 -820 -70 -810 {
lab=GND}
N -70 -760 -70 -700 {
lab=vd}
N -150 -670 -110 -670 {
lab=vi}
N -210 -670 -210 -650 {
lab=GND}
N -70 -640 -70 -610 {
lab=GND}
N -70 -670 -70 -640 {
lab=GND}
C {devices/vsource.sym} -70 -780 2 0 {name=VDD value=1.8}
C {devices/code_shown.sym} 135 -770 0 0 {name=Simulation only_toplevel=false value=".dc vdd 0.1 1.8 0.001
.control
run
set color0=white
set color1=black

let idd=-i(vdd)
let gm_id=1/(abs(vi-vd))

plot idd vs gm_id
.endc
"}
C {devices/code_shown.sym} 370 -180 0 0 {name=Lib only_toplevel=false value=".lib "/home/hugodg/sky130_workspace/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice" tt"}
C {devices/gnd.sym} -70 -820 2 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -70 -720 0 0 {name=l9 sig_type=std_logic lab=vd}
C {devices/vsource.sym} -180 -670 1 0 {name=Vin value=1.8}
C {devices/gnd.sym} -210 -650 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -70 -610 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -120 -670 1 0 {name=l1 sig_type=std_logic lab=vi}
C {sky130_fd_pr/nfet_01v8.sym} -90 -670 0 0 {name=M1
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
