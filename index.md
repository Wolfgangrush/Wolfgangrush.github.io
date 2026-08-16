---
layout: default
title: wolfgang_rush
description: Free, open-source legal software for practitioners in eight jurisdictions, individual practice tools, and a fortnightly brief on Indian data-protection and AI-governance law. Free, open source, and nothing runs on the Publisher's servers.
---

{% assign latest = site.data.newsletters | first %}

<h2 id="start">Three things live here</h2>

<p class="lede">A set of <strong>practice brains</strong> &mdash; one per jurisdiction. A handful
of individual <strong>tools</strong> that each do one job. And a fortnightly
<strong>newsletter</strong> on Indian data-protection and AI-governance law. Everything is free,
the source is published, and none of it runs on a server of mine.</p>

<div class="doors">
  <a class="door" href="{{ '/brains/' | relative_url }}">
    <span class="door-eyebrow">Software &middot; 8 jurisdictions</span>
    <span class="door-title">Practice brains</span>
    <span class="door-body">A second brain for your whole practice, living in your own computer.
    It holds your matters and remembers them between sessions; you talk to it in ordinary
    sentences. Free forever, and you decide whether it is allowed to touch the internet at
    all.</span>
    <span class="door-cta">What is a practice brain? &rarr;</span>
  </a>

  <a class="door" href="{{ '/tools/' | relative_url }}">
    <span class="door-eyebrow">Software &middot; single-purpose</span>
    <span class="door-title">Tools</span>
    <span class="door-body">Smaller things that each do exactly one job &mdash; pulling your
    matters out of tomorrow&rsquo;s 87-page court board, stripping client identities out of
    anything sent to a cloud AI, the DPDP Act written as runnable code, and a couple
    more.</span>
    <span class="door-cta">See the tools &rarr;</span>
  </a>

  <a class="door" href="{{ '/newsletter/' | relative_url }}">
    <span class="door-eyebrow">Writing &middot; fortnightly</span>
    <span class="door-title">The India Data &amp; AI Governance Desk</span>
    <span class="door-body">A short brief on the DPDP Act and its Rules, the Data Protection
    Board, and India&rsquo;s AI regulation &mdash; read against what is moving globally. Free,
    no paywall, and every date checked against at least two sources.</span>
    <span class="door-cta">Read the newsletter &rarr;</span>
  </a>
</div>

<h2 id="latest">The latest issue</h2>

<div class="latest-box">
  <span class="tag">Issue No. {{ latest.number }} &middot; {{ latest.date | date: "%-d %B %Y" }}</span>
  <h3 class="latest-title">{{ latest.title }}</h3>
  <p class="latest-summary">{{ latest.summary }}</p>
  <p class="latest-cta">
    <a class="btn btn-primary btn-lg" href="{{ latest.url }}">Click here to read the latest newsletter</a>
    <a class="btn btn-ghost" href="{{ '/newsletter/' | relative_url }}">Every issue &amp; subscribe</a>
  </p>
</div>

<h2 id="posture">The posture</h2>

<p>Everything here is built the same way, for the same reason. Stated precisely, because a
privacy claim that is not precise is not a privacy claim.</p>

<ul class="posture">
  <li><strong>There is no server of mine.</strong> No accounts, no telemetry, no analytics, no
  crash reporting, no backend. I do not receive your data because there is nowhere for it to
  arrive. That is a fact about my infrastructure, and it holds unconditionally.</li>
  <li><strong>Your files stay on your machine; the model does not run there yet.</strong> Matters,
  drafts, audit logs and configuration live only in your own home directory. The language model
  itself currently runs against a cloud vendor, and a pseudonymisation gateway strips the
  identifying details before any prompt leaves your computer &mdash; on every request, covered by
  tests. <strong>A fully local model tier, where nothing leaves at all, is the next milestone and
  is not wired yet.</strong> Said plainly rather than implied.
  <a href="{{ '/brains/#tiers' | relative_url }}">Why those two modes exist &rarr;</a></li>
  <li><strong>Pseudonymisation is a safeguard, not a discharge.</strong> It reduces what is
  exposed. It does not perform your cross-border transfer assessment, obtain your client&rsquo;s
  consent, or answer to your regulator for you.
  <a href="{{ '/brains/#jurisdictions' | relative_url }}">What each jurisdiction still requires &rarr;</a></li>
  <li><strong>NAKASHA is the strict case.</strong> It ships with no network entitlement at all, so
  it cannot reach the internet even if it wanted to. Where a claim can be made absolute it is made
  absolute; where it cannot, it is not.</li>
  <li><strong>The source is published</strong> so every sentence above can be verified by you, or
  by anyone you ask to check, instead of taken on trust. MIT and Apache-2.0, per repository.</li>
  <li><strong>One exception, disclosed.</strong> The newsletter subscription form sends your email
  address to Buttondown, which delivers the issues. Nothing else on this website collects anything
  from you, and every issue can be read without subscribing.</li>
</ul>

<p>Read the full <a href="{{ '/privacy/' | relative_url }}">Privacy Policy</a>.</p>

<h2 id="who">Who publishes this</h2>

<p><strong>Rushikesh R. Mahajan</strong> &mdash; Advocate, with right of audience before the
courts of India. LL.M. in Law and Technology, Queen&rsquo;s University Belfast. The software is
published under the wolfgang_rush masthead; I write the newsletter commentary under my own
name.</p>

<p>Everything here is informational and educational. None of it is legal advice, and none of it
creates an advocate&ndash;client or solicitor&ndash;client relationship. The tools are built for
qualified practitioners and the staff they supervise.</p>

<h2>Contact</h2>

<p><a href="mailto:advrushikeshravindramahajan@gmail.com">advrushikeshravindramahajan@gmail.com</a></p>
