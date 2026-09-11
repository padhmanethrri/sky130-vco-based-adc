v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -60 160 -60 {lab=0}
N 60 -60 80 -60 {lab=#net1}
N 140 -20 160 -20 {lab=0}
N 60 -20 80 -20 {lab=#net2}
N 60 -40 90 -40 {lab=out}
N 60 -0 80 0 {lab=0}
C {gnd.sym} 160 -60 0 0 {name=l1 lab=0}
C {gnd.sym} 80 0 0 0 {name=l2 lab=0}
C {vsource.sym} 110 -60 3 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=0}
C {vsource.sym} 110 -20 3 0 {name=V2 value=1.3 savecurrent=false}
C {iopin.sym} 90 -40 0 0 {name=p1 lab=out}
C {devices/code.sym} -160 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {code_shown.sym} -40 -550 0 0 {name=s1 only_toplevel=false value=".control
save all
let vin_val=0.2
let vin_stop=1.8
let vin_step=0.2

while vin_val <= vin_stop
	alter V2 dc=vin_val
	tran 0.005n 30n
	meas tran period trig v(out) val=0.9 rise=2 targ v(out) val=0.9 rise=3
	echo VIN= $&vin_val Period=$&period
	let vin_val=vin_val+vin_step
end
.endc
"}
C {/foss/designs/vco_adc/vco_sky130.sym} -90 -30 0 0 {name=x1}
