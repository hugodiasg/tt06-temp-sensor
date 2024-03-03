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
N 500 -1800 570 -1800 {
lab=in}
N 610 -1720 610 -1690 {
lab=gnd}
N 610 -1930 610 -1890 {
lab=vd}
N 610 -1830 610 -1780 {
lab=out}
N 570 -1860 570 -1750 {
lab=in}
N 610 -1800 700 -1800 {
lab=out}
N 610 -1780 610 -1750 {
lab=out}
N 610 -1860 610 -1830 {
lab=out}
C {devices/ipin.sym} 505 -1800 0 0 {name=p3 lab=in}
C {devices/code.sym} 1360 -1940 0 0 {name=RC_extraction only_toplevel=false value="
"}
C {devices/iopin.sym} 610 -1700 1 0 {name=p1 lab=gnd}
C {devices/opin.sym} 700 -1800 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 610 -1930 3 0 {name=p5 lab=vd}
C {sky130_fd_pr/nfet_01v8.sym} 590 -1860 0 0 {name=N1
L=0.15
W=4
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
C {sky130_fd_pr/pfet_01v8.sym} 590 -1750 0 0 {name=P1
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
model=pfet_01v8
spiceprefix=X
}
