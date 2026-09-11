v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -130 180 50 {lab=#net1}
N 140 -160 140 -110 {lab=#net1}
N 140 -110 180 -110 {lab=#net1}
N 180 -160 210 -160 {lab=vdd}
N 210 -190 210 -160 {lab=vdd}
N 180 -190 210 -190 {lab=vdd}
N 350 -150 390 -150 {lab=vdd}
N 390 -190 390 -150 {lab=vdd}
N 350 -190 390 -190 {lab=vdd}
N 350 -120 350 -80 {lab=#net2}
N 350 -50 390 -50 {lab=vdd}
N 390 -150 390 -50 {lab=vdd}
N 520 -150 560 -150 {lab=vdd}
N 560 -190 560 -150 {lab=vdd}
N 520 -190 560 -190 {lab=vdd}
N 520 -120 520 -80 {lab=#net3}
N 520 -50 560 -50 {lab=vdd}
N 560 -150 560 -50 {lab=vdd}
N 690 -160 730 -160 {lab=vdd}
N 730 -200 730 -160 {lab=vdd}
N 690 -200 730 -200 {lab=vdd}
N 690 -130 690 -90 {lab=#net4}
N 690 -60 730 -60 {lab=vdd}
N 730 -160 730 -60 {lab=vdd}
N 350 -190 350 -180 {lab=vdd}
N 520 -190 520 -180 {lab=vdd}
N 690 -200 690 -190 {lab=vdd}
N 650 -160 650 -110 {lab=#net1}
N 180 -110 650 -110 {lab=#net1}
N 480 -150 480 -110 {lab=#net1}
N 310 -150 310 -120 {lab=#net1}
N 310 -120 310 -110 {lab=#net1}
N 310 -50 310 70 {lab=out}
N 480 -50 480 70 {lab=#net5}
N 650 -60 650 60 {lab=#net6}
N 180 50 180 180 {lab=#net1}
N 100 220 140 220 {lab=in}
N 650 160 650 260 {lab=in}
N 130 260 650 260 {lab=in}
N 130 220 130 260 {lab=in}
N 310 170 310 260 {lab=in}
N 480 170 480 260 {lab=in}
N 690 190 690 250 {lab=gnd}
N 180 250 690 250 {lab=gnd}
N 350 200 350 250 {lab=gnd}
N 520 200 520 250 {lab=gnd}
N 180 180 180 190 {lab=#net1}
N 350 -20 350 40 {lab=#net5}
N 350 100 350 140 {lab=#net7}
N 520 -20 520 40 {lab=#net6}
N 520 100 520 140 {lab=#net8}
N 690 -30 690 30 {lab=out}
N 350 -0 480 -0 {lab=#net5}
N 520 -0 650 -0 {lab=#net6}
N 270 -0 310 -0 {lab=out}
N 270 -0 270 290 {lab=out}
N 270 290 810 290 {lab=out}
N 810 0 810 290 {lab=out}
N 690 -0 810 0 {lab=out}
N 810 -0 840 -0 {lab=out}
N 180 -240 180 -190 {lab=vdd}
N 180 -240 430 -240 {lab=vdd}
N 360 -240 360 -190 {lab=vdd}
N 390 -190 520 -190 {lab=vdd}
N 430 -240 700 -240 {lab=vdd}
N 700 -240 700 -200 {lab=vdd}
N 520 -240 520 -190 {lab=vdd}
N 460 -250 460 -240 {lab=vdd}
N 580 250 580 280 {lab=gnd}
N 690 90 690 130 {lab=#net9}
C {iopin.sym} 460 -250 3 0 {name=p2 lab=vdd}
C {iopin.sym} 100 220 2 0 {name=p3 lab=in}
C {iopin.sym} 580 280 0 0 {name=p4 lab=gnd}
C {iopin.sym} 840 0 0 0 {name=p5 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 160 -160 0 0 {name=M2
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
C {sky130_fd_pr/nfet3_01v8.sym} 160 220 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -150 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -50 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} 330 70 0 0 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 330 170 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -150 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -50 0 0 {name=M8
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
C {sky130_fd_pr/nfet3_01v8.sym} 500 70 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} 500 170 0 0 {name=M10
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
C {sky130_fd_pr/pfet_01v8.sym} 670 -160 0 0 {name=M11
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 670 -60 0 0 {name=M12
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
C {sky130_fd_pr/nfet3_01v8.sym} 670 60 0 0 {name=M13
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
C {sky130_fd_pr/nfet3_01v8.sym} 670 160 0 0 {name=M14
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
