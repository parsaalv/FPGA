# 🔹 Project 1 — Basic Logic Gates

## 📘 Description
This project implements several fundamental **combinational logic gates** in VHDL and maps their outputs to LEDs on a Spartan‑6 FPGA board.

## ⚙️ Inputs & Outputs
**Inputs**
- `a`
- `b`
- `c`

**Outputs**
- `q(0)` … `q(6)`  
Each output corresponds to a different Boolean expression derived from the inputs.

## 🔌 Pin Mapping
From the UCF file:

Inputs:
- `a` → P44
- `b` → P43
- `c` → P41

Outputs:
- `q(0)` → P10  
- `q(1)` → P9  
- `q(2)` → P8  
- `q(3)` → P7  
- `q(4)` → P6  
- `q(5)` → P5  
- `q(6)` → P2  

## 📂 Files
- `Basic_gates.vhd`  
- `Basic_gates.ucf`  
- `Basic_gates.xise`  

## 🧠 Concepts Demonstrated
- Basic Boolean logic  
- Concurrent signal assignments  
- UCF pin mapping
