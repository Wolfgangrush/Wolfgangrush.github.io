---
layout: default
title: What is built
description: Everything built so far — the public tools and practice brains anyone can download, and the private tier behind them, described rather than linked.
---

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">00</span>Why this page exists</p>
  <div>
    <h2>Work that nobody can see may as well not exist</h2>
    <p class="lede">Five months of building, most of it invisible. This page is the whole of it, in
    one place — what is public and downloadable, and what is private and only described.</p>
    <p>The public tier is on this site already, with download links and source. The private tier is
    named and explained but not linked, because those repositories are closed. That is deliberate:
    you can see the shape of what exists without me pretending it is available.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">01</span>Public</p>
  <div>
    <h2>Free, open source, downloadable today</h2>
    <div class="table-scroll">
    <table>
      <thead><tr><th>What</th><th>Count</th><th>Licence</th></tr></thead>
      <tbody>
        <tr><td><a class="link" href="{{ '/brains/' | relative_url }}">Practice brains</a> — one per jurisdiction</td><td>8</td><td>MIT</td></tr>
        <tr><td><a class="link" href="{{ '/tools/' | relative_url }}">Single-purpose tools</a></td><td>9</td><td>MIT / Apache-2.0</td></tr>
        <tr><td>Drafting plugins and connectors for Indian courts</td><td>28</td><td>MIT</td></tr>
      </tbody>
    </table>
    </div>
    <p class="small muted">The drafting families are indexed separately and are not part of this
    site's three doors.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">02</span>Private — the practice tier</p>
  <div>
    <h2>Enterprise editions</h2>
    <p>Each public practice brain has a closed counterpart built for a firm rather than a solo
    practitioner: an in-tenant server instead of a single laptop, single sign-on, a self-lockdown
    mode, readiness work against ISO/IEC 27001 and 42001, and the legal pack a procurement team asks
    for. <strong>Seven jurisdictions</strong> — India, the United Kingdom, the European Union, the
    United States, Singapore, Dubai and Australia.</p>

    <h3>General counsel</h3>
    <p>A cross-jurisdictional brain for in-house counsel and general counsel teams, in two editions —
    one for the team, one for the enterprise deployment. It is not a per-country product; the point
    of an in-house desk is that the matter arrives without asking which jurisdiction it belongs to.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">03</span>Private — Vidhi Likhit</p>
  <div>
    <h2>The law-school family</h2>
    <p>A corpus and a set of engines built around Indian statute — <strong>11,715 Acts</strong> across
    the Union and the States and Union Territories, and <strong>90,715 sections</strong>.</p>

    <p>Three editions of the teaching product: a <strong>solo edition</strong> for the individual
    practitioner or student, an <strong>enterprise edition</strong> for a firm, and a
    <strong>university edition</strong> for an institution teaching from it.</p>

    <p>Four deterministic engines sit alongside the corpus, each doing one narrow thing without a
    language model in the decision path:</p>

    <ul class="posture">
      <li><strong>A cause-of-action checker</strong> for section 138 of the Negotiable Instruments
      Act, with a CPC, BNSS and BSA kernel behind it. Deterministic: the same facts give the same
      answer, and the answer shows its reasoning.</li>
      <li><strong>An electronic-evidence integrity engine</strong> for section 63 of the Bharatiya
      Sakshya Adhiniyam — hash at capture, chain of custody, certificate at the end.</li>
      <li><strong>An opposing-counsel red team</strong> that reads a draft and names which ground,
      prayer or clause gets attacked, with the counter-authority that would be cited against it and
      the defensive fix. Read-only, and built so it cannot invent a citation.</li>
      <li><strong>A statute-delta engine</strong> that tracks what changed in an Act between two
      dates.</li>
    </ul>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">04</span>Private — human-oversight systems</p>
  <div>
    <h2>Where the dissertation went next</h2>

    <p>My LL.M. dissertation at Queen's asked how much human oversight autonomous systems require
    before the law is satisfied, and proposed a formula for measuring it. Two problems surfaced once
    I tried to use it: it was a paper instrument, and it assumed an operator who was already paying
    attention.</p>

    <p><a class="link" href="{{ '/tools/#chof' | relative_url }}"><code>chof-calc</code> and
    <code>chof-kernel</code></a> — both public, both on this site — answer the first problem: the
    formula as running software, and an embedded governor that applies it in real time with a signed
    audit trail.</p>

    <p>The second problem needed more than a calculator. A private architecture extends the same
    principle into full decision support — fusing what several sensing layers see into one picture,
    filtering it by the operator's role and current capacity, and refusing to drop a life-safety
    signal no matter how loaded that operator is. It is advisory throughout. It never decides; it
    tells a human what it can see, and how much of it they are actually in a position to hold.</p>

    <p>It is not distributed, and it is not for sale. It is described here because the research it
    came from is public, and because work nobody can see may as well not exist.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">05</span>Private — infrastructure</p>
  <div>
    <h2>The parts underneath</h2>
    <p>Two closed components the rest is built on: a connector layer that lets the engines talk to one
    another, and a storage layer that holds a practice's accumulated matter history in a form that
    survives between sessions. Neither is a product on its own.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">06</span>The count</p>
  <div>
    <h2>Where it stands</h2>
    <div class="table-scroll">
    <table>
      <thead><tr><th>Tier</th><th>Repositories</th><th>Status</th></tr></thead>
      <tbody>
        <tr><td>Public — brains, tools, drafting families</td><td>51</td><td>free, MIT / Apache-2.0, downloadable</td></tr>
        <tr><td>Private — enterprise, GC, Vidhi Likhit, oversight, infrastructure</td><td>43</td><td>closed; described here, not linked</td></tr>
      </tbody>
    </table>
    </div>
    <p class="small muted">Counted from the live repository listing on 23 August 2026. Personal and
    non-legal repositories are excluded from both figures.</p>

    <p>All of it was built alongside a practice — between boards, after court, and on the Sundays
    that were free. None of it has been sold. It exists because a solo practitioner has no back
    office, and building one turned out to be the only way to get one.</p>

    <p class="juris-links">
      <a class="btn btn-primary" href="{{ '/brains/' | relative_url }}">Start with a practice brain</a>
      <a class="btn btn-ghost" href="{{ '/tools/' | relative_url }}">Or a single tool</a>
    </p>
  </div>
</div>
</section>
