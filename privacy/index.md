---
layout: default
title: Privacy Policy — wolfgang_rush
permalink: /privacy/
---

# Privacy Policy

**Effective date:** 2026-05-27
**Publisher:** Rushikesh R. Mahajan, publishing as **wolfgang_rush**
**Contact:** advrushikeshravindramahajan@gmail.com

This single canonical privacy policy covers **both** distribution tracks of the wolfgang_rush legal-drafting software family:

1. **wolfgang_rush Plugin Family** — Claude Code plugins, published since 2026-05-17 at the Claude Code plugin marketplace
2. **wolfgang_rush MCPB Family** — MCPB Desktop Extensions for Claude Desktop App, published on the Anthropic MCP Connector Directory

Both tracks share the same privacy posture. The 14 connectors named in Section 2 are covered by this single policy.

---

## 1. What we collect

**Nothing.**

The wolfgang_rush software family does not collect, store, transmit, log, telemetry-report, error-report, or relay any user data to the Publisher or to any third party operated by the Publisher.

There is no server. There is no analytics service. There is no licence-verification endpoint. There is no usage-tracking infrastructure. There is no telephone-home behaviour of any kind.

---

## 2. Connectors and plugins covered by this policy

This privacy policy applies to all 14 connectors / plugins in the wolfgang_rush family across both distribution tracks:

| # | Connector / Plugin name | Distribution tracks |
|---|---|---|
| 1 | wolfgang-supreme-court-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 2 | wolfgang-indian-hc-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 3 | wolfgang-district-court-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 4 | wolfgang-indian-family-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 5 | wolfgang-indian-consumer-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 6 | wolfgang-indian-mact-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 7 | wolfgang-indian-banking-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 8 | wolfgang-indian-labour-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 9 | wolfgang-indian-ip-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 10 | wolfgang-indian-tax-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 11 | wolfgang-indian-property-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 12 | wolfgang-indian-contracts-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 13 | wolfgang-indian-company-drafting | Claude Code Plugin · MCPB Desktop Extension |
| 14 | wolfgang-indian-rent-control-drafting | Claude Code Plugin · MCPB Desktop Extension |

---

## 3. How the software operates

Each plugin / MCPB runs **entirely locally** within the user's Claude Code installation or Claude Desktop App.

The agents, skills, statutory references, and pleading templates ship as part of the installable artifact and are read from the user's local filesystem at invocation time. Case-folder contents supplied by the user (facts, prior pleadings, statutory anchors, prayer briefs, exhibits) are processed locally and transmitted only between the user and Anthropic's Claude API in the ordinary course of Claude Code or Claude Desktop App operation.

The Publisher does not operate any server, telemetry endpoint, analytics service, error-reporting service, license-verification service, or data-collection infrastructure of any kind in connection with these connectors.

---

## 4. Data sent to Anthropic

Use of the connectors necessarily involves user prompts and case-folder contents being sent to Anthropic's Claude API by the user's own Claude Code or Claude Desktop App. That data flow is governed by **Anthropic's Privacy Policy** at <https://www.anthropic.com/legal/privacy> and by Anthropic's commercial terms applicable to the user's Claude Code or Claude Desktop App subscription.

The Publisher is not a party to that data flow, has no access to user prompts or case-folder contents, and receives no copy of any generated output.

---

## 5. Privacy firewall built into the connectors

Each wolfgang_rush drafting connector applies a three-layer privacy firewall **before** any text leaves the user's machine:

| Layer | Where | What happens |
|---|---|---|
| L1 — Substitution | User machine, pre-LLM | Real party names, case numbers, financial figures, addresses are substituted with neutral placeholders (e.g., `[PARTY-A]`, `[SUM-X]`, `[DATE-N]`) before any text is sent to Claude |
| L2 — LLM-blind | Claude API | Claude sees only the neutral placeholders; never the real privileged data |
| L3 — Re-substitution | User machine, post-LLM | Neutral placeholders are mapped back to real values at the `.docx` render stage on the user's machine |

The substitution mapping is stored only in the user's local configuration. Sensitive configuration values are stored in the user's operating-system keychain when supported.

---

## 6. No user accounts

The connectors do not require, create, or maintain any user account, login, or identification step. There is no registration, no email signup, and no licence-key activation.

---

## 7. Source code transparency

All connector source code is published under the **MIT License** at <https://github.com/Wolfgangrush>. Users, system administrators, and security reviewers may inspect every line of code at any time. There is no closed component, no obfuscated binary, and no remote-loaded code path.

---

## 8. Children

The connectors are professional legal-drafting tools intended for use by qualified advocates, law-firm staff, in-house counsel, and trained paralegal personnel. They are not directed at, marketed to, or intended for use by children under 13.

---

## 9. Confidentiality and professional privilege

Users — particularly advocates and law-firm staff — should note that case-folder contents passed to Claude Code or Claude Desktop App may include material attracting attorney-client privilege, advocate-client confidentiality under **Section 132 of the Bharatiya Sakshya Adhiniyam 2023** / **Section 126 of the Indian Evidence Act 1872**, or other professional-confidentiality obligations.

Decisions about what material to supply to the connectors remain the user's professional responsibility and should be made consistent with applicable bar-council rules and client-engagement terms.

---

## 10. Third-party sharing

**None.**

The Publisher does not share, sell, transfer, or disclose any user data to any third party — because the Publisher never receives any user data in the first place.

---

## 11. Data retention

**None.**

The Publisher does not retain any user data — because the Publisher never receives any user data in the first place.

---

## 12. Changes to this policy

Any change to this privacy policy will be committed to the public Git history of <https://github.com/Wolfgangrush/Wolfgangrush.github.io> and announced in the repository README. The Effective date at the top of this document will be updated on each material change.

---

## 13. Contact

Privacy queries, security disclosures, and questions about connector data behaviour:

**advrushikeshravindramahajan@gmail.com**

Security-sensitive disclosures should be marked clearly in the email subject line.

---

*This privacy policy is published as the canonical privacy URL for all wolfgang_rush MCPB Desktop Extensions in the Anthropic MCP Connector Directory, and for all wolfgang_rush plugins in the Claude Code plugin marketplace. The `privacy_policies` array in every wolfgang_rush MCPB manifest.json points to this URL: <https://wolfgangrush.github.io/privacy/>*
