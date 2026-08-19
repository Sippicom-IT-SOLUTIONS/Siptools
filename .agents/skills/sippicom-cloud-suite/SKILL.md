---
name: sippicom-cloud-suite
description: SIPPICOM IT-Solutions Cloud Suite architecture, automated deployment runbook, tool specifications (RootOfTrust, PaperJamZero, TurnKeyPC, TurnKeyFast, CtrlAltPass), and branding guidelines.
---

# 🏢 SIPPICOM Cloud Suite Engineering Skill

> Authoritative guide for maintaining, extending, compiling, and deploying the SIPPICOM IT-Solutions administrative cloud suite.

---

## 🛠️ Tool Ecosystem

### 1. `RootOfTrust` (RDP Signer & PKI Trust Suite)
- **Source**: `Scripts/CertRDP/CertRDP.cs`
- **Output**: `bin/RootOfTrust.exe` (or `CertRDP.exe`)
- **Cloud Runner**: `tools/certrdp/CertRDP.ps1`
- **Core Function**: Generates self-signed Root & TrustedPublisher certificates, configures TS policies, and signs `.rdp` files via `rdpsign.exe`.

### 2. `PaperJamZero` (Print Spooler & Network Hub)
- **Source**: `Scripts/PrinterFix/Program.cs`
- **Output**: `bin/PaperJamZero.exe`
- **Cloud Runner**: `tools/printerfix/PrinterFix.ps1`
- **Core Function**: Resets `spoolsv.exe`, clears spool directory, brings offline queues online, installs TCP/IP network printers, and performs `PrintBrm.exe` migrations.

### 3. `TurnKeyPC` & `TurnKeyFast` (Workstation Provisioning)
- **Source**: `Scripts/AutoDeploy/Program.cs` & `Scripts/AutoDeployFast/Program.cs`
- **Output**: `bin/TurnKeyPC.exe` & `bin/TurnKeyFast.exe`
- **Cloud Runners**: `tools/autodeploy/AutoDeploy.ps1` & `tools/autodeploy/AutoDeployFast.ps1`
- **Core Function**: Concurrently deploys Microsoft 365 Apps (DE), Adobe Acrobat Reader x64, VLC, and 7-Zip in parallel.

### 4. `CtrlAltPass` (Enterprise Credential Utility)
- **Source**: `Scripts/CtrlAltPass/Program.cs`
- **Output**: `bin/CtrlAltPass.exe`
- **Cloud Runner**: `tools/ctrlaltpass/CtrlAltPass.ps1`
- **Core Function**: High-entropy 16/20/24-char cryptographic password and 6-digit PIN generator with clipboard synchronization.

---

## 🚀 Build & Deployment Commands

```powershell
# Manual one-click compile and cloud push:
powershell -File C:\Users\aguerster\Documents\__Projects\Scripts\Build-And-Deploy.ps1

# Continuous file watcher daemon:
powershell -File C:\Users\aguerster\Documents\__Projects\Scripts\Watch-And-Deploy.ps1
```
