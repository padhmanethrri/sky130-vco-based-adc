v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -30 -60 -30 {lab=clk}
N -100 -10 -60 -10 {lab=gate}
N 120 -30 150 -30 {lab=gclk}
N -10 -70 -10 -40 {lab=VPB}
N 70 -70 70 -40 {lab=VNB}
N -10 -0 -10 40 {lab=VPWR}
N 80 -0 80 30 {lab=VGND}
C {sky130_stdcells/dlclkp_2.sym} 30 -20 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {iopin.sym} 150 -30 0 0 {name=p1 lab=gclk}
C {iopin.sym} -100 -30 2 0 {name=p2 lab=clk}
C {iopin.sym} -100 -10 2 0 {name=p3 lab=gate}
C {iopin.sym} -10 -70 2 0 {name=p4 lab=VPB}
C {iopin.sym} 70 -70 2 0 {name=p5 lab=VNB}
C {iopin.sym} -10 40 2 0 {name=p6 lab=VPWR}
C {iopin.sym} 80 30 2 0 {name=p7 lab=VGND}
