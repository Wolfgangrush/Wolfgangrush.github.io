---
layout: default
title: The India Data & AI Governance Desk
description: A fortnightly brief on Indian data-protection and AI-governance law — the DPDP Act and Rules, the Data Protection Board, and India's AI regulation, read against what is moving globally. Every date sourced.
---

{% assign latest = site.data.newsletters | first %}

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">01</span>The brief</p>
  <div>
    <h2>The India Data &amp; AI Governance Desk</h2>
    <p class="lede">A fortnightly brief on Indian data-protection and AI-governance law — the DPDP
    Act and its Rules, the Data Protection Board, and India's AI regulation, read against what is
    moving globally. Short enough to finish. Every date sourced.</p>

    <div class="latest-box">
      <span class="tag">Latest issue · No. {{ latest.number }} · {{ latest.date | date: "%-d %B %Y" }}</span>
      <h3 class="latest-title">{{ latest.title }}</h3>
      <p class="latest-summary">{{ latest.summary }}</p>
      <p class="latest-cta">
        <a class="btn btn-primary btn-lg" href="{{ latest.url }}">Read the latest issue</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal" id="subscribe">
<div class="mg">
  <p class="note"><span class="n">02</span>By email</p>
  <div>
    <h2>Get it in your inbox</h2>
    <p>Fortnightly. No charge, no paywall, and every issue stays permanently readable on the web
    whether you subscribe or not — so you can forward a link to a client or a colleague and it will
    simply open.</p>

    <form class="subscribe"
          action="https://buttondown.com/api/emails/embed-subscribe/the_desk"
          method="post"
          target="popupwindow"
          onsubmit="window.open('https://buttondown.com/the_desk', 'popupwindow')">
      <label class="sr-only" for="bd-email">Your email address</label>
      <input type="email" name="email" id="bd-email" placeholder="you@yourchambers.com" required>
      <button type="submit" class="btn btn-primary">Subscribe</button>
    </form>

    <p class="muted small" style="max-width:66ch">
      <strong>What happens to that address.</strong> It goes to Buttondown, the service that sends
      this newsletter, and it is used for one thing — sending you the issues. It is not sold, not
      shared, and not used to contact you about anything else. One-click unsubscribe is in every
      issue. This form is the only place on this entire website where anything is collected from you;
      see the <a class="link" href="{{ '/privacy/' | relative_url }}">Privacy Policy</a>. Prefer to
      give nothing at all? Bookmark the
      <a class="link" href="https://buttondown.com/the_desk/archive/">archive</a> and read it there.
    </p>
  </div>
</div>
</section>

<section class="section reveal" id="archive">
<div class="mg">
  <p class="note"><span class="n">03</span>Every issue</p>
  <div>
    <h2>The archive</h2>
    <ul class="issue-list">
      {% for issue in site.data.newsletters %}
      <li>
        <p class="issue-meta">Issue No. {{ issue.number }} · {{ issue.date | date: "%-d %B %Y" }}</p>
        <a class="issue-title" href="{{ issue.url }}">{{ issue.title }}</a>
        <p class="issue-summary">{{ issue.summary }}</p>
      </li>
      {% endfor %}
    </ul>
    <p class="muted small">Issue No. 01 was published on Substack and stays there as a permanent
    record. Everything from Issue No. 02 onward is published on
    <a class="link" href="https://buttondown.com/the_desk/archive/">Buttondown</a>.</p>
  </div>
</div>
</section>

<section class="section reveal" id="scope">
<div class="mg">
  <p class="note"><span class="n">04</span>Scope</p>
  <div>
    <h2>What is in, and what is deliberately out</h2>
    <p>This is a specialist brief, not a general legal digest. The test applied to every candidate
    item is simple: <em>is this data protection, or is this AI governance?</em> If neither, it does
    not go in. A narrow brief that is genuinely authoritative is worth more than a broad one that is
    merely long.</p>

    <ul class="posture">
      <li><strong>India Desk.</strong> The DPDP Act and Rules as they actually come into force —
      Consent Managers, the Data Protection Board, the phased compliance dates. MeitY advisories on
      AI and deepfakes. Indian privacy and AI judgments as they land.</li>
      <li><strong>India AI governance.</strong> Including the Supreme Court's draft Regulations for
      the Use of AI in Courts, and what they would mean for a practitioner's disclosure
      obligations.</li>
      <li><strong>Indian fintech</strong> where it meets data and AI — RBI data-governance rules,
      account aggregators, payment-data localisation. Not general fintech business news.</li>
      <li><strong>Global, through the same lens only.</strong> The EU AI Act and GDPR, US state
      privacy and AI statutes, Singapore's PDPA and AI Verify, DIFC and Gulf data protection, and the
      governance standards — ISO/IEC 42001, NIST AI RMF.</li>
      <li><strong>Deliberately out.</strong> General litigation, general sectoral-regulator news,
      legal-tech product announcements, and any practice area outside data and AI.</li>
    </ul>
  </div>
</div>
</section>

<section class="section reveal" id="who">
<div class="mg">
  <p class="note"><span class="n">05</span>Who writes it</p>
  <div>
    <h2>Written under my own name</h2>
    <p><strong>Rushikesh R. Mahajan</strong> — Advocate, with right of audience before the courts of
    India. LL.M. in Law and Technology, Queen's University Belfast. Published under the wolfgang_rush
    masthead.</p>

    <p>Every statute reference and every date in every issue is checked against at least two sources
    before it goes out. Where something is still a draft, the issue says so, and says when the
    consultation closes. Where a claim could not be verified, it does not appear.</p>

    <p class="muted small">This newsletter is informational and educational. It is not legal advice,
    and reading it creates no advocate–client relationship. Sources are linked so you can go to the
    primary material yourself.</p>
  </div>
</div>
</section>
