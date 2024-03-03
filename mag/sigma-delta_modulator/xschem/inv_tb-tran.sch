v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -300 370 -290 { lab=in}
N 370 -230 370 -220 { lab=GND}
N 540 -430 540 -380 {
lab=vd}
N 500 -350 500 -330 {
lab=in}
N 500 -330 500 -240 {
lab=in}
N 540 -380 540 -350 {
lab=vd}
N 540 -320 540 -270 {
lab=out}
N 540 -300 630 -300 {
lab=out}
N 540 -240 540 -210 {
lab=GND}
N 370 -300 500 -300 {
lab=in}
N 540 -210 540 -180 {
lab=GND}
C {devices/gnd.sym} 370 -220 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 945 -470 0 0 {name=Simulation only_toplevel=false value="*cmd step stop
*PULSE ( V1 V2 TD TR TF PW PER PHASE)
.control
destroy all
save all
set color0=white
set color1=black
set temp=27
tran 1n 100n
run

plot in out 


.endc"}
C {devices/lab_pin.sym} 370 -300 0 0 {name=l10 sig_type=std_logic lab=in}
C {devices/code.sym} 970 -700 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/sqwsource.sym} 370 -260 0 0 {name=V3 vhi=1.8 freq=10e6}
C {devices/vsource.sym} 430 -575 0 0 {name=vd value=1.8}
C {devices/gnd.sym} 430 -545 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 430 -605 0 0 {name=l3 sig_type=std_logic lab=vd}
C {sky130_fd_pr/nfet_01v8.sym} 520 -240 0 0 {name=N1
L=0.15
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 520 -350 0 0 {name=P1
L=0.15
W=0.5
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
C {devices/gnd.sym} 540 -180 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 540 -430 0 0 {name=l5 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 630 -300 0 1 {name=l6 sig_type=std_logic lab=out}
