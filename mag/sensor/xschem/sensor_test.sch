v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 90 160 120 {
lab=gnd}
N 50 20 60 20 {
lab=b}
N 50 -50 50 20 {
lab=b}
N 50 -50 100 -50 {
lab=b}
N 100 -50 250 -50 {
lab=b}
N 250 -50 250 30 {
lab=b}
N 250 30 290 30 {
lab=b}
N 160 90 330 90 {
lab=gnd}
N 40 -280 60 -280 {
lab=a}
N 100 -470 170 -470 {
lab=vd}
N 170 -470 330 -470 {
lab=vd}
N 330 -60 450 -60 {
lab=vtd}
N 330 -280 450 -280 {
lab=vts}
N 160 90 160 120 {
lab=gnd}
N 210 -160 210 -60 {
lab=vtd}
N 40 -280 40 -230 {
lab=a}
N -10 -230 40 -230 {
lab=a}
N 330 30 330 90 {
lab=gnd}
N 100 20 100 90 {
lab=gnd}
N -10 20 -10 90 {
lab=gnd}
N -10 -470 -10 -420 {
lab=vd}
N 210 -60 330 -60 {
lab=vtd}
N 330 -60 330 0 {
lab=vtd}
N 330 -290 330 -280 {
lab=vts}
N -10 -230 -10 -10 {
lab=a}
N 100 -50 100 -10 {
lab=b}
N -10 -250 -10 -230 {
lab=a}
N 170 -520 170 -470 {
lab=vd}
N 30 20 50 20 {
lab=b}
N -10 90 100 90 {
lab=gnd}
N -10 -470 100 -470 {
lab=vd}
N 100 90 160 90 {
lab=gnd}
N 30 -280 40 -280 {
lab=a}
N 100 -70 100 -50 {
lab=b}
N 100 -470 100 -460 {
lab=vd}
N 140 -430 290 -430 {
lab=vtd}
N 330 -470 330 -460 {
lab=vd}
N 210 -430 210 -160 {
lab=vtd}
N 100 -400 100 -380 {
lab=d}
N 100 -320 100 -310 {
lab=d}
N 330 -400 330 -350 {
lab=vts}
N 330 -460 330 -430 {
lab=vd}
N 100 -250 100 -240 {
lab=c}
N 330 -280 330 -170 {
lab=vts}
N 330 -170 330 -140 {
lab=vts}
N 330 -110 330 -60 {
lab=vtd}
N 100 -110 100 -70 {
lab=b}
N 100 -180 100 -170 {
lab=c}
N 210 -140 290 -140 {
lab=vtd}
N 140 -140 210 -140 {
lab=vtd}
N -10 -420 -10 -360 {
lab=vd}
N 100 -380 100 -320 {
lab=d}
N 100 -240 100 -180 {
lab=c}
N 330 -350 330 -290 {
lab=vts}
N -10 -360 -10 -310 {
lab=vd}
N 100 -460 100 -430 {
lab=vd}
N 90 -140 100 -140 {
lab=vd}
N -20 -280 -10 -280 {
lab=vd}
N 100 -280 110 -280 {
lab=vd}
C {devices/iopin.sym} 170 -520 3 0 {name=p1 lab=vd}
C {devices/opin.sym} 450 -280 0 0 {name=p3 lab=vts}
C {devices/opin.sym} 450 -60 0 0 {name=p4 lab=vtd}
C {devices/iopin.sym} 160 120 1 0 {name=p2 lab=gnd}
C {devices/lab_pin.sym} -10 -160 0 0 {name=l4 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 100 -180 2 0 {name=l6 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 100 -70 2 0 {name=l7 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 100 -320 2 0 {name=l10 sig_type=std_logic lab=d}
C {sky130_fd_pr/pfet_01v8.sym} 10 -280 0 1 {name=P5
L=1
W=4
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -280 0 0 {name=P6
L=1
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 120 -430 0 1 {name=P7
L=1
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 310 -430 0 0 {name=P8
L=5.5
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 120 -140 0 1 {name=P9
L=1
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 310 -140 0 0 {name=P10
L=1
W=16
nf=8
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
C {sky130_fd_pr/nfet_01v8.sym} 10 20 0 1 {name=N1
L=1
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 80 20 0 0 {name=N2
L=1
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 310 30 0 0 {name=N3
L=1
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -140 2 1 {name=l1 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} -20 -280 2 1 {name=l2 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 110 -280 2 0 {name=l3 sig_type=std_logic lab=vd}
