# 🏢 SIPPICOM IT-Solutions — Cloud Suite & Tools

[![CI Status](https://github.com/Sippicom-IT-SOLUTIONS/tools/actions/workflows/verify-and-release.yml/badge.svg)](https://github.com/Sippicom-IT-SOLUTIONS/tools/actions)
[![Platform](https://img.shields.io/badge/Platform-Windows%20x64-0078D6.svg?logo=windows)](https://github.com/Sippicom-IT-SOLUTIONS/tools)
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207%2B-5391FE.svg?logo=powershell)](https://github.com/Sippicom-IT-SOLUTIONS/tools)
[![License](https://img.shields.io/badge/License-Proprietary%20%2F%20Internal-F78D1F.svg)](https://github.com/Sippicom-IT-SOLUTIONS/tools)

Modern, high-performance, multi-threaded administrative suite and deployment engine for Windows workstations and servers. All utilities are directly executable in memory via zero-token PowerShell one-liners (`irm | iex`) or as standalone 64-bit `.exe` binaries with zero runtime dependencies.

---

## ⚡ Unified Interactive Cloud Hub

Launch the complete interactive SIPPICOM Cloud Suite menu with a single command in any Windows PowerShell window:

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/main.ps1 | iex
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

  [1] > CertRDP          - RDP Code Signing & PKI Trust Suite
  [2] > PrinterFix       - Multi-Threaded Print Spooler & IP Hub
  [3] > AutoDeploy       - Workstation Software & Setup Deployer
  [4] > AutoDeploy Fast  - Unattended Silent Workstation Deployer
  [5] > CtrlAltPass      - Enterprise Password Generator
  [6] > Download All     - Save standalone binaries locally
  [Q] > Exit
```

---

## 🛠️ Individual Tool One-Liners (`irm | iex`)

| Tool | Focus Area | One-Liner Execution Command |
| :--- | :--- | :--- |
| **🔐 CertRDP** | RDP Security & Code Signing | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/certrdp/CertRDP.ps1 \| iex` |
| **🖨️ PrinterFix** | Spooler & Network Queue Engine | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/printerfix/PrinterFix.ps1 \| iex` |
| **🚀 AutoDeploy** | Workstation Setup (Interactive) | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/autodeploy/AutoDeploy.ps1 \| iex` |
| **⚡ AutoDeploy Fast** | Workstation Setup (Unattended) | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/autodeploy/AutoDeployFast.ps1 \| iex` |
| **🔑 CtrlAltPass** | Enterprise Credential Security | `irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/ctrlaltpass/CtrlAltPass.ps1 \| iex` |

---

## 📖 Tool Capabilities & Documentation

### 1. 🔐 CertRDP (`CertRDP.exe` / `CertRDP.ps1`)
**RDP Security, Certificate Generation & Code Signing Suite**
- Generates 2048-bit RSA / SHA-256 self-signed code signing certificates.
- Installs public certificates directly into local machine `Root` (Trusted Root Certification Authorities) and `TrustedPublisher` stores.
- Configures Terminal Services warning suppression policies (`AuthenticationLevelOverride`, `PromptForCredentials`).
- Signs `.rdp` connection files via native `rdpsign.exe` using certificate SHA-256 thumbprints.

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/certrdp/CertRDP.ps1 | iex
```

---

### 2. 🖨️ PrinterFix (`SippicomPrinterFix.exe` / `PrinterFix.ps1`)
**Multi-Threaded Spooler Manager & Network Print Hub**
- Restarts and diagnoses the Windows Print Spooler (`spoolsv.exe`).
- Purges stuck `.SPL` and `.SHD` print spool files from `System32\spool\PRINTERS`.
- Resets offline printer queues back to online status.
- Installs Standard TCP/IP network printer ports and drivers.
- Performs full native printer backup and restoration migrations (`PrintBrm.exe` `.printerExport` format).

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/printerfix/PrinterFix.ps1 | iex
```

---

### 3. 🚀 AutoDeploy & AutoDeploy Fast (`SippicomAutoDeploy.exe` / `AutoDeploy.ps1`)
**Parallel Multi-Threaded Workstation Deployment Engine**
- Concurrently installs essential business software across background worker threads:
  - **Microsoft 365 Apps** (German locale, Business configuration via Office Deployment Tool).
  - **Adobe Acrobat Reader 64-bit** (with automatic scheduled update tasks).
  - **VLC Media Player x64**.
  - **7-Zip x64**.
- **Interactive Mode**: Provides a real-time GUI with progress bars and status logs.
- **Fast Mode (`AutoDeployFast`)**: Silent unattended workstation provisioning with zero prompts.

```powershell
# Interactive Deployment:
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/autodeploy/AutoDeploy.ps1 | iex

# Silent Unattended Deployment:
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/autodeploy/AutoDeployFast.ps1 | iex
```

---

### 4. 🔑 CtrlAltPass (`SippicomCtrlAltPass.exe` / `CtrlAltPass.ps1`)
**Enterprise Cryptographic Password & PIN Generator**
- Generates high-entropy 16-, 20-, and 24-character passwords using cryptographically secure random number generators (`RNGCryptoServiceProvider`).
- Generates 6-digit numeric PINs for MFA and service accounts.
- Features automatic clipboard copy and clean, distraction-free corporate GUI.

```powershell
irm https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/tools/ctrlaltpass/CtrlAltPass.ps1 | iex
```

---

## 📂 Repository File Structure

```text
├── main.ps1                   <-- Central SIPPICOM Cloud Interactive Hub
├── README.md                  <-- Documentation & One-Liners
├── SippiSign_QRCode.png       <-- ISO/IEC 18004 1:1 QR Code Matrix
├── .github/
│   └── workflows/
│       └── verify-and-release.yml <-- GitHub Actions CI/CD Verification
├── tools/
│   ├── certrdp/
│   │   └── CertRDP.ps1        <-- Cloud RDP Signer
│   ├── printerfix/
│   │   └── PrinterFix.ps1     <-- Cloud PrinterFix Engine
│   ├── autodeploy/
│   │   ├── AutoDeploy.ps1     <-- Interactive Workstation Deployer
│   │   └── AutoDeployFast.ps1 <-- Unattended Silent Deployer
│   └── ctrlaltpass/
│       └── CtrlAltPass.ps1    <-- Cloud Credential Generator
└── bin/                       <-- Compiled 64-bit Standalone Executables
    ├── CertRDP.exe
    ├── SippicomPrinterFix.exe
    ├── SippicomAutoDeploy.exe
    ├── SippicomAutoDeployFast.exe
    └── SippicomCtrlAltPass.exe
```

---

## 💻 Standalone Executable Binaries (`bin/`)

For locked-down or offline environments where script execution is restricted, pre-compiled standalone 64-bit native binaries with embedded icons and zero external runtime dependencies are located in the [`bin/`](./bin/) folder.

---

## 🔄 Automated Deployment Pipeline

When developing tools locally, use the automated build and watcher scripts to ensure local edits are immediately compiled and pushed to GitHub:

- **Manual One-Click Deploy**:
  ```powershell
  powershell -File C:\Users\aguerster\Documents\__Projects\Scripts\Build-And-Deploy.ps1
  ```
- **Continuous Auto-Deploy Watcher**:
  ```powershell
  powershell -File C:\Users\aguerster\Documents\__Projects\Scripts\Watch-And-Deploy.ps1
  ```

---

© 2026 SIPPICOM IT-Solutions. All rights reserved.
