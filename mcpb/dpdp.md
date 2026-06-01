---
layout: default
title: DPDP Act 2023 — applicability to users of Wolfgang Rush MCPB Extensions
permalink: /mcpb/dpdp/
---

# DPDP Act 2023 — applicability to users

← [Back to MCPB family](../)

This page sets out how the Digital Personal Data Protection Act 2023 ("DPDP Act") applies to **advocates using** the Wolfgang Rush MCPB extensions and to **the Publisher** (Wolfgang Rush). It is not legal advice. Verify against the bare text of the Act and DPDP Rules 2025 (where in force at the time of your read).

---

## The roles, at a glance

| Actor | Role under DPDP 2023 |
|---|---|
| **Wolfgang Rush** (the Publisher) | **Not a Data Fiduciary. Not a Data Processor.** |
| **The advocate using the MCPB** | **Data Fiduciary** in respect of their own client's personal data (this was true before installing the connector and remains true after) |
| **The advocate's client** | **Data Principal** — entitled to rights under Chapter III of the Act |
| **Anthropic** (operator of the LLM the MCPB invokes) | **Data Processor** (likely) — processes data on the advocate's behalf when the advocate uses Claude Desktop App with the MCPB. Governed by Anthropic's own privacy terms + DPA. |

---

## Why Wolfgang Rush is not a Data Fiduciary

DPDP Act, Section 2(i) defines **Data Fiduciary** as:

> "any person who alone or in conjunction with other persons determines the purpose and means of processing of personal data."

Wolfgang Rush, in its capacity as software publisher:

- **Does not collect any personal data.** The MCPB runs entirely on the user's machine. There is no Wolfgang Rush server. There is no telemetry. There is no API endpoint that the publisher controls.
- **Does not determine the purpose of processing.** The advocate determines the purpose — to file a pleading on behalf of their client.
- **Does not determine the means of processing.** The advocate selects the case-type, the bench, the inputs, the LLM model, and reviews the output.

This is structurally identical to the position of any software publisher whose code runs locally on a user's machine — Microsoft is not the Data Fiduciary for the contents of a Word document a user types.

DPDP Section 3 (territorial scope) does not extend to a publisher that does not process digital personal data. There is no processing on the publisher's part; therefore there is no scope-trigger.

---

## Why Wolfgang Rush is not a Data Processor either

DPDP Section 2(k) defines **Data Processor** as:

> "any person who processes personal data on behalf of a Data Fiduciary."

The MCPB does not process personal data on behalf of the advocate or any Data Fiduciary in any centralised, publisher-controlled way. The code, once installed, executes locally under the advocate's control. The publisher has no telemetry, no API key, no remote configuration channel. The publisher cannot, after distribution, see, control, or modify what the advocate does with the connector.

A "Data Processor" relationship under the Act typically requires (a) the Data Fiduciary appoints the Processor by contract and (b) the Processor controls infrastructure where processing occurs. Neither limb is satisfied here.

---

## You (the advocate using the connector) ARE a Data Fiduciary

You are a Data Fiduciary in respect of:
- Your client's name, contact details, financial information, family details, sensitive personal data
- The opposing party's identifying information you obtain through court documents
- Witness names, addresses, statements
- Any other identifying personal data you receive in the course of representation

This was true before the MCPB. It remains true after.

Your obligations as a Data Fiduciary under the DPDP Act 2023 include:

- **Section 4** — Lawful purpose + free, specific, informed consent (or a Section 7 legitimate use, including Section 7(d) court / judicial / quasi-judicial proceedings — most legal-practice processing falls here)
- **Section 5** — Notice to Data Principal
- **Section 6** — Consent management (where consent is the basis)
- **Section 8** — Reasonable security safeguards, including Section 8(5) which contemplates pseudonymisation as a safeguard
- **Section 9** — Personal data of children
- **Section 11** — Right to access, correction, erasure
- **Section 13** — Grievance redressal
- **Section 17** — Exemptions (Section 17(2)(a) "for the purposes of any legal proceeding" is the most relevant for practising advocates)

The MCPB does not relieve you of any of these obligations. It does, however, give you an architectural defence on Section 8(5) (reasonable security safeguards, pseudonymisation), because the connector pseudonymises before the data reaches the LLM-driven downstream agents.

---

## Section 17(2)(a) — the legal-proceeding exemption

Section 17(2)(a) of the DPDP Act exempts processing of personal data:

> "...where such personal data is processed for the purposes of enforcing any legal right or claim or where such personal data is necessary for any judicial proceeding..."

This exemption substantially covers the everyday work of a practising advocate. It does not, however, exempt you from:
- Section 8(5) — reasonable security safeguards
- Section 25 — penal provisions for breach (where applicable)
- The general obligation to handle client data with professional care

The MCPB's pseudonymisation gateway is a reasonable security safeguard within the meaning of Section 8(5). Document its use in your retention / privacy notice to clients.

---

## What the MCPB does on the DPDP compliance axis

| DPDP element | How the MCPB helps |
|---|---|
| **Section 8(5) reasonable security safeguards** | Pseudonymisation gateway substitutes identifying data with structural placeholders before downstream LLM processing |
| **Section 8(8) data accuracy** | Reader agent maintains a per-document audit log + Verifier agent runs an anti-hallucination firewall against the source documents |
| **Section 8 minimisation** | The LLM-driven agents see placeholders only — the LLM never sees the minimum-necessary personal-data set in identified form |
| **Section 4 lawful purpose** | The legal-proceeding exemption under Section 17(2)(a) covers most invocations; the connector does nothing to remove that cover |
| **Local-only processing** | Output `.docx` files land in `~/Downloads/Wolfgang-Rush-Drafts/`. Nothing is uploaded to a Wolfgang Rush server (none exists) |

---

## What the MCPB does NOT do

- It does not, by itself, satisfy any DPDP notice / consent / grievance-redressal obligation. Those remain yours to operationalise.
- It does not cover the position of Anthropic as a Data Processor when the LLM call is made via Claude Desktop App. Anthropic's own privacy policy and any applicable Data Processing Addendum govern that relationship.
- It does not constitute legal advice as to your DPDP exposure. Verify against the Act + DPDP Rules 2025 (in force) + your bar council ethics directions.

---

## DPDP 2023 + BCI Rules 17 + 49 + 36 alignment

The connector aligns with three other discipline streams relevant to Indian advocates:

- **BCI Rule 17 (confidentiality)** — pseudonymisation supports the duty of confidentiality by ensuring identifying client data does not transit the LLM in identified form
- **BCI Rule 49 (employment / appearance)** — the connector is software the advocate uses; it does not represent or appear; alignment is preserved
- **BCI Rule 36 (solicitation)** — the connector's README, install pages, and this site do not solicit clients; they describe software functionality; alignment is preserved

---

## Summary in one paragraph

**You (the advocate using the connector) are the Data Fiduciary for your client's personal data, and that has not changed. The MCPB does not collect, transmit, or store your client's data anywhere outside your local machine. The pseudonymisation gateway is an architectural safeguard that minimises what the LLM-driven agents see. Wolfgang Rush, as software publisher, is not a Data Fiduciary or Data Processor under the DPDP Act 2023 in respect of the MCPB itself. Anthropic, as LLM operator, is governed by its own terms. Your DPDP obligations as Data Fiduciary continue independent of the MCPB; the connector helps you operationalise some of those obligations more cleanly.**

---

## See also

- [How the agents work](../agents/) — pseudonymisation mechanism in detail
- [Install guide](../install/)
- [Privacy Policy](../../privacy/)

---

*This page is not legal advice. It is a publisher's analysis offered to help users understand the DPDP framework. Verify against the bare text of the DPDP Act 2023 and the DPDP Rules 2025 (where in force at the time of your read). Consult independent counsel for advice specific to your practice.*
