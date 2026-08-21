# Siptools Changelog

All notable changes to the SIPPICOM Cloud Suite are recorded here. Entries from
2026-08-21 onward are generated automatically by `Build-And-Deploy.ps1` in the
private source repo; everything before that was reconstructed from this
repo's commit history when the changelog was introduced.

## 2026-08-21 — Source split, repo rename, deploy pipeline

- Split the local tool-source workspace out into its own private repository,
  `Sippicom-IT-SOLUTIONS/Siptools-Raw`, so `.cs` source can no longer end up
  in this public repo. Added a `.gitignore` entry here to enforce it.
- Reorganized the private source workspace: removed unrelated side projects
  and a redundant nested clone of this repo, and renamed each tool's source
  folder to match its current public name (RootOfTrust, PingMeMaybe,
  CtrlAltPass, PaperJamZero, TurnKey).
- Renamed this repository on GitHub from `Sippicom-IT-SOLUTIONS/tools` to
  `Sippicom-IT-SOLUTIONS/Siptools`; updated every `irm | iex` one-liner,
  README badge, and script reference to match.
- Replaced the old ad-hoc local build script with a full build pipeline:
  change detection, a sensitive-file guard, per-tool versioning, automatic
  changelog generation, build-only-what-changed compilation, PowerShell
  syntax validation, and tagged pushes to both repos. This closed a gap
  where CtrlAltPass, PaperJamZero, TurnKeyPC, and TurnKeyFast had source
  checked in but no active build step.

## 2026-08-19 — Org migration, tool rebrand, PingMeMaybe

- Migrated the repository to the Sippicom-IT-SOLUTIONS GitHub organization
  and updated all cloud endpoints; redid the SIPPICOM logo with proper
  rotational symmetry and TrueColor.
- Added the CI workflow (`verify-and-release.yml`) that validates PowerShell
  syntax and confirms all expected binaries are present.
- Removed internal AI-agent customization files (`AGENTS.md`,
  `.agents/skills/...`) that had briefly been committed to the public repo.
- Rebranded the whole suite to its current public tool names: `CertRDP` →
  **RootOfTrust**, `AutoDeploy`/`AutoDeployFast` → **TurnKeyPC**/**TurnKeyFast**,
  `PrinterFix` → **PaperJamZero**, `ctrlaltpass` → **CtrlAltPass**.
- Added **PingMeMaybe**, a new network diagnostics / port scanner / SSL
  certificate inspector tool, along with a short-lived **SubnetZero** tool
  that was later retired and dropped from the suite.
- Numerous incremental binary rebuilds of PingMeMaybe and RootOfTrust as the
  tool was refined (including column-header sorting for the scan results
  table). Note: the repeated commit message on many of these ("Refactor
  PingMeMaybe with clean column-header sorting & sanitize repository") was a
  hardcoded default in the local deploy script, not a per-commit description
  of what actually changed — the new pipeline generates accurate messages.

## 2026-08-14 — Initial public release

- Initial commit of the SIPPICOM Cloud Tools suite: RootOfTrust (as
  `CertRDP`), TurnKeyPC/TurnKeyFast (as `AutoDeploy`/`AutoDeployFast`),
  CtrlAltPass, and PaperJamZero (as `PrinterFix`), each with a standalone
  binary and an `irm | iex` launcher script.
- Removed the one-off internal upload/publish helper scripts
  (`GitHubUploader.cs`, `GitPush.ps1`, `Publish.ps1`, `PushAll.ps1`, etc.)
  once the live GitHub-hosted `irm | iex` execution model was in place.
- Reworked every launcher script and `main.ps1` for reliable one-liner
  execution: removed `param()` blocks (which broke piped `iex` execution)
  and re-encoded every script as UTF-8 without a BOM.
- Added and iteratively refined the SIPPICOM ASCII/block-character logo
  banner in `main.ps1` — typography, centering, Floyd-Steinberg dithering,
  TrueColor orange, and codepage-safe rendering.
- Fixed a raw string formatting bug in CtrlAltPass and updated the README
  with live GitHub URLs.
