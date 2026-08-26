---
layout: default
title: Practice brains
description: A free, open-source practice brain for solo lawyers — one edition per jurisdiction, eight of them. It runs in your own terminal, holds your matters between sessions, and keeps your files on your own machine.
---

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">01</span>What it is</p>
  <div>
    <h2>A second brain for your practice, living in your own computer</h2>

    <p class="lede">Eight sibling products. Same idea, one edition per jurisdiction. No marketing
    department, no sales call, no account to create.</p>

    <p>You install one edition and you talk to it in ordinary sentences. A <strong>receptionist</strong>
    listens to what you type, works out which specialist you actually need, and routes the question.
    Behind it sit specialists for citations, court lookup, document preparation, bar-conduct compliance, and
    calendar — each pre-loaded with the statute digests and preparation templates of your own
    jurisdiction, the ones you would otherwise keep on a shelf behind your desk.</p>

    <p>Everything you give it — {{ site.umbrella }}, hearing dates, reminders, audit logs — lives in your
    own home directory. Not on a server of mine, because there isn't one. You can copy that folder
    to a USB stick and hold your whole practice in your hand.</p>

    <p>It is not Magic Circle software and is not trying to be. It is the back office a solo
    practitioner does not have: the work a junior or a clerk absorbs in a larger chamber. The part
    that needs a lawyer's judgement is still yours, and every edition says so in its own
    documentation.</p>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">02</span>What you do with it</p>
  <div>
    <h2>A working day, in commands</h2>

    <ul class="posture">
      <li><strong>Validate a citation</strong> in your own format — <code>AIR 1973 SC 1461</code>,
      <code>[2023] UKSC 42</code>, <code>ECLI:EU:C:2024:101</code>, <code>410 U.S. 113 (1973)</code>,
      <code>[2023] SGCA 42</code>, <code>[2023] HKCFI 1234</code>, <code>[2024] DIFC CFI 042</code>,
      <code>[2024] HCA 12</code>.</li>
      <li><strong>Ask which court has jurisdiction</strong> over the matter in front of you, and get
      the answer from a registrar that knows your own court hierarchy.</li>
      <li><strong>Ask the limitation period</strong> for the claim you are looking at — Limitation
      Act 1963, Limitation Act 1980, BGB §195, the relevant state Act, Cap. 347, whichever applies
      to your edition.</li>
      <li><strong>Add a hearing date</strong> and sync it to your phone through a local calendar
      feed.</li>
      <li><strong>Run a proposed advertisement or post past the compliance officer</strong> before you
      publish it, and find out whether it touches your bar's publicity rule — BCI Rule 36, the SRA
      and BSB conduct rules, the CCBE Code, ABA Model Rule 7, LPCR Rule 8, the Solicitors' Conduct
      Rules, the DIFC Code of Conduct, or the UAE Legal Profession Code.</li>
      <li><strong>Prepare a pleading</strong> from a template that belongs to your forum — an
      Originating Claim under ROC 2021, a CPR N1 claim form, a complaint under the FRCP, an Indian
      written statement, an Article 263 TFEU application, an HKCFI originating summons.</li>
      <li><strong>Switch between DIFC and Mainland UAE mid-session</strong> in the Dubai edition,
      without either system's context contaminating the other.</li>
      <li><strong>Ask a regulatory threshold</strong> — Tranche 2 AML reporting, goAML, BSB risk
      classification, Section 77 My Health Records — and have it routed to the specialist that
      actually holds that material.</li>
    </ul>
  </div>
</div>
</section>

<section class="section reveal" id="tiers">
<div class="mg">
  <p class="note"><span class="n">03</span>Where the work happens</p>
  <div>
    <h2>Three separate facts about privacy, each stated on its own</h2>

    <p>These are usually blurred together into one reassuring sentence. They are not the same fact
    and they do not protect you in the same way, so they are set out separately.</p>

    <h3>Your files never move</h3>
    <p>{{ site.umbrella | capitalize }} — parties, hearing dates, reminders, correspondence,
    compliance records and the audit log — live in <code>~/.aibrain-&lt;jurisdiction&gt;/</code> on
    your own machine, in a local database you can copy to a USB stick. I operate no
    infrastructure that touches it and I cannot read that folder. This holds unconditionally and
    is not contingent on any setting.</p>

    <h3>You bring your own key — and it must be a paid one</h3>
    <p>Where a language model is used, it is reached on <strong>your</strong> account with
    <strong>your</strong> credentials. There is no shared key, no account of mine in the path, and
    no request of yours passes through anything I run.</p>

    <p>The key must be a <strong>paid API key</strong>, not a consumer subscription. That is a
    deliberate requirement, not a technical one. A vendor's commercial API terms and its consumer
    terms are different documents, and the difference is exactly the point that matters to a
    practitioner. Anthropic, for one, states it plainly: <em>"By default, we will not use your
    inputs or outputs from our commercial products&nbsp;… to train our models."</em> Its consumer
    tiers are governed separately. One exception worth knowing on any vendor: if you press a
    thumbs-up or thumbs-down inside that vendor's own interface, the conversation can be retained
    and used for training. The brain never sends such feedback.</p>

    <p>Six providers are supported — <strong>Anthropic, OpenAI, Google Gemini, GLM, DeepSeek and
    MiniMax</strong> — plus a fully local model that needs no key at all. Which one you point the
    brain at is your choice and your relationship, on that vendor's published terms, which you
    should read. What I can guarantee is narrower, and it is the part that is mine to guarantee:
    nothing reaches any of them without passing the pseudonymisation gateway first.</p>

    <h3>Identifiers are stripped before anything leaves</h3>
    <p>Every outbound request passes through one named component — the
    <strong>pseudonymisation gateway</strong> — and it sanitises before it sends and restores
    after it returns. Names, government identifiers and case references are
    replaced with neutral placeholders on the way out and put back on the way in. It is not a mode
    you can forget to switch on: it is a hook on the single function every cloud call funnels
    through, so there is no second path around it, and it is held in place by tests.
    <a class="link" href="{{ '/tools/#pseudonymisation-gateway' | relative_url }}">See exactly what the swap looks like →</a></p>

    <h3>And the strongest setting of all, now in every edition</h3>
    <p>There is a <strong>fully local model tier</strong> — the model itself runs on your own
    laptop and nothing leaves at all. As of 25 August 2026 it is wired in all eight editions. One
    command, <code>connect-local</code>, installs it and switches the brain over.</p>

    <p>Once it is on, it does not quietly come off. If the local model is unreachable the request
    <em>fails</em>; it does not fall back to a cloud vendor. A silent fallback would send
    privileged material out while the product told you it was staying in, which is the precise
    false assurance this tier exists to remove. An explicit setting in your config also beats a
    stray cloud key sitting in your shell environment — the deliberate statement wins over the
    ambient one.</p>

    <div class="table-scroll">
    <table>
      <thead><tr><th>Edition</th><th>Your files</th><th>Your own key</th><th>Pseudonymisation</th><th>Local model tier</th></tr></thead>
      <tbody>
      {% for j in site.data.localtier %}
        <tr>
          <td><strong>{{ j.name }}</strong></td>
          <td>local</td>
          <td>yes</td>
          <td>every request</td>
          <td>{{ j.local_tier }}</td>
        </tr>
      {% endfor %}
      </tbody>
    </table>
    </div>

    <p class="small muted">Nobody types this table. A script opens each edition's own source code,
    checks whether the feature is actually in there, and fills the row in from what it finds. If an
    edition's code cannot do something, there is no way for the table to say that it can.</p>
  </div>
</div>
</section>

<section class="section reveal" id="jurisdictions">
<div class="mg">
  <p class="note"><span class="n">04</span>The eight editions</p>
  <div>
    <h2>What each edition actually knows</h2>
    <p class="lede">The differences are not cosmetic. Each edition carries its own statutes, its own
    citation grammar, its own court hierarchy, its own identifier formats, and its own conduct
    rules.</p>
<ul class="jump">
  <li><a href="#j-india">India</a></li>
  <li><a href="#j-uk">United Kingdom</a></li>
  <li><a href="#j-eu">European Union</a></li>
  <li><a href="#j-usa">United States</a></li>
  <li><a href="#j-singapore">Singapore</a></li>
  <li><a href="#j-hongkong">Hong Kong</a></li>
  <li><a href="#j-dubai">Dubai · DIFC</a></li>
  <li><a href="#j-australia">Australia</a></li>
</ul>

    <div class="tool" id="j-india">
      <div class="tool-head"><h2>India</h2><span class="badge">Advocates admitted in India</span></div>
      <p>Indian Bare Acts — DPDP Act 2023, IT Act 2000, CrPC and BNSS, IPC and BNS, BSA 2023
      including Section 132, CPC, Limitation Act 1963, BCI Rules. The citation clerk parses AIR, SCC
      and SCC OnLine. The registrar knows the Supreme Court, the High Courts, the district courts,
      NCLT and DRT. Pseudonymisation covers Aadhaar, PAN, GSTIN, IFSC, ration card, driving licence,
      voter ID and Indian phone numbers. Onboarding ships in ten Indian languages and English.</p>
    </div>

    <div class="tool" id="j-uk">
      <div class="tool-head"><h2>United Kingdom</h2><span class="badge">SRA · BSB · Faculty of Advocates · CILEx</span></div>
      <p>Engineered against the BSB's <em>Guidance on the use of Artificial Intelligence and Other
      Technologies</em>, effective 18 May 2026 — which is why this edition carries the largest
      specialist roster. The citation clerk parses OSCOLA 4th edition: neutral citations, law
      reports, case names. Pseudonymisation covers NI number, NHS number, UTR, UK VAT, UK phone,
      sterling amounts, UK IBAN and EWHC / EWCA / UKSC case numbers — and Indian-diaspora
      identifiers too, because a substantial part of the client base carries them. 107 preparation
      templates across the full litigation backbone.</p>
    </div>

    <div class="tool" id="j-eu">
      <div class="tool-head"><h2>European Union</h2><span class="badge">Any Member State admission</span></div>
      <p>Eleven Tier-1 instruments: GDPR, the AI Act, DSA, DMA, Data Act, NIS2, ePrivacy, CRA, MiCA,
      DORA and Brussels Ia. The citation clerk handles ECLI (<code>ECLI:EU:C:2024:101</code>) and
      CJEU C-cases (<code>C-123/22</code>). Pseudonymisation covers IBAN across all 27 Member States,
      EU VAT, EORI, German Steuer-ID, French INSEE, Italian Codice Fiscale, CJEU case numbers and
      euro amounts. Positioned as <strong>limited risk under Article 50 of the AI Act</strong> — a
      transparency obligation, stated rather than implied. 56 preparation templates.</p>
    </div>

    <div class="tool" id="j-usa">
      <div class="tool-head"><h2>United States</h2><span class="badge">Federal-focused · state modules from v0.2</span></div>
      <p>For attorneys admitted in any state, the District of Columbia or any federal court, and for
      registered Foreign Legal Consultants. The citation clerk handles Bluebook — Supreme Court,
      Circuit, District, USC, CFR. Pseudonymisation covers SSN, ITIN, EIN, US phone, dollar amounts,
      driver-licence placeholders and federal docket numbers. ABA Formal Opinion 512, issued 29 July
      2024, is built into the compliance officer for Rule 1.1, Rule 1.6 and Rule 5.3. 89 preparation
      templates. State-specific procedure is v0.2 and is not claimed today.</p>
    </div>

    <div class="tool" id="j-singapore">
      <div class="tool-head"><h2>Singapore</h2><span class="badge">Legal Profession Act 1966 · SICC</span></div>
      <p>Citation clerk handles SLR, SGCA, SGHC, SGDC, SGMC and Malaysian Law Journal
      cross-references. The registrar covers the Court of Appeal, the General and Appellate Divisions
      of the High Court, the State Courts, the Family Justice Courts, the Syariah Court and the SICC.
      Pseudonymisation covers NRIC, FIN, UEN, CPF references, SG phone, SGD amounts and SGCA / SGHC /
      SGDC case numbers. The privacy posture is written against PDPA Section 24 and Section 26.
      17 statute digests, 6 ROC 2021 scaffolds, 55 preparation templates.</p>
    </div>

    <div class="tool" id="j-hongkong">
      <div class="tool-head"><h2>Hong Kong</h2><span class="badge">Law Society HK · HK Bar Association</span></div>
      <p>Built for a split profession and reflects it. Engineered against the Personal Data (Privacy)
      Ordinance Cap. 486 and the PCPD's <em>AI: Model Personal Data Protection Framework</em> (2024).
      18 topic-level statute digests cross-checked against <code>elegislation.gov.hk</code>.
      Pseudonymisation covers HK Identity Card numbers — validated against the official mod-11 check
      digit, not merely pattern-matched — HK phone numbers, and all twelve Practice Direction 5.5
      court codes. Ships in English and Traditional Chinese. The PDPO is principle-based and does
      <strong>not</strong> impose a general mandatory breach-notification regime; the edition says so
      rather than importing another jurisdiction's assumption.</p>
    </div>

    <div class="tool" id="j-dubai">
      <div class="tool-head"><h2>Dubai — DIFC and Mainland UAE</h2><span class="badge">Two legal systems, one tool</span></div>
      <p>DIFC is English common law in English; Mainland UAE is Arabic civil law in Arabic. Most Dubai
      solo practitioners serve clients in both, so this edition carries both: 15 DIFC instruments and
      9 Mainland Federal instruments, 24 digests in all. A dedicated system-switch agent flips
      between the two by flag or by plain instruction, so DIFC and Mainland context cannot
      contaminate each other. Pseudonymisation covers Emirates ID, trade licence, DIFC Court case
      numbers, UAE phone, AED amounts and UAE IBAN — plus Aadhaar, for Dubai's Indian-diaspora
      client base. Privacy posture written against UAE PDPL Article 22 and DIFC-DPL Articles 26–31.
      81 dual-track preparation templates.</p>
    </div>

    <div class="tool" id="j-australia">
      <div class="tool-head"><h2>Australia</h2><span class="badge">Uniform Law · state Legal Profession Acts</span></div>
      <p>Built for the post-October-2024 AAT to ART transition, the Tranche 2 AML/CTF amendments in
      force from July 2026, Section 77 of the <em>My Health Records Act 2012</em> (Cth) as a hard
      prohibition on offshore handling, APP 8 cross-border deemed liability under the Privacy Act
      1988, Essential Eight baselines, and the practitioner-liability standard in
      <em>Dayal</em> [2024] FedCFamC2F 1166 read with the Law Council's 2024 joint statement.
      Citation clerk handles AGLC4. Pseudonymisation covers TFN, Medicare, ABN, ACN, BSB codes, AU
      phone, AUD amounts and HCA / FCA / FCAFC / state Supreme Court numbers. 13 statute digests,
      39 research files, 79 preparation templates.</p>
    </div>
  </div>
</div>
</section>

<section class="section reveal" id="not">
<div class="mg">
  <p class="note"><span class="n">05</span>What it is not</p>
  <div>
    <h2>The limits, before you find them yourself</h2>

    <ul class="posture">
      <li><strong>It is not a lawyer and does not supervise itself.</strong> Everything it produces
      is a first version for a qualified practitioner to check. The bar rules it knows about are the same
      rules that make that your responsibility and not its own.</li>
      <li><strong>It is not a research service with a live case database.</strong> It carries statute
      digests and citation grammar. It does not subscribe to a reporter on your behalf, and it will
      not pretend a case exists.</li>
      <li><strong>It is version 0.1 in most editions.</strong> Where something is roadmap rather than
      shipped — US state procedure, the local model tier — this site and the repository both say so
      in those words.</li>
      <li><strong>Pseudonymisation is a safeguard, not a discharge.</strong> It reduces exposure. It
      does not perform your transfer assessment, obtain consent, or answer to your regulator.</li>
    </ul>
  </div>
</div>
</section>

<section class="section reveal" id="install">
<div class="mg">
  <p class="note"><span class="n">06</span>Getting it</p>
  <div>
    <h2>Free, and the source is published</h2>
    <p>MIT licensed. No account, no licence key, no subscription — there is no payment code in any
    edition, because there is nothing to pay for. Pick your jurisdiction on GitHub and the
    repository's own README takes you through installation.</p>
    <p class="juris-links">
      <a class="btn btn-primary" href="https://github.com/Wolfgangrush?tab=repositories&q=ai-brain">All eight editions on GitHub</a>
      <a class="btn btn-ghost" href="{{ '/tools/' | relative_url }}">The single-purpose tools</a>
    </p>
  </div>
</div>
</section>
