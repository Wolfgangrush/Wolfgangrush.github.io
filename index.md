---
layout: default
title: wolfgang_rush
description: Local-first legal software for practitioners in eight jurisdictions, and a fortnightly brief on Indian data-protection and AI-governance law. Free, open source, and nothing runs on my servers.
---

{% assign latest = site.data.newsletters | first %}

<h2 id="tools">Two things live here</h2>

<p class="lede">On one side, <strong>software</strong> &mdash; practice brains for eight
jurisdictions and a set of smaller tools, all of which run on your own machine, cost nothing,
and publish their source so the privacy claims can be checked rather than believed. On the
other side, <strong>writing</strong> &mdash; a fortnightly brief on Indian data-protection and
AI-governance law that anyone can read without subscribing to anything.</p>

<div class="split">
  <a class="split-card" href="{{ '/brains/' | relative_url }}">
    <span class="split-eyebrow">The software</span>
    <span class="split-title">Practice brains &amp; tools</span>
    <span class="split-body">What a practice brain is, what it costs, why there are two
    privacy modes, and how to install one &mdash; written for someone who has never installed
    anything before.</span>
    <span class="split-cta">Start here &rarr;</span>
  </a>
  <a class="split-card" href="{{ '/newsletter/' | relative_url }}">
    <span class="split-eyebrow">The writing</span>
    <span class="split-title">The India Data &amp; AI Governance Desk</span>
    <span class="split-body">A fortnightly brief on the DPDP Act and Rules, the Data Protection
    Board, and India&rsquo;s AI regulation &mdash; read against what is moving globally. Every
    date sourced.</span>
    <span class="split-cta">Read the newsletter &rarr;</span>
  </a>
</div>

<h2 id="brains">Practice brains &mdash; eight jurisdictions</h2>

<div class="featured">
  <div>
    <span class="tag">Free forever &middot; open source</span>
    <h3>A second brain for your practice, that lives in your own computer</h3>
    <p>You talk to it in ordinary sentences. It holds your matters &mdash; parties, prayers,
    hearing dates, orders, the state of every draft &mdash; and it remembers them between
    sessions, so walking into court means the context comes back instead of being rebuilt.
    Seven specialists sit behind one conversation: a matter manager, a citation clerk, a court
    registrar, a drafting assistant, a compliance officer who reads your public copy for
    professional-conduct risk before you publish, and a deadline tracker.</p>
    <p><strong>It costs nothing and always will.</strong> ₹0 · £0 · €0 · $0 · S$0 · AED&nbsp;0 ·
    AU$0 &mdash; there is no account, no subscription and nothing to buy. A large firm gives its
    people an apparatus; a solo practitioner does the same work without one. That gap is the
    whole reason these exist.</p>
    <p><strong>And you decide whether it touches the internet at all.</strong> Run the language
    model on your own laptop and nothing ever leaves &mdash; you can unplug the network and it
    still works. Or use a cloud model, behind a pseudonymisation gateway that strips identifiers
    before anything is sent. Each jurisdiction's brain documents precisely which of your
    professional duties each mode addresses, and which ones remain yours either way.</p>
    <p style="margin-top:18px">
      <a class="btn btn-primary" href="{{ '/brains/' | relative_url }}">What is a practice brain?</a>
      <a class="btn btn-ghost" href="{{ '/brains/#install' | relative_url }}">How to install one</a>
    </p>
  </div>
</div>

<ul class="pills">
{% for j in site.data.jurisdictions %}
  <li><a href="{{ '/brains/#jurisdictions' | relative_url }}">{{ j.name }} &middot; {{ j.price }}</a></li>
{% endfor %}
</ul>

<h2 id="newsletter-box">The latest issue</h2>

<div class="latest-box">
  <span class="tag">Issue No. {{ latest.number }} &middot; {{ latest.date | date: "%-d %B %Y" }}</span>
  <h3 class="latest-title">{{ latest.title }}</h3>
  <p class="latest-summary">{{ latest.summary }}</p>
  <p class="latest-cta">
    <a class="btn btn-primary btn-lg" href="{{ latest.url }}">Click here to read the latest newsletter</a>
    <a class="btn btn-ghost" href="{{ '/newsletter/' | relative_url }}">Every issue &amp; subscribe</a>
  </p>
</div>

<h2 id="apps">Applications</h2>

<div class="featured">
  <div>
    <span class="tag">New &middot; macOS app</span>
    <h3>NAKASHA &mdash; High Court board parser</h3>
    <p><strong>Make tomorrow's board tonight.</strong> The daily board is published in the
    evening and runs to 87 pages and 700 or more matters. NAKASHA reads it on your Mac and
    gives you your own matters out of it &mdash; type your surname, get your list, click any row
    to verify it against the printed page, export what you keep.</p>
    <p>It reads a bar association's daily board and a High Court daily causelist, and when you
    open both for the same date it uses one to complete the other. Loose matching survives the
    board's mid-word hard wraps and field-width truncation, because a missed matter is the one
    failure this tool may not have. Universal binary, macOS 13+, zero third-party dependencies,
    and <strong>no network entitlement at all</strong> &mdash; this one genuinely cannot reach
    the internet, by construction.</p>
    <p style="margin-top:16px">
      <a class="btn btn-primary" href="https://github.com/Wolfgangrush/nakasha/releases/latest">Download for macOS</a>
      <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/nakasha">Read the source</a>
    </p>
  </div>
</div>

<h2 id="privacy-tools">Privacy and data protection</h2>

<ul class="cards">
  <li>
    <a href="https://github.com/Wolfgangrush/pseudonymisation-gateway">Pseudonymisation Gateway</a>
    <p>Strips and substitutes personal identifiers before any text leaves a machine &mdash;
    Aadhaar, PAN, National Insurance, NHS numbers, and the rest, by jurisdiction. Works in
    memory, writes nothing to disk, and surfaces anything it could not fully resolve instead of
    sending it quietly. This is the component the practice brains use in cloud mode.</p>
  </li>
  <li>
    <a href="https://github.com/Wolfgangrush/dpdp-law-to-code">The DPDP Act 2023, as runnable code</a>
    <p>Sections 5&ndash;16 of India's Digital Personal Data Protection Act written as working
    software, so a compliance question can be executed and tested rather than argued from a
    reading. Useful if you are building a system that has to obey the Act.</p>
  </li>
</ul>

<h2 id="analysis">Regulatory analysis</h2>

<ul class="cards">
  <li>
    <a href="https://github.com/Wolfgangrush/sc-ai-regulations-2026-mapping">Draft AI Regulations 2026 &mdash; clause-by-clause mapping</a>
    <p>The Supreme Court of India's draft regulations for the use of AI in courts, mapped clause
    by clause against open-source legal tooling, with a template for filing stakeholder
    comments. Still a draft; the consultation closed 20 June 2026.</p>
  </li>
</ul>

<h2 id="utilities">Everyday utilities</h2>

<ul class="cards">
  <li>
    <a href="https://github.com/Wolfgangrush/Citation-Parser">Citation Parser</a>
    <p>Saves and recalls the citations you have already looked up, so the same case is not
    hunted twice.</p>
  </li>
</ul>

<h2 id="research">Academic research</h2>

<p>Separate from the practice tooling &mdash; this is the software side of an LL.M. dissertation
at Queen&rsquo;s University Belfast on how much human oversight autonomous weapon systems
require, and how that balance might be legally codified and enforced. Of interest if you work in
international humanitarian law or AI governance; of no use in a general practice.</p>

<ul class="cards">
  <li>
    <a href="https://github.com/Wolfgangrush/chof-calc">chof-calc</a>
    <p>Implements the H equation from Mahajan (2024) to quantify the human oversight an
    autonomous system requires.</p>
  </li>
  <li>
    <a href="https://github.com/Wolfgangrush/chof-kernel">chof-kernel</a>
    <p>Embeds those oversight requirements inside a system that then has to answer for them.</p>
  </li>
</ul>

<h2 id="posture">The posture</h2>

<p>Everything here is built the same way, for the same reason. Stated precisely, because a
privacy claim that is not precise is not a privacy claim.</p>

<ul class="posture">
  <li><strong>There is no server of mine.</strong> No accounts, no telemetry, no analytics, no
  crash reporting, no backend. I do not receive your data because there is nowhere for it to
  arrive. That is a fact about my infrastructure, and it holds unconditionally.</li>
  <li><strong>Whether anything leaves your machine is your decision, not mine.</strong> The
  practice brains can run their language model entirely on your own computer, in which case
  nothing leaves at all &mdash; or against a cloud model, in which case your text reaches that
  vendor, and a pseudonymisation gateway strips identifiers first. Both modes are free. The
  choice is documented rather than defaulted quietly.
  <a href="{{ '/brains/#tiers' | relative_url }}">Why those two modes exist &rarr;</a></li>
  <li><strong>Pseudonymisation is a safeguard, not a discharge.</strong> It reduces what is
  exposed. It does not perform your cross-border transfer assessment, obtain your client&rsquo;s
  consent, or answer to your regulator for you. Each jurisdiction&rsquo;s page sets out exactly
  what remains yours.</li>
  <li><strong>NAKASHA is the strict case.</strong> It ships with no network entitlement at all,
  so it cannot reach the internet even if it wanted to. Where a claim can be made absolute, it
  is made absolute; where it cannot, it is not.</li>
  <li><strong>The source is published</strong> so every sentence above can be verified by you,
  or by anyone you ask to check, instead of taken on trust. MIT and Apache-2.0, per repository.</li>
  <li><strong>One exception, disclosed.</strong> The newsletter subscription form sends your
  email address to Buttondown, which delivers the issues. Nothing else on this website collects
  anything from you, and you can read every issue without subscribing.</li>
</ul>

<p>Read the full <a href="{{ '/privacy/' | relative_url }}">Privacy Policy</a>.</p>

<h2>Who publishes this</h2>

<p><strong>Rushikesh R. Mahajan</strong> &mdash; Advocate, with right of audience before the
courts of India. LL.M. in Law and Technology, Queen&rsquo;s University Belfast. The software is
published under the wolfgang_rush masthead; I write the newsletter commentary under my own name.</p>

<p>Everything here is informational and educational. None of it is legal advice, and none of it
creates an advocate&ndash;client or solicitor&ndash;client relationship. The tools are for
qualified practitioners and the staff they supervise.</p>

<h2>Contact</h2>

<p><a href="mailto:advrushikeshravindramahajan@gmail.com">advrushikeshravindramahajan@gmail.com</a></p>
