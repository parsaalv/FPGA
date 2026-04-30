# 🔹 Project 4 — Parametric Full Adder (Method 1)

## 📘 Description
This project implements a **parameterizable Full Adder** using a hierarchical VHDL design based on reusable Half Adder (HA) and Full Adder (FA) components.

A **Full Adder (FA)** adds three binary inputs:
- A
- B
- Carry-in (Cin)

Outputs:
- Sum
- Carry-out (Cout)

It is the fundamental building block of multi‑bit adders and ALUs.

## ⚙️ Inputs & Outputs
**Inputs**
- Multi-bit A
- Multi-bit B
- Carry-in

**Outputs**
- Sum vector  
- Carry-out  

(Exact widths depend on the `generic` parameter.)

## 🧩 Architecture Overview
This method constructs a Full Adder using:
- **HA (Half Adder)** → computes sum and carry for two bits  
- **FA (Full Adder)** → constructed from 2 HAs + one OR gate  

The design then instantiates these in a **ripple-carry arrangement** using parameters to scale up.

## 🧪 Simulation
The included testbench (`fa_parametric_method1_tb.vhd`) validates the design.

## 📂 Files
- `fa_parametric_method1.vhd`  
- `FA.vhd`  
- `HA.vhd`  
- `fa_parametric_method1_tb.vhd`  
- `fa_parametric_method1.ucf`  
- `fa_parametric_method1.xise`  

## 🧠 Concepts Demonstrated
- Hierarchical VHDL  
- Component instantiation  
- Full‑Adder construction from Half‑Adders  
- Parametric arithmetic design
