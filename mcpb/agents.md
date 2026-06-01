---
layout: default
title: How the agents work — Wolfgang Rush MCPB Extensions
permalink: /mcpb/agents/
---

# How the agents work

← [Back to MCPB family](../)

Each Wolfgang Rush MCPB ships a **six-agent local pipeline** plus a **pseudonymisation gateway** at the Reader stage. This page documents how they work, in plain language, so you can audit what is happening to your client's data.

---

## The pipeline at a glance

```
USER attaches FIR / judgment / notice / order
              ↓
        Reader agent — extracts facts + APPLIES PSEUDONYMISATION
              ↓
     case-facts.md  (placeholders only, real names locked locally)
              ↓
        Format agent — maps facts into case-type skeleton
              ↓
     format-shell.md
              ↓
        Drafter agent — writes first complete draft
              ↓
     draft-v1.docx
              ↓
        Verifier agent — anti-hallucination firewall
              ↓
     verification-report.md
              ↓
        Refiner agent — applies Verifier flags, polishes language
              ↓
     draft-v2.docx
              ↓
        Overseer agent — opposing-counsel review
              ↓
     opposing-notes.md + final-draft.docx
              ↓
USER reviews, re-substitutes real names locally, files
```

Every artifact lands in `~/Downloads/Wolfgang-Rush-Drafts/<case-type>-<jurisdiction>-<timestamp>/`.

---

## Why six agents instead of one prompt

Generic single-prompt LLM drafting fails at four points:

1. **Hallucinated citations** — the model invents case names + paragraph numbers that look real. Bombay HC has issued advocate cautions about this. Delhi HC and Madras HC have flagged the same.
2. **Missed limbs of argument** — single-pass output skips Verifier-style checks (e.g. for a Section 482 application: is Bhajan Lal categorisation actually applied? are all 7 categories addressed?).
3. **Wrong forum conventions** — the model defaults to its training-data majority (often US legal idiom) instead of the user's bench-specific Registry conventions.
4. **No opposing-counsel lens** — the model writes only the petitioner's side. It does not stress-test what State's counsel will say at hearing.

The six-agent pipeline addresses each of these structurally:

| Agent | What it does | What it produces |
|---|---|---|
| **Reader** | Reads every input document (FIR, judgment, notice). Extracts facts with audit log. **Applies pseudonymisation firewall.** Maps documents to proposed annexures. Halts if a required statute PDF is missing. | `case-facts.md` (placeholders only) |
| **Format** | Loads the case-type-specific skill (e.g. `bail-draft`, `civil-wp-draft`, `application-482-draft`). Substitutes bench-config / state-config values. Maps the Reader's facts into the format placeholders. | `format-shell.md` |
| **Drafter** | Writes the first complete draft — Cause Title, Statutory Opening, Synopsis, Statement of Facts, Grounds, Prayer, Verification, Counsel Block, Index, Annexure List. | `draft-v1.md` + `draft-v1.docx` |
| **Verifier** | Anti-hallucination firewall. Compares draft-v1 against case-facts.md fact-by-fact. Flags hallucinated dates, fabricated citations, unsupported assertions, orphan annexure markers, missing factual basis. | `verification-report.md` |
| **Refiner** | Applies every Verifier flag. Polishes language to formal Indian pleading register. Enforces Registry formatting. Strips AI-style markers. | `draft-v2.md` + `draft-v2.docx` |
| **Overseer** | Reads draft-v2 with opposing-counsel lens. Finds weak prayers, contradictory facts, attackable defects, missing limbs of argument, anticipated objections (limitation, locus, alternative remedy, scope of jurisdiction). Suggests hardening. | `opposing-notes.md` + `final-draft.docx` |

**The MCPB forces the pipeline.** The `get_agent_instructions()` tool — which is the MANDATORY first call when you ask for a draft — returns an 11-step orchestration script that names each agent's tool call and expected artifact. The Drafter cannot legitimately produce final output without the Reader having saved `case-facts.md` first. The save_artifact tool's allow-list rejects standalone python-docx generator scripts.

---

## Pseudonymisation gateway — what gets substituted

Before any downstream agent sees the facts, the Reader replaces:

| Domain | Examples of what gets replaced |
|---|---|
| **Party identifiers** | Petitioner / Respondent / Plaintiff / Defendant / Accused / Complainant / Victim / Witness names → `[Petitioner-A]`, `[Respondent-B]`, `[Witness-A]`, etc. |
| **Addresses** | Full residential / business addresses → `[Address-Placeholder]` |
| **Government identifiers** | PAN, Aadhaar, TAN, DIN, GSTIN → `[PAN-Placeholder]`, `[Aadhaar-Placeholder]`, `[TAN-Placeholder]`, `[DIN-Placeholder]` |
| **Case numbers** | FIR / CR / Crime / SLP / Diary / CC / SC / RCS / RCC / lower-court case numbers → `[Crime-No-Placeholder]`, `[SLP-No-Placeholder]`, `[Lower-Court-Case-No-Placeholder]` |
| **Dates of identifying events** | Specific judgment dates, impugned-order dates → `[Judgment-Date-Placeholder]` (when re-identification risk is high) |
| **Financial figures** | Amounts in dispute, compensation claimed, tax assessed → `[Amount-Placeholder]` |
| **Tenancy / Property** | Survey numbers, municipal numbers, premises descriptions, monthly rent → `[Survey-No-Placeholder]`, `[Premises-Description-Placeholder]`, `[Monthly-Rent-Placeholder]` |
| **Statutory notice references** | Section 106 TPA notice dates, statutory demand-notice dates → `[Notice-Date-Placeholder]`, `[State-Notice-Date-Placeholder]` |

The Drafter, Verifier, Refiner, and Overseer agents see **placeholders only**. They never receive real identifying data. They produce the draft using the placeholders. At the final `save_draft_as_docx` step, the placeholders are re-substituted with the real values **on your local machine** — the LLM never sees the re-substituted output.

**What this protects against:**
- LLM provider training-data leakage (your client's real name does not enter any training corpus through this connector)
- Adverse-party intelligence harvesting (if you later use a different LLM workflow, the prior session's data has no real identifiers)
- DPDP Section 8(5) excess-data-minimisation argument (the connector minimises personal-data exposure to the LLM by design)
- BCI Rules 17/49 advocate-confidentiality alignment (your client's identifying data does not transit any third-party server in identifiable form)

**What this does NOT protect against:**
- A future LLM with strong re-identification capability inferring identity from context (e.g. "Petitioner is a 24-year-old advocate filing in Delhi HC on an arbitration matter against a former employer" might be inference-able even with all names redacted)
- An adverse party with subpoena power compelling production of the case folder on your local machine
- Loss of the local machine itself (encrypt-at-rest is a separate user responsibility)

---

## Bench / State / Forum neutrality

These connectors **do not default to any single Indian jurisdiction**. The HC connector does not assume Bombay HC Nagpur. The District connector does not assume Maharashtra. The Rent Control connector does not assume Maharashtra Rent Control Act 1999.

The pipeline asks you (or asks Claude to ask you) which bench / State / forum at STEP 0 of the orchestration. If unspecified, the Reader halts and prompts. This means:

- A Delhi advocate filing in Delhi HC gets a Delhi HC pleading with Delhi HC Registry conventions
- A Madras advocate filing in Madras HC gets a Madras HC pleading with Madras HC Registry conventions
- A Karnataka rent-control practitioner gets the Karnataka Rent Act 2001 framework, not the Maharashtra Rent Control Act 1999

The 28 bench exemplars (HC), 16 State exemplars (District), 8 State Rent Control Act exemplars (Rent Control), and 8 State labour-law exemplars (Labour) are bundled in the connector and selected by user input.

---

## Acronym disambiguation

Indian practice uses acronyms that are not phonetic. The connectors carry a disambiguation map:

| Acronym | Maps to |
|---|---|
| **APL** | Application under Section 482 CrPC / Section 528 BNSS (QUASHING — inherent jurisdiction) |
| **ABA** | Anticipatory Bail Application |
| **BA** | Regular Bail Application |
| **WP** | Civil Writ Petition under Articles 226 / 227 |
| **CrWP** | Criminal Writ Petition under Articles 226 / 227 |
| **PIL** | Public Interest Litigation |
| **CrA** | Criminal Appeal |
| **CrR** | Criminal Revision |
| **FA** | First Appeal (CPC Section 96) |
| **SA** | Second Appeal (CPC Section 100) |
| **CP** | Contempt Petition |
| **MACT** | Motor Accident Claims Tribunal appeal |
| **MAT** | Matrimonial Appeal |
| **SLP-C / SLP-Cr** | Special Leave Petition (Civil / Criminal) — Supreme Court |
| **TP** | Transfer Petition — Supreme Court |
| **Curative** | Curative Petition — Supreme Court |
| **Review** | Review Petition — Supreme Court |

**APL ≠ ABA.** APL is FIR / proceedings quashing. ABA is anticipatory bail. The connector forces this disambiguation at the case-folder-creation step.

---

## Failsafes the connectors carry

- **Reader halt on missing statute PDFs** — if a required Act / Rule / Notification PDF is missing from the user's case folder and not in the training-data allowed list, the Reader writes a `STOP.flag` and the pipeline halts.
- **Drafter cannot produce final output without case-facts.md** — server-side allow-list on `save_artifact` ensures intermediate artifacts must exist before final output.
- **Verifier is mandatory** — skipping the Verifier means downstream agents have no anti-hallucination check. The orchestration script explicitly marks this step as **DO NOT SKIP**.
- **Overseer is mandatory** — same. The opposing-counsel lens is the last gate before final output.

---

## See also

- [Install guide](../install/)
- [DPDP Act guidelines for users](../dpdp/)
- [Privacy Policy](../../privacy/)
