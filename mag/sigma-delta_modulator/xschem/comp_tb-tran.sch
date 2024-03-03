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
N 895 -795 895 -785 { lab=in}
N 895 -725 895 -715 { lab=GND}
C {devices/vsource.sym} 895 -755 0 0 {name=VIN value="PULSE(0V 1.8V 0.5ns 0.1ns 0.1ns 50ns 100ns)"}
C {devices/gnd.sym} 895 -715 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1190 -935 0 0 {name=VDD value=1.8}
C {devices/code_shown.sym} 1445 -980 0 0 {name=Simulation only_toplevel=false value="*cmd step stop
.tran 0.005n 100n
.control
set color0=white
set color1=black
destroy all
run
plot out in 0.9 xlimit 50.45n 50.90n
plot out in

.endc"}
C {devices/gnd.sym} 1190 -905 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 895 -795 0 0 {name=l10 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1190 -965 0 0 {name=l1 sig_type=std_logic lab=vd}
C {/home/hugodg/projects-sky130/temp-sensor/sigma-delta_modulator/xschem/comp.sym} 1220 -670 0 0 {name=X1}
C {devices/lab_pin.sym} 1230 -720 0 0 {name=l3 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1070 -670 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1370 -670 0 1 {name=l5 sig_type=std_logic lab=out}
C {devices/gnd.sym} 1230 -620 0 0 {name=l6 lab=GND}
C {devices/code.sym} 1460 -1190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
