# 8-bit Mixed-Signal VCO-Based ADC

A mixed-signal **8-bit VCO-based Analog-to-Digital Converter (ADC)** implemented using the **Sky130 PDK** and an open-source IC design flow.

The ADC uses a **time-domain voltage-to-frequency conversion** approach, where the input voltage controls the frequency of a ring oscillator and the resulting oscillator pulses are counted digitally.

## Project Overview

The basic conversion process is:

```text
Input Voltage
      │
      ▼
3-Stage Current-Starved Ring VCO
      │
      ▼
CMOS Buffer
      │
      ▼
Clock Gating / Measurement Window
      │
      ▼
8-bit Synchronous Counter
      │
      ▼
Capture / CDC
      │
      ▼
8-bit Digital Output
```

The project combines **custom analog design, digital RTL, mixed-signal simulation, custom layout, and digital physical implementation**.

---

## Architecture

### 1. Current-Starved Ring VCO

A **3-stage current-starved ring oscillator** is used as the voltage-to-frequency conversion element.

The input voltage controls the current available to the inverter stages. As the input voltage changes, the propagation delay of the stages changes, resulting in a corresponding change in oscillation frequency.

The VCO is characterized by sweeping the input voltage and measuring:

- Oscillation frequency
- Frequency tuning range
- VCO gain
- Linearity
- Startup behavior
- Power consumption
- Output swing

The VCO frequency is then used as the time-domain representation of the input voltage.

---

### 2. CMOS Buffer

The VCO output is passed through a **tapered CMOS inverter buffer** before driving the digital circuitry.

The buffer provides:

- Improved output drive
- Full logic-level swing
- Isolation between the VCO and digital load
- Reduced loading on the oscillator

The buffer uses progressively larger inverter stages to drive the following circuitry efficiently.

```text
VCO_OUT
   │
   ▼
  1×
   │
   ▼
  2×
   │
   ▼
  4×
   │
   ▼
  8×
   │
   ▼
BUF_OUT
```

---

### 3. Clock Gating

A controlled clock-gating stage defines the interval during which VCO pulses are counted.

```text
                 ┌─────────────┐
BUF_OUT ────────►│ Clock Gate  ├────► GATED_CLK
                 └──────┬──────┘
                        ▲
                        │
                       EN
```

When the measurement window is enabled, VCO pulses reach the counter.

When the window closes, counting stops.

The measurement-window duration is selected based on the actual VCO frequency range so that the 8-bit counter can represent the required range without overflow.

---

### 4. 8-bit Synchronous Counter

The gated VCO clock drives an **8-bit synchronous counter**.

The counter measures the number of VCO pulses occurring during the measurement interval.

```text
             GATED_CLK
                 │
                 ▼
        ┌─────────────────┐
        │  8-bit Counter  │
        └────────┬────────┘
                 │
                 ▼
             COUNT[7:0]
```

The counter provides the frequency-to-digital conversion.

The counter range is:

```text
0 to 255
```

The VCO frequency and measurement window are selected together to make effective use of the available 8-bit count range.

---

### 5. Capture and CDC

The counter operates using the VCO-derived clock, while the conversion-control logic operates using a reference/control clock.

A **capture and clock-domain-crossing (CDC)** mechanism is therefore used to transfer the final counter value and hold it as the ADC output.

```text
COUNT[7:0]
     │
     ▼
┌───────────────┐
│ Capture / CDC │
└───────┬───────┘
        │
        ▼
      D[7:0]
```

The multi-bit counter value is captured in a controlled manner to avoid inconsistent output data during clock-domain transfer.

---

### 6. Conversion Control FSM

A digital **finite-state machine (FSM)** controls the conversion sequence.

```text
       ┌─────────┐
       │  IDLE   │
       └────┬────┘
            │ START
            ▼
       ┌─────────┐
       │  RESET  │
       └────┬────┘
            │
            ▼
       ┌─────────┐
       │  COUNT  │
       └────┬────┘
            │
            ▼
       ┌─────────┐
       │ CAPTURE │
       └────┬────┘
            │
            ▼
       ┌─────────┐
       │  IDLE   │
       └─────────┘
```

The FSM controls:

- Counter reset
- Measurement-window enable
- Capture operation
- Conversion sequencing

This allows the ADC to operate as a repeatable conversion system rather than relying on manually generated simulation timing signals.

---

# Design Flow

## Analog / Custom Design

The analog blocks are developed at transistor level using the Sky130 PDK.

```text
Schematic
   ↓
Transistor Sizing
   ↓
Pre-Layout Simulation
   ↓
Custom Layout
   ↓
DRC
   ↓
LVS
   ↓
Parasitic Extraction
   ↓
Post-Layout Simulation
```

## Digital Design

The digital blocks are developed using Verilog and implemented using an open-source RTL-to-physical-design flow.

```text
Verilog RTL
    ↓
Functional Simulation
    ↓
Yosys Synthesis
    ↓
OpenROAD
    ↓
LibreLane
    ↓
Physical / Timing Verification
```

---

# Tools Used

| Category | Tool |
|---|---|
| PDK | Sky130 |
| Analog Schematic | Xschem |
| Analog Simulation | Ngspice |
| Custom Layout | Magic |
| RTL | Verilog |
| Waveform Analysis | GTKWave |
| Logic Synthesis | Yosys |
| Physical Design | OpenROAD |
| RTL-to-GDS Flow | LibreLane |

---

# Project Goals

The main goals of this project are to:

- Design a practical **VCO-based time-domain ADC**
- Characterize a current-starved ring VCO
- Convert voltage information into frequency and then digital data
- Integrate analog and digital blocks into a mixed-signal system
- Perform custom analog layout using the Sky130 PDK
- Implement digital logic using an open-source RTL-to-GDS flow
- Verify the design using simulation, DRC, LVS, and post-layout analysis
- Study the trade-offs between VCO frequency range, linearity, resolution, conversion time, power, and area

---

**Padhmanethrri**

**Technology:** Sky130  
**ADC Type:** VCO-Based Time-Domain ADC  
**Resolution:** 8-bit  
**Design Flow:** Xschem → Ngspice → Magic → Yosys → OpenROAD → LibreLane
