---
layout: default
title: Privacy Policy — wolfgang_rush
permalink: /privacy/
---

# Privacy Policy

**Effective date:** 2026-08-16
**Publisher:** Rushikesh R. Mahajan, publishing as **wolfgang_rush**
**Contact:** advrushikeshravindramahajan@gmail.com / wolfgangrush@gmail.com

This is the canonical privacy policy for the wolfgang_rush software family. It is the
URL referenced by wolfgang_rush software manifests, and it covers every tool published
under that name unless that tool ships its own policy saying otherwise.

---

## 1. The short version

**The Publisher receives nothing.**

There is no wolfgang_rush server. No account, no sign-in, no sync, no telemetry, no
analytics, no crash reporting, no usage statistics, and no update check that reports who
you are or what you opened. There is no channel by which your data could reach the
Publisher, and nothing at the other end of one if there were.

That statement is about **the Publisher's infrastructure**, and it holds unconditionally.
It is deliberately not the same as saying that nothing ever leaves your machine — because
for one class of tool, that depends on a choice you make. Section 4 sets out that choice
in full, without softening it.

## 2. What the software processes, and where

wolfgang_rush software runs **on your own machine**. Documents you open are read where
they already sit. Nothing is copied to the Publisher or to a hosted service operated by
the Publisher, because no such service exists.

Where a tool stores anything at all between sessions — a list of names you asked it to
watch, your matters, a display preference — that data is written to your own machine's
local storage and nowhere else. Deleting the application, or its data directory, removes
it.

## 3. Data protection responsibility

The Publisher is **neither a Data Fiduciary nor a Data Processor** under the Digital
Personal Data Protection Act, 2023, in respect of the material you process with this
software, because the Publisher never receives, stores or processes it. The equivalent
holds under the GDPR, the PDPA, the PDPO, the UAE PDPL, the DIFC-DPL and the Australian
Privacy Act: the Publisher is not a controller, processor or equivalent of your client
material.

Where you are a practitioner handling client material, **you** remain the Data Fiduciary
or controller for that material, exactly as you were before installing anything published
here. Your obligations to your client and to your regulator are unchanged by this
software. If you choose a mode that transmits data (Section 4), those obligations attach
to that transmission, and they attach to you.

## 4. The two modes, stated plainly

Some wolfgang_rush tools — **NAKASHA** is the clearest example — are built to run entirely
offline and ship with **no network entitlement at all**. Such a tool cannot reach the
internet even if its code asked to, because the operating system will refuse. Where that
is true, it is stated, and it can be verified in about ten seconds (see Section 6).

The **practice brains** are different, and this is the part that matters most.

### 4.1 Your files stay on your machine

Your matters, papers, notes, configuration and audit logs are written only to your own home
directory. They are never uploaded anywhere, in any mode. That part is unconditional.

### 4.2 In cloud mode, the language model runs on a third party's servers

**In cloud mode, which is the default, reasoning is performed by a third-party language
model, which means the text of your prompts is transmitted to that provider** — a company
independent of the Publisher, operating under its own terms and its own privacy policy. The
key must be a paid commercial API key, not a consumer subscription; the two are governed by
different documents, and the commercial terms are the ones that matter to a practitioner.

Before any such transmission, the content passes through the
[Pseudonymisation Gateway](https://github.com/Wolfgangrush/pseudonymisation-gateway), which
substitutes identifying values with structural placeholders in memory, writes no personal
data to disk, restores the real values in the reply you read, and surfaces to you — rather
than silently transmitting — anything it could not fully resolve. Every outbound call in the
brain is funnelled through that single point, so this is not a setting you can forget to turn
on.

### 4.3 The local model tier — shipped in seven editions, not yet in Australia

There is a second mode in which the language model runs on your own machine (Ollama with
Qwen3 or equivalent), so that nothing leaves at all. **As of 26 August 2026 this is published
in seven editions** — India, the United Kingdom, the European Union, the United States,
Singapore, Hong Kong and Dubai. One command, `connect-local`, installs it and switches the
brain over.

**It fails closed.** Once local mode is set, an unreachable local model produces an error, not
a quiet fall-back to a cloud vendor. A silent fall-back would transmit privileged material
while the interface said nothing was leaving, which is the precise false assurance this mode
exists to remove. The setting is read from your configuration file and not from the
environment, so a stray cloud key in your shell cannot redirect it.

**Australia is the exception, and it is stated rather than smoothed over.** The code exists
but is not yet in the published Australian repository, so it cannot be installed there today.
Until it is, an Australian practitioner should read the paragraph below on section 77 My
Health Records data as still fully in force.

**Where the local tier is not available to you, do not rely on a no-transmission mode.** If
your material cannot lawfully or professionally leave your machine, do not put it into a
practice brain in that edition until this ships.

**Pseudonymisation is a technical safeguard. It is not a legal discharge.** It reduces
what is exposed; it does not perform your cross-border transfer assessment, obtain your
client's informed consent, satisfy your professional-conduct obligations, or answer to
your regulator on your behalf. Those remain yours in full. The obligations that survive
cloud mode are set out jurisdiction by jurisdiction on the
[practice brains page]({{ '/brains/#jurisdictions' | relative_url }}), including the one
hard exception the Publisher is aware of — section 77 My Health Records data in Australia,
where the prohibition attaches to offshore handling itself and pseudonymisation therefore
cures nothing.

**Neither mode will cost money.** When the local tier ships, the choice between the two will
be a professional judgment about the material in front of you, not a pricing decision.

## 5. This website, and the newsletter

This website is served as static files by GitHub Pages. The Publisher runs no analytics on
it, sets no advertising or tracking cookies, and operates no logging of its own. GitHub, as
the host, may keep ordinary server-level request logs; that is GitHub's processing under
GitHub's own privacy statement, not the Publisher's.

**The one place this website collects anything from you** is the newsletter subscription
form on the [newsletter page]({{ '/newsletter/' | relative_url }}). If you use it, your
email address is submitted to **Buttondown**, the service that delivers the newsletter, and
is processed there under Buttondown's own privacy policy. That address is used for one
purpose — sending you issues of *The India Data & AI Governance Desk*. It is not sold, not
shared, and not used to contact you about anything else. Every issue carries a one-click
unsubscribe. Issue No. 01 remains hosted on Substack, its original platform.

You never have to give the address at all: every issue is published publicly on the web
and can be read, bookmarked and forwarded without subscribing to anything.

## 6. Verify this rather than believe it

Every claim on this page is a claim about what software does when nobody is watching. A
privacy promise you cannot check is only a promise, which is why the source is published.

- Read the source. It is public, under MIT or Apache-2.0 per repository.
- On macOS, inspect what an application is actually permitted to do:
  `codesign -d --entitlements - /Applications/<AppName>.app`. A tool that claims to be
  offline will show no network entitlement, and the operating system will then refuse any
  connection regardless of what the code asks for.
- For a practice brain, do not take Section 4.3 on trust either — check it the same way.
  `ailawfirm_<jurisdiction>/connect_local.py` writes `ai_provider` into the config file, and
  `ailawfirm_<jurisdiction>/brain/llm.py` reads it and routes to your local endpoint. The
  test is then the simplest one there is: **disconnect the network.** If the brain keeps
  working, nothing was leaving. If a repository has no `connect_local.py` in it, that edition
  has not shipped the local tier — which is exactly how to check the Australian claim above
  for yourself, rather than believing this page.
- Watch it. A network monitor over a full session is the simplest test there is.

## 7. Children's data

None of this software is directed at children, and none of it collects personal data from
anyone, children included. The tools are intended for qualified legal practitioners and
the staff they supervise.

## 8. Changes to this policy

Material changes will be published at this URL with a new effective date above. The
posture described in Section 1 is not something the Publisher intends to change; if it
ever did, it would be stated here in plain words rather than absorbed into a longer
document.

## 9. Contact

advrushikeshravindramahajan@gmail.com / wolfgangrush@gmail.com
