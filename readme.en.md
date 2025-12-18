Below is a **complete English translation** of the provided document. The technical meaning, structure, and Markdown formatting have been preserved, with wording adjusted to read naturally for an international open-source and hardware-security audience.

---

````markdown
# 🔍 JTAGulator-ID-Tracker

**Enhanced firmware based on JTAGulator | Integrated manufacturer ID database with over 2,000 vendors**

*Hardware security testing tool · JTAG/SWD interface scanning · Automatic chip manufacturer identification*

---

## 📖 Table of Contents
- [Project Overview](#project-overview)
- [✨ New Features](#-new-features)
- [🧩 Hardware Requirements](#-hardware-requirements)
- [📦 Flashing Guide](#-flashing-guide)
- [🔧 Usage Demonstration](#-usage-demonstration)
- [📊 Manufacturer Database](#-manufacturer-database)
- [🎯 Application Scenarios](#-application-scenarios)
- [🤝 Contribution Guide](#-contribution-guide)
- [⚠️ Notes and Warnings](#️-notes-and-warnings)
- [📄 License](#-license)

---

## Project Overview

**JTAGulator-ID-Tracker** is an enhanced firmware based on the original open-source **[JTAGulator](https://github.com/grandideastudio/jtagulator)** hardware.  
JTAGulator was designed by Joe Grand (@joegrand) as a hardware security testing tool specifically for identifying debug interfaces on embedded devices.

### Original JTAGulator Overview
- **Function**: Automatically discovers JTAG, SWD, UART, and other debug interfaces
- **MCU**: Parallax Propeller P8X32A microcontroller
- **Storage**: 24LC512 EEPROM (64 KB) for program and data storage
- **Applications**: Hardware security research, reverse engineering, device diagnostics

### Improvements in This Project
The original firmware used only half of the EEPROM capacity (32 KB).  
This project fully utilizes the entire 64 KB EEPROM and integrates a large chip manufacturer identification database, enabling automatic vendor identification during interface scanning.

---

## ✨ New Features

| Feature | Original JTAGulator | Enhanced Version |
| :--- | :--- | :--- |
| **EEPROM Usage** | 50% (32 KB / 64 KB) | **100% (64 KB / 64 KB)** |
| **Manufacturer ID Database** | None | **Over 2,000 manufacturers** |
| **JTAG Scan** | Interface detection only | **Interface detection + manufacturer name** |
| **SWD Scan** | Interface detection only | **Interface detection + manufacturer name** |
| **Database Update** | Not supported | **Flash once, use permanently** |

### Key Advantages
1. **Intelligent Identification** – Automatically identifies manufacturers of ARM, MIPS, PowerPC, and other architectures
2. **Improved Efficiency** – Manufacturer information is displayed in real time during scanning, no external lookup required
3. **Comprehensive Database** – Covers major vendors as well as many niche manufacturers
4. **Backward Compatibility** – Fully compatible with all original JTAGulator functionality

---

## 🧩 Hardware Requirements

### Required Equipment
- JTAGulator hardware device
- Mini USB cable (for PC connection)
- Dupont wires (for connecting to the target device)

### Supported Target Devices
- Any embedded device with JTAG or SWD interfaces
- Interfaces with different voltage levels
- UARTs at any baud rate
- Other devices supporting boundary scan

---

## 📦 Flashing Guide

### Step 1: Flash the Manufacturer Database
**This is the most important step and only needs to be done once!**

```bash
# Flash using Propeller Tool or OpenPropeller
1. Open the EEPROM_Update directory
2. Set `EEPROM_Update.spin` as the top-level file
3. Connect the JTAGulator to your computer
4. Compile and flash the firmware
````

**Database Writing Process:**

* Open a serial terminal
* Set baud rate to 115200 bps, 8 data bits, 1 stop bit, no parity
* Connect to the JTAGulator

<div align="center">
<img src="image/running.png" alt="Database writing in progress" width="80%">
<p><em>Writing database in progress</em></p>
</div>

* **Wait for the process to complete (approximately 20 minutes)**
* Progress will be displayed in the serial terminal
* The device will stop automatically when finished
* If interrupted, simply power-cycle and retry
* Once written successfully, the database will not be written again

<div align="center">
<img src="image/finish.png" alt="Database write completed" width="80%">
<p><em>Database write completed</em></p>
</div>

> 💡 **Important Note**: The database flashing process takes time, but it is worth it.
> Once completed, you can freely switch firmware versions without ever reflashing the database.

### Step 2: Flash the Main Firmware

```bash
1. Return to the project root directory
2. Set `JTAGulator.spin` as the top-level file
3. Compile and flash the firmware
4. The device is ready to use after reboot
```

### Serial Configuration

| Parameter    | Value  |
| :----------- | :----- |
| Baud Rate    | 115200 |
| Data Bits    | 8      |
| Stop Bits    | 1      |
| Parity       | None   |
| Flow Control | None   |

---

## 🔧 Usage Demonstration

<div align="center">
<img src="image/jtag.png" alt="JTAG scan result" width="80%">
<p><em>Manufacturer name identified during JTAG scan</em></p>
</div>

<div align="center">
<img src="image/swd.png" alt="SWD scan result" width="80%">
<p><em>Manufacturer name identified during SWD scan</em></p>
</div>

---

## 📊 Manufacturer Database

### Database Statistics

| Category                   | Count | Description                                                |
| :------------------------- | :---- | :--------------------------------------------------------- |
| **Major Chip Vendors**     | 150+  | Intel, ARM, STMicroelectronics, NXP, TI, etc.              |
| **Asian Manufacturers**    | 800+  | Mainland China, Taiwan, Korea, Japan                       |
| **Specialized IC Vendors** | 400+  | Communications, industrial control, automotive electronics |
| **MCU Manufacturers**      | 600+  | Various microcontroller vendors                            |
| **Other Vendors**          | 50+   | FPGA, CPLD, and related device manufacturers               |

### Manufacturer Information Fields

The database includes the following key information:

* **Manufacturer ID** – Vendor code from the chip IDCODE
* **Manufacturer Name** – Full official company name
* **Common Brand Names** – Market-facing brand names
* **Main Products** – Representative product families
* **Official Website** – Manufacturer’s website link

---

## 🎯 Application Scenarios

### 1. Hardware Security Assessment

* Identify exposed debug interfaces and evaluate security risks
* Discover hidden test points or debug ports
* Provide hardware access points for penetration testing

### 2. Reverse Engineering Research

* Analyze unknown device architectures
* Identify chip manufacturers and potential models
* Gather debug interface information for deeper analysis

### 3. Device Repair and Debugging

* Recover bricked embedded devices
* Access debug and programming interfaces
* Extract firmware or perform firmware updates

### 4. Education and Learning

* Learn how JTAG and SWD protocols work
* Understand boundary scan technology
* Master debug interface discovery techniques

---

## 🤝 Contribution Guide

Contributions of all kinds are welcome!

### Bug Reports

If you find a bug, please contact me as soon as possible.

### Updating the Manufacturer Database

Found a missing manufacturer ID? Please submit:

* The chip IDCODE value
* The official manufacturer name
* A reference link (datasheet or official website)

---

## ⚠️ Notes and Warnings

### Legal and Ethical Notice

* **For authorized security testing only** – Ensure you have permission to test the target device
* **Comply with local laws and regulations** – Debugging hardware may be regulated in some regions
* **Respect intellectual property** – Do not use this tool for piracy or infringement

### Technical Precautions

1. **Power Requirements** – Ensure stable power to the target device to avoid damage
2. **Pin Connections** – Double-check pin mappings to prevent short circuits
3. **ESD Protection** – Use proper ESD precautions when handling sensitive devices
4. **First-Time Flashing** – The database only needs to be flashed once

### Frequently Asked Questions

**Q: Why does flashing the database take 20 minutes?**
A: EEPROM write speeds are slow, and each sector must be verified to ensure data integrity.

**Q: Can more manufacturers be added?**
A: Yes. There is still room for a few hundred additional manufacturers.

**Q: Which operating systems are supported?**
A: **Propeller Tool 1.3.2** is recommended for flashing; any serial terminal can be used.

**Q: How can I confirm the database was flashed successfully?**
A: After completion, the serial terminal will display
`Result: Success - Writing completion flag`.

---

## 📄 License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

### Acknowledgements

* Thanks to Joe Grand for creating the excellent JTAGulator hardware
* Thanks to all chip manufacturers for publishing public technical documentation
* Thanks to community members for testing and feedback

---

<div align="center">

### 🌟 If this project helped you, please give it a Star!

**Your support motivates continued development**

*Last updated: December 2025*

</div>
```
