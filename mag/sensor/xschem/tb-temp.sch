v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -530 -80 -520 {
lab=GND}
N -80 -460 -80 -440 {
lab=vd}
N -80 -320 -80 -310 {
lab=GND}
N 80 -660 80 -650 {
lab=GND}
C {devices/gnd.sym} -80 -310 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -80 -490 2 0 {name=VDD value=1.8}
C {devices/lab_pin.sym} 70 -350 2 0 {name=l5 sig_type=std_logic lab=vtd}
C {devices/code_shown.sym} 415 -670 0 0 {name=Simulation only_toplevel=false value="
.control
destroy all
save all
set color0=white
set color1=black
set wr_singlescale
dc temp -50 200 1
run
let idd=-i(vdd)
*let is1=-i(vs1)
*let is2=-i(vs2)
*let il3=-i(vl3)
*let isat4=-i(vsat4)


let tc=deriv(vts)
let err=abs((vts-v_lin))/1.64e-3

plot idd
*plot is1 is2 il3 isat4
*plot vts-vtd
plot tc ylabel 'mV/°C'
plot vts vtd 
*plot tc ylabel 'mV/°C' xlimit 20 50
*plot vts vtd xlimit 20 50
*plot vts v_lin xlimit -100 215
*plot err xlimit -100 215

wrdata /foss/designs/temp-sensor/data/ptat-temp-tb.txt vts vtd
.endc
"}
C {devices/gnd.sym} -80 -530 2 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 70 -410 2 0 {name=l3 sig_type=std_logic lab=vts}
C {devices/lab_pin.sym} -80 -450 0 0 {name=l4 sig_type=std_logic lab=vd}
C {devices/code.sym} 430 -1010 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/vsource.sym} 80 -620 2 0 {name=Bvts value="v=-0.00164*temper+1.42962"}
C {devices/gnd.sym} 80 -660 2 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 80 -590 0 0 {name=l7 sig_type=std_logic lab=v_lin}
C {/foss/designs/temp-sensor/sensor/xschem/sensor-pex.sym} -80 -380 0 0 {name=x1}
