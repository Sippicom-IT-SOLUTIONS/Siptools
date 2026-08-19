# 🏢 SIPPICOM IT-Solutions — Repository Engineering & Style Guide

Welcome to the **SIPPICOM Cloud Tools** codebase.
This repository contains the official administrative utilities and remote deployment engine for **SIPPICOM IT-Solutions**.

---

## 🎯 Architecture & Guidelines

1. **Cloud Execution (`irm | iex`)**:
   - Every script in `tools/` and `main.ps1` must be immediately executable from raw GitHub URLs.
   - Base endpoint: `https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main`
2. **Product Names**:
   - `RootOfTrust` (RDP Signer & PKI Trust Suite)
   - `PaperJamZero` (Spooler & Queue Manager)
   - `TurnKeyPC` (Interactive Workstation Deployer)
   - `TurnKeyFast` (Unattended Silent Deployer)
   - `CtrlAltPass` (Enterprise Password Generator)
3. **Branding & Visuals**:
   - Corporate Orange: `#F78D1F` (`$esc[38;2;247;141;31m`)
   - Corporate Gold: `#FFB81C` (`$esc[38;2;255;184;28m`)
   - Emblem: 180° C2 rotational symmetry dual-loop 'S' ribbon.
4. **Build & CI Automation**:
   - Use `Build-And-Deploy.ps1` to compile and push updates.
   - Keep GitHub Actions workflow [`.github/workflows/verify-and-release.yml`](.github/workflows/verify-and-release.yml) passing.
