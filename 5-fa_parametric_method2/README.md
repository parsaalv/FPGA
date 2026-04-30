# 🔹 Project 5 — Parametric Full Adder (Method 2)

## 📘 Description
This project implements another parametric Full Adder architecture, but unlike Method 1, it uses a modular and reusable block called **HAs_Parametric**, which generates a chain of Half Adders using VHDL `generate`.

### What is a Full Adder?
A Full Adder adds:
- A  
- B  
- Cin  

Outputs:
- Sum  
- Cout  

### What is HAs_Parametric?
`HAs_Parametric.vhd` is a **parameterized chain of Half Adders**, automatically generated using a loop.  
This allows the circuit to scale to any bit-width using:
generic( N : integer );


This method showcases a more compact, generate‑driven style for building arithmetic structures.

## ⚙️ Inputs & Outputs
**Inputs**
- A (multi‑bit)
- B (optional depending on architecture)
- Cin

**Outputs**
- Sum vector  
- Cout  

(Widths depend on generics.)

## 🧩 Architecture Overview
- Uses `generate` extensively  
- Replaces explicit HA and FA instantiations with a parametric HA chain  
- Demonstrates scalable and clean arithmetic construction

## 🧪 Simulation
The provided testbench checks correctness for different parameter values.

## 📂 Files
- `fa_parametric_method2.vhd`  
- `HAs_Parametric.vhd`  
- `HA.vhd`  
- `fa_parametric_method2_tb.vhd`  
- `fa_parametric_method2.ucf`  
- `fa_parametric_method2.xise`  

## 🧠 Concepts Demonstrated
- Parametric hardware design  
- Reusable Half‑Adder chain  
- VHDL `generate` for arithmetic circuits  
- Scalable ripple‑adder construction
