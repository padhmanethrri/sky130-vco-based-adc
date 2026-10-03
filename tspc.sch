v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 0 -70 40 {lab=#net1}
N -70 100 -70 140 {lab=#net2}
N -70 -60 110 -60 {lab=vdd}
N 110 -60 260 -60 {lab=vdd}
N -70 -30 -30 -30 {lab=vdd}
N -30 -60 -30 -30 {lab=vdd}
N 110 -30 140 -30 {lab=vdd}
N 140 -60 140 -30 {lab=vdd}
N 260 -30 290 -30 {lab=vdd}
N 290 -60 290 -30 {lab=vdd}
N 260 -60 290 -60 {lab=vdd}
N 110 -0 110 40 {lab=#net3}
N 260 -0 260 40 {lab=Qbar}
N -70 70 -50 70 {lab=vdd}
N -50 70 -40 70 {lab=vdd}
N -40 70 -30 70 {lab=vdd}
N -30 -30 -30 70 {lab=vdd}
N 110 100 110 140 {lab=#net4}
N 260 100 260 140 {lab=#net5}
N 190 -30 220 -30 {lab=#net3}
N 190 -30 190 170 {lab=#net3}
N 190 170 220 170 {lab=#net3}
N -70 200 110 200 {lab=gnd}
N 110 200 260 200 {lab=gnd}
N 110 20 190 20 {lab=#net3}
N 70 70 70 110 {lab=#net2}
N -70 110 70 110 {lab=#net2}
N -150 -30 -110 -30 {lab=D}
N -150 -30 -150 170 {lab=D}
N -150 170 -110 170 {lab=D}
N 130 -110 130 -60 {lab=vdd}
N 260 20 350 20 {lab=Qbar}
N -200 60 -150 60 {lab=D}
N -200 120 -140 120 {lab=clk}
N -140 70 -140 120 {lab=clk}
N -140 70 -110 70 {lab=clk}
N -140 30 -140 70 {lab=clk}
N -140 30 70 30 {lab=clk}
N 70 -30 70 30 {lab=clk}
N 30 30 30 170 {lab=clk}
N 30 170 70 170 {lab=clk}
N 30 130 220 130 {lab=clk}
N 220 70 220 130 {lab=clk}
N 110 200 110 230 {lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} -90 -30 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 90 70 0 0 {name=M10
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/pfet_01v8.sym} -90 70 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 90 -30 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 240 -30 0 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 90 170 0 0 {name=M5
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} -90 170 0 0 {name=M6
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 240 70 0 0 {name=M7
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 240 170 0 0 {name=M8
W=1
L=0.15
body=GND
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
C {iopin.sym} 130 -110 0 0 {name=p1 lab=vdd}
C {iopin.sym} 110 230 0 0 {name=p2 lab=gnd}
C {iopin.sym} -200 60 2 0 {name=p3 lab=D}
C {iopin.sym} 350 20 0 0 {name=p4 lab=Qbar}
C {iopin.sym} -200 120 2 0 {name=p5 lab=clk}
