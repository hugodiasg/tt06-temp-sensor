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
N 895 -795 895 -785 { lab=clk}
N 895 -725 895 -715 { lab=GND}
C {devices/gnd.sym} 895 -715 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1190 -935 0 0 {name=VDD value=1.8}
C {devices/code_shown.sym} 1445 -980 0 0 {name=Simulation only_toplevel=false value="*cmd step stop
.tran 0.5n 5u
.control
set color0=white
set color1=black
set temp=27
destroy all
run

plot in
plot clk
plot q qn


.endc"}
C {devices/gnd.sym} 1190 -905 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 895 -795 0 0 {name=l10 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1190 -965 0 0 {name=l1 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1120 -630 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1300 -650 0 1 {name=l5 sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 1120 -650 0 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 900 -935 0 0 {name=vin value="PULSE(0V 1.8V 0.5ns 0.1ns 0.1ns 1.5us 3us)"}
C {devices/gnd.sym} 900 -905 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 900 -965 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/code.sym} 1660 -1210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 1300 -630 0 1 {name=l13 sig_type=std_logic lab=qn}
C {sky130_stdcells/dfbbn_2.sym} 1210 -620 0 0 {name=x1 VGND=GND VNB=GND VPB=VD VPWR=VD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1120 -590 0 0 {name=l6 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1120 -610 0 0 {name=l3 sig_type=std_logic lab=vd}
C {devices/sqwsource.sym} 895 -755 0 0 {name=V3 vhi=1.8 freq=10e6}
