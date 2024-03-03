v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 260 -40 290 {
lab=gnd}
N -150 190 -140 190 {
lab=b}
N -150 120 -150 190 {
lab=b}
N -150 120 -100 120 {
lab=b}
N -100 120 50 120 {
lab=b}
N 50 120 50 200 {
lab=b}
N 50 200 90 200 {
lab=b}
N -40 260 130 260 {
lab=gnd}
N -160 -110 -140 -110 {
lab=a}
N -100 -300 -30 -300 {
lab=vd}
N -30 -300 130 -300 {
lab=vd}
N 130 110 250 110 {
lab=vtd}
N 130 -110 250 -110 {
lab=vts}
N -40 260 -40 290 {
lab=gnd}
N 10 10 10 110 {
lab=vtd}
N -160 -110 -160 -60 {
lab=a}
N -210 -60 -160 -60 {
lab=a}
N 130 200 130 260 {
lab=gnd}
N -100 190 -100 260 {
lab=gnd}
N -210 190 -210 260 {
lab=gnd}
N -210 -300 -210 -250 {
lab=vd}
N 10 110 130 110 {
lab=vtd}
N 130 110 130 170 {
lab=vtd}
N 130 -120 130 -110 {
lab=vts}
N -210 -60 -210 160 {
lab=a}
N -100 120 -100 160 {
lab=b}
N -210 -80 -210 -60 {
lab=a}
N -30 -350 -30 -300 {
lab=vd}
N -170 190 -150 190 {
lab=b}
N -210 260 -100 260 {
lab=gnd}
N -210 -300 -100 -300 {
lab=vd}
N -100 260 -40 260 {
lab=gnd}
N -170 -110 -160 -110 {
lab=a}
N -100 100 -100 120 {
lab=b}
N -100 -300 -100 -290 {
lab=vd}
N -60 -260 90 -260 {
lab=vtd}
N 130 -300 130 -290 {
lab=vd}
N 10 -260 10 10 {
lab=vtd}
N -100 -230 -100 -210 {
lab=d}
N -100 -150 -100 -140 {
lab=d}
N 130 -230 130 -180 {
lab=vts}
N 130 -290 130 -260 {
lab=vd}
N -100 -80 -100 -70 {
lab=c}
N 130 -110 130 0 {
lab=vts}
N 130 0 130 30 {
lab=vts}
N 130 60 130 110 {
lab=vtd}
N -100 60 -100 100 {
lab=b}
N -100 -10 -100 0 {
lab=c}
N 10 30 90 30 {
lab=vtd}
N -60 30 10 30 {
lab=vtd}
N -210 -250 -210 -190 {
lab=vd}
N -100 -210 -100 -150 {
lab=d}
N -100 -70 -100 -10 {
lab=c}
N 130 -180 130 -120 {
lab=vts}
N -210 -190 -210 -140 {
lab=vd}
N -100 -290 -100 -260 {
lab=vd}
N -110 30 -100 30 {
lab=vd}
N -220 -110 -210 -110 {
lab=vd}
N -100 -110 -90 -110 {
lab=vd}
C {devices/iopin.sym} -30 -350 3 0 {name=p1 lab=vd}
C {devices/opin.sym} 250 -110 0 0 {name=p3 lab=vts}
C {devices/opin.sym} 250 110 0 0 {name=p4 lab=vtd}
C {devices/iopin.sym} -40 290 1 0 {name=p2 lab=gnd}
C {devices/lab_pin.sym} -210 10 0 0 {name=l4 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} -100 -10 2 0 {name=l6 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} -100 100 2 0 {name=l7 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -100 -150 2 0 {name=l10 sig_type=std_logic lab=d}
C {sky130_fd_pr/pfet_01v8.sym} -190 -110 0 1 {name=P1
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
C {sky130_fd_pr/pfet_01v8.sym} -120 -110 0 0 {name=P2
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
C {sky130_fd_pr/pfet_01v8.sym} -80 -260 0 1 {name=P3
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -260 0 0 {name=P4
L=5
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
C {sky130_fd_pr/pfet_01v8.sym} -80 30 0 1 {name=P5
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
C {sky130_fd_pr/pfet_01v8.sym} 110 30 0 0 {name=P6
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
C {sky130_fd_pr/nfet_01v8.sym} -190 190 0 1 {name=N1
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
C {sky130_fd_pr/nfet_01v8.sym} -120 190 0 0 {name=N2
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
C {sky130_fd_pr/nfet_01v8.sym} 110 200 0 0 {name=N3
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
C {devices/lab_pin.sym} -110 30 2 1 {name=l1 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} -220 -110 2 1 {name=l2 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} -90 -110 2 0 {name=l3 sig_type=std_logic lab=vd}
