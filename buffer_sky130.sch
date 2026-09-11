v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -130 -60 -0 {lab=in}
N -20 -100 -20 -30 {lab=#net1}
N 50 -130 50 0 {lab=#net1}
N 90 -100 90 -30 {lab=#net2}
N 140 -130 140 0 {lab=#net2}
N 250 -130 250 0 {lab=#net3}
N 290 -100 290 -30 {lab=out}
N -20 -160 90 -160 {lab=vdd}
N 90 -160 100 -160 {lab=vdd}
N 100 -160 190 -160 {lab=vdd}
N 190 -160 290 -160 {lab=vdd}
N -20 30 90 30 {lab=gnd}
N 90 30 180 30 {lab=gnd}
N 180 30 290 30 {lab=gnd}
N -20 -70 50 -70 {lab=#net1}
N 90 -70 140 -70 {lab=#net2}
N 180 -70 250 -70 {lab=#net3}
N -20 -0 10 -0 {lab=gnd}
N 10 0 10 30 {lab=gnd}
N 90 -0 110 0 {lab=gnd}
N 110 -0 110 30 {lab=gnd}
N 180 -0 210 -0 {lab=gnd}
N 210 0 210 30 {lab=gnd}
N 290 -0 330 -0 {lab=gnd}
N 330 0 330 30 {lab=gnd}
N 290 30 330 30 {lab=gnd}
N 120 -190 120 -160 {lab=vdd}
N 140 30 140 50 {lab=gnd}
N -90 -60 -60 -60 {lab=in}
N 290 -70 320 -70 {lab=out}
N -20 -130 10 -130 {lab=vdd}
N 10 -160 10 -130 {lab=vdd}
N 90 -130 120 -130 {lab=vdd}
N 120 -160 120 -130 {lab=vdd}
N 180 -130 210 -130 {lab=vdd}
N 210 -160 210 -130 {lab=vdd}
N 290 -130 320 -130 {lab=vdd}
N 320 -160 320 -130 {lab=vdd}
N 290 -160 320 -160 {lab=vdd}
N 180 -100 180 -30 {lab=#net3}
C {sky130_fd_pr/nfet_01v8.sym} -40 0 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -40 -130 0 0 {name=M2
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 70 0 0 0 {name=M3
W=2
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 70 -130 0 0 {name=M4
W=4
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 0 0 0 {name=M5
W=4
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -130 0 0 {name=M6
W=8
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 270 0 0 0 {name=M7
W=8
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 270 -130 0 0 {name=M8
W=16
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 120 -190 0 0 {name=p1 lab=vdd}
C {iopin.sym} 140 50 0 0 {name=p2 lab=gnd}
C {iopin.sym} -90 -60 2 0 {name=p3 lab=in}
C {iopin.sym} 320 -70 0 0 {name=p4 lab=out}
