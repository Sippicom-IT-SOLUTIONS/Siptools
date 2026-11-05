# SIPPICOM Siptools

[![CI Status](https://github.com/Sippicom-IT-SOLUTIONS/Siptools/actions/workflows/verify-and-release.yml/badge.svg)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools/actions)
[![Platform](https://img.shields.io/badge/Platform-Windows%20x64-0078D6.svg?logo=windows)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207%2B-5391FE.svg?logo=powershell)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)
[![License](https://img.shields.io/badge/License-Proprietary%20%2F%20Internal-F78D1F.svg)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)

Windows tools that SIPPICOM IT-Solutions uses on customer workstations and servers. Each tool is a single 64-bit `.exe` (a .NET program that runs on the .NET Framework built into Windows, so nothing else needs installing). Start it with a PowerShell one-liner (`irm | iex`), which downloads the `.exe` to `%TEMP%` and runs it, or download the `.exe` from [`bin/`](./bin/) yourself.

Landing page: <https://ncscript.xyz/Siptools/>

---

## Hub menu

One command opens a menu with all six tools:

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/main.ps1 | iex
```

```text
                 --== SIPPICOM IT-SOLUTIONS ==--
==================================================================
               SIPPICOM IT-SOLUTIONS - SIPTOOLS HUB
     Downloads the selected tool from GitHub and starts it
==================================================================

Select a tool:

  [1] > RootOfTrust    - RDP File Signing & Certificates
  [2] > PaperJamZero   - Print Spooler Repair & Printer Migration
  [3] > TurnKeyPC      - Workstation Setup (with window)
  [4] > TurnKeyFast    - Workstation Setup (no prompts)
  [5] > CtrlAltPass    - Password & PIN Generator
  [6] > PingMeMaybe    - Network Scanner & Topology Map
  [7] > Download All   - Save all six .exe files to this folder
  [Q] > Exit
```

The menu starts with the SIPPICOM logo in block characters (left out above). The Diagnosezentrum is not in the menu, see [Diagnosezentrum](#diagnosezentrum).

---

## One-liners per tool

| Tool | What it does | Command |
| :--- | :--- | :--- |
| **RootOfTrust** | RDP file signing & certificates | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/RootOfTrust/RootOfTrust.ps1 \| iex` |
| **PaperJamZero** | Print spooler repair & printer migration | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PaperJamZero/PaperJamZero.ps1 \| iex` |
| **TurnKeyPC** | Workstation setup, with window | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyPC/TurnKeyPC.ps1 \| iex` |
| **TurnKeyFast** | Workstation setup, no prompts | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyFast/TurnKeyFast.ps1 \| iex` |
| **CtrlAltPass** | Password & PIN generator | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/CtrlAltPass/CtrlAltPass.ps1 \| iex` |
| **PingMeMaybe** | Network scanner & topology map | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PingMeMaybe/PingMeMaybe.ps1 \| iex` |

Run RootOfTrust, PaperJamZero and TurnKey as administrator: they change system settings.

---

## The tools

### RootOfTrust

Stops the "unknown publisher" warning when opening `.rdp` files.

- Creates a 2048-bit RSA / SHA-256 self-signed code-signing certificate.
- Installs it into the local machine `Root` (Trusted Root Certification Authorities) and `TrustedPublisher` stores.
- Sets the Terminal Services policies that suppress the warning (`AuthenticationLevelOverride`, `PromptForCredentials`).
- Signs `.rdp` files with the built-in `rdpsign.exe` using the certificate's SHA-256 thumbprint.
- Removes created certificates from the stores again.

### PaperJamZero

- Restarts and checks the Windows Print Spooler (`spoolsv.exe`).
- Deletes stuck `.SPL` and `.SHD` files from `System32\spool\PRINTERS`.
- Sets offline printer queues back to online.
- Adds TCP/IP printers by IP address, including port and driver.
- Backs up and restores printers with `PrintBrm.exe` (`.printerExport` format).

### TurnKeyPC and TurnKeyFast

One install engine, two ways to run it. Both install several packages in parallel:

- Microsoft 365 Apps for Enterprise (German, 64-bit) via the Office Deployment Tool with a fixed configuration. Existing Office installations are left alone.
- Adobe Acrobat Reader 64-bit
- VLC Media Player x64
- 7-Zip x64

**TurnKeyPC** shows a window with a progress bar and status log per package. **TurnKeyFast** runs the same installs without any prompts.

### CtrlAltPass

- Random passwords from a cryptographically secure source (`RNGCryptoServiceProvider`).
- Word mode with 238 German words, written without umlauts so the result can be typed on any keyboard.
- Custom patterns (character classes, groups, quantifiers) with a check that the pattern is valid.
- Numeric PINs, one-click copy to the clipboard.

### PingMeMaybe

- **Subnet scanner:** scans the local subnet in parallel and lists hostnames, MAC vendors and open ports (web UI, SSH, RDP, SMB, SQL), with one-click links to open them. Columns sort by clicking the header. Export to CSV, JSON or HTML.
- **DNS and DHCP origin:** tells Active Directory domain controllers, routers (FRITZ!Box, UniFi, Cisco) and public DNS providers apart.
- **Topology map:** draws each network as a star around its switch or gateway, traces the route to a device hop by hop and exports the full map as PNG.
- **WAN and DNS:** public IP, provider and location, and a DNS response-time comparison against Cloudflare (`1.1.1.1`), Google (`8.8.8.8`), Quad9 (`9.9.9.9`) and OpenDNS (`208.67.222.222`).
- **Wi-Fi:** signal strength, channel and encryption of the current and nearby networks.
- **Speed test:** download throughput and continuous ping.

### Diagnosezentrum

Download only, with a German interface (PowerShell 5.1).

- Tile grid with 8 categories, search and one-click profiles (Outlook problem, slow internet, slow PC, sign-in, printer).
- Checks system, hardware, updates, security, network, Wi-Fi, VPN, proxy, Microsoft 365, Outlook/Teams, printers and certificates.
- Repairs that ask before they run (SFC, DISM, update reset, DNS/spooler/DHCP, OneAuth, OST rebuild) and backups of Wi-Fi profiles, browser favorites, OneAuth and Outlook data.
- Reports as TXT and HTML (saved to `C:\SippicomInstall\diagnose`), compared with the last run, plus a plain-language report for the customer.

It is not a one-liner because the script needs its `assets` folder next to it. Download [`docs/downloads/Sippicom_Diagnosezentrum.zip`](./docs/downloads/Sippicom_Diagnosezentrum.zip) (also on the [landing page](https://ncscript.xyz/Siptools/#diagnosezentrum)), extract all files into one folder and start `Sippicom_Diagnosezentrum.bat`, as administrator for repairs.

---

## Repository layout

```text
├── main.ps1                   Hub menu
├── README.md
├── CHANGELOG.md
├── .github/workflows/
│   └── verify-and-release.yml Checks PowerShell syntax and that all binaries exist
├── tools/                     One loader per tool: downloads the .exe to %TEMP% and starts it
│   ├── RootOfTrust/RootOfTrust.ps1
│   ├── PaperJamZero/PaperJamZero.ps1
│   ├── TurnKeyPC/TurnKeyPC.ps1
│   ├── TurnKeyFast/TurnKeyFast.ps1
│   ├── CtrlAltPass/CtrlAltPass.ps1
│   └── PingMeMaybe/PingMeMaybe.ps1
├── bin/                       Published 64-bit .exe files
│   ├── RootOfTrust.exe
│   ├── PaperJamZero.exe
│   ├── TurnKeyPC.exe
│   ├── TurnKeyFast.exe
│   ├── CtrlAltPass.exe
│   └── PingMeMaybe.exe
└── docs/                      Landing page (GitHub Pages)
    └── downloads/
        └── Sippicom_Diagnosezentrum.zip
```

---

## How builds get here

The C# sources and the build script (`Build-And-Deploy.ps1`) live in the private repository `Sippicom-IT-SOLUTIONS/Siptools-Raw`. That pipeline compiles and obfuscates the tools, writes the changelog entries and pushes the finished `.exe` files into `bin/`. This repository only holds what gets published.

---

## Contact

Maintainer: Aya Gürster

---

© 2026 SIPPICOM IT-Solutions. All rights reserved.
