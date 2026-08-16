---
layout: default
title: Tools
description: The individual tools — NAKASHA board parser, the Pseudonymisation Gateway, the DPDP Act as runnable code, the Supreme Court AI regulations mapping, and the Citation Parser. Each one explained plainly.
---

<h1>Tools</h1>

<p class="lede">These are the smaller, single-purpose tools &mdash; separate from the
<a href="{{ '/brains/' | relative_url }}">practice brains</a>, which are a different thing
entirely. Each one below does exactly one job. Every one is free, open source, and runs on your
own machine.</p>

<p>Each tool is explained the same way: <strong>what it actually is</strong>, then
<strong>the problem it exists for</strong>, then what it does about it, and then the honest
limits. If a description here does not make sense to a working practitioner, that is a defect
in the description, and I would rather hear about it than have it politely ignored.</p>

<section class="tool" id="nakasha">
  <div class="tool-head">
    <h2>NAKASHA</h2>
    <span class="badge">macOS application &middot; free</span>
  </div>

  <p class="what-is"><strong>What it is.</strong> A small Mac application that reads tomorrow&rsquo;s
  court board and pulls out the matters that are yours.</p>

  <p class="tool-problem"><strong>The problem.</strong> The daily board is published in the
  evening. It runs to 87 pages and 700 or more matters. Finding your own name in it means
  scrolling a PDF on a phone, late, tired, hoping you do not skip a line &mdash; and a missed
  matter is not a small mistake.</p>

  <p><strong>What it does.</strong> Type your surname. It gives you your list. Click any row and
  it shows you that entry against the printed page, so you can confirm it with your own eyes
  rather than trusting the software. Export the ones you keep. It reads both a bar
  association&rsquo;s daily board and a High Court daily causelist, and when you open both for
  the same date it uses one to fill the gaps in the other.</p>

  <p>The matching is deliberately loose, because boards are printed with words broken mid-line
  and fields cut off at fixed widths. A tool like this is allowed to show you an extra row you
  do not need. It is not allowed to hide one you do.</p>

  <p class="tool-meta"><strong>What you need:</strong> a Mac running macOS&nbsp;13 or later.
  Universal binary, no third-party dependencies, and <strong>no network entitlement at all</strong>
  &mdash; it cannot reach the internet even if it tried, and the operating system will refuse on
  its behalf.</p>

  <p class="juris-links">
    <a class="btn btn-primary" href="https://github.com/Wolfgangrush/nakasha/releases/latest">Download for macOS</a>
    <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/nakasha">Read the source</a>
  </p>
</section>

<section class="tool" id="pseudonymisation-gateway">
  <div class="tool-head">
    <h2>Pseudonymisation Gateway</h2>
    <span class="badge">Software component &middot; free</span>
  </div>

  <p class="what-is"><strong>What it is.</strong> A filter that sits between you and any cloud AI
  and takes your client&rsquo;s identity out of your words before they leave your computer
  &mdash; then puts it back into the answer when it returns. <em>Pseudonymisation</em> is simply
  the technical word for that swap.</p>

  <p class="tool-problem"><strong>The problem.</strong> The moment you type
  <em>&ldquo;draft a reply for Ramesh Kulkarni, PAN ABCDE1234F&rdquo;</em> into any cloud AI
  service, that name and that PAN are on another company&rsquo;s servers. Logged. Retained under
  their policy, not yours. Potentially reachable by a court order directed at them. Nothing you
  do afterwards takes it back, and you did not decide any of that &mdash; you just asked a
  question.</p>

  <p><strong>What it does.</strong> Before anything is transmitted, it replaces every identifying
  value with a neutral placeholder, sends only that version, and restores the real values in the
  reply you read:</p>

<pre class="code-block"><code>You type      →  Draft a reply for Ramesh Kulkarni, PAN ABCDE1234F.
What is sent  →  Draft a reply for [PERSON_1], PAN [PAN_1].
What you see  →  Draft a reply for Ramesh Kulkarni, PAN ABCDE1234F.</code></pre>

  <p>The substitution is consistent within a session &mdash; the same person is
  <code>[PERSON_1]</code> every time they appear &mdash; so the AI can still follow who did what
  to whom. It simply never learns who they are. The mapping between real and placeholder exists
  in memory for that session only and is never written to disk.</p>

  <p><strong>What it covers.</strong> Identifiers that general-purpose tools miss, because most
  were built for American and European data: Aadhaar, PAN, GSTIN and IFSC for India; National
  Insurance, NHS and UTR numbers for the UK; NRIC for Singapore; Emirates ID and trade licence
  numbers for the UAE; TFN and ABN for Australia; SSN and ITIN for the US. Emails, names with
  honorifics, dates and case numbers work across every jurisdiction. Microsoft&rsquo;s Presidio
  is good software and does not cover the Asian and Gulf identifiers &mdash; that gap is why this
  exists.</p>

  <p><strong>The honest limits.</strong> Anything it cannot fully resolve is
  <em>shown to you and recorded</em> rather than quietly transmitted, so you make the final call
  rather than discovering it later. And it remains a <strong>technical safeguard, not a legal
  discharge</strong> &mdash; it reduces what is exposed; it does not perform your cross-border
  transfer assessment, obtain your client&rsquo;s consent, or answer to your regulator.
  <a href="{{ '/brains/#jurisdictions' | relative_url }}">What each jurisdiction still requires &rarr;</a></p>

  <p class="tool-meta"><strong>Who this is for.</strong> Two people. If you use a practice brain,
  <strong>you do not install this</strong> &mdash; it is already inside, and because every
  outbound call in the brain is funnelled through one function, it runs on <em>every</em> request
  rather than being a mode you could forget to switch on. If you build legal software yourself,
  it is a library you can put in front of your own outbound calls.</p>

  <p class="juris-links">
    <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/pseudonymisation-gateway">Read the source</a>
  </p>
</section>

<section class="tool" id="dpdp-law-to-code">
  <div class="tool-head">
    <h2>The DPDP Act 2023, as runnable code</h2>
    <span class="badge">Reference implementation &middot; free</span>
  </div>

  <p class="what-is"><strong>What it is.</strong> India&rsquo;s data-protection statute written
  out as working software instead of prose &mdash; so that a compliance question can be
  <em>run</em> rather than only argued.</p>

  <p class="tool-problem"><strong>The problem, and why it is not a hobby project.</strong> On
  20 May 2026 the <em>Economic Times</em> reported that the Ministry of Electronics and IT has
  been holding industry consultations on a concept it calls
  <strong>&ldquo;law-to-code&rdquo;</strong> &mdash; translating DPDP Act provisions into
  machine-executable rules so that systems are compliant by design instead of audited afterwards.
  The applications the ministry&rsquo;s consultations identified include blocking access to
  personal data without valid consent, raising alerts when data is kept past its permitted
  retention period, and deleting it automatically when that period lapses.</p>

  <p>This repository is a <strong>citizen-built reference implementation of that idea</strong>,
  published while the concept is still at consultation stage &mdash; so that there is something
  concrete to examine, test and disagree with rather than only a proposal to discuss.</p>

  <p><strong>What it does.</strong> Sections 5 to 16 &mdash; notice, consent, the duties of a data
  fiduciary, the rights of a data principal &mdash; expressed as runnable Python with 407 tests
  behind it. It works as a command-line tool, as a library another program can call, and in a
  form an AI assistant can use directly. The README is published in eleven languages.</p>

  <p><strong>Who it is for.</strong> A practitioner who wants a repeatable, inspectable answer
  instead of forming the same view from first principles every time. An engineer at a startup who
  has to build a product that obeys the Act and needs the rule in a form they can actually wire
  in. And anyone who would rather test a compliance claim than argue about it.</p>

  <p class="tool-meta"><strong>The honest status.</strong> MeitY has committed to nothing. The
  official quoted in that article describes the concept as <em>&ldquo;relatively new&rdquo;</em>
  and <em>&ldquo;being looked into&rdquo;</em>. This is one citizen&rsquo;s implementation, not a
  government standard and not an endorsement by anyone. It encodes the sections; it does not
  replace advice on the facts of a particular business.</p>

  <p class="juris-links">
    <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/dpdp-law-to-code">Read the source</a>
  </p>
</section>

<section class="tool" id="sc-ai-regulations">
  <div class="tool-head">
    <h2>Draft AI Regulations 2026 &mdash; clause-by-clause mapping</h2>
    <span class="badge">Analysis &middot; free</span>
  </div>

  <p class="what-is"><strong>What it is.</strong> A clause-by-clause reading of the Supreme Court
  of India&rsquo;s draft regulations on the use of artificial intelligence in courts, setting out
  what each clause would actually require.</p>

  <p class="tool-problem"><strong>The problem.</strong> The draft is written as a regulatory
  instrument. It is not written as a list of the things a practitioner would have to start doing
  differently &mdash; and those two are not the same document.</p>

  <p><strong>What it does.</strong> Takes the draft clause by clause and maps each one against
  open-source legal tooling, saying what it would require of a practitioner and of the software
  they use. It carries the stakeholder comment template that was prepared for the consultation.</p>

  <p class="tool-meta"><strong>Status, stated plainly.</strong> These regulations remain a
  <strong>draft and are not notified</strong>. The consultation closed on 20 June 2026, so the
  comment template is now a record of what could be filed rather than a live opportunity. Read
  this as analysis of a proposal, not as a statement of law in force.</p>

  <p class="juris-links">
    <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/sc-ai-regulations-2026-mapping">Read the mapping</a>
  </p>
</section>

<section class="tool" id="citation-parser">
  <div class="tool-head">
    <h2>Citation Parser</h2>
    <span class="badge">Utility &middot; free</span>
  </div>

  <p class="what-is"><strong>What it is.</strong> A small tool that remembers the citations you
  have already looked up, and tells you whether a reference is properly formed.</p>

  <p class="tool-problem"><strong>The problem.</strong> You find a case, use it, and three weeks
  later go hunting for the same case again. Separately, at 11:48 at night, you find yourself
  staring at <code>AIR 1973 SC 1461</code> trying to decide whether that is the right shape.</p>

  <p><strong>What it does.</strong> Reads Indian citation formats &mdash; AIR, SCC, SCC OnLine
  &mdash; checks that a reference is well-formed, and keeps what you have used in a list you can
  search later.</p>

  <p class="juris-links">
    <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/Citation-Parser">Read the source</a>
  </p>
</section>

<h2 id="research">Academic research</h2>

<p>Separate from everything above, and of no use in a general practice. This is the software
side of an LL.M. dissertation at Queen&rsquo;s University Belfast asking how much human oversight
autonomous weapon systems require, and how that balance could be legally codified and enforced.
Listed here because the code is public and someone working in international humanitarian law or
AI governance may want it.</p>

<ul class="cards">
  <li>
    <a href="https://github.com/Wolfgangrush/chof-calc">chof-calc</a>
    <p>Implements the H equation from Mahajan (2024) to put a number on the human oversight a
    given autonomous system requires.</p>
  </li>
  <li>
    <a href="https://github.com/Wolfgangrush/chof-kernel">chof-kernel</a>
    <p>Embeds those oversight requirements inside a running system, so that it has to answer for
    them rather than merely be measured against them.</p>
  </li>
</ul>

<h2>Looking for the practice brains?</h2>

<p>They are a different thing and live on their own page &mdash; a second brain for your whole
practice, in eight jurisdictions, rather than a single-purpose tool.</p>

<p><a class="btn btn-primary" href="{{ '/brains/' | relative_url }}">What is a practice brain?</a></p>
