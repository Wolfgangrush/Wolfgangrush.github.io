---
layout: default
title: Install — Wolfgang Rush MCPB Extensions
permalink: /mcpb/install/
---

# Install guide — Wolfgang Rush MCPB Desktop Extensions

← [Back to MCPB family](../)

This guide installs any of the 14 Wolfgang Rush MCPB Desktop Extensions into the **Claude Desktop App** on Mac or Windows. Three steps.

---

## Step 1 — Download the `.mcpb` file

1. Visit the GitHub repo for the extension you want (e.g. [indian-hc-drafting-mcpb](https://github.com/Wolfgangrush/indian-hc-drafting-mcpb))
2. Click **Releases** in the right sidebar
3. Click the latest release (e.g. `v0.1.5-alpha`)
4. Under **Assets**, click `<extension-name>.mcpb` to download. The file is ~200 KB.

---

## Step 2 — Install into Claude Desktop App

1. Open the **Claude Desktop App** on Mac or Windows.
2. Click the **gear icon** (Settings) — top-left on Mac, top-right on Windows.
3. In the left sidebar, click **Extensions**. ⚠️ Do NOT click **Plugins** (that is a different ecosystem — Claude Code plugin format, not MCPB).
4. Click **Install Extension**.
5. In the file picker, navigate to where you downloaded the `.mcpb` file. Select it. Click **Open**.

You should see:
- Extension listed with its display name (e.g. "Wolfgang Rush — Indian High Court Drafting · Claude Desktop Extension")
- **Enabled toggle ON** (green)
- **"All requirements met"** ✓
- **Tools** count (8 or 10 depending on extension)
- Version + License + Developer fields rendered correctly

---

## Step 3 — Verify the install with a test invocation

1. Open a fresh chat in Claude Desktop.
2. Type one of these depending on which extension you installed:

   - HC: `Using the indian-hc-drafting plugin, list all the case types you can draft.`
   - SC: `Using the supreme-court-drafting plugin, list all the case types you can draft.`
   - Tax: `Using the indian-tax-drafting plugin, list all the case types you can draft.`
   - (similarly for any other extension)

3. Claude should announce it's calling the extension's tools, invoke `list_case_types`, and return the case-type catalogue. That confirms the round-trip works.

---

## Step 4 — Draft your first pleading

Attach your source document (FIR / impugned judgment / notice / draft assessment order / etc.) to the chat. Then type something like:

| Extension | Sample prompt |
|---|---|
| **HC** | `Draft a Section 482 CrPC application before Delhi High Court for quashing the attached FIR. Use the indian-hc-drafting plugin.` |
| **HC** | `Draft a regular bail application before Bombay High Court Nagpur Bench for the attached FIR. Use the indian-hc-drafting plugin.` |
| **SC** | `Draft a Special Leave Petition (Criminal) before the Supreme Court against the attached High Court judgment. Use the supreme-court-drafting plugin.` |
| **District** | `Draft an anticipatory bail application before the Sessions Court, [your district], for the attached FIR. Use the district-court-drafting plugin.` |
| **Family** | `Draft a divorce petition under Section 13 HMA before the Family Court, [your district]. Use the indian-family-drafting plugin.` |
| **Consumer** | `Draft a consumer complaint before the District Consumer Forum at [your district] against the attached deficiency of service. Use the indian-consumer-drafting plugin.` |
| **MACT** | `Draft a Section 166 MV Act claim before the MACT at [your district] for the attached accident facts. Use the indian-mact-drafting plugin.` |
| **Tax** | `Draft a Form 35 CIT(A) appeal against the attached assessment order. Use the indian-tax-drafting plugin.` |
| **Rent Control** | `Draft an eviction petition on bona-fide personal need ground before the Court of Small Causes at [your city] against the attached tenant. Use the indian-rent-control-drafting plugin.` |

The plugin will:
1. Call `get_agent_instructions()` to load the full pipeline orchestration script
2. Call `create_case_folder(case_type, bench-or-state)` — creates `~/Downloads/Wolfgang-Rush-Drafts/<case-type>-<jurisdiction>-<timestamp>/`
3. Save your input documents into `inputs/` of that folder
4. Run the six agents in sequence: Reader → Format → Drafter → Verifier → Refiner → Overseer
5. Save six artifacts in the case folder (`case-facts.md`, `format-shell.md`, `draft-v1.docx`, `verification-report.md`, `draft-v2.docx`, `opposing-notes.md`, `final-draft.docx`)
6. Report the path to `final-draft.docx`

---

## Where your files go

All output lives at:

- **Mac**: `~/Downloads/Wolfgang-Rush-Drafts/<case-type>-<jurisdiction>-<timestamp>/`
- **Windows**: `C:\Users\<your-name>\Downloads\Wolfgang-Rush-Drafts\<case-type>-<jurisdiction>-<timestamp>\`

Each session creates a new timestamped folder. Nothing leaves your machine.

---

## Updating

When a new version of an extension is released:
1. Download the new `.mcpb` file from the release page
2. Settings → Extensions → **Uninstall** the previous version
3. Install Extension → pick the new `.mcpb` file

(In-place upgrade is not yet supported — uninstall + reinstall is the path.)

---

## Troubleshooting

**"Plugin validation failed" toast** — you opened the wrong panel. Settings → **Extensions** is the right one. Settings → Plugins / Directory → Plugins is a different ecosystem.

**Extension installed but Claude doesn't invoke it** — name the plugin explicitly in your prompt: *"using the indian-hc-drafting plugin"*. Claude needs the hint to select tools.

**Output is wrong case-type** — check the [acronym disambiguation table](./agents/#acronym-disambiguation) and name the case-type explicitly (e.g. *"Section 482 CrPC application for quashing"* rather than just *"APL"*).

**Output formatting wrong (wrong page size or font)** — the extension ships a reference.docx with A4 + Georgia 14pt + 2cm margins baked in. If your output is on US Letter, you have an older version of the extension installed — uninstall and reinstall the latest.

**Other issues** — open an issue on the relevant GitHub repo.

---

## See also

- [How the agents work](./agents/) — full pipeline architecture
- [DPDP Act guidelines for users](./dpdp/) — your DPDP obligations as an advocate using these extensions
- [Privacy Policy](../privacy/)
