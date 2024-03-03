v {xschem version=3.4.5 file_version=1.2
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
N 725 -1055 725 -1045 { lab=clk}
N 725 -985 725 -975 { lab=GND}
C {devices/gnd.sym} 725 -975 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 1635 -980 0 0 {name=Simulation only_toplevel=false value="*cmd step stop
*PULSE ( V1 V2 TD TR TF PW PER PHASE)
.control
destroy all
save all
set color0=white
set color1=black
set wr_singlescale
tran 10n 25u
*tran 10n 10u
run

*plot in_linear out1
plot in1 out1

wrdata /foss/designs/temp-sensor/data/sigma_tb-tran-sin.txt in1 out1
.endc"}
C {devices/lab_pin.sym} 725 -1055 0 0 {name=l10 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 1080 -540 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1230 -720 0 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 895 -1015 0 0 {name=vin value="sin(0.9 0.9 40k)"}
C {devices/gnd.sym} 895 -985 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 895 -1045 0 0 {name=l12 sig_type=std_logic lab=in1}
C {devices/code.sym} 1660 -1210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 1340 -630 3 1 {name=l5 sig_type=std_logic lab=out1}
C {devices/vsource.sym} 1300 -935 0 0 {name=vpwr value=1.8}
C {devices/gnd.sym} 1300 -905 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1300 -965 0 0 {name=l14 sig_type=std_logic lab=vpwr}
C {devices/lab_pin.sym} 1270 -720 1 0 {name=l15 sig_type=std_logic lab=vpwr}
C {devices/lab_pin.sym} 1300 -720 1 0 {name=l16 sig_type=std_logic lab=vpwr}
C {devices/sqwsource.sym} 725 -1015 0 0 {name=V3 vhi=1.8 freq=10e6}
C {devices/vsource.sym} 1120 -945 0 0 {name=vd value=1.8}
C {devices/gnd.sym} 1120 -915 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1120 -975 0 0 {name=l3 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1070 -720 0 0 {name=l7 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1040 -630 0 0 {name=l18 sig_type=std_logic lab=in1}
C {/foss/designs/temp-sensor/sigma-delta_modulator/xschem/sigma-delta-pex.sym} 1190 -630 0 0 {name=x1}
