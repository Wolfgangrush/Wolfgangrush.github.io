---
layout: default
title: Wolfgang Rush MCPB Desktop Extensions
permalink: /mcpb/
---

# Wolfgang Rush — Claude Desktop Extensions (MCPB)

**14 jurisdiction-native litigation-drafting Claude Desktop Extensions for Indian advocates.**

Install directly into the Claude Desktop App. Each extension exposes a strict six-agent drafting pipeline (Reader → Format → Drafter → Verifier → Refiner → Overseer) with a pseudonymisation gateway at the Reader stage. Outputs are filing-grade `.docx` (A4 · Georgia 14pt · 2cm margins) rendered on your local machine. Zero data collection.

→ **[Install guide](./install/)** · **[How the agents work](./agents/)** · **[DPDP Act guidelines for users](./dpdp/)**

---

## Multilingual install guides

[हिन्दी](./hi/) · [मराठी](./mr/) · [தமிழ்](./ta/) · [తెలుగు](./te/) · [বাংলা](./bn/) · [ગુજરાતી](./gu/) · [ಕನ್ನಡ](./kn/) · [ਪੰਜਾਬੀ](./pa/) · [മലയാളം](./ml/) · [اردو](./ur/)

---

## The 14 extensions

Each row links to the GitHub repo (source + releases). Download the `.mcpb` file from the latest Release page and install via Claude Desktop → Settings → Extensions → Install Extension.

| # | Extension | Forum coverage | Repo |
|---|---|---|---|
| 1 | **Indian High Court Drafting** | All 25 Indian High Courts · 28 bench exemplars · 13 case-types (PIL, Writs Art 226/227, Criminal/Civil Appeals, Sec 482 CrPC / 528 BNSS Quashing, Bail, Anticipatory Bail, Contempt, MACT appeal, Matrimonial appeal) | [indian-hc-drafting-mcpb](https://github.com/Wolfgangrush/indian-hc-drafting-mcpb) |
| 2 | **Supreme Court Drafting** | Supreme Court of India · SLP (Civil/Criminal), Writs Art 32, Transfer Petitions, Curative Petitions, Review Petitions | [supreme-court-drafting-mcpb](https://github.com/Wolfgangrush/supreme-court-drafting-mcpb) |
| 3 | **District Court Drafting** | District Civil + Criminal trial courts (Sessions Judge, Civil Judge Sr/Jr Div, JMFC, Metropolitan Magistrate) · 16 State exemplars · 10 case-types | [district-court-drafting-mcpb](https://github.com/Wolfgangrush/district-court-drafting-mcpb) |
| 4 | **Indian Family Drafting** | Family Courts · Divorce, Maintenance (CrPC 125 / BNSS 144), Custody, Adoption, Domestic Violence Act · Hindu Marriage Act / Special Marriage Act / Indian Divorce Act / Muslim Personal Law | [indian-family-drafting-mcpb](https://github.com/Wolfgangrush/indian-family-drafting-mcpb) |
| 5 | **Indian Consumer Drafting** | District / State / NCDRC consumer forums · Consumer Protection Act 2019 · 10 complaint types | [indian-consumer-drafting-mcpb](https://github.com/Wolfgangrush/indian-consumer-drafting-mcpb) |
| 6 | **Indian MACT Drafting** | Motor Accident Claims Tribunals + appeals to HC · MV Act 1988 Section 173 · 8 State exemplars · 10 case-types | [indian-mact-drafting-mcpb](https://github.com/Wolfgangrush/indian-mact-drafting-mcpb) |
| 7 | **Indian Banking Drafting** | DRT / DRAT / NCLT / Civil Court · SARFAESI · RDDBFI · IBC · 10 case-types | [indian-banking-drafting-mcpb](https://github.com/Wolfgangrush/indian-banking-drafting-mcpb) |
| 8 | **Indian Labour Drafting** | Labour Court / Industrial Tribunal / CGIT · Industrial Disputes Act 1947 · Factories Act · Payment of Wages · Minimum Wages · 8 State exemplars | [indian-labour-drafting-mcpb](https://github.com/Wolfgangrush/indian-labour-drafting-mcpb) |
| 9 | **Indian IP Drafting** | Trademark Registry · Patent Office · Copyright · Design · GI · IP Division of HCs · 10 case-types | [indian-ip-drafting-mcpb](https://github.com/Wolfgangrush/indian-ip-drafting-mcpb) |
| 10 | **Indian Tax Drafting** | CIT(A) Form 35 · ITAT Form 36 · Form 10A · Sections 148A / 263 / 264 / 270A / 144C / 201 / 260A · DRP | [indian-tax-drafting-mcpb](https://github.com/Wolfgangrush/indian-tax-drafting-mcpb) |
| 11 | **Indian Property Drafting** | Civil suits — partition, declaration, possession, specific performance · 8 State exemplars · 10 case-types | [indian-property-drafting-mcpb](https://github.com/Wolfgangrush/indian-property-drafting-mcpb) |
| 12 | **Indian Contracts Drafting** | Contract disputes + drafting · Indian Contract Act 1872 · Specific Relief Act · Arbitration Act · 10 case-types | [indian-contracts-drafting-mcpb](https://github.com/Wolfgangrush/indian-contracts-drafting-mcpb) |
| 13 | **Indian Company Drafting** | NCLT / NCLAT / HC Company Bench · Companies Act 2013 · IBC · SEBI · 10 case-types | [indian-company-drafting-mcpb](https://github.com/Wolfgangrush/indian-company-drafting-mcpb) |
| 14 | **Indian Rent Control Drafting** | Court of Small Causes / Rent Controller / Rent Authority / Rent Tribunal · 8 State Rent Control Acts (Maharashtra · Delhi · Tamil Nadu · Karnataka · West Bengal · UP · Gujarat · AP/Telangana) · Model Tenancy Act 2021 · 11 case-types | [indian-rent-control-drafting-mcpb](https://github.com/Wolfgangrush/indian-rent-control-drafting-mcpb) |

---

## Quick install

1. Open Claude Desktop App (Mac / Windows)
2. **Settings (gear icon) → Extensions → Install Extension**
3. Pick the `.mcpb` file you downloaded from any release above
4. Start a chat. Type: *"Draft a [type of pleading] for [your court/forum] — use the [extension name] plugin."*

Detailed step-by-step at **[/mcpb/install/](./install/)**.

---

## What makes these different from generic LLM drafting

- **Bench / State / Forum neutral** — no Indian court is hardcoded as the default. A Delhi advocate using `indian-hc-drafting-mcpb` files a Delhi HC pleading. A Madras advocate files a Madras HC pleading. The connector asks the user's bench at the start of every drafting session.
- **Six-agent pipeline forced by the connector itself** — the Drafter cannot run without the Reader's case-facts. The Verifier cannot be skipped (anti-hallucination firewall). The Overseer reviews with an opposing-counsel lens before final output.
- **Pseudonymisation gateway** — party names, addresses, identifying numbers, financial figures, statutory-notice references are substituted with structural placeholders BEFORE any downstream agent processes the facts. The LLM only sees `[Petitioner-A]`, `[Address-Placeholder]`, `[Crime-No-Placeholder]`. Real values are re-substituted at the final `.docx` render step on the user's local machine.
- **Filing-grade formatting baked in** — A4 page, Georgia 14pt body font, 2cm margins. No re-formatting required before printing.

→ Full architecture at **[/mcpb/agents/](./agents/)**.

---

## ⚠️ Verification disclaimer

AI can make mistakes. Every draft produced by these connectors is a **starting point**. The Verifier agent runs an anti-hallucination firewall and the Overseer agent runs an opposing-counsel review, but neither replaces an advocate's independent verification of statutory references, citation accuracy, factual fidelity, and Registry-formatting compliance with the user's High Court or forum. **The advocate filing the pleading remains responsible for the contents.**

## 🔒 Pseudonymisation procedure

The Reader agent applies a domain-specific privacy firewall as the first step of the pipeline. Real client data never reaches the downstream LLM-driven agents.

→ Mechanism documented at **[/mcpb/agents/](./agents/)**.

## ⚖️ DPDP Act 2023

The Publisher (Wolfgang Rush) is neither a Data Fiduciary nor a Data Processor under the DPDP Act 2023 for the MCPB software itself — the software runs entirely on the user's machine and collects zero data. The user (the practising advocate) remains the Data Fiduciary for their own client's data, as they were before installing this connector.

→ Full DPDP applicability analysis at **[/mcpb/dpdp/](./dpdp/)**.

---

## Source + Licence

All 14 extensions are MIT-licensed. Source code at [github.com/Wolfgangrush](https://github.com/Wolfgangrush). Issue trackers + Releases per repo. Pull requests welcome.

## Contact

advrushikeshravindramahajan@gmail.com

## Sister channel

The Claude Code plugin family (for advocates with developer tooling) is at [Wolfgangrush/wolfgang-rush-marketplace](https://github.com/Wolfgangrush/wolfgang-rush-marketplace). Same skills + agents, different distribution format.
