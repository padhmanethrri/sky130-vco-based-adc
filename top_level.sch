v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -190 -320 -140 {lab=#net1}
N -320 -190 -170 -190 {lab=#net1}
N -170 -190 -160 -190 {lab=#net1}
N -160 -190 -160 -140 {lab=#net1}
N -300 -200 -300 -140 {lab=in2}
N -300 -200 -130 -200 {lab=in2}
N -130 -200 -120 -200 {lab=in2}
N -120 -200 -120 -140 {lab=in2}
N -260 -170 -260 -140 {lab=0}
N -260 -170 -100 -170 {lab=0}
N -100 -170 -100 -140 {lab=0}
N -200 -220 -200 -190 {lab=#net1}
N -280 -180 -280 -140 {lab=#net2}
N -140 -220 -140 -200 {lab=in2}
N -100 -160 -80 -160 {lab=0}
N -200 -280 -170 -280 {lab=0}
N -280 -240 -260 -240 {lab=0}
N -140 -150 -140 -140 {lab=buf_out}
N 40 -150 40 -130 {lab=gclk}
N -140 -190 -140 -150 {lab=buf_out}
N -140 -190 20 -190 {lab=buf_out}
N 20 -190 20 -130 {lab=buf_out}
N 60 -150 60 -130 {lab=en}
N 60 -210 80 -210 {lab=0}
N 60 -140 80 -140 {lab=en}
N 10 -160 20 -160 {lab=buf_out}
N 40 -130 40 -110 {lab=gclk}
N 20 -130 20 -60 {lab=buf_out}
N 40 -110 170 -110 {lab=gclk}
N 60 -130 60 -120 {lab=en}
N 60 -120 190 -120 {lab=en}
N 190 -120 190 -50 {lab=en}
N 410 -170 410 -140 {lab=#net1}
N 310 -170 310 -140 {lab=#net1}
N 310 -170 410 -170 {lab=#net1}
N 390 -190 390 -140 {lab=0}
N 290 -190 390 -190 {lab=0}
N 290 -190 290 -140 {lab=0}
N 190 -50 230 -50 {lab=en}
N 230 -220 230 -50 {lab=en}
N 170 -230 170 -110 {lab=gclk}
N 170 -230 320 -230 {lab=gclk}
N 320 -230 330 -230 {lab=gclk}
N 330 -230 330 -140 {lab=gclk}
N 230 -220 370 -220 {lab=en}
N 370 -220 370 -140 {lab=en}
N 20 -60 140 -60 {lab=buf_out}
N 140 -260 140 -60 {lab=buf_out}
N 140 -260 350 -260 {lab=buf_out}
N 350 -260 350 -140 {lab=buf_out}
N 390 -200 420 -200 {lab=0}
N 390 -200 390 -190 {lab=0}
N 410 -170 470 -170 {lab=#net1}
N 470 -170 470 160 {lab=#net1}
N -220 160 470 160 {lab=#net1}
N -220 -190 -220 160 {lab=#net1}
C {/foss/designs/vco_adc/vco_sky130.sym} -290 10 3 0 {name=x1}
C {/foss/designs/vco_adc/buffer_sky130.sym} -130 10 3 0 {name=x2}
C {vsource.sym} -200 -250 2 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -280 -210 2 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -140 -220 0 0 {name=p1 sig_type=std_logic lab=in2}
C {gnd.sym} -80 -160 0 0 {name=l1 lab=0}
C {gnd.sym} -170 -280 0 0 {name=l2 lab=0}
C {gnd.sym} -260 -240 0 0 {name=l3 lab=0}
C {iopin.sym} 40 -150 3 0 {name=p2 lab=gclk}
C {devices/code.sym} -80 -320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {code_shown.sym} 120 -390 0 0 {name=s1 only_toplevel=false value=".control
save all
tran 0.005n 200n
plot gclk
plot en
plot buf_out
.endc"}
C {vsource.sym} 60 -180 2 0 {name=V3 value="PULSE(0 1.8 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {gnd.sym} 80 -210 0 0 {name=l4 lab=0}
C {lab_pin.sym} 80 -140 2 0 {name=p3 sig_type=std_logic lab=en}
C {lab_pin.sym} 10 -160 0 0 {name=p4 sig_type=std_logic lab=buf_out}
C {gnd.sym} 420 -200 0 0 {name=l5 lab=0}
C {/foss/designs/vco_adc/icg_sky130.sym} 350 10 3 0 {name=x3}
