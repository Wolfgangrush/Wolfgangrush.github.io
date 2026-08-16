---
layout: default
title: Privacy Policy — wolfgang_rush
permalink: /privacy/
---

# Privacy Policy

**Effective date:** 2026-08-16
**Publisher:** Rushikesh R. Mahajan, publishing as **wolfgang_rush**
**Contact:** advrushikeshravindramahajan@gmail.com

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

## 2. What the software processes, and where

wolfgang_rush software runs **on your own machine**. Documents you open are read where
they already sit. Nothing is copied to the Publisher, to a hosted service, or to any
third party by the act of using the software.

Where a tool stores anything at all between sessions — a list of names you asked it to
watch, a display preference — that data is written to your own machine's local
application preferences and nowhere else. Deleting the application, or its preference
file, removes it.

## 3. Data protection responsibility

The Publisher is **neither a Data Fiduciary nor a Data Processor** under the Digital
Personal Data Protection Act, 2023, in respect of the material you process with this
software — because the Publisher never receives, stores or processes it.

Where you are an advocate handling client material, you remain the Data Fiduciary for
that material, exactly as you were before installing anything published here. Your
obligations to your client are unchanged by this software, because the software does not
move their data anywhere.

## 4. Tools that call an external service

Some wolfgang_rush tools are designed to run entirely offline and hold no network
permission at all. Where a tool *does* call an external service, that is stated plainly
in that tool's own documentation, and where such a call carries personal data it is
passed through a pseudonymisation stage first, so that identifying values are replaced
with structural placeholders before they leave the machine.

If a tool makes no such statement, assume it makes no external call — and verify it.
Which brings us to:

## 5. Verify this rather than believe it

Every claim on this page is a claim about what software does when nobody is watching. A
privacy promise you cannot check is only a promise, which is why the source is published.

- Read the source. It is public.
- On macOS, inspect what the application is actually permitted to do:
  `codesign -d --entitlements - /Applications/<AppName>.app`. A tool that claims to be
  offline will show no network entitlement, and the operating system will then refuse any
  connection regardless of what the code asks for.
- Watch it. A network monitor over a full session is the simplest test there is.

## 6. Children's data

None of this software is directed at children, and none of it collects personal data from
anyone, children included.

## 7. Changes to this policy

Material changes will be published at this URL with a new effective date above. The
posture described in Section 1 is not something the Publisher intends to change; if it
ever did, it would be stated here in plain words rather than absorbed into a longer
document.

## 8. Contact

advrushikeshravindramahajan@gmail.com
