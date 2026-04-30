# FPGA Digital Design (FPGA)

## 📌 Description

This repository contains materials, codes, and implementations related to the course  
**FPGA Digital Design**.

**MFT Plus – Technical and Vocational Training Complex**  
**Instructor: Shayan Shahidi Sadeghi**

FPGA or field programmable gate array are semiconductor chips made up of many small electronic components called logic blocks. The main distinction of FPGA is that the chip has a raw structure and you can define the structure, architecture, and communication between logic gates yourself. This repository documents my learning journey through this course.

---

## 👤 Student Information

**Student Name:** Parsa Alavinikoo  
**Course Goal:** Personal learning and skill development in FPGA design

This repository includes all of my **homework assignments and in-class exercises** completed throughout this course.

---

## 📚 Course Topics

### 1️⃣ Introduction to FPGAs and Hardware Description Languages

### 2️⃣ Data Types

### 3️⃣ Operators and Properties

### 4️⃣ Coding Structure

### 5️⃣ Simulation Methods

### 6️⃣ Concurrent Statements

### 7️⃣ Sequential Statements

### 8️⃣ Signals and Variables

### 9️⃣ Synchronous Sequential Circuits

### 🔟 Package & Component

### 1️⃣1️⃣ Function & Procedure

### 1️⃣2️⃣ Peripheral Devices

### 1️⃣3️⃣ Serial Communication

### 1️⃣4️⃣ IP Core
---

## 📝 Course Contents

### Project 1 — Basic Logic Gates
Implementation of basic combinational logic gates in VHDL.

📂 Folder: `1-Basic_gates`

---

### Project 2 — LED Mapper using Generate
Mapping switch inputs to LEDs using VHDL `generate` statement.

📂 Folder: `2-generate_led_mapper`

---

### Project 3 — Logic Vector Operations
Vector-based logical operations implemented using concurrent statements.

📂 Folder: `3-logic_vector_operations`

---

### Project 4 — Parametric Full Adder (Method 1)
Implementation of an N-bit full adder using component instantiation and generics.

📂 Folder: `4-fa_parametric_method1`

---

### Project 5 — Parametric Full Adder (Method 2)
Alternative implementation of an N-bit full adder using hierarchical design.

📂 Folder: `5-fa_parametric_method2`

---

## 🛠 Target Hardware & Tools

| Item               | Details |
|-------------------|---------|
| **Target Board**  | Spartan-6 (XC6SLX9 – TQG144 package, -2 speed grade) |
| **Synthesis Tool**| XST (Xilinx Synthesis Technology) |
| **Simulator**     | ISim (VHDL/Verilog) |
| **Language**      | VHDL-93 |
| **IDE**           | Xilinx ISE 14.7 |

---

## ✅ Learning Outcomes (from course)

After completing this course, students will:
- Be familiar with FPGA structures and their differences from microcontrollers
- Be able to code and simulate in the ISE 14.7 environment
- Gain the necessary skills to implement various combinational and sequential digital circuits
- Be able to implement serial communications, interface with peripheral devices, and use IP cores in designs

# 📌 Spartan-6 XC6SLX9 – Pin Mapping

Extracted from the official board pin guide.

---

## 🔴 LED Pins

| LED   | Pin   |
|-------|-------|
| LED0  | IO_10 |
| LED1  | IO_9  |
| LED2  | IO_8  |
| LED3  | IO_7  |
| LED4  | IO_6  |
| LED5  | IO_5  |
| LED6  | IO_2  |
| LED7  | IO_1  |
| LED8  | IO_22 |
| LED9  | IO_21 |
| LED10 | IO_17 |
| LED11 | IO_16 |
| LED12 | IO_15 |
| LED13 | IO_14 |
| LED14 | IO_12 |
| LED15 | IO_11 |

---

## 🔢 Seven Segment Display (7-SEG)

| Segment | Pin   |
|---------|-------|
| A       | IO_74 |
| B       | IO_75 |
| C       | IO_78 |
| D       | IO_79 |
| E       | IO_80 |
| F       | IO_81 |
| G       | IO_82 |
| P (DP)  | IO_83 |
| K1      | IO_88 |
| K2      | IO_87 |
| K3      | IO_85 |
| K4      | IO_84 |

---

## 🟦 LCD (16x2 – HD44780 Compatible)

| Signal | Pin   |
|--------|-------|
| RS     | IO_50 |
| RW     | IO_51 |
| EN     | IO_56 |
| D0     | IO_57 |
| D1     | IO_58 |
| D2     | IO_59 |
| D3     | IO_61 |
| D4     | IO_62 |
| D5     | IO_64 |
| D6     | IO_66 |
| D7     | IO_67 |

---

## 🟩 ADC Interface

| Signal | Pin    |
|--------|--------|
| WR     | IO_104 |
| D0     | IO_105 |
| D1     | IO_111 |
| D2     | IO_112 |
| D3     | IO_114 |
| D4     | IO_115 |
| D5     | IO_116 |
| D6     | IO_117 |
| D7     | IO_118 |

---

## 🔌 USB CH340 (UART)

| Signal         | Pin   |
|----------------|-------|
| USB_Serial_TX  | IO_23 |
| USB_Serial_RX  | IO_24 |

---

## 🟠 Push Buttons

| Button | Pin   |
|--------|-------|
| SW4    | IO_47 |
| SW5    | IO_46 |
| SW6    | IO_45 |

---

## 🔔 Buzzer

| Device | Pin   |
|--------|-------|
| Buzzer | IO_48 |

---

## 🟪 DIP Switch – S1

| Switch | Pin   |
|--------|-------|
| P1     | IO_44 |
| P2     | IO_43 |
| P3     | IO_41 |
| P4     | IO_40 |
| P5     | IO_38 |

---

## 🟫 DIP Switch – S2

| Switch | Pin   |
|--------|-------|
| P1     | IO_35 |
| P2     | IO_34 |
| P3     | IO_33 |
| P4     | IO_32 |
| P5     | IO_30 |

---

## 🟧 Keypad Matrix (4x4)

| Line | Pin    |
|------|--------|
| R1   | IO_123 |
| R2   | IO_121 |
| R3   | IO_120 |
| R4   | IO_119 |
| C1   | IO_131 |
| C2   | IO_127 |
| C3   | IO_126 |
| C4   | IO_124 |

---

## ⌨️ PS/2 Keyboard

| Signal | Pin    |
|--------|--------|
| DATA   | IO_134 |
| CLK    | IO_137 |

---

## 🟦 I2C – AT24xx / LM75

| Signal | Pin   |
|--------|-------|
| SCL    | IO_92 |
| SDA    | IO_93 |

---

## 🟩 I2C – DS3231 RTC

| Signal | Pin    |
|--------|--------|
| SCL    | IO_132 |
| SDA    | IO_133 |

---

## 🟪 BDX53C Driver

| Device  | Pin    |
|---------|--------|
| BDX53C  | IO_100 |

---

## 🟨 Oscillator

| Signal | Pin   |
|--------|-------|
| OSC    | IO_55 |

