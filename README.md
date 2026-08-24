# 🏢 SIPPICOM IT-Solutions — Cloud Suite & Tools

[![CI Status](https://github.com/Sippicom-IT-SOLUTIONS/Siptools/actions/workflows/verify-and-release.yml/badge.svg)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools/actions)
[![Platform](https://img.shields.io/badge/Platform-Windows%20x64-0078D6.svg?logo=windows)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207%2B-5391FE.svg?logo=powershell)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)
[![License](https://img.shields.io/badge/License-Proprietary%20%2F%20Internal-F78D1F.svg)](https://github.com/Sippicom-IT-SOLUTIONS/Siptools)

Modern, high-performance, multi-threaded administrative suite and deployment engine for Windows workstations and servers. All utilities are directly executable in memory via zero-token PowerShell one-liners (`irm | iex`) or as standalone 64-bit `.exe` binaries with zero runtime dependencies.

---

## ⚡ Unified Interactive Cloud Hub

Launch the complete interactive SIPPICOM Cloud Suite menu with a single command in any Windows PowerShell window:

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/main.ps1 | iex
```

```text
                ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░
               ▒▓▒░              ░▒▒░
            ░ ░▒▓░░░░░░░░░░░░░░░░░░▒░░░
          ░▒▒░▒▓░░░░░░░░░░░░░░░░░░░▒▒▒▒▒░
         ░▓▒  ▒▓░                  ░▒▒  ░▓▒
         ▒▒   ░▒░                  ░▒░   ░░
         ░▓▒  ░░                    ░░
          ░▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░
            ░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒░
              ░░                    ░░  ░▓▒
          ░░   ░▒░                  ░▒░   ▒▒
          ▒▓░  ░▒▒                  ░▓▒  ░▓▒
          ░▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░▒▓░░▒▒░
            ░░░▒░░░░░░░░░░░░░░░░░░░▒▓░ ░
               ░▒▒░              ░▒▓▒
                ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░

                 --== SIPPICOM IT-SOLUTIONS ==--
==================================================================
   SIPPICOM IT-SOLUTIONS — CLOUD SUITE & DEPLOYMENT HUB
   Live GitHub Execution Engine (irm | iex)
==================================================================

Select a SIPPICOM Cloud Tool:

  [1] > RootOfTrust    - RDP Code Signing & PKI Trust Suite
  [2] > PaperJamZero   - Multi-Threaded Spooler & Network Hub
  [3] > TurnKeyPC      - Workstation Setup & Software Deployer
  [4] > TurnKeyFast    - Unattended Silent Workstation Deployer
  [5] > CtrlAltPass    - Enterprise Password Generator
  [6] > PingMeMaybe    - Network Diagnostics, Port Scanner & SSL
  [7] > Download All   - Save standalone binaries locally
  [Q] > Exit
```

---

## 🛠️ Individual Tool One-Liners (`irm | iex`)

| Tool | Focus Area | One-Liner Execution Command |
| :--- | :--- | :--- |
| **🔐 RootOfTrust** | RDP Security & Code Signing | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/RootOfTrust/RootOfTrust.ps1 \| iex` |
| **🖨️ PaperJamZero** | Spooler & Network Queue Engine | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PaperJamZero/PaperJamZero.ps1 \| iex` |
| **🚀 TurnKeyPC** | Workstation Setup (Interactive) | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyPC/TurnKeyPC.ps1 \| iex` |
| **⚡ TurnKeyFast** | Workstation Setup (Unattended) | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyFast/TurnKeyFast.ps1 \| iex` |
| **🔑 CtrlAltPass** | Enterprise Credential Security | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/CtrlAltPass/CtrlAltPass.ps1 \| iex` |
| **📡 PingMeMaybe** | Network Diagnostics, Ports & SSL | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PingMeMaybe/PingMeMaybe.ps1 \| iex` |

---

## 📖 Tool Capabilities & Documentation

### 1. 🔐 RootOfTrust (`RootOfTrust.exe` / `RootOfTrust.ps1`)
**RDP Security, Certificate Authority & Code Signing Suite**
- Generates 2048-bit RSA / SHA-256 self-signed code signing certificates.
- Installs public certificates directly into local machine `Root` (Trusted Root Certification Authorities) and `TrustedPublisher` stores.
- Configures Terminal Services warning suppression policies (`AuthenticationLevelOverride`, `PromptForCredentials`).
- Signs `.rdp` connection files via native `rdpsign.exe` using certificate SHA-256 thumbprints.

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/RootOfTrust/RootOfTrust.ps1 | iex
```

---

### 2. 🖨️ PaperJamZero (`PaperJamZero.exe` / `PaperJamZero.ps1`)
**Multi-Threaded Spooler Manager & Network Print Hub**
- Restarts and diagnoses the Windows Print Spooler (`spoolsv.exe`).
- Purges stuck `.SPL` and `.SHD` print spool files from `System32\spool\PRINTERS`.
- Resets offline printer queues back to online status.
- Installs Standard TCP/IP network printer ports and drivers.
- Performs full native printer backup and restoration migrations (`PrintBrm.exe` `.printerExport` format).

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PaperJamZero/PaperJamZero.ps1 | iex
```

---

### 3. 🚀 TurnKeyPC & TurnKeyFast (`TurnKeyPC.exe`, `TurnKeyFast.exe` / `TurnKeyPC.ps1`)
**Parallel Multi-Threaded Workstation Deployment Engine**
- Concurrently installs essential business software across background worker threads:
  - **Microsoft 365 Apps** (German locale, Business configuration via Office Deployment Tool).
  - **Adobe Acrobat Reader 64-bit** (with automatic scheduled update tasks).
  - **VLC Media Player x64**.
  - **7-Zip x64**.
- **Interactive Mode (`TurnKeyPC`)**: Provides a real-time GUI with progress bars and status logs.
- **Fast Mode (`TurnKeyFast`)**: Silent unattended workstation provisioning with zero prompts.

```powershell
# Interactive Deployment:
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyPC/TurnKeyPC.ps1 | iex

# Silent Unattended Deployment:
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/TurnKeyFast/TurnKeyFast.ps1 | iex
```

---

### 4. 🔑 CtrlAltPass (`CtrlAltPass.exe` / `CtrlAltPass.ps1`)
**Enterprise Cryptographic Password & PIN Generator**
- Generates high-entropy 16-, 20-, and 24-character passwords using cryptographically secure random number generators (`RNGCryptoServiceProvider`).
- Generates 6-digit numeric PINs for MFA and service accounts.
- Features automatic clipboard copy and clean, distraction-free corporate GUI.

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/CtrlAltPass/CtrlAltPass.ps1 | iex
```

---

### 5. 📡 PingMeMaybe (`PingMeMaybe.exe` / `PingMeMaybe.ps1`)
**Comprehensive Network Diagnostics, Port Scanner, DNS/DHCP Inspector & SSL Suite**
- **Direct Column Header Sorting**: Instant natural numerical IPv4 sorting, alphabetical hostname, latency, MAC, and active service grouping (Web UI, SSH, RDP, SMB, SQL) directly by clicking table column headers.
- **DNS & DHCP Origin Fingerprinting**: Probes DHCP & DNS servers to automatically distinguish between **Windows Active Directory Domain Controllers / Servers** (ports 53, 88, 389, 445), **Router / Gateway Appliances** (Fritz!Box, UniFi, Cisco), and **Public DNS Providers** (Cloudflare, Google, Quad9, Cisco Meraki).
- **Fast Subnet IP & Port Scanner**: Scans entire `/24` subnets across 256 parallel worker threads, discovering hostnames, enterprise hardware profiles, printers, SQL servers, and open ports with instant one-click action links for **Web UI (HTTP/HTTPS)**, **SSH**, **RDP**, and **SMB Shares**.
- **SSL / TLS Certificate Inspector**: Analyzes remote HTTPS certificates, issuer chains, cipher suites, and warns if expiration is within 30 days.
- **Public WAN IP & Geolocation**: Instant external IP, ISP name, and city/country.
- **DNS Speed Benchmark**: Compares local DNS response latency against Cisco Meraki (`208.67.222.222`), Cloudflare (`1.1.1.1`), Google (`8.8.8.8`), Quad9 (`9.9.9.9`), and OpenDNS.
- **Wi-Fi Signal & Nearby SSID Sniffer**: Real-time signal strength (%), channels, encryption types (WPA2/WPA3), and nearby network scanner.
- **Bandwidth Speedtest & Live Ping**: Multi-stream download throughput tester (Mbps) and continuous ping graph.

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/tools/PingMeMaybe/PingMeMaybe.ps1 | iex
```

---

## 📂 Repository File Structure

```text
├── main.ps1                   <-- Central SIPPICOM Cloud Interactive Hub
├── README.md                  <-- Documentation & One-Liners
├── .github/
│   └── workflows/
│       └── verify-and-release.yml <-- GitHub Actions CI/CD Verification
├── tools/
│   ├── RootOfTrust/
│   │   └── RootOfTrust.ps1    <-- Cloud RDP Signer
│   ├── PaperJamZero/
│   │   └── PaperJamZero.ps1   <-- Cloud PrinterFix Engine
│   ├── TurnKeyPC/
│   │   └── TurnKeyPC.ps1      <-- Interactive Workstation Deployer
│   ├── TurnKeyFast/
│   │   └── TurnKeyFast.ps1    <-- Unattended Silent Deployer
│   ├── CtrlAltPass/
│   │   └── CtrlAltPass.ps1    <-- Cloud Credential Generator
│   └── PingMeMaybe/
│       └── PingMeMaybe.ps1    <-- Network Diagnostics & Port Scanner
└── bin/                       <-- Compiled 64-bit Standalone Executables
    ├── RootOfTrust.exe
    ├── PaperJamZero.exe
    ├── TurnKeyPC.exe
    ├── TurnKeyFast.exe
    ├── CtrlAltPass.exe
    └── PingMeMaybe.exe
```

---

## 💻 Standalone Executable Binaries (`bin/`)

For locked-down or offline environments where script execution is restricted, pre-compiled standalone 64-bit native binaries with embedded icons and zero external runtime dependencies are located in the [`bin/`](./bin/) folder.

---

## 🔄 Automated Deployment Pipeline

When developing tools locally, use the automated build scripts:

- **Manual One-Click Deploy**:
  ```powershell
  powershell -ExecutionPolicy Bypass -File .\Build-And-Deploy.ps1
  ```

---

## Kontakt

**Haupt-Maintainer / Ansprechpartner für dieses Projekt:** Aya Gürster

---

© 2026 SIPPICOM IT-Solutions. All rights reserved.
