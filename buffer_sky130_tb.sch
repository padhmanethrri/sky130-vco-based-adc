v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -90 110 -90 {lab=out}
N 50 -120 50 -110 {lab=#net1}
N 70 -70 70 -60 {lab=in}
N 70 -0 70 10 {lab=0}
N 50 -190 50 -180 {lab=0}
N -0 -50 20 -50 {lab=0}
N -0 -70 70 -70 {lab=in}
N -0 -110 50 -110 {lab=#net1}
N 70 -70 90 -70 {lab=in}
C {vsource.sym} 50 -150 2 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 70 -30 0 0 {name=V2 value="PULSE(0 1.8 1n 100p 100p 5n 10n)" savecurrent=false}
C {gnd.sym} 70 10 0 0 {name=l2 lab=0}
C {gnd.sym} 50 -190 2 0 {name=l3 lab=0}
C {devices/code.sym} 210 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {code_shown.sym} 330 -80 0 0 {name=s1 only_toplevel=false value=".control
save all
tran 0.1n 30n
plot out
.endc"}
C {iopin.sym} 110 -90 0 0 {name=p2 lab=out}
C {gnd.sym} 20 -50 0 0 {name=l4 lab=0}
C {/foss/designs/vco_adc/buffer_sky130.sym} -140 -80 0 0 {name=x1}
C {lab_pin.sym} 90 -70 2 0 {name=p1 sig_type=std_logic lab=in}
