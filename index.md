---
layout: default
title: wolfgang_rush
description: Free, open-source legal software for practitioners in eight jurisdictions, single-purpose practice tools, and a fortnightly brief on Indian data-protection and AI-governance law. Nothing runs on the Publisher's servers.
---

{% assign latest = site.data.newsletters | first %}

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">01</span>What lives here</p>
  <div>
    <h2>Three things</h2>
    <p class="lede">A <strong>practice brain</strong> is a prefrontal cortex for your practice — the
    part that holds everything so you do not have to. Every matter, every party, every date, every
    note, kept in one place on your own computer and still there when you come back to it. There is
    one edition per jurisdiction. Alongside them, a handful of <strong>tools</strong> that each do
    exactly one job, and a fortnightly <strong>newsletter</strong> on Indian data-protection and
    AI-governance law.</p>

    <div class="doors">
      <a class="door" href="{{ '/brains/' | relative_url }}">
        <span class="door-eyebrow">Eight editions · one per jurisdiction</span>
        <span class="door-title">Practice brains</span>
        <span class="door-body">A second brain for your whole practice, living in your own
        computer. It holds your matters and remembers them between sessions; you talk to it in
        ordinary sentences. Free forever, and you decide whether it may touch the internet at
        all.</span>
        <span class="door-cta">What is a practice brain? →</span>
      </a>

      <a class="door" href="{{ '/tools/' | relative_url }}">
        <span class="door-eyebrow">Fourteen tools · one job each</span>
        <span class="door-title">Tools</span>
        <span class="door-body">Smaller things that each do exactly one job — pulling your matters
        out of tomorrow's 87-page court board, stripping client identities out of anything sent to
        a cloud AI, the DPDP Act written as runnable code, and a few more.</span>
        <span class="door-cta">See the tools →</span>
      </a>

      <a class="door" href="{{ '/newsletter/' | relative_url }}">
        <span class="door-eyebrow">Fortnightly · no paywall</span>
        <span class="door-title">The India Data &amp; AI Governance Desk</span>
        <span class="door-body">A short brief on the DPDP Act and its Rules, the Data Protection
        Board, and India's AI regulation — read against what is moving globally. No paywall, and
        every date checked against at least two sources.</span>
        <span class="door-cta">Read the newsletter →</span>
      </a>
    </div>
  </div>
</div>
</section>

<section class="section reveal" id="latest">
<div class="mg">
  <p class="note"><span class="n">02</span>Latest issue</p>
  <div>
    <div class="latest-box">
      <span class="tag">Issue No. {{ latest.number }} · {{ latest.date | date: "%-d %B %Y" }}</span>
      <h3 class="latest-title">{{ latest.title }}</h3>
      <p class="latest-summary">{{ latest.summary }}</p>
      <p class="latest-cta">
        <a class="btn btn-primary" href="{{ latest.url }}">Read the latest issue</a>
        <a class="btn btn-ghost" href="{{ '/newsletter/' | relative_url }}">Every issue &amp; subscribe</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal" id="posture">
<div class="mg">
  <p class="note"><span class="n">03</span>The posture, stated precisely</p>
  <div>
    <h2>Stated one fact at a time, so each one can be checked</h2>

    <ul class="posture">
      <li><strong>There is no server of mine.</strong> No accounts, no telemetry, no analytics, no
      crash reporting, no backend. I do not receive your data because there is nowhere for it to
      arrive. That is a fact about my infrastructure, and it holds unconditionally.</li>

      <li><strong>Your files stay on your machine.</strong> {{ site.umbrella | capitalize }},
      audit logs and configuration live only in your own home directory, in a local database you can copy to a
      USB stick. I cannot read that folder.</li>

      <li><strong>You bring your own key.</strong> Where a cloud model is used, it is reached
      through <em>your</em> account on <em>your</em> credentials. There is no shared key, no
      middleman account, and no request of yours passes through anything I operate.</li>

      <li><strong>Pseudonymisation runs on every outbound request.</strong> Names, government
      identifiers and case references are replaced before the prompt leaves your computer, and
      restored in the reply you read. It is wired through a single function that every cloud call
      passes through, and it is covered by tests — not a mode you could forget to switch on.
      <a class="link" href="{{ '/tools/#pseudonymisation-gateway' | relative_url }}">How the swap works →</a></li>

      <li><strong>It is a safeguard, not a discharge.</strong> Pseudonymisation reduces what is
      exposed. It does not perform your cross-border transfer assessment, obtain your client's
      consent, or answer to your regulator for you.
      <a class="link" href="{{ '/brains/#jurisdictions' | relative_url }}">What each jurisdiction still requires →</a></li>

      <li><strong>NAKASHA is the strict case.</strong> It ships with no network entitlement at all,
      so it cannot reach the internet even if it wanted to — the operating system refuses on its
      behalf. Where a claim can be made absolute it is made absolute; where it cannot, it is
      not.</li>

      <li><strong>The source is published</strong> so every sentence above can be verified by you,
      or by anyone you ask to check, instead of taken on trust.</li>

      <li><strong>One exception, disclosed.</strong> The newsletter form sends your email address
      to Buttondown, which delivers the issues. Nothing else on this website collects anything
      from you, and every issue can be read without subscribing.</li>
    </ul>

    <p style="margin-top:1.6rem"><a class="link" href="{{ '/privacy/' | relative_url }}">Read the full Privacy Policy</a></p>
  </div>
</div>
</section>

<section class="section reveal" id="who">
<div class="mg">
  <p class="note"><span class="n">04</span>Who publishes this</p>
  <div>
    <h2>One advocate, building in the open</h2>
    <p><strong>Rushikesh R. Mahajan</strong> — Advocate, with right of audience before the courts
    of India. LL.M. in Law and Technology, Queen's University Belfast. The software is published
    under the wolfgang_rush masthead; the newsletter commentary is written under my own name.</p>

    <p>Most of what is here exists because a solo practitioner has no back office. The work that a
    junior or a clerk would absorb in a larger chamber — finding your matters in tomorrow's board,
    keeping citations straight, remembering what a file said three months ago — is the work these
    tools take on. They do not do the part that needs a lawyer.</p>

    <p><a class="link" href="{{ '/built/' | relative_url }}">Everything built so far, public and private →</a></p>
  </div>
</div>
</section>
